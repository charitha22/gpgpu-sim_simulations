; ModuleID = 'src/laplace3d.hip.cpp'
source_filename = "src/laplace3d.hip.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%0 = type { %1 addrspace(1)*, %2 addrspace(1)*, %3, i64, i64, i64 }
%1 = type { i64, i64, i32, i32 }
%2 = type { [64 x [8 x i64]] }
%3 = type { i64 }
%4 = type { i64, %3, i64, i32, i32, i64, i64, %5, [2 x i32] }
%5 = type { %6 addrspace(1)* }
%6 = type { %7, [4 x i32], i64, i32, i32, i32, i32, i64, i32, [9 x i32], i64, i32, i32, [4 x i32], i64, i64, i32, i32, [2 x i32], %3, [14 x i32] }
%7 = type { i32, i32, i8 addrspace(1)*, %3, i32, i32, i64 }
%struct.__HIP_Coordinates = type { i8 }
%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" = type { i8 }
%struct.__HIP_Coordinates.0 = type { i8 }
%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" = type { i8 }
%struct.__HIP_ThreadIdx = type { i8 }
%struct.__HIP_BlockIdx = type { i8 }

$_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv = comdat any

$_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv = comdat any

$_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1XcvjEv = comdat any

$_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1YcvjEv = comdat any

$_Z13__syncthreadsv = comdat any

$_ZNK15__HIP_ThreadIdxclEj = comdat any

$_ZNK14__HIP_BlockIdxclEj = comdat any

$_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE = comdat any

@.str = private unnamed_addr addrspace(4) constant [47 x i8] c"%s:%u: %s: Device-side assertion `%s' failed.\0A\00", align 1
@_ZZ13GPU_laplace3diiiiPfS_E2u1 = internal addrspace(3) global [1188 x float] undef, align 16
@_ZL9threadIdx = internal addrspace(4) constant %struct.__HIP_Coordinates undef, align 1
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" undef, comdat, align 1
@_ZL8blockIdx = internal addrspace(4) constant %struct.__HIP_Coordinates.0 undef, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" undef, comdat, align 1
@__oclc_wavefrontsize64 = internal local_unnamed_addr addrspace(4) constant i8 1, align 1

; Function Attrs: convergent noinline nounwind mustprogress
define weak hidden void @__assert_fail(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8, addrspace(5)
  %6 = addrspacecast i8* addrspace(5)* %5 to i8**
  %7 = alloca i8*, align 8, addrspace(5)
  %8 = addrspacecast i8* addrspace(5)* %7 to i8**
  %9 = alloca i32, align 4, addrspace(5)
  %10 = addrspacecast i32 addrspace(5)* %9 to i32*
  %11 = alloca i8*, align 8, addrspace(5)
  %12 = addrspacecast i8* addrspace(5)* %11 to i8**
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %12, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load i8*, i8** %12, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @__ockl_printf_begin(i64 0)
  br i1 icmp eq (i8* getelementptr inbounds ([47 x i8], [47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str to [47 x i8]*), i64 0, i64 0), i8* null), label %27, label %18

18:                                               ; preds = %18, %4
  %19 = phi i8* [ getelementptr inbounds ([47 x i8], [47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str to [47 x i8]*), i64 0, i64 0), %4 ], [ %20, %18 ]
  %20 = getelementptr i8, i8* %19, i64 1
  %21 = load i8, i8* %19, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %18

23:                                               ; preds = %18
  %24 = ptrtoint i8* %19 to i64
  %25 = sub i64 %24, ptrtoint ([47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str to [47 x i8]*) to i64)
  %26 = add i64 %25, 1
  br label %27

27:                                               ; preds = %23, %4
  %28 = phi i64 [ %26, %23 ], [ 0, %4 ]
  %29 = call i64 @__ockl_printf_append_string_n(i64 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str to [47 x i8]*), i64 0, i64 0), i64 %28, i32 0)
  %30 = icmp eq i8* %13, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %31, %27
  %32 = phi i8* [ %13, %27 ], [ %33, %31 ]
  %33 = getelementptr i8, i8* %32, i64 1
  %34 = load i8, i8* %32, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %31

36:                                               ; preds = %31
  %37 = ptrtoint i8* %13 to i64
  %38 = ptrtoint i8* %32 to i64
  %39 = sub i64 %38, %37
  %40 = add i64 %39, 1
  br label %41

41:                                               ; preds = %36, %27
  %42 = phi i64 [ %40, %36 ], [ 0, %27 ]
  %43 = call i64 @__ockl_printf_append_string_n(i64 %29, i8* %13, i64 %42, i32 0)
  %44 = zext i32 %14 to i64
  %45 = call i64 @__ockl_printf_append_args(i64 %43, i32 1, i64 %44, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i32 0)
  %46 = icmp eq i8* %15, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %47, %41
  %48 = phi i8* [ %15, %41 ], [ %49, %47 ]
  %49 = getelementptr i8, i8* %48, i64 1
  %50 = load i8, i8* %48, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %47

52:                                               ; preds = %47
  %53 = ptrtoint i8* %15 to i64
  %54 = ptrtoint i8* %48 to i64
  %55 = sub i64 %54, %53
  %56 = add i64 %55, 1
  br label %57

57:                                               ; preds = %52, %41
  %58 = phi i64 [ %56, %52 ], [ 0, %41 ]
  %59 = call i64 @__ockl_printf_append_string_n(i64 %45, i8* %15, i64 %58, i32 0)
  %60 = icmp eq i8* %16, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %61, %57
  %62 = phi i8* [ %16, %57 ], [ %63, %61 ]
  %63 = getelementptr i8, i8* %62, i64 1
  %64 = load i8, i8* %62, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %61

66:                                               ; preds = %61
  %67 = ptrtoint i8* %16 to i64
  %68 = ptrtoint i8* %62 to i64
  %69 = sub i64 %68, %67
  %70 = add i64 %69, 1
  br label %71

71:                                               ; preds = %66, %57
  %72 = phi i64 [ %70, %66 ], [ 0, %57 ]
  %73 = call i64 @__ockl_printf_append_string_n(i64 %59, i8* %16, i64 %72, i32 1)
  %74 = trunc i64 %73 to i32
  call void @llvm.trap()
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: convergent noinline nounwind mustprogress
define weak hidden void @__assertfail(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8, addrspace(5)
  %7 = addrspacecast i8* addrspace(5)* %6 to i8**
  %8 = alloca i8*, align 8, addrspace(5)
  %9 = addrspacecast i8* addrspace(5)* %8 to i8**
  %10 = alloca i32, align 4, addrspace(5)
  %11 = addrspacecast i32 addrspace(5)* %10 to i32*
  %12 = alloca i8*, align 8, addrspace(5)
  %13 = addrspacecast i8* addrspace(5)* %12 to i8**
  %14 = alloca i64, align 8, addrspace(5)
  %15 = addrspacecast i64 addrspace(5)* %14 to i64*
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %15, align 8
  call void @llvm.trap()
  ret void
}

; Function Attrs: convergent noinline norecurse nounwind mustprogress
define protected amdgpu_kernel void @_Z13GPU_laplace3diiiiPfS_(i32 %0, i32 %1, i32 %2, i32 %3, float addrspace(1)* %4, float addrspace(1)* %5) #2 {
  %7 = alloca float*, align 8, addrspace(5)
  %8 = addrspacecast float* addrspace(5)* %7 to float**
  %9 = alloca float*, align 8, addrspace(5)
  %10 = addrspacecast float* addrspace(5)* %9 to float**
  %11 = alloca i32, align 4, addrspace(5)
  %12 = addrspacecast i32 addrspace(5)* %11 to i32*
  %13 = alloca i32, align 4, addrspace(5)
  %14 = addrspacecast i32 addrspace(5)* %13 to i32*
  %15 = alloca i32, align 4, addrspace(5)
  %16 = addrspacecast i32 addrspace(5)* %15 to i32*
  %17 = alloca i32, align 4, addrspace(5)
  %18 = addrspacecast i32 addrspace(5)* %17 to i32*
  %19 = alloca float*, align 8, addrspace(5)
  %20 = addrspacecast float* addrspace(5)* %19 to float**
  %21 = alloca float*, align 8, addrspace(5)
  %22 = addrspacecast float* addrspace(5)* %21 to float**
  %23 = alloca i32, align 4, addrspace(5)
  %24 = addrspacecast i32 addrspace(5)* %23 to i32*
  %25 = alloca i32, align 4, addrspace(5)
  %26 = addrspacecast i32 addrspace(5)* %25 to i32*
  %27 = alloca i32, align 4, addrspace(5)
  %28 = addrspacecast i32 addrspace(5)* %27 to i32*
  %29 = alloca i32, align 4, addrspace(5)
  %30 = addrspacecast i32 addrspace(5)* %29 to i32*
  %31 = alloca i32, align 4, addrspace(5)
  %32 = addrspacecast i32 addrspace(5)* %31 to i32*
  %33 = alloca i32, align 4, addrspace(5)
  %34 = addrspacecast i32 addrspace(5)* %33 to i32*
  %35 = alloca i32, align 4, addrspace(5)
  %36 = addrspacecast i32 addrspace(5)* %35 to i32*
  %37 = alloca i32, align 4, addrspace(5)
  %38 = addrspacecast i32 addrspace(5)* %37 to i32*
  %39 = alloca i32, align 4, addrspace(5)
  %40 = addrspacecast i32 addrspace(5)* %39 to i32*
  %41 = alloca i32, align 4, addrspace(5)
  %42 = addrspacecast i32 addrspace(5)* %41 to i32*
  %43 = alloca float, align 4, addrspace(5)
  %44 = addrspacecast float addrspace(5)* %43 to float*
  %45 = alloca float, align 4, addrspace(5)
  %46 = addrspacecast float addrspace(5)* %45 to float*
  %47 = alloca i32, align 4, addrspace(5)
  %48 = addrspacecast i32 addrspace(5)* %47 to i32*
  %49 = alloca i32, align 4, addrspace(5)
  %50 = addrspacecast i32 addrspace(5)* %49 to i32*
  %51 = alloca i32, align 4, addrspace(5)
  %52 = addrspacecast i32 addrspace(5)* %51 to i32*
  %53 = addrspacecast float addrspace(1)* %4 to float*
  store float* %53, float** %8, align 8
  %54 = load float*, float** %8, align 8
  %55 = addrspacecast float addrspace(1)* %5 to float*
  store float* %55, float** %10, align 8
  %56 = load float*, float** %10, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %18, align 4
  store float* %54, float** %20, align 8
  store float* %56, float** %22, align 8
  store float 0x3FC5555560000000, float* %46, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %48, align 4
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %50, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %52, align 4
  %63 = call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"*)) #19
  %64 = call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*)) #19
  %65 = mul i32 %64, 64
  %66 = add i32 %63, %65
  store i32 %66, i32* %34, align 4
  %67 = load i32, i32* %34, align 4
  %68 = icmp slt i32 %67, 140
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %40, align 4
  %70 = load i32, i32* %40, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %126

72:                                               ; preds = %6
  %73 = call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*)) #19
  %74 = icmp ult i32 %73, 2
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"*)) #19
  store i32 %76, i32* %30, align 4
  %77 = call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*)) #19
  %78 = mul i32 %77, 5
  %79 = sub i32 %78, 1
  store i32 %79, i32* %32, align 4
  br label %89

80:                                               ; preds = %72
  %81 = load i32, i32* %34, align 4
  %82 = srem i32 %81, 2
  %83 = mul nsw i32 %82, 65
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %30, align 4
  %85 = load i32, i32* %34, align 4
  %86 = sdiv i32 %85, 2
  %87 = sub nsw i32 %86, 64
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %32, align 4
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i32, i32* %30, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %32, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @_ZL7__mul24ii(i32 %93, i32 66) #19
  %95 = add nsw i32 %91, %94
  %96 = add nsw i32 %95, 396
  store i32 %96, i32* %38, align 4
  %97 = load i32, i32* %30, align 4
  %98 = call i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"*)) #19
  %99 = call i32 @_ZL7__mul24ii(i32 %98, i32 64) #19
  %100 = add nsw i32 %97, %99
  store i32 %100, i32* %30, align 4
  %101 = load i32, i32* %32, align 4
  %102 = call i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"*)) #19
  %103 = call i32 @_ZL7__mul24ii(i32 %102, i32 4) #19
  %104 = add nsw i32 %101, %103
  store i32 %104, i32* %32, align 4
  %105 = load i32, i32* %30, align 4
  %106 = load i32, i32* %32, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @_ZL7__mul24ii(i32 %106, i32 %107) #19
  %109 = add nsw i32 %105, %108
  store i32 %109, i32* %26, align 4
  %110 = load i32, i32* %30, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %89
  %113 = load i32, i32* %30, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* %32, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* %32, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %120, %121
  br label %123

123:                                              ; preds = %119, %116, %112, %89
  %124 = phi i1 [ false, %116 ], [ false, %112 ], [ false, %89 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %40, align 4
  br label %126

126:                                              ; preds = %123, %6
  %127 = call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"*)) #19
  store i32 %127, i32* %30, align 4
  %128 = call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*)) #19
  store i32 %128, i32* %32, align 4
  %129 = load i32, i32* %30, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %32, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 @_ZL7__mul24ii(i32 %132, i32 66) #19
  %134 = add nsw i32 %130, %133
  %135 = add nsw i32 %134, 396
  store i32 %135, i32* %36, align 4
  %136 = load i32, i32* %30, align 4
  %137 = call i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"*)) #19
  %138 = call i32 @_ZL7__mul24ii(i32 %137, i32 64) #19
  %139 = add nsw i32 %136, %138
  store i32 %139, i32* %30, align 4
  %140 = load i32, i32* %32, align 4
  %141 = call i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"*)) #19
  %142 = call i32 @_ZL7__mul24ii(i32 %141, i32 4) #19
  %143 = add nsw i32 %140, %142
  store i32 %143, i32* %32, align 4
  %144 = load i32, i32* %30, align 4
  %145 = load i32, i32* %32, align 4
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @_ZL7__mul24ii(i32 %145, i32 %146) #19
  %148 = add nsw i32 %144, %147
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %30, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %126
  %153 = load i32, i32* %32, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %153, %154
  br label %156

156:                                              ; preds = %152, %126
  %157 = phi i1 [ false, %126 ], [ %155, %152 ]
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %42, align 4
  %159 = load i32, i32* %42, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load float*, float** %20, align 8
  %163 = load i32, i32* %24, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  %166 = load float, float* %165, align 4
  %167 = load i32, i32* %36, align 4
  %168 = add nsw i32 %167, 396
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %169
  store float %166, float* %170, align 4
  br label %171

171:                                              ; preds = %161, %156
  %172 = load i32, i32* %40, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load float*, float** %20, align 8
  %176 = load i32, i32* %26, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  %179 = load float, float* %178, align 4
  %180 = load i32, i32* %38, align 4
  %181 = add nsw i32 %180, 396
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %182
  store float %179, float* %183, align 4
  br label %184

184:                                              ; preds = %174, %171
  store i32 0, i32* %34, align 4
  br label %185

185:                                              ; preds = %372, %184
  %186 = load i32, i32* %34, align 4
  %187 = load i32, i32* %16, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %375

189:                                              ; preds = %185
  %190 = load i32, i32* %42, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %229

192:                                              ; preds = %189
  %193 = load i32, i32* %24, align 4
  store i32 %193, i32* %28, align 4
  %194 = load i32, i32* %24, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @_ZL7__mul24ii(i32 %195, i32 %196) #19
  %198 = add nsw i32 %194, %197
  store i32 %198, i32* %24, align 4
  %199 = load i32, i32* %36, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %200
  %202 = load float, float* %201, align 4
  %203 = load i32, i32* %36, align 4
  %204 = sub nsw i32 %203, 396
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %205
  store float %202, float* %206, align 4
  %207 = load i32, i32* %36, align 4
  %208 = add nsw i32 %207, 396
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %209
  %211 = load float, float* %210, align 4
  %212 = load i32, i32* %36, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %213
  store float %211, float* %214, align 4
  %215 = load i32, i32* %34, align 4
  %216 = load i32, i32* %52, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %192
  %219 = load float*, float** %20, align 8
  %220 = load i32, i32* %24, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %219, i64 %221
  %223 = load float, float* %222, align 4
  %224 = load i32, i32* %36, align 4
  %225 = add nsw i32 %224, 396
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %226
  store float %223, float* %227, align 4
  br label %228

228:                                              ; preds = %218, %192
  br label %229

229:                                              ; preds = %228, %189
  %230 = load i32, i32* %40, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %268

232:                                              ; preds = %229
  %233 = load i32, i32* %26, align 4
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* %18, align 4
  %236 = call i32 @_ZL7__mul24ii(i32 %234, i32 %235) #19
  %237 = add nsw i32 %233, %236
  store i32 %237, i32* %26, align 4
  %238 = load i32, i32* %38, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %239
  %241 = load float, float* %240, align 4
  %242 = load i32, i32* %38, align 4
  %243 = sub nsw i32 %242, 396
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %244
  store float %241, float* %245, align 4
  %246 = load i32, i32* %38, align 4
  %247 = add nsw i32 %246, 396
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %248
  %250 = load float, float* %249, align 4
  %251 = load i32, i32* %38, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %252
  store float %250, float* %253, align 4
  %254 = load i32, i32* %34, align 4
  %255 = load i32, i32* %52, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %267

257:                                              ; preds = %232
  %258 = load float*, float** %20, align 8
  %259 = load i32, i32* %26, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %258, i64 %260
  %262 = load float, float* %261, align 4
  %263 = load i32, i32* %38, align 4
  %264 = add nsw i32 %263, 396
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %265
  store float %262, float* %266, align 4
  br label %267

267:                                              ; preds = %257, %232
  br label %268

268:                                              ; preds = %267, %229
  call void @_Z13__syncthreadsv() #19
  %269 = load i32, i32* %42, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %371

271:                                              ; preds = %268
  %272 = load i32, i32* %30, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load i32, i32* %36, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %276
  %278 = load float, float* %277, align 4
  store float %278, float* %44, align 4
  br label %365

279:                                              ; preds = %271
  %280 = load i32, i32* %30, align 4
  %281 = load i32, i32* %48, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  %284 = load i32, i32* %36, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %285
  %287 = load float, float* %286, align 4
  store float %287, float* %44, align 4
  br label %364

288:                                              ; preds = %279
  %289 = load i32, i32* %32, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %288
  %292 = load i32, i32* %36, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %293
  %295 = load float, float* %294, align 4
  store float %295, float* %44, align 4
  br label %363

296:                                              ; preds = %288
  %297 = load i32, i32* %32, align 4
  %298 = load i32, i32* %50, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %296
  %301 = load i32, i32* %36, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %302
  %304 = load float, float* %303, align 4
  store float %304, float* %44, align 4
  br label %362

305:                                              ; preds = %296
  %306 = load i32, i32* %34, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %305
  %309 = load i32, i32* %36, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %310
  %312 = load float, float* %311, align 4
  store float %312, float* %44, align 4
  br label %361

313:                                              ; preds = %305
  %314 = load i32, i32* %34, align 4
  %315 = load i32, i32* %52, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %313
  %318 = load i32, i32* %36, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %319
  %321 = load float, float* %320, align 4
  store float %321, float* %44, align 4
  br label %360

322:                                              ; preds = %313
  %323 = load i32, i32* %36, align 4
  %324 = sub nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %325
  %327 = load float, float* %326, align 4
  %328 = load i32, i32* %36, align 4
  %329 = add nsw i32 %328, 1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %330
  %332 = load float, float* %331, align 4
  %333 = fadd contract float %327, %332
  %334 = load i32, i32* %36, align 4
  %335 = sub nsw i32 %334, 66
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %336
  %338 = load float, float* %337, align 4
  %339 = fadd contract float %333, %338
  %340 = load i32, i32* %36, align 4
  %341 = add nsw i32 %340, 66
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %342
  %344 = load float, float* %343, align 4
  %345 = fadd contract float %339, %344
  %346 = load i32, i32* %36, align 4
  %347 = sub nsw i32 %346, 396
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %348
  %350 = load float, float* %349, align 4
  %351 = fadd contract float %345, %350
  %352 = load i32, i32* %36, align 4
  %353 = add nsw i32 %352, 396
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [1188 x float], [1188 x float]* addrspacecast ([1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1 to [1188 x float]*), i64 0, i64 %354
  %356 = load float, float* %355, align 4
  %357 = fadd contract float %351, %356
  %358 = load float, float* %46, align 4
  %359 = fmul contract float %357, %358
  store float %359, float* %44, align 4
  br label %360

360:                                              ; preds = %322, %317
  br label %361

361:                                              ; preds = %360, %308
  br label %362

362:                                              ; preds = %361, %300
  br label %363

363:                                              ; preds = %362, %291
  br label %364

364:                                              ; preds = %363, %283
  br label %365

365:                                              ; preds = %364, %274
  %366 = load float, float* %44, align 4
  %367 = load float*, float** %22, align 8
  %368 = load i32, i32* %28, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %367, i64 %369
  store float %366, float* %370, align 4
  br label %371

371:                                              ; preds = %365, %268
  call void @_Z13__syncthreadsv() #19
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %34, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %34, align 4
  br label %185, !llvm.loop !4

375:                                              ; preds = %185
  ret void
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* nonnull dereferenceable(1) %0) #3 comdat align 2 {
  %2 = alloca i32, align 4, addrspace(5)
  %3 = addrspacecast i32 addrspace(5)* %2 to i32*
  %4 = alloca %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"*, align 8, addrspace(5)
  %5 = addrspacecast %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* addrspace(5)* %4 to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"**
  %6 = alloca %struct.__HIP_ThreadIdx, align 1, addrspace(5)
  %7 = addrspacecast %struct.__HIP_ThreadIdx addrspace(5)* %6 to %struct.__HIP_ThreadIdx*
  store %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* %0, %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"** %5, align 8
  %8 = load %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"*, %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"** %5, align 8
  %9 = call i32 @_ZNK15__HIP_ThreadIdxclEj(%struct.__HIP_ThreadIdx* nonnull dereferenceable(1) %7, i32 0) #19
  ret i32 %9
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) %0) #3 comdat align 2 {
  %2 = alloca i32, align 4, addrspace(5)
  %3 = addrspacecast i32 addrspace(5)* %2 to i32*
  %4 = alloca %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*, align 8, addrspace(5)
  %5 = addrspacecast %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* addrspace(5)* %4 to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"**
  %6 = alloca %struct.__HIP_ThreadIdx, align 1, addrspace(5)
  %7 = addrspacecast %struct.__HIP_ThreadIdx addrspace(5)* %6 to %struct.__HIP_ThreadIdx*
  store %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* %0, %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"** %5, align 8
  %8 = load %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*, %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"** %5, align 8
  %9 = call i32 @_ZNK15__HIP_ThreadIdxclEj(%struct.__HIP_ThreadIdx* nonnull dereferenceable(1) %7, i32 1) #19
  ret i32 %9
}

; Function Attrs: convergent noinline nounwind mustprogress
define internal i32 @_ZL7__mul24ii(i32 %0, i32 %1) #3 {
  %3 = alloca i32, align 4, addrspace(5)
  %4 = addrspacecast i32 addrspace(5)* %3 to i32*
  %5 = alloca i32, align 4, addrspace(5)
  %6 = addrspacecast i32 addrspace(5)* %5 to i32*
  %7 = alloca i32, align 4, addrspace(5)
  %8 = addrspacecast i32 addrspace(5)* %7 to i32*
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %8, align 4
  %11 = call i32 @__ockl_mul24_i32(i32 %9, i32 %10) #20
  ret i32 %11
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"* nonnull dereferenceable(1) %0) #3 comdat align 2 {
  %2 = alloca i32, align 4, addrspace(5)
  %3 = addrspacecast i32 addrspace(5)* %2 to i32*
  %4 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"*, align 8, addrspace(5)
  %5 = addrspacecast %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"* addrspace(5)* %4 to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"**
  %6 = alloca %struct.__HIP_BlockIdx, align 1, addrspace(5)
  %7 = addrspacecast %struct.__HIP_BlockIdx addrspace(5)* %6 to %struct.__HIP_BlockIdx*
  store %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"* %0, %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"** %5, align 8
  %8 = load %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"*, %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"** %5, align 8
  %9 = call i32 @_ZNK14__HIP_BlockIdxclEj(%struct.__HIP_BlockIdx* nonnull dereferenceable(1) %7, i32 0) #19
  ret i32 %9
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"* nonnull dereferenceable(1) %0) #3 comdat align 2 {
  %2 = alloca i32, align 4, addrspace(5)
  %3 = addrspacecast i32 addrspace(5)* %2 to i32*
  %4 = alloca %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"*, align 8, addrspace(5)
  %5 = addrspacecast %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"* addrspace(5)* %4 to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"**
  %6 = alloca %struct.__HIP_BlockIdx, align 1, addrspace(5)
  %7 = addrspacecast %struct.__HIP_BlockIdx addrspace(5)* %6 to %struct.__HIP_BlockIdx*
  store %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"* %0, %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"** %5, align 8
  %8 = load %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"*, %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"** %5, align 8
  %9 = call i32 @_ZNK14__HIP_BlockIdxclEj(%struct.__HIP_BlockIdx* nonnull dereferenceable(1) %7, i32 1) #19
  ret i32 %9
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden void @_Z13__syncthreadsv() #3 comdat {
  call void @_ZL9__barrieri(i32 1) #19
  ret void
}

; Function Attrs: convergent noinline nounwind mustprogress
define internal void @_ZL9__barrieri(i32 %0) #3 {
  %2 = alloca i32, align 4, addrspace(5)
  %3 = addrspacecast i32 addrspace(5)* %2 to i32*
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  call void @_ZL20__work_group_barrierj14__memory_scope(i32 %4, i32 1) #19
  ret void
}

; Function Attrs: convergent noinline nounwind
define internal void @_ZL20__work_group_barrierj14__memory_scope(i32 %0, i32 %1) #4 {
  %3 = alloca i32, align 4, addrspace(5)
  %4 = addrspacecast i32 addrspace(5)* %3 to i32*
  %5 = alloca i32, align 4, addrspace(5)
  %6 = addrspacecast i32 addrspace(5)* %5 to i32*
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %16 [
    i32 3, label %15
    i32 4, label %12
    i32 1, label %13
    i32 2, label %14
  ]

12:                                               ; preds = %9
  fence syncscope("wavefront") release
  br label %16

13:                                               ; preds = %9
  fence syncscope("workgroup") release
  br label %16

14:                                               ; preds = %9
  fence syncscope("agent") release
  br label %16

15:                                               ; preds = %9
  fence release
  br label %16

16:                                               ; preds = %9, %12, %13, %14, %15
  call void @llvm.amdgcn.s.barrier()
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %23 [
    i32 3, label %22
    i32 4, label %19
    i32 1, label %20
    i32 2, label %21
  ]

19:                                               ; preds = %16
  fence syncscope("wavefront") acquire
  br label %23

20:                                               ; preds = %16
  fence syncscope("workgroup") acquire
  br label %23

21:                                               ; preds = %16
  fence syncscope("agent") acquire
  br label %23

22:                                               ; preds = %16
  fence acquire
  br label %23

23:                                               ; preds = %16, %19, %20, %21, %22
  br label %25

24:                                               ; preds = %2
  call void @llvm.amdgcn.s.barrier()
  br label %25

25:                                               ; preds = %24, %23
  ret void
}

; Function Attrs: convergent nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #5

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK15__HIP_ThreadIdxclEj(%struct.__HIP_ThreadIdx* nonnull dereferenceable(1) %0, i32 %1) #3 comdat align 2 {
  %3 = alloca i32, align 4, addrspace(5)
  %4 = addrspacecast i32 addrspace(5)* %3 to i32*
  %5 = alloca %struct.__HIP_ThreadIdx*, align 8, addrspace(5)
  %6 = addrspacecast %struct.__HIP_ThreadIdx* addrspace(5)* %5 to %struct.__HIP_ThreadIdx**
  %7 = alloca i32, align 4, addrspace(5)
  %8 = addrspacecast i32 addrspace(5)* %7 to i32*
  store %struct.__HIP_ThreadIdx* %0, %struct.__HIP_ThreadIdx** %6, align 8
  store i32 %1, i32* %8, align 4
  %9 = load %struct.__HIP_ThreadIdx*, %struct.__HIP_ThreadIdx** %6, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i64 @__ockl_get_local_id(i32 %10) #20
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK14__HIP_BlockIdxclEj(%struct.__HIP_BlockIdx* nonnull dereferenceable(1) %0, i32 %1) #3 comdat align 2 {
  %3 = alloca i32, align 4, addrspace(5)
  %4 = addrspacecast i32 addrspace(5)* %3 to i32*
  %5 = alloca %struct.__HIP_BlockIdx*, align 8, addrspace(5)
  %6 = addrspacecast %struct.__HIP_BlockIdx* addrspace(5)* %5 to %struct.__HIP_BlockIdx**
  %7 = alloca i32, align 4, addrspace(5)
  %8 = addrspacecast i32 addrspace(5)* %7 to i32*
  store %struct.__HIP_BlockIdx* %0, %struct.__HIP_BlockIdx** %6, align 8
  store i32 %1, i32* %8, align 4
  %9 = load %struct.__HIP_BlockIdx*, %struct.__HIP_BlockIdx** %6, align 8
  %10 = load i32, i32* %8, align 4
  %11 = call i64 @__ockl_get_group_id(i32 %10) #20
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: convergent norecurse nounwind readnone
define internal i32 @__ockl_mul24_i32(i32 %0, i32 %1) #6 {
  %3 = shl i32 %0, 8
  %4 = ashr exact i32 %3, 8
  %5 = shl i32 %1, 8
  %6 = ashr exact i32 %5, 8
  %7 = mul nsw i32 %6, %4
  ret i32 %7
}

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_printf_begin(i64 %0) #7 {
  %2 = tail call <2 x i64> @__ockl_hostcall_preview(i32 2, i64 33, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #19
  %3 = extractelement <2 x i64> %2, i64 0
  ret i64 %3
}

; Function Attrs: convergent norecurse nounwind
define internal <2 x i64> @__ockl_hostcall_preview(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #7 {
  %10 = tail call i8 addrspace(4)* @llvm.amdgcn.implicitarg.ptr()
  %11 = getelementptr inbounds i8, i8 addrspace(4)* %10, i64 24
  %12 = bitcast i8 addrspace(4)* %11 to i64 addrspace(4)*
  %13 = load i64, i64 addrspace(4)* %12, align 8, !tbaa !6
  %14 = inttoptr i64 %13 to i8*
  %15 = tail call <2 x i64> @__ockl_hostcall_internal(i8* %14, i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #19
  ret <2 x i64> %15
}

; Function Attrs: nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.implicitarg.ptr() #8

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal <2 x i64> @__ockl_hostcall_internal(i8* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #9 {
  %11 = alloca i8*, align 8, addrspace(5)
  %12 = alloca i32, align 4, addrspace(5)
  %13 = alloca i64, align 8, addrspace(5)
  %14 = alloca i64, align 8, addrspace(5)
  %15 = alloca i64, align 8, addrspace(5)
  %16 = alloca i64, align 8, addrspace(5)
  %17 = alloca i64, align 8, addrspace(5)
  %18 = alloca i64, align 8, addrspace(5)
  %19 = alloca i64, align 8, addrspace(5)
  %20 = alloca i64, align 8, addrspace(5)
  %21 = alloca i32, align 4, addrspace(5)
  %22 = alloca i32, align 4, addrspace(5)
  %23 = alloca %0 addrspace(1)*, align 8, addrspace(5)
  %24 = alloca i64, align 8, addrspace(5)
  %25 = alloca %1 addrspace(1)*, align 8, addrspace(5)
  %26 = alloca %2 addrspace(1)*, align 8, addrspace(5)
  %27 = alloca <2 x i64>, align 16, addrspace(5)
  store i8* %0, i8* addrspace(5)* %11, align 8, !tbaa !10
  store i32 %1, i32 addrspace(5)* %12, align 4, !tbaa !12
  store i64 %2, i64 addrspace(5)* %13, align 8, !tbaa !6
  store i64 %3, i64 addrspace(5)* %14, align 8, !tbaa !6
  store i64 %4, i64 addrspace(5)* %15, align 8, !tbaa !6
  store i64 %5, i64 addrspace(5)* %16, align 8, !tbaa !6
  store i64 %6, i64 addrspace(5)* %17, align 8, !tbaa !6
  store i64 %7, i64 addrspace(5)* %18, align 8, !tbaa !6
  store i64 %8, i64 addrspace(5)* %19, align 8, !tbaa !6
  store i64 %9, i64 addrspace(5)* %20, align 8, !tbaa !6
  %28 = bitcast i32 addrspace(5)* %21 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %28) #16
  %29 = call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0) #16
  %30 = call i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %29) #16
  store i32 %30, i32 addrspace(5)* %21, align 4, !tbaa !12
  %31 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !12
  %32 = call fastcc i32 @0(i32 %31) #21
  store i32 %32, i32 addrspace(5)* %21, align 4, !tbaa !12
  %33 = bitcast i32 addrspace(5)* %22 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %33) #16
  %34 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !12
  %35 = call i32 @llvm.amdgcn.readfirstlane(i32 %34)
  store i32 %35, i32 addrspace(5)* %22, align 4, !tbaa !12
  %36 = bitcast %0 addrspace(1)* addrspace(5)* %23 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %36) #16
  %37 = load i8*, i8* addrspace(5)* %11, align 8, !tbaa !10
  %38 = addrspacecast i8* %37 to %0 addrspace(1)*
  store %0 addrspace(1)* %38, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !10
  %39 = bitcast i64 addrspace(5)* %24 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %39) #16
  %40 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !10
  %41 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !12
  %42 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !12
  %43 = call fastcc i64 @1(%0 addrspace(1)* %40, i32 %41, i32 %42) #21
  store i64 %43, i64 addrspace(5)* %24, align 8, !tbaa !6
  %44 = bitcast %1 addrspace(1)* addrspace(5)* %25 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %44) #16
  %45 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !10
  %46 = load i64, i64 addrspace(5)* %24, align 8, !tbaa !6
  %47 = getelementptr %0, %0 addrspace(1)* %45, i64 0, i32 0
  %48 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %47, align 8, !tbaa !14
  %49 = getelementptr %0, %0 addrspace(1)* %45, i64 0, i32 5
  %50 = load i64, i64 addrspace(1)* %49, align 8, !tbaa !17
  %51 = call fastcc %1 addrspace(1)* @2(%1 addrspace(1)* %48, i64 %50, i64 %46) #21
  store %1 addrspace(1)* %51, %1 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !10
  %52 = bitcast %2 addrspace(1)* addrspace(5)* %26 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %52) #16
  %53 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !10
  %54 = load i64, i64 addrspace(5)* %24, align 8, !tbaa !6
  %55 = getelementptr %0, %0 addrspace(1)* %53, i64 0, i32 1
  %56 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(1)* %55, align 8, !tbaa !18
  %57 = getelementptr %0, %0 addrspace(1)* %53, i64 0, i32 5
  %58 = load i64, i64 addrspace(1)* %57, align 8, !tbaa !17
  %59 = call fastcc %2 addrspace(1)* @3(%2 addrspace(1)* %56, i64 %58, i64 %54) #21
  store %2 addrspace(1)* %59, %2 addrspace(1)* addrspace(5)* %26, align 8, !tbaa !10
  %60 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !10
  %61 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(5)* %26, align 8, !tbaa !10
  %62 = load i32, i32 addrspace(5)* %12, align 4, !tbaa !12
  %63 = load i64, i64 addrspace(5)* %13, align 8, !tbaa !6
  %64 = load i64, i64 addrspace(5)* %14, align 8, !tbaa !6
  %65 = load i64, i64 addrspace(5)* %15, align 8, !tbaa !6
  %66 = load i64, i64 addrspace(5)* %16, align 8, !tbaa !6
  %67 = load i64, i64 addrspace(5)* %17, align 8, !tbaa !6
  %68 = load i64, i64 addrspace(5)* %18, align 8, !tbaa !6
  %69 = load i64, i64 addrspace(5)* %19, align 8, !tbaa !6
  %70 = load i64, i64 addrspace(5)* %20, align 8, !tbaa !6
  %71 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !12
  %72 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !12
  call fastcc void @4(%1 addrspace(1)* %60, %2 addrspace(1)* %61, i32 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i32 %71, i32 %72) #21
  %73 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !10
  %74 = load i64, i64 addrspace(5)* %24, align 8, !tbaa !6
  %75 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !12
  %76 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !12
  call fastcc void @5(%0 addrspace(1)* %73, i64 %74, i32 %75, i32 %76) #21
  %77 = bitcast <2 x i64> addrspace(5)* %27 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 16, i8 addrspace(5)* %77) #16
  %78 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !10
  %79 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(5)* %26, align 8, !tbaa !10
  %80 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !12
  %81 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !12
  %82 = call fastcc <2 x i64> @6(%1 addrspace(1)* %78, %2 addrspace(1)* %79, i32 %80, i32 %81) #21
  store <2 x i64> %82, <2 x i64> addrspace(5)* %27, align 16, !tbaa !19
  %83 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %23, align 8, !tbaa !10
  %84 = load i64, i64 addrspace(5)* %24, align 8, !tbaa !6
  %85 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !12
  %86 = load i32, i32 addrspace(5)* %22, align 4, !tbaa !12
  call fastcc void @7(%0 addrspace(1)* %83, i64 %84, i32 %85, i32 %86) #21
  %87 = load <2 x i64>, <2 x i64> addrspace(5)* %27, align 16, !tbaa !19
  %88 = bitcast <2 x i64> addrspace(5)* %27 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 16, i8 addrspace(5)* %88) #16
  %89 = bitcast %2 addrspace(1)* addrspace(5)* %26 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %89) #16
  %90 = bitcast %1 addrspace(1)* addrspace(5)* %25 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %90) #16
  %91 = bitcast i64 addrspace(5)* %24 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %91) #16
  %92 = bitcast %0 addrspace(1)* addrspace(5)* %23 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %92) #16
  %93 = bitcast i32 addrspace(5)* %22 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %93) #16
  %94 = bitcast i32 addrspace(5)* %21 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %94) #16
  ret <2 x i64> %87
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #10

; Function Attrs: convergent norecurse nounwind
define internal fastcc i32 @0(i32 %0) unnamed_addr #11 {
  %2 = tail call i32 asm sideeffect "; ockl readfirstlane hoisting hack $0", "=v,0"(i32 %0) #19, !srcloc !20
  ret i32 %2
}

; Function Attrs: convergent nounwind readnone willreturn
declare i32 @llvm.amdgcn.readfirstlane(i32) #12

; Function Attrs: convergent norecurse nounwind
define internal fastcc i64 @1(%0 addrspace(1)* nocapture %0, i32 %1, i32 %2) unnamed_addr #11 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %5, label %29

5:                                                ; preds = %3
  %6 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 3
  %7 = load atomic i64, i64 addrspace(1)* %6 syncscope("one-as") acquire, align 8
  %8 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %9 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %8, align 8, !tbaa !14
  %10 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 5
  %11 = load i64, i64 addrspace(1)* %10, align 8, !tbaa !17
  %12 = and i64 %11, %7
  %13 = getelementptr inbounds %1, %1 addrspace(1)* %9, i64 %12, i32 0
  %14 = load atomic i64, i64 addrspace(1)* %13 syncscope("one-as") monotonic, align 8
  %15 = cmpxchg i64 addrspace(1)* %6, i64 %7, i64 %14 syncscope("one-as") acquire monotonic
  %16 = extractvalue { i64, i1 } %15, 1
  br i1 %16, label %29, label %17

17:                                               ; preds = %17, %5
  %18 = phi { i64, i1 } [ %25, %17 ], [ %15, %5 ]
  %19 = extractvalue { i64, i1 } %18, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #16
  %20 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %8, align 8, !tbaa !14
  %21 = load i64, i64 addrspace(1)* %10, align 8, !tbaa !17
  %22 = and i64 %21, %19
  %23 = getelementptr inbounds %1, %1 addrspace(1)* %20, i64 %22, i32 0
  %24 = load atomic i64, i64 addrspace(1)* %23 syncscope("one-as") monotonic, align 8
  %25 = cmpxchg i64 addrspace(1)* %6, i64 %19, i64 %24 syncscope("one-as") acquire monotonic
  %26 = extractvalue { i64, i1 } %25, 1
  br i1 %26, label %27, label %17

27:                                               ; preds = %17
  %28 = extractvalue { i64, i1 } %18, 0
  br label %29

29:                                               ; preds = %27, %5, %3
  %30 = phi i64 [ 0, %3 ], [ %28, %27 ], [ %7, %5 ]
  %31 = trunc i64 %30 to i32
  %32 = lshr i64 %30, 32
  %33 = trunc i64 %32 to i32
  %34 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %31)
  %35 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %33)
  %36 = zext i32 %35 to i64
  %37 = shl nuw i64 %36, 32
  %38 = zext i32 %34 to i64
  %39 = or i64 %37, %38
  ret i64 %39
}

; Function Attrs: convergent norecurse nounwind readonly
define internal fastcc %1 addrspace(1)* @2(%1 addrspace(1)* %0, i64 %1, i64 %2) unnamed_addr #13 {
  %4 = and i64 %2, %1
  %5 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 %4
  ret %1 addrspace(1)* %5
}

; Function Attrs: convergent norecurse nounwind readonly
define internal fastcc %2 addrspace(1)* @3(%2 addrspace(1)* %0, i64 %1, i64 %2) unnamed_addr #13 {
  %4 = and i64 %2, %1
  %5 = getelementptr inbounds %2, %2 addrspace(1)* %0, i64 %4
  ret %2 addrspace(1)* %5
}

; Function Attrs: convergent nofree norecurse nounwind
define internal fastcc void @4(%1 addrspace(1)* nocapture %0, %2 addrspace(1)* nocapture %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i32 %11, i32 %12) unnamed_addr #14 {
  %14 = tail call i64 @llvm.read_register.i64(metadata !21) #21
  %15 = icmp eq i32 %11, %12
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 3
  %18 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 1
  %19 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 2
  store i32 %2, i32 addrspace(1)* %19, align 8, !tbaa !22
  store i64 %14, i64 addrspace(1)* %18, align 8, !tbaa !24
  store i32 1, i32 addrspace(1)* %17, align 4, !tbaa !25
  br label %20

20:                                               ; preds = %16, %13
  %21 = zext i32 %11 to i64
  %22 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 0
  store i64 %3, i64 addrspace(1)* %22, align 8, !tbaa !6
  %23 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 1
  store i64 %4, i64 addrspace(1)* %23, align 8, !tbaa !6
  %24 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 2
  store i64 %5, i64 addrspace(1)* %24, align 8, !tbaa !6
  %25 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 3
  store i64 %6, i64 addrspace(1)* %25, align 8, !tbaa !6
  %26 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 4
  store i64 %7, i64 addrspace(1)* %26, align 8, !tbaa !6
  %27 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 5
  store i64 %8, i64 addrspace(1)* %27, align 8, !tbaa !6
  %28 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 6
  store i64 %9, i64 addrspace(1)* %28, align 8, !tbaa !6
  %29 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 7
  store i64 %10, i64 addrspace(1)* %29, align 8, !tbaa !6
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal fastcc void @5(%0 addrspace(1)* nocapture %0, i64 %1, i32 %2, i32 %3) unnamed_addr #11 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 4
  %8 = load atomic i64, i64 addrspace(1)* %7 syncscope("one-as") monotonic, align 8
  %9 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %10 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %9, align 8, !tbaa !14
  %11 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 5
  %12 = load i64, i64 addrspace(1)* %11, align 8, !tbaa !17
  %13 = and i64 %12, %1
  %14 = getelementptr inbounds %1, %1 addrspace(1)* %10, i64 %13, i32 0
  store i64 %8, i64 addrspace(1)* %14, align 8, !tbaa !26
  %15 = cmpxchg i64 addrspace(1)* %7, i64 %8, i64 %1 syncscope("one-as") release monotonic
  %16 = extractvalue { i64, i1 } %15, 1
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %6
  %18 = phi { i64, i1 } [ %20, %17 ], [ %15, %6 ]
  %19 = extractvalue { i64, i1 } %18, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #16
  store i64 %19, i64 addrspace(1)* %14, align 8, !tbaa !26
  %20 = cmpxchg i64 addrspace(1)* %7, i64 %19, i64 %1 syncscope("one-as") release monotonic
  %21 = extractvalue { i64, i1 } %20, 1
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %6
  %23 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 2, i32 0
  %24 = load i64, i64 addrspace(1)* %23, align 8
  tail call void @__ockl_hsa_signal_add(i64 %24, i64 1, i32 3) #19
  br label %25

25:                                               ; preds = %22, %4
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal fastcc <2 x i64> @6(%1 addrspace(1)* nocapture readonly %0, %2 addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) unnamed_addr #7 {
  %5 = icmp eq i32 %2, %3
  %6 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %15, %4
  br i1 %5, label %8, label %11

8:                                                ; preds = %7
  %9 = load atomic i32, i32 addrspace(1)* %6 syncscope("one-as") acquire, align 4
  %10 = and i32 %9, 1
  br label %11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ %10, %8 ], [ 1, %7 ]
  %13 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @llvm.amdgcn.s.sleep(i32 1)
  br label %7

16:                                               ; preds = %11
  %17 = zext i32 %2 to i64
  %18 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %17, i64 0
  %19 = bitcast i64 addrspace(1)* %18 to <2 x i64> addrspace(1)*
  %20 = load <2 x i64>, <2 x i64> addrspace(1)* %19, align 8, !tbaa !6
  ret <2 x i64> %20
}

; Function Attrs: convergent norecurse nounwind
define internal fastcc void @7(%0 addrspace(1)* nocapture %0, i64 %1, i32 %2, i32 %3) unnamed_addr #11 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 5
  %8 = load i64, i64 addrspace(1)* %7, align 8, !tbaa !17
  %9 = add i64 %8, 1
  %10 = add i64 %9, %1
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 %9, i64 %10
  %13 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 3
  %14 = load atomic i64, i64 addrspace(1)* %13 syncscope("one-as") monotonic, align 8
  %15 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %16 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %15, align 8, !tbaa !14
  %17 = and i64 %12, %8
  %18 = getelementptr inbounds %1, %1 addrspace(1)* %16, i64 %17, i32 0
  store i64 %14, i64 addrspace(1)* %18, align 8, !tbaa !26
  %19 = cmpxchg i64 addrspace(1)* %13, i64 %14, i64 %12 syncscope("one-as") release monotonic
  %20 = extractvalue { i64, i1 } %19, 1
  br i1 %20, label %26, label %21

21:                                               ; preds = %21, %6
  %22 = phi { i64, i1 } [ %24, %21 ], [ %19, %6 ]
  %23 = extractvalue { i64, i1 } %22, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #16
  store i64 %23, i64 addrspace(1)* %18, align 8, !tbaa !26
  %24 = cmpxchg i64 addrspace(1)* %13, i64 %23, i64 %12 syncscope("one-as") release monotonic
  %25 = extractvalue { i64, i1 } %24, 1
  br i1 %25, label %26, label %21

26:                                               ; preds = %21, %6, %4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #10

; Function Attrs: nounwind willreturn
declare void @llvm.amdgcn.s.sleep(i32 immarg) #15

; Function Attrs: convergent norecurse nounwind
define internal void @__ockl_hsa_signal_add(i64 %0, i64 %1, i32 %2) local_unnamed_addr #11 {
  %4 = inttoptr i64 %0 to %4 addrspace(1)*
  %5 = getelementptr inbounds %4, %4 addrspace(1)* %4, i64 0, i32 1, i32 0
  switch i32 %2, label %6 [
    i32 1, label %8
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
  ]

6:                                                ; preds = %3
  %7 = atomicrmw add i64 addrspace(1)* %5, i64 %1 syncscope("one-as") monotonic
  br label %16

8:                                                ; preds = %3, %3
  %9 = atomicrmw add i64 addrspace(1)* %5, i64 %1 syncscope("one-as") acquire
  br label %16

10:                                               ; preds = %3
  %11 = atomicrmw add i64 addrspace(1)* %5, i64 %1 syncscope("one-as") release
  br label %16

12:                                               ; preds = %3
  %13 = atomicrmw add i64 addrspace(1)* %5, i64 %1 syncscope("one-as") acq_rel
  br label %16

14:                                               ; preds = %3
  %15 = atomicrmw add i64 addrspace(1)* %5, i64 %1 seq_cst
  br label %16

16:                                               ; preds = %14, %12, %10, %8, %6
  %17 = getelementptr inbounds %4, %4 addrspace(1)* %4, i64 0, i32 2
  %18 = load i64, i64 addrspace(1)* %17, align 16, !tbaa !27
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = inttoptr i64 %18 to i64 addrspace(1)*
  %22 = getelementptr inbounds %4, %4 addrspace(1)* %4, i64 0, i32 3
  %23 = load i32, i32 addrspace(1)* %22, align 8, !tbaa !29
  %24 = zext i32 %23 to i64
  store atomic i64 %24, i64 addrspace(1)* %21 syncscope("one-as") release, align 8
  %25 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %23) #16
  %26 = and i32 %25, 255
  tail call void @llvm.amdgcn.s.sendmsg(i32 1, i32 %26) #16
  br label %27

27:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind
declare void @llvm.amdgcn.s.sendmsg(i32 immarg, i32) #16

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #17

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.amdgcn.mbcnt.lo(i32, i32) #18

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.amdgcn.mbcnt.hi(i32, i32) #18

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_printf_append_args(i64 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i32 %9) #7 {
  %11 = icmp eq i32 %9, 0
  %12 = or i64 %0, 2
  %13 = select i1 %11, i64 %0, i64 %12
  %14 = and i64 %13, -225
  %15 = zext i32 %1 to i64
  %16 = shl nuw nsw i64 %15, 5
  %17 = or i64 %14, %16
  %18 = tail call <2 x i64> @__ockl_hostcall_preview(i32 2, i64 %17, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #19
  %19 = extractelement <2 x i64> %18, i64 0
  ret i64 %19
}

; Function Attrs: convergent norecurse nounwind
define internal i64 @__ockl_printf_append_string_n(i64 %0, i8* readonly %1, i64 %2, i32 %3) #7 {
  %5 = icmp eq i32 %3, 0
  %6 = or i64 %0, 2
  %7 = select i1 %5, i64 %0, i64 %6
  %8 = icmp eq i8* %1, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = and i64 %7, -225
  %11 = or i64 %10, 32
  %12 = tail call <2 x i64> @__ockl_hostcall_preview(i32 2, i64 %11, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #19
  br label %456

13:                                               ; preds = %4
  %14 = and i64 %7, 2
  %15 = and i64 %7, -3
  %16 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %15, i64 0
  br label %17

17:                                               ; preds = %450, %13
  %18 = phi i64 [ %2, %13 ], [ %453, %450 ]
  %19 = phi i8* [ %1, %13 ], [ %454, %450 ]
  %20 = phi <2 x i64> [ %16, %13 ], [ %452, %450 ]
  %21 = icmp ugt i64 %18, 56
  %22 = extractelement <2 x i64> %20, i64 0
  %23 = or i64 %22, %14
  %24 = insertelement <2 x i64> poison, i64 %23, i64 0
  %25 = select i1 %21, <2 x i64> %20, <2 x i64> %24
  %26 = icmp ult i64 %18, 56
  %27 = select i1 %26, i64 %18, i64 56
  %28 = trunc i64 %27 to i32
  %29 = extractelement <2 x i64> %25, i64 0
  %30 = and i64 %29, -225
  %31 = shl nuw nsw i64 %27, 2
  %32 = add nuw nsw i64 %31, 28
  %33 = and i64 %32, 480
  %34 = or i64 %30, %33
  %35 = icmp ugt i32 %28, 7
  br i1 %35, label %38, label %36

36:                                               ; preds = %17
  %37 = icmp eq i32 %28, 0
  br i1 %37, label %92, label %78

38:                                               ; preds = %17
  %39 = load i8, i8* %19, align 1, !tbaa !19
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, i8* %19, i64 1
  %42 = load i8, i8* %41, align 1, !tbaa !19
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 8
  %45 = or i64 %44, %40
  %46 = getelementptr inbounds i8, i8* %19, i64 2
  %47 = load i8, i8* %46, align 1, !tbaa !19
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 16
  %50 = or i64 %45, %49
  %51 = getelementptr inbounds i8, i8* %19, i64 3
  %52 = load i8, i8* %51, align 1, !tbaa !19
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 24
  %55 = or i64 %50, %54
  %56 = getelementptr inbounds i8, i8* %19, i64 4
  %57 = load i8, i8* %56, align 1, !tbaa !19
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 32
  %60 = or i64 %55, %59
  %61 = getelementptr inbounds i8, i8* %19, i64 5
  %62 = load i8, i8* %61, align 1, !tbaa !19
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 40
  %65 = or i64 %60, %64
  %66 = getelementptr inbounds i8, i8* %19, i64 6
  %67 = load i8, i8* %66, align 1, !tbaa !19
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 48
  %70 = or i64 %65, %69
  %71 = getelementptr inbounds i8, i8* %19, i64 7
  %72 = load i8, i8* %71, align 1, !tbaa !19
  %73 = zext i8 %72 to i64
  %74 = shl nuw i64 %73, 56
  %75 = or i64 %70, %74
  %76 = add nsw i32 %28, -8
  %77 = getelementptr inbounds i8, i8* %19, i64 8
  br label %92

78:                                               ; preds = %78, %36
  %79 = phi i32 [ %90, %78 ], [ 0, %36 ]
  %80 = phi i64 [ %89, %78 ], [ 0, %36 ]
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %19, i64 %81
  %83 = load i8, i8* %82, align 1, !tbaa !19
  %84 = zext i8 %83 to i64
  %85 = shl i32 %79, 3
  %86 = and i32 %85, 56
  %87 = zext i32 %86 to i64
  %88 = shl nuw i64 %84, %87
  %89 = or i64 %88, %80
  %90 = add nuw nsw i32 %79, 1
  %91 = icmp eq i32 %90, %28
  br i1 %91, label %92, label %78

92:                                               ; preds = %78, %38, %36
  %93 = phi i8* [ %77, %38 ], [ %19, %36 ], [ %19, %78 ]
  %94 = phi i32 [ %76, %38 ], [ 0, %36 ], [ 0, %78 ]
  %95 = phi i64 [ %75, %38 ], [ 0, %36 ], [ %89, %78 ]
  %96 = icmp ugt i32 %94, 7
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = icmp eq i32 %94, 0
  br i1 %98, label %152, label %139

99:                                               ; preds = %92
  %100 = load i8, i8* %93, align 1, !tbaa !19
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8, i8* %93, i64 1
  %103 = load i8, i8* %102, align 1, !tbaa !19
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 8
  %106 = or i64 %105, %101
  %107 = getelementptr inbounds i8, i8* %93, i64 2
  %108 = load i8, i8* %107, align 1, !tbaa !19
  %109 = zext i8 %108 to i64
  %110 = shl nuw nsw i64 %109, 16
  %111 = or i64 %106, %110
  %112 = getelementptr inbounds i8, i8* %93, i64 3
  %113 = load i8, i8* %112, align 1, !tbaa !19
  %114 = zext i8 %113 to i64
  %115 = shl nuw nsw i64 %114, 24
  %116 = or i64 %111, %115
  %117 = getelementptr inbounds i8, i8* %93, i64 4
  %118 = load i8, i8* %117, align 1, !tbaa !19
  %119 = zext i8 %118 to i64
  %120 = shl nuw nsw i64 %119, 32
  %121 = or i64 %116, %120
  %122 = getelementptr inbounds i8, i8* %93, i64 5
  %123 = load i8, i8* %122, align 1, !tbaa !19
  %124 = zext i8 %123 to i64
  %125 = shl nuw nsw i64 %124, 40
  %126 = or i64 %121, %125
  %127 = getelementptr inbounds i8, i8* %93, i64 6
  %128 = load i8, i8* %127, align 1, !tbaa !19
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i64 %129, 48
  %131 = or i64 %126, %130
  %132 = getelementptr inbounds i8, i8* %93, i64 7
  %133 = load i8, i8* %132, align 1, !tbaa !19
  %134 = zext i8 %133 to i64
  %135 = shl nuw i64 %134, 56
  %136 = or i64 %131, %135
  %137 = add nsw i32 %94, -8
  %138 = getelementptr inbounds i8, i8* %93, i64 8
  br label %152

139:                                              ; preds = %139, %97
  %140 = phi i32 [ %150, %139 ], [ 0, %97 ]
  %141 = phi i64 [ %149, %139 ], [ 0, %97 ]
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %93, i64 %142
  %144 = load i8, i8* %143, align 1, !tbaa !19
  %145 = zext i8 %144 to i64
  %146 = shl i32 %140, 3
  %147 = zext i32 %146 to i64
  %148 = shl nuw i64 %145, %147
  %149 = or i64 %148, %141
  %150 = add nuw nsw i32 %140, 1
  %151 = icmp eq i32 %150, %94
  br i1 %151, label %152, label %139

152:                                              ; preds = %139, %99, %97
  %153 = phi i8* [ %138, %99 ], [ %93, %97 ], [ %93, %139 ]
  %154 = phi i32 [ %137, %99 ], [ 0, %97 ], [ 0, %139 ]
  %155 = phi i64 [ %136, %99 ], [ 0, %97 ], [ %149, %139 ]
  %156 = icmp ugt i32 %154, 7
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = icmp eq i32 %154, 0
  br i1 %158, label %212, label %199

159:                                              ; preds = %152
  %160 = load i8, i8* %153, align 1, !tbaa !19
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds i8, i8* %153, i64 1
  %163 = load i8, i8* %162, align 1, !tbaa !19
  %164 = zext i8 %163 to i64
  %165 = shl nuw nsw i64 %164, 8
  %166 = or i64 %165, %161
  %167 = getelementptr inbounds i8, i8* %153, i64 2
  %168 = load i8, i8* %167, align 1, !tbaa !19
  %169 = zext i8 %168 to i64
  %170 = shl nuw nsw i64 %169, 16
  %171 = or i64 %166, %170
  %172 = getelementptr inbounds i8, i8* %153, i64 3
  %173 = load i8, i8* %172, align 1, !tbaa !19
  %174 = zext i8 %173 to i64
  %175 = shl nuw nsw i64 %174, 24
  %176 = or i64 %171, %175
  %177 = getelementptr inbounds i8, i8* %153, i64 4
  %178 = load i8, i8* %177, align 1, !tbaa !19
  %179 = zext i8 %178 to i64
  %180 = shl nuw nsw i64 %179, 32
  %181 = or i64 %176, %180
  %182 = getelementptr inbounds i8, i8* %153, i64 5
  %183 = load i8, i8* %182, align 1, !tbaa !19
  %184 = zext i8 %183 to i64
  %185 = shl nuw nsw i64 %184, 40
  %186 = or i64 %181, %185
  %187 = getelementptr inbounds i8, i8* %153, i64 6
  %188 = load i8, i8* %187, align 1, !tbaa !19
  %189 = zext i8 %188 to i64
  %190 = shl nuw nsw i64 %189, 48
  %191 = or i64 %186, %190
  %192 = getelementptr inbounds i8, i8* %153, i64 7
  %193 = load i8, i8* %192, align 1, !tbaa !19
  %194 = zext i8 %193 to i64
  %195 = shl nuw i64 %194, 56
  %196 = or i64 %191, %195
  %197 = add nsw i32 %154, -8
  %198 = getelementptr inbounds i8, i8* %153, i64 8
  br label %212

199:                                              ; preds = %199, %157
  %200 = phi i32 [ %210, %199 ], [ 0, %157 ]
  %201 = phi i64 [ %209, %199 ], [ 0, %157 ]
  %202 = zext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %153, i64 %202
  %204 = load i8, i8* %203, align 1, !tbaa !19
  %205 = zext i8 %204 to i64
  %206 = shl i32 %200, 3
  %207 = zext i32 %206 to i64
  %208 = shl nuw i64 %205, %207
  %209 = or i64 %208, %201
  %210 = add nuw nsw i32 %200, 1
  %211 = icmp eq i32 %210, %154
  br i1 %211, label %212, label %199

212:                                              ; preds = %199, %159, %157
  %213 = phi i8* [ %198, %159 ], [ %153, %157 ], [ %153, %199 ]
  %214 = phi i32 [ %197, %159 ], [ 0, %157 ], [ 0, %199 ]
  %215 = phi i64 [ %196, %159 ], [ 0, %157 ], [ %209, %199 ]
  %216 = icmp ugt i32 %214, 7
  br i1 %216, label %219, label %217

217:                                              ; preds = %212
  %218 = icmp eq i32 %214, 0
  br i1 %218, label %272, label %259

219:                                              ; preds = %212
  %220 = load i8, i8* %213, align 1, !tbaa !19
  %221 = zext i8 %220 to i64
  %222 = getelementptr inbounds i8, i8* %213, i64 1
  %223 = load i8, i8* %222, align 1, !tbaa !19
  %224 = zext i8 %223 to i64
  %225 = shl nuw nsw i64 %224, 8
  %226 = or i64 %225, %221
  %227 = getelementptr inbounds i8, i8* %213, i64 2
  %228 = load i8, i8* %227, align 1, !tbaa !19
  %229 = zext i8 %228 to i64
  %230 = shl nuw nsw i64 %229, 16
  %231 = or i64 %226, %230
  %232 = getelementptr inbounds i8, i8* %213, i64 3
  %233 = load i8, i8* %232, align 1, !tbaa !19
  %234 = zext i8 %233 to i64
  %235 = shl nuw nsw i64 %234, 24
  %236 = or i64 %231, %235
  %237 = getelementptr inbounds i8, i8* %213, i64 4
  %238 = load i8, i8* %237, align 1, !tbaa !19
  %239 = zext i8 %238 to i64
  %240 = shl nuw nsw i64 %239, 32
  %241 = or i64 %236, %240
  %242 = getelementptr inbounds i8, i8* %213, i64 5
  %243 = load i8, i8* %242, align 1, !tbaa !19
  %244 = zext i8 %243 to i64
  %245 = shl nuw nsw i64 %244, 40
  %246 = or i64 %241, %245
  %247 = getelementptr inbounds i8, i8* %213, i64 6
  %248 = load i8, i8* %247, align 1, !tbaa !19
  %249 = zext i8 %248 to i64
  %250 = shl nuw nsw i64 %249, 48
  %251 = or i64 %246, %250
  %252 = getelementptr inbounds i8, i8* %213, i64 7
  %253 = load i8, i8* %252, align 1, !tbaa !19
  %254 = zext i8 %253 to i64
  %255 = shl nuw i64 %254, 56
  %256 = or i64 %251, %255
  %257 = add i32 %214, -8
  %258 = getelementptr inbounds i8, i8* %213, i64 8
  br label %272

259:                                              ; preds = %259, %217
  %260 = phi i32 [ %270, %259 ], [ 0, %217 ]
  %261 = phi i64 [ %269, %259 ], [ 0, %217 ]
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds i8, i8* %213, i64 %262
  %264 = load i8, i8* %263, align 1, !tbaa !19
  %265 = zext i8 %264 to i64
  %266 = shl i32 %260, 3
  %267 = zext i32 %266 to i64
  %268 = shl nuw i64 %265, %267
  %269 = or i64 %268, %261
  %270 = add nuw nsw i32 %260, 1
  %271 = icmp eq i32 %270, %214
  br i1 %271, label %272, label %259

272:                                              ; preds = %259, %219, %217
  %273 = phi i8* [ %258, %219 ], [ %213, %217 ], [ %213, %259 ]
  %274 = phi i32 [ %257, %219 ], [ 0, %217 ], [ 0, %259 ]
  %275 = phi i64 [ %256, %219 ], [ 0, %217 ], [ %269, %259 ]
  %276 = icmp ugt i32 %274, 7
  br i1 %276, label %279, label %277

277:                                              ; preds = %272
  %278 = icmp eq i32 %274, 0
  br i1 %278, label %332, label %319

279:                                              ; preds = %272
  %280 = load i8, i8* %273, align 1, !tbaa !19
  %281 = zext i8 %280 to i64
  %282 = getelementptr inbounds i8, i8* %273, i64 1
  %283 = load i8, i8* %282, align 1, !tbaa !19
  %284 = zext i8 %283 to i64
  %285 = shl nuw nsw i64 %284, 8
  %286 = or i64 %285, %281
  %287 = getelementptr inbounds i8, i8* %273, i64 2
  %288 = load i8, i8* %287, align 1, !tbaa !19
  %289 = zext i8 %288 to i64
  %290 = shl nuw nsw i64 %289, 16
  %291 = or i64 %286, %290
  %292 = getelementptr inbounds i8, i8* %273, i64 3
  %293 = load i8, i8* %292, align 1, !tbaa !19
  %294 = zext i8 %293 to i64
  %295 = shl nuw nsw i64 %294, 24
  %296 = or i64 %291, %295
  %297 = getelementptr inbounds i8, i8* %273, i64 4
  %298 = load i8, i8* %297, align 1, !tbaa !19
  %299 = zext i8 %298 to i64
  %300 = shl nuw nsw i64 %299, 32
  %301 = or i64 %296, %300
  %302 = getelementptr inbounds i8, i8* %273, i64 5
  %303 = load i8, i8* %302, align 1, !tbaa !19
  %304 = zext i8 %303 to i64
  %305 = shl nuw nsw i64 %304, 40
  %306 = or i64 %301, %305
  %307 = getelementptr inbounds i8, i8* %273, i64 6
  %308 = load i8, i8* %307, align 1, !tbaa !19
  %309 = zext i8 %308 to i64
  %310 = shl nuw nsw i64 %309, 48
  %311 = or i64 %306, %310
  %312 = getelementptr inbounds i8, i8* %273, i64 7
  %313 = load i8, i8* %312, align 1, !tbaa !19
  %314 = zext i8 %313 to i64
  %315 = shl nuw i64 %314, 56
  %316 = or i64 %311, %315
  %317 = add i32 %274, -8
  %318 = getelementptr inbounds i8, i8* %273, i64 8
  br label %332

319:                                              ; preds = %319, %277
  %320 = phi i32 [ %330, %319 ], [ 0, %277 ]
  %321 = phi i64 [ %329, %319 ], [ 0, %277 ]
  %322 = zext i32 %320 to i64
  %323 = getelementptr inbounds i8, i8* %273, i64 %322
  %324 = load i8, i8* %323, align 1, !tbaa !19
  %325 = zext i8 %324 to i64
  %326 = shl i32 %320, 3
  %327 = zext i32 %326 to i64
  %328 = shl nuw i64 %325, %327
  %329 = or i64 %328, %321
  %330 = add nuw nsw i32 %320, 1
  %331 = icmp eq i32 %330, %274
  br i1 %331, label %332, label %319

332:                                              ; preds = %319, %279, %277
  %333 = phi i8* [ %318, %279 ], [ %273, %277 ], [ %273, %319 ]
  %334 = phi i32 [ %317, %279 ], [ 0, %277 ], [ 0, %319 ]
  %335 = phi i64 [ %316, %279 ], [ 0, %277 ], [ %329, %319 ]
  %336 = icmp ugt i32 %334, 7
  br i1 %336, label %339, label %337

337:                                              ; preds = %332
  %338 = icmp eq i32 %334, 0
  br i1 %338, label %392, label %379

339:                                              ; preds = %332
  %340 = load i8, i8* %333, align 1, !tbaa !19
  %341 = zext i8 %340 to i64
  %342 = getelementptr inbounds i8, i8* %333, i64 1
  %343 = load i8, i8* %342, align 1, !tbaa !19
  %344 = zext i8 %343 to i64
  %345 = shl nuw nsw i64 %344, 8
  %346 = or i64 %345, %341
  %347 = getelementptr inbounds i8, i8* %333, i64 2
  %348 = load i8, i8* %347, align 1, !tbaa !19
  %349 = zext i8 %348 to i64
  %350 = shl nuw nsw i64 %349, 16
  %351 = or i64 %346, %350
  %352 = getelementptr inbounds i8, i8* %333, i64 3
  %353 = load i8, i8* %352, align 1, !tbaa !19
  %354 = zext i8 %353 to i64
  %355 = shl nuw nsw i64 %354, 24
  %356 = or i64 %351, %355
  %357 = getelementptr inbounds i8, i8* %333, i64 4
  %358 = load i8, i8* %357, align 1, !tbaa !19
  %359 = zext i8 %358 to i64
  %360 = shl nuw nsw i64 %359, 32
  %361 = or i64 %356, %360
  %362 = getelementptr inbounds i8, i8* %333, i64 5
  %363 = load i8, i8* %362, align 1, !tbaa !19
  %364 = zext i8 %363 to i64
  %365 = shl nuw nsw i64 %364, 40
  %366 = or i64 %361, %365
  %367 = getelementptr inbounds i8, i8* %333, i64 6
  %368 = load i8, i8* %367, align 1, !tbaa !19
  %369 = zext i8 %368 to i64
  %370 = shl nuw nsw i64 %369, 48
  %371 = or i64 %366, %370
  %372 = getelementptr inbounds i8, i8* %333, i64 7
  %373 = load i8, i8* %372, align 1, !tbaa !19
  %374 = zext i8 %373 to i64
  %375 = shl nuw i64 %374, 56
  %376 = or i64 %371, %375
  %377 = add i32 %334, -8
  %378 = getelementptr inbounds i8, i8* %333, i64 8
  br label %392

379:                                              ; preds = %379, %337
  %380 = phi i32 [ %390, %379 ], [ 0, %337 ]
  %381 = phi i64 [ %389, %379 ], [ 0, %337 ]
  %382 = zext i32 %380 to i64
  %383 = getelementptr inbounds i8, i8* %333, i64 %382
  %384 = load i8, i8* %383, align 1, !tbaa !19
  %385 = zext i8 %384 to i64
  %386 = shl i32 %380, 3
  %387 = zext i32 %386 to i64
  %388 = shl nuw i64 %385, %387
  %389 = or i64 %388, %381
  %390 = add nuw nsw i32 %380, 1
  %391 = icmp eq i32 %390, %334
  br i1 %391, label %392, label %379

392:                                              ; preds = %379, %339, %337
  %393 = phi i8* [ %378, %339 ], [ %333, %337 ], [ %333, %379 ]
  %394 = phi i32 [ %377, %339 ], [ 0, %337 ], [ 0, %379 ]
  %395 = phi i64 [ %376, %339 ], [ 0, %337 ], [ %389, %379 ]
  %396 = icmp ugt i32 %394, 7
  br i1 %396, label %399, label %397

397:                                              ; preds = %392
  %398 = icmp eq i32 %394, 0
  br i1 %398, label %450, label %437

399:                                              ; preds = %392
  %400 = load i8, i8* %393, align 1, !tbaa !19
  %401 = zext i8 %400 to i64
  %402 = getelementptr inbounds i8, i8* %393, i64 1
  %403 = load i8, i8* %402, align 1, !tbaa !19
  %404 = zext i8 %403 to i64
  %405 = shl nuw nsw i64 %404, 8
  %406 = or i64 %405, %401
  %407 = getelementptr inbounds i8, i8* %393, i64 2
  %408 = load i8, i8* %407, align 1, !tbaa !19
  %409 = zext i8 %408 to i64
  %410 = shl nuw nsw i64 %409, 16
  %411 = or i64 %406, %410
  %412 = getelementptr inbounds i8, i8* %393, i64 3
  %413 = load i8, i8* %412, align 1, !tbaa !19
  %414 = zext i8 %413 to i64
  %415 = shl nuw nsw i64 %414, 24
  %416 = or i64 %411, %415
  %417 = getelementptr inbounds i8, i8* %393, i64 4
  %418 = load i8, i8* %417, align 1, !tbaa !19
  %419 = zext i8 %418 to i64
  %420 = shl nuw nsw i64 %419, 32
  %421 = or i64 %416, %420
  %422 = getelementptr inbounds i8, i8* %393, i64 5
  %423 = load i8, i8* %422, align 1, !tbaa !19
  %424 = zext i8 %423 to i64
  %425 = shl nuw nsw i64 %424, 40
  %426 = or i64 %421, %425
  %427 = getelementptr inbounds i8, i8* %393, i64 6
  %428 = load i8, i8* %427, align 1, !tbaa !19
  %429 = zext i8 %428 to i64
  %430 = shl nuw nsw i64 %429, 48
  %431 = or i64 %426, %430
  %432 = getelementptr inbounds i8, i8* %393, i64 7
  %433 = load i8, i8* %432, align 1, !tbaa !19
  %434 = zext i8 %433 to i64
  %435 = shl nuw i64 %434, 56
  %436 = or i64 %431, %435
  br label %450

437:                                              ; preds = %437, %397
  %438 = phi i32 [ %448, %437 ], [ 0, %397 ]
  %439 = phi i64 [ %447, %437 ], [ 0, %397 ]
  %440 = zext i32 %438 to i64
  %441 = getelementptr inbounds i8, i8* %393, i64 %440
  %442 = load i8, i8* %441, align 1, !tbaa !19
  %443 = zext i8 %442 to i64
  %444 = shl i32 %438, 3
  %445 = zext i32 %444 to i64
  %446 = shl nuw i64 %443, %445
  %447 = or i64 %446, %439
  %448 = add nuw nsw i32 %438, 1
  %449 = icmp eq i32 %448, %394
  br i1 %449, label %450, label %437

450:                                              ; preds = %437, %399, %397
  %451 = phi i64 [ %436, %399 ], [ 0, %397 ], [ %447, %437 ]
  %452 = tail call <2 x i64> @__ockl_hostcall_preview(i32 2, i64 %34, i64 %95, i64 %155, i64 %215, i64 %275, i64 %335, i64 %395, i64 %451) #19
  %453 = sub i64 %18, %27
  %454 = getelementptr inbounds i8, i8* %19, i64 %27
  %455 = icmp eq i64 %453, 0
  br i1 %455, label %456, label %17

456:                                              ; preds = %450, %9
  %457 = phi <2 x i64> [ %12, %9 ], [ %452, %450 ]
  %458 = extractelement <2 x i64> %457, i64 0
  ret i64 %458
}

; Function Attrs: convergent norecurse nounwind readnone
define internal i64 @__ockl_get_local_id(i32 %0) #6 {
  switch i32 %0, label %8 [
    i32 0, label %2
    i32 1, label %4
    i32 2, label %6
  ]

2:                                                ; preds = %1
  %3 = tail call i32 @llvm.amdgcn.workitem.id.x(), !range !30
  br label %8

4:                                                ; preds = %1
  %5 = tail call i32 @llvm.amdgcn.workitem.id.y(), !range !30
  br label %8

6:                                                ; preds = %1
  %7 = tail call i32 @llvm.amdgcn.workitem.id.z(), !range !30
  br label %8

8:                                                ; preds = %6, %4, %2, %1
  %9 = phi i32 [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], [ 0, %1 ]
  %10 = zext i32 %9 to i64
  ret i64 %10
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #8

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #8

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.z() #8

; Function Attrs: convergent norecurse nounwind readnone
define internal i64 @__ockl_get_group_id(i32 %0) #6 {
  switch i32 %0, label %8 [
    i32 0, label %2
    i32 1, label %4
    i32 2, label %6
  ]

2:                                                ; preds = %1
  %3 = tail call i32 @llvm.amdgcn.workgroup.id.x()
  br label %8

4:                                                ; preds = %1
  %5 = tail call i32 @llvm.amdgcn.workgroup.id.y()
  br label %8

6:                                                ; preds = %1
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.z()
  br label %8

8:                                                ; preds = %6, %4, %2, %1
  %9 = phi i32 [ %7, %6 ], [ %5, %4 ], [ %3, %2 ], [ 0, %1 ]
  %10 = zext i32 %9 to i64
  ret i64 %10
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #8

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #8

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.z() #8

attributes #0 = { convergent noinline nounwind mustprogress "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { convergent noinline norecurse nounwind mustprogress "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent noinline nounwind mustprogress "amdgpu-flat-work-group-size"="1,1024" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+add-no-carry-insts,+aperture-regs,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+ds-src2-insts,+enable-ds128,+enable-prt-strict-null,+fast-denormal-f32,+fast-fmaf,+flat-address-space,+flat-for-global,+flat-global-insts,+flat-inst-offsets,+flat-scratch-insts,+fma-mix-insts,+fp64,+gcn3-encoding,+gfx7-gfx8-gfx9-insts,+gfx8-insts,+gfx9,+gfx9-insts,+half-rate-64-ops,+image-gather4-d16-bug,+int-clamp-insts,+inv-2pi-inline-imm,+ldsbankcount32,+load-store-opt,+localmemorysize65536,+mad-mac-f32-insts,+promote-alloca,+r128-a16,+s-memrealtime,+s-memtime-inst,+scalar-atomics,+scalar-flat-scratch-insts,+scalar-stores,+sdwa,+sdwa-omod,+sdwa-scalar,+sdwa-sdst,+sramecc-support,+trap-handler,+unaligned-access-mode,+unaligned-buffer-access,+unaligned-ds-access,+vgpr-index-mode,+vop3p,-wavefrontsize16,-wavefrontsize32,+wavefrontsize64,+xnack-support" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent noinline nounwind "amdgpu-flat-work-group-size"="1,1024" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+add-no-carry-insts,+aperture-regs,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+ds-src2-insts,+enable-ds128,+enable-prt-strict-null,+fast-denormal-f32,+fast-fmaf,+flat-address-space,+flat-for-global,+flat-global-insts,+flat-inst-offsets,+flat-scratch-insts,+fma-mix-insts,+fp64,+gcn3-encoding,+gfx7-gfx8-gfx9-insts,+gfx8-insts,+gfx9,+gfx9-insts,+half-rate-64-ops,+image-gather4-d16-bug,+int-clamp-insts,+inv-2pi-inline-imm,+ldsbankcount32,+load-store-opt,+localmemorysize65536,+mad-mac-f32-insts,+promote-alloca,+r128-a16,+s-memrealtime,+s-memtime-inst,+scalar-atomics,+scalar-flat-scratch-insts,+scalar-stores,+sdwa,+sdwa-omod,+sdwa-scalar,+sdwa-sdst,+sramecc-support,+trap-handler,+unaligned-access-mode,+unaligned-buffer-access,+unaligned-ds-access,+vgpr-index-mode,+vop3p,-wavefrontsize16,-wavefrontsize32,+wavefrontsize64,+xnack-support" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { convergent nounwind willreturn }
attributes #6 = { convergent norecurse nounwind readnone "amdgpu-flat-work-group-size"="1,1024" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+16-bit-insts,+add-no-carry-insts,+aperture-regs,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+ds-src2-insts,+enable-ds128,+enable-prt-strict-null,+fast-denormal-f32,+fast-fmaf,+flat-address-space,+flat-for-global,+flat-global-insts,+flat-inst-offsets,+flat-scratch-insts,+fma-mix-insts,+fp64,+gcn3-encoding,+gfx7-gfx8-gfx9-insts,+gfx8-insts,+gfx9,+gfx9-insts,+half-rate-64-ops,+image-gather4-d16-bug,+int-clamp-insts,+inv-2pi-inline-imm,+ldsbankcount32,+load-store-opt,+localmemorysize65536,+mad-mac-f32-insts,+promote-alloca,+r128-a16,+s-memrealtime,+s-memtime-inst,+scalar-atomics,+scalar-flat-scratch-insts,+scalar-stores,+sdwa,+sdwa-omod,+sdwa-scalar,+sdwa-sdst,+sramecc-support,+trap-handler,+unaligned-access-mode,+unaligned-buffer-access,+unaligned-ds-access,+vgpr-index-mode,+vop3p,-wavefrontsize16,-wavefrontsize32,+wavefrontsize64,+xnack-support" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { convergent norecurse nounwind "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone speculatable willreturn }
attributes #9 = { convergent noinline norecurse nounwind optnone "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nosync nounwind willreturn }
attributes #11 = { convergent norecurse nounwind "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { convergent nounwind readnone willreturn }
attributes #13 = { convergent norecurse nounwind readonly "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { convergent nofree norecurse nounwind "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind readonly }
attributes #18 = { nounwind readnone willreturn }
attributes #19 = { convergent nounwind }
attributes #20 = { convergent nounwind readnone }
attributes #21 = { convergent }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2, !2}
!opencl.ocl.version = !{!3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3, !3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{!"clang version 12.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-4.2.0 21161 b204d7f0cae65b6cd4446eec50fc1fb675d582af)"}
!3 = !{i32 2, i32 0}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !11, i64 0}
!15 = !{!"", !11, i64 0, !11, i64 8, !16, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!16 = !{!"hsa_signal_s", !7, i64 0}
!17 = !{!15, !7, i64 40}
!18 = !{!15, !11, i64 8}
!19 = !{!8, !8, i64 0}
!20 = !{i32 2509}
!21 = !{!"exec"}
!22 = !{!23, !13, i64 16}
!23 = !{!"", !7, i64 0, !7, i64 8, !13, i64 16, !13, i64 20}
!24 = !{!23, !7, i64 8}
!25 = !{!23, !13, i64 20}
!26 = !{!23, !7, i64 0}
!27 = !{!28, !7, i64 16}
!28 = !{!"amd_signal_s", !7, i64 0, !8, i64 8, !7, i64 16, !13, i64 24, !13, i64 28, !7, i64 32, !7, i64 40, !8, i64 48, !8, i64 56}
!29 = !{!28, !13, i64 24}
!30 = !{i32 0, i32 1024}
