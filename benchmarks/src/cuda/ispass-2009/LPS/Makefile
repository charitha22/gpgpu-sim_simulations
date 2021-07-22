################################################################################
#
# Build script for project
#
################################################################################

# Add source files here
EXECUTABLE	:= ispass-2009-LPS
# CUDA source files (compiled with cudacc)
CUFILES		:= laplace3d.cu
# CUDA dependency files
CU_DEPS		:= \
	laplace3d_kernel.cu \

# C/C++ source files (compiled with gcc / c++)
CCFILES		:= \
	laplace3d_gold.cpp \

GPGPUSIM_ROOT  := ..

INCLUDES= -I ../../common/inc
LIBDIR=../../common/lib
OMIT_CUTIL_LIB=0

################################################################################
# Rules and targets

include ../../common/common.mk

include /home/charitha/workspace/cuda-benchmarks/rodinia_3.1/cuda/cfanalyze.config

KERNELS = laplace3d

cfanalyze : $(addsuffix .cu, $(KERNELS))
	$(foreach KERNEL, $(KERNELS), $(CLANG) $(CLANG_FLAGS) $(LL_FLAGS) $(INCLUDES)  $(KERNEL).cu;)

cfanalyze_pass : $(addsuffix .ll, $(KERNELS))
	$(foreach KERNEL, $(KERNELS), $(OPT) $(CFANALYZE_FLAGS) < $(KERNEL)-$(LL_SUFFIX).ll > /dev/null ;)

cfanalyze_clean :
	rm -f *.ll


