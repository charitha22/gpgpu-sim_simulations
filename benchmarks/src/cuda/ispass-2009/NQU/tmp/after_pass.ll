; ModuleID = '<stdin>'
source_filename = "nqueen.hip.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_BlockDim>::X" = type { i8 }

$_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE = comdat any

@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockDimE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockDim>::X" undef, comdat, align 1
@_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask = internal unnamed_addr addrspace(3) global [64 x [10 x i32]] undef, align 16
@_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask = internal unnamed_addr addrspace(3) global [64 x [10 x i32]] undef, align 16
@_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask = internal unnamed_addr addrspace(3) global [64 x [10 x i32]] undef, align 16
@_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m = internal unnamed_addr addrspace(3) global [64 x [10 x i32]] undef, align 16
@_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum = internal unnamed_addr addrspace(3) global [64 x i32] undef, align 16

; Function Attrs: convergent norecurse nounwind
define protected amdgpu_kernel void @_Z24solve_nqueen_cuda_kerneliiPjS_S_S_i(i32 %0, i32 %1, i32 addrspace(1)* nocapture readonly %2, i32 addrspace(1)* nocapture readonly %3, i32 addrspace(1)* nocapture readonly %4, i32 addrspace(1)* nocapture %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !4
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %11 = getelementptr i8, i8 addrspace(4)* %10, i64 4
  %12 = bitcast i8 addrspace(4)* %11 to i16 addrspace(4)*
  %13 = load i16, i16 addrspace(4)* %12, align 4, !range !5, !invariant.load !6
  %14 = zext i16 %13 to i32
  %15 = mul i32 %9, %14
  %16 = add i32 %15, %8
  %17 = shl nsw i32 -1, %0
  %18 = xor i32 %17, -1
  %19 = icmp slt i32 %16, %6
  br i1 %19, label %20, label %56

20:                                               ; preds = %7
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %21
  %23 = load i32, i32 addrspace(1)* %22, align 4, !tbaa !7
  %24 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, i32 0, i32 %8, i32 0
  store i32 %23, i32 addrspace(3)* %24, align 8, !tbaa !7
  %25 = getelementptr inbounds i32, i32 addrspace(1)* %3, i64 %21
  %26 = load i32, i32 addrspace(1)* %25, align 4, !tbaa !7
  %27 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, i32 0, i32 %8, i32 0
  store i32 %26, i32 addrspace(3)* %27, align 8, !tbaa !7
  %28 = getelementptr inbounds i32, i32 addrspace(1)* %4, i64 %21
  %29 = load i32, i32 addrspace(1)* %28, align 4, !tbaa !7
  %30 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, i32 0, i32 %8, i32 0
  store i32 %29, i32 addrspace(3)* %30, align 8, !tbaa !7
  %31 = or i32 %26, %23
  %32 = or i32 %31, %29
  %33 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, i32 0, i32 %8, i32 0
  store i32 %32, i32 addrspace(3)* %33, align 8, !tbaa !7
  br label %unify.bb

unify.bb:                                         ; preds = %53, %20
  %34 = phi i32 [ %32, %20 ], [ %55, %53 ]
  %35 = phi i32 [ 0, %20 ], [ %122, %53 ]
  %36 = phi i32 [ 0, %20 ], [ %121, %53 ]
  %37 = and i32 %34, %18
  %38 = icmp eq i32 %37, %18
  %39 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, i32 0, i32 %8, i32 %36
  %40 = add i32 %34, 1
  %41 = xor i32 %34, -1
  %42 = and i32 %40, %41
  %43 = or i32 %40, %34
  %44 = load i32, i32 addrspace(3)* %39, align 4
  %45 = select i1 %38, i32 %44, i32 %43
  store i32 %45, i32 addrspace(3)* %39, align 4, !tbaa !7
  %46 = and i32 %42, %18
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %38, i1 true, i1 %47
  %49 = add nuw nsw i32 %36, 1
  %50 = icmp eq i32 %49, %1
  %51 = select i1 %38, i1 true, i1 %50
  %52 = select i1 %48, i1 true, i1 %51
  br i1 %52, label %merged.bb31, label %merged.bb34

53:                                               ; preds = %merged.bb33
  %54 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, i32 0, i32 %8, i32 %121
  %55 = load i32, i32 addrspace(3)* %54, align 4, !tbaa !7
  br label %unify.bb

56:                                               ; preds = %merged.bb33, %7
  %57 = phi i32 [ 0, %7 ], [ %122, %merged.bb33 ]
  %58 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %8
  store i32 %57, i32 addrspace(3)* %58, align 4, !tbaa !7
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %59 = icmp ult i32 %8, 32
  %60 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %8
  br i1 %59, label %61, label %67

61:                                               ; preds = %56
  %62 = add nuw nsw i32 %8, 32
  %63 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %62
  %64 = load i32, i32 addrspace(3)* %63, align 4, !tbaa !7
  %65 = load i32, i32 addrspace(3)* %60, align 4, !tbaa !7
  %66 = add i32 %65, %64
  store i32 %66, i32 addrspace(3)* %60, align 4, !tbaa !7
  br label %67

67:                                               ; preds = %61, %56
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %68 = icmp ult i32 %8, 16
  br i1 %68, label %69, label %75

69:                                               ; preds = %67
  %70 = add nuw nsw i32 %8, 16
  %71 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %70
  %72 = load i32, i32 addrspace(3)* %71, align 4, !tbaa !7
  %73 = load i32, i32 addrspace(3)* %60, align 4, !tbaa !7
  %74 = add i32 %73, %72
  store i32 %74, i32 addrspace(3)* %60, align 4, !tbaa !7
  br label %75

75:                                               ; preds = %69, %67
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %76 = icmp ult i32 %8, 8
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  %78 = add nuw nsw i32 %8, 8
  %79 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %78
  %80 = load i32, i32 addrspace(3)* %79, align 4, !tbaa !7
  %81 = load i32, i32 addrspace(3)* %60, align 4, !tbaa !7
  %82 = add i32 %81, %80
  store i32 %82, i32 addrspace(3)* %60, align 4, !tbaa !7
  br label %83

83:                                               ; preds = %77, %75
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %84 = icmp ult i32 %8, 4
  br i1 %84, label %85, label %91

85:                                               ; preds = %83
  %86 = add nuw nsw i32 %8, 4
  %87 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %86
  %88 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !7
  %89 = load i32, i32 addrspace(3)* %60, align 4, !tbaa !7
  %90 = add i32 %89, %88
  store i32 %90, i32 addrspace(3)* %60, align 4, !tbaa !7
  br label %91

91:                                               ; preds = %85, %83
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %92 = icmp ult i32 %8, 2
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  %94 = add nuw nsw i32 %8, 2
  %95 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %94
  %96 = load i32, i32 addrspace(3)* %95, align 4, !tbaa !7
  %97 = load i32, i32 addrspace(3)* %60, align 4, !tbaa !7
  %98 = add i32 %97, %96
  store i32 %98, i32 addrspace(3)* %60, align 4, !tbaa !7
  br label %99

99:                                               ; preds = %93, %91
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %100 = icmp eq i32 %8, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  %102 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 1), align 4, !tbaa !7
  %103 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 0), align 16, !tbaa !7
  %104 = add i32 %103, %102
  store i32 %104, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 0), align 16, !tbaa !7
  br label %105

105:                                              ; preds = %101, %99
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %100, label %106, label %110

106:                                              ; preds = %105
  %107 = sext i32 %9 to i64
  %108 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %107
  %109 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 0), align 16, !tbaa !7
  store i32 %109, i32 addrspace(1)* %108, align 4, !tbaa !7
  br label %110

110:                                              ; preds = %106, %105
  ret void

merged.bb31:                                      ; preds = %unify.bb
  %111 = add nsw i32 %35, 1
  %112 = select i1 %48, i32 undef, i32 %111
  %113 = add nsw i32 %36, -1
  br label %merged.bb33

merged.bb33:                                      ; preds = %merged.bb31, %merged.bb34
  %114 = phi i32 [ %113, %merged.bb31 ], [ undef, %merged.bb34 ]
  %115 = phi i32 [ %113, %merged.bb31 ], [ %49, %merged.bb34 ]
  %116 = phi i32 [ %112, %merged.bb31 ], [ %35, %merged.bb34 ]
  %117 = phi i32 [ undef, %merged.bb34 ], [ undef, %merged.bb31 ]
  %118 = select i1 %48, i32 %114, i32 %117
  %119 = select i1 %48, i32 %35, i32 %116
  %120 = select i1 %48, i32 %114, i32 %115
  %121 = select i1 %38, i32 %118, i32 %120
  %122 = select i1 %38, i32 %35, i32 %119
  %123 = icmp sgt i32 %121, -1
  br i1 %123, label %53, label %56, !llvm.loop !11

merged.bb34:                                      ; preds = %unify.bb
  %124 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, i32 0, i32 %8, i32 %36
  %125 = load i32, i32 addrspace(3)* %124, align 4, !tbaa !7
  %126 = or i32 %125, %42
  %127 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, i32 0, i32 %8, i32 %49
  %128 = load i32, i32 addrspace(3)* %127, align 4
  %129 = select i1 %38, i32 %128, i32 %126
  %130 = load i32, i32 addrspace(3)* %127, align 4
  %131 = select i1 %48, i32 %130, i32 %129
  store i32 %131, i32 addrspace(3)* %127, align 4, !tbaa !7
  %132 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, i32 0, i32 %8, i32 %36
  %133 = load i32, i32 addrspace(3)* %132, align 4, !tbaa !7
  %134 = or i32 %133, %42
  %135 = shl i32 %134, 1
  %136 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, i32 0, i32 %8, i32 %49
  %137 = load i32, i32 addrspace(3)* %136, align 4
  %138 = select i1 %38, i32 %137, i32 %135
  %139 = load i32, i32 addrspace(3)* %136, align 4
  %140 = select i1 %48, i32 %139, i32 %138
  store i32 %140, i32 addrspace(3)* %136, align 4, !tbaa !7
  %141 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, i32 0, i32 %8, i32 %36
  %142 = load i32, i32 addrspace(3)* %141, align 4, !tbaa !7
  %143 = or i32 %142, %42
  %144 = lshr i32 %143, 1
  %145 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, i32 0, i32 %8, i32 %49
  %146 = load i32, i32 addrspace(3)* %145, align 4
  %147 = select i1 %38, i32 %146, i32 %144
  %148 = load i32, i32 addrspace(3)* %145, align 4
  %149 = select i1 %48, i32 %148, i32 %147
  store i32 %149, i32 addrspace(3)* %145, align 4, !tbaa !7
  %150 = or i32 %135, %126
  %151 = or i32 %150, %144
  %152 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, i32 0, i32 %8, i32 %49
  %153 = load i32, i32 addrspace(3)* %152, align 4
  %154 = select i1 %38, i32 %153, i32 %151
  %155 = load i32, i32 addrspace(3)* %152, align 4
  %156 = select i1 %48, i32 %155, i32 %154
  store i32 %156, i32 addrspace(3)* %152, align 4, !tbaa !7
  br label %merged.bb33
}

; Function Attrs: convergent nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

attributes #0 = { convergent norecurse nounwind "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 12.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-4.2.0 21161 b204d7f0cae65b6cd4446eec50fc1fb675d582af)"}
!4 = !{i32 0, i32 1024}
!5 = !{i16 1, i16 1025}
!6 = !{}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
