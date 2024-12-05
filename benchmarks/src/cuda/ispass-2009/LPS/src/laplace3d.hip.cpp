//
// Program to solve Laplace equation on a regular 3D grid
//


#include <hip/hip_runtime.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
//#include <cutil.h>

////////////////////////////////////////////////////////////////////////
// define kernel block size
////////////////////////////////////////////////////////////////////////

#define BLOCK_X 32 
#define BLOCK_Y 4

////////////////////////////////////////////////////////////////////////
// include kernel function
////////////////////////////////////////////////////////////////////////

//#include "laplace3d_kernel.h"

#define INDEX(i,j,j_off)  (i +__mul24(j,j_off))


// device code

__global__ void GPU_laplace3d(int NX, int NY, int NZ, int pitch, 
                              float *d_u1, float *d_u2)
{
  int   indg, indg_h, indg0;
  int   i, j, k, ind, ind_h, halo, active;
  float u2, sixth=1.0f/6.0f;

  int NXM1 = NX-1;
  int NYM1 = NY-1;
  int NZM1 = NZ-1;

  //
  // define local array offsets
  //

#define IOFF  1
#define JOFF (BLOCK_X+2)
#define KOFF (BLOCK_X+2)*(BLOCK_Y+2)
  __shared__ float u1[3*KOFF];


  //
  // first set up indices for halos
  //

  k    = threadIdx.x + threadIdx.y*BLOCK_X;
  halo = k < 2*(BLOCK_X+BLOCK_Y+2);

  if (halo) {
    if (threadIdx.y<2) {               // y-halos (coalesced)
      i = threadIdx.x;
      j = threadIdx.y*(BLOCK_Y+1) - 1;
    }
    else {                             // x-halos (not coalesced)
      i = (k%2)*(BLOCK_X+1) - 1;
      j =  k/2 - BLOCK_X - 1;
    }

    ind_h  = INDEX(i+1,j+1,JOFF) + KOFF;

    i      = INDEX(i,blockIdx.x,BLOCK_X);   // global indices
    j      = INDEX(j,blockIdx.y,BLOCK_Y);
    indg_h = INDEX(i,j,pitch);

    halo   =  (i>=0) && (i<NX) && (j>=0) && (j<NY);
  }

  //
  // then set up indices for main block
  //

  i    = threadIdx.x;
  j    = threadIdx.y;
  ind  = INDEX(i+1,j+1,JOFF) + KOFF;

  i    = INDEX(i,blockIdx.x,BLOCK_X);     // global indices
  j    = INDEX(j,blockIdx.y,BLOCK_Y);
  indg = INDEX(i,j,pitch);

  active = (i<NX) && (j<NY);

  //
  // read initial plane of u1 array
  //

  if (active) u1[ind+KOFF] = d_u1[indg];
  if (halo) u1[ind_h+KOFF] = d_u1[indg_h];

  //
  // loop over k-planes
  //

  for (k=0; k<NZ; k++) {

    // move two planes down and read in new plane k+1

    if (active) {
      indg0 = indg;
      indg  = INDEX(indg,NY,pitch);
      u1[ind-KOFF] = u1[ind];
      u1[ind]      = u1[ind+KOFF];
      if (k<NZM1)
        u1[ind+KOFF] = d_u1[indg];
    }

    if (halo) {
      indg_h = INDEX(indg_h,NY,pitch);
      u1[ind_h-KOFF] = u1[ind_h];
      u1[ind_h]      = u1[ind_h+KOFF];
      if (k<NZM1)
        u1[ind_h+KOFF] = d_u1[indg_h];
    }

    __syncthreads();

  //
  // perform Jacobi iteration to set values in u2
  //

    if (active) {
      if (i==0) {
        u2 = u1[ind];          // Dirichlet b.c.'s
      }
      else if (i==NXM1) {
        u2 = u1[ind];     
      }
      else if (j==0) {
        u2 = u1[ind]; 
      }
      else if (j==NYM1 ) {
        u2 = u1[ind]; 
      }
      else if (k==0 ) {
        u2 = u1[ind]; 
      }
      else if (k==NZM1) {
        u2 = u1[ind]; 
      }
      else {
        u2 = ( u1[ind-IOFF] + u1[ind+IOFF]
             + u1[ind-JOFF] + u1[ind+JOFF]
             + u1[ind-KOFF] + u1[ind+KOFF] ) * sixth;
      }
      d_u2[indg0] = u2;
    }

    __syncthreads();

  }
}
////////////////////////////////////////////////////////////////////////
// declaration, forward
////////////////////////////////////////////////////////////////////////

void Gold_laplace3d(int NX, int NY, int NZ, float* u1, float* u2) 
{
  int   i, j, k, ind;
  float sixth=1.0f/6.0f;  // predefining this improves performance more than 10%

  for (k=0; k<NZ; k++) {
    for (j=0; j<NY; j++) {
      for (i=0; i<NX; i++) {   // i loop innermost for sequential memory access
	      ind = i + j*NX + k*NX*NY;

        if (i==0 || i==NX-1 || j==0 || j==NY-1|| k==0 || k==NZ-1) {
          u2[ind] = u1[ind];          // Dirichlet b.c.'s
        }
        else {
          u2[ind] = ( u1[ind-1    ] + u1[ind+1    ]
                    + u1[ind-NX   ] + u1[ind+NX   ]
                    + u1[ind-NX*NY] + u1[ind+NX*NY] ) * sixth;
        }
      }
    }
  }
}

void printHelp(void);

////////////////////////////////////////////////////////////////////////
// Main program
////////////////////////////////////////////////////////////////////////
inline int cutCheckCmdLineFlag(int argc, const char **argv, const char * flag){
	if (argc < 2)
		return 1;
	for (int i = 0; i < argc; i++)
		if (strcmp(argv[i]+2, flag) == 0)
			return 1;
	return 0;
}

inline int cutGetCmdLineArgumenti(int argc, const char **argv, const char * opt, int * num){
	if (argc < 2)
		return 0;
  int l = strlen(opt);
	for (int i = 1; i < argc; i++){
		if (strncmp(argv[i]+2, opt, l) == 0){
			*num = atoi(argv[i]+3+l); // --nx=<>
			return 1;
		}
	}
	return 0;
}

int main(int argc, char **argv){

  // 'h_' prefix - CPU (host) memory space

  int    NX, NY, NZ, REPEAT, bx, by, i, j, k, ind, pitch;
  size_t pitch_bytes;
  float  *h_u1, *h_u2, *h_u3, *h_foo, err;

  //unsigned int   hTimer;
  float eTime = 0.f;
  hipEvent_t start, stop;

  // 'd_' prefix - GPU (device) memory space

  float  *d_u1, *d_u2, *d_foo;

  // check command line inputs

  if( cutCheckCmdLineFlag( argc, (const char**)argv, "help") ) {
    printHelp();
    return 1;
  }

  if( cutGetCmdLineArgumenti( argc, (const char**)argv, "nx", &NX) ) {
    if( NX <= 99 ) {
      printf("Illegal argument - nx must be greater than 99\n");
      return -1;
    }
  }
  else
    NX = 100;

  if( cutGetCmdLineArgumenti( argc, (const char**)argv, "ny", &NY) ) {
    if( NY <= 99 ) {
      printf("Illegal argument - ny must be greater than 99\n");
      return -1;
    }
  }
  else
    NY = 100;

  if( cutGetCmdLineArgumenti( argc, (const char**)argv, "nz", &NZ) ) {
    if( NZ <= 99 ) {
      printf("Illegal argument - nz must be greater than 99\n");
      return -1;
    }
  }
  else
    NZ = 100;

  if( cutGetCmdLineArgumenti( argc, (const char**)argv, "repeat", &REPEAT) ) {
    if( REPEAT <= 0 ) {
      printf("Illegal argument - repeat must be greater than zero\n");
      return -1;
    }
  }
  else
    REPEAT = 1;

  printf("\nGrid dimensions: %d x %d x %d\n", NX, NY, NZ);

  // initialise card and timer
  int deviceCount;                                                         
  hipGetDeviceCount(&deviceCount);                
  if (deviceCount == 0) {                                                  
      fprintf(stderr, "There is no device.\n");                            
      exit(EXIT_FAILURE);                                                  
  }                                                                        
  int dev;                                                                 
  for (dev = 0; dev < deviceCount; ++dev) {                                
      hipDeviceProp_t deviceProp;                                           
      hipGetDeviceProperties(&deviceProp, dev);   
      if (deviceProp.major >= 1)                                           
          break;                                                           
  }                                                                        
  if (dev == deviceCount) {                                                
      fprintf(stderr, "There is no device supporting CUDA.\n");            
      exit(EXIT_FAILURE);                                                  
  }                                                                        
  else                                                                     
      hipSetDevice(dev);  
  //CUT_SAFE_CALL( cutCreateTimer(&hTimer) );
  hipEventCreate(&start);
  hipEventCreate(&stop);
 
  // allocate memory for arrays

  h_u1 = (float *)malloc(sizeof(float)*NX*NY*NZ);
  h_u2 = (float *)malloc(sizeof(float)*NX*NY*NZ);
  h_u3 = (float *)malloc(sizeof(float)*NX*NY*NZ);
  hipMallocPitch((void **)&d_u1, &pitch_bytes, sizeof(float)*NX, NY*NZ);
  hipMallocPitch((void **)&d_u2, &pitch_bytes, sizeof(float)*NX, NY*NZ);

  pitch = pitch_bytes/sizeof(float);

  // initialise u1
    
  for (k=0; k<NZ; k++) {
    for (j=0; j<NY; j++) {
      for (i=0; i<NX; i++) {
        ind = i + j*NX + k*NX*NY;

        if (i==0 || i==NX-1 || j==0 || j==NY-1|| k==0 || k==NZ-1)
          h_u1[ind] = 1.0f;           // Dirichlet b.c.'s
        else
          h_u1[ind] = 0.0f;
      }
    }
  }

  // copy u1 to device

  //CUT_SAFE_CALL(cutStartTimer(hTimer));
  hipEventRecord(start);
  hipMemcpy2D(d_u1, pitch_bytes,
               h_u1, sizeof(float)*NX,
               sizeof(float)*NX, NY*NZ,
               hipMemcpyHostToDevice);
  hipDeviceSynchronize();
  //CUT_SAFE_CALL(cutStopTimer(hTimer));
  hipEventRecord(stop);
  hipEventSynchronize(stop);
  hipEventElapsedTime(&eTime, start, stop);
  printf("\nCopy u1 to device: %f (ms) \n", eTime);
  //CUT_SAFE_CALL( cutResetTimer(hTimer) );

  // Set up the execution configuration

  bx = 1 + (NX-1)/BLOCK_X;
  by = 1 + (NY-1)/BLOCK_Y;

  dim3 dimGrid(bx,by);
  dim3 dimBlock(BLOCK_X,BLOCK_Y);

  printf("\ndimGrid  = %d, %d, %d \n",dimGrid.x,dimGrid.y,dimGrid.z);
  printf("dimBlock = %d, %d, %d \n",dimBlock.x,dimBlock.y,dimBlock.z);

  // Execute GPU kernel

  hipDeviceSynchronize();
  // CUT_SAFE_CALL( cutResetTimer(hTimer) );
  // CUT_SAFE_CALL( cutStartTimer(hTimer) );
  hipEventRecord(start);

  for (i = 1; i <= REPEAT; ++i) {
    hipLaunchKernelGGL(GPU_laplace3d, dim3(dimGrid), dim3(dimBlock), 0, 0, NX, NY, NZ, pitch, d_u1, d_u2);
    d_foo = d_u1; d_u1 = d_u2; d_u2 = d_foo;   // swap d_u1 and d_u3

    hipDeviceSynchronize();
    //CUT_CHECK_ERROR("GPU_laplace3d execution failed\n");
  }

  //CUT_SAFE_CALL( cutStopTimer(hTimer) );
  hipEventRecord(stop);
  hipEventSynchronize(stop);
  hipEventElapsedTime(&eTime, start, stop);
  printf("\n%dx GPU_laplace3d: %f (ms) \n", REPEAT, eTime);

  //CUT_SAFE_CALL( cutResetTimer(hTimer) );

  // Read back GPU results

  //CUT_SAFE_CALL( cutStartTimer(hTimer) );
  hipEventRecord(start);
  hipMemcpy2D(h_u2, sizeof(float)*NX,
  	       d_u1, pitch_bytes,
               sizeof(float)*NX, NY*NZ,
               hipMemcpyDeviceToHost);
  //CUT_SAFE_CALL( cutStopTimer(hTimer) );
  hipEventRecord(stop);
  hipEventSynchronize(stop);
  hipEventElapsedTime(&eTime, start, stop);
  printf("\nCopy u2 to host: %f (ms) \n", eTime); 
  //CUT_SAFE_CALL( cutResetTimer(hTimer) );


  // print out corner of array

  /*
  for (k=0; k<3; k++) {
    for (j=0; j<8; j++) {
      for (i=0; i<8; i++) {
        ind = i + j*NX + k*NX*NY;
        printf(" %5.2f ", h_u2[ind]);
      }
      printf("\n");
    }
    printf("\n");
  }
  */

  // Gold treatment

  // CUT_SAFE_CALL( cutResetTimer(hTimer) );
  // CUT_SAFE_CALL( cutStartTimer(hTimer) );
  hipEventRecord(start);

  for (int i = 1; i <= REPEAT; ++i) {
    Gold_laplace3d(NX, NY, NZ, h_u1, h_u3);
    h_foo = h_u1; h_u1 = h_u3; h_u3 = h_foo;   // swap h_u1 and h_u3
  }

  // CUT_SAFE_CALL( cutStopTimer(hTimer) );
  hipEventRecord(stop);
  hipEventSynchronize(stop);
  hipEventElapsedTime(&eTime, start, stop);
  printf("\n%dx Gold_laplace3d: %f (ms) \n", REPEAT, eTime);

  // print out corner of array

  /*
  for (k=0; k<3; k++) {
    for (j=0; j<8; j++) {
      for (i=0; i<8; i++) {
        ind = i + j*NX + k*NX*NY;
        printf(" %5.2f ", h_u1[ind]);
      }
      printf("\n");
    }
    printf("\n");
  }
  */

  // error check

  err = 0.0;

  for (k=0; k<NZ; k++) {
    for (j=0; j<NY; j++) {
      for (i=0; i<NX; i++) {
        ind = i + j*NX + k*NX*NY;
        err += (h_u1[ind]-h_u2[ind])*(h_u1[ind]-h_u2[ind]);
      }
    }
  }

  printf("\nrms error = %f \n",sqrt(err/ (float)(NX*NY*NZ)));

 // Release GPU and CPU memory
  // printf("Free(d_u1)\n"); 
  fflush(stdout); hipFree(d_u1);
  // printf("Free(d_u2)\n"); 
  fflush(stdout); hipFree(d_u2);
  // printf("free(h_u1);\n"); 
  fflush(stdout); free(h_u1);
  // printf("free(h_u2);\n"); 
  fflush(stdout); free(h_u2);
  // printf("free(h_u3);\n"); 
  fflush(stdout); free(h_u3);

  //CUT_SAFE_CALL( cutDeleteTimer(hTimer) );
  //CUT_EXIT(argc, argv);
}


///////////////////////////////////////////////////////////////////////////
//Print help screen
///////////////////////////////////////////////////////////////////////////
void printHelp(void)
{
  printf("Usage:  laplace3d [OPTION]...\n");
  printf("6-point stencil 3D Laplace test \n");
  printf("\n");
  printf("Example: run 100 iterations on a 256x128x128 grid\n");
  printf("./laplace3d --nx=256 --ny=128 --nz=128 --repeat=100\n");

  printf("\n");
  printf("Options:\n");
  printf("--help\t\t\tDisplay this help menu\n");
  printf("--nx=[SIZE]\t\tGrid width\n");
  printf("--ny=[SIZE]\t\tGrid height\n");
  printf("--nz=[SIZE]\t\tGrid depth\n");
  printf("--repeat=[COUNT]\tNumber of repetitions\n");
}
