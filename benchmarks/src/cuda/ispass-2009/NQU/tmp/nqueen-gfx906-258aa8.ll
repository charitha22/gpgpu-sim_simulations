; ModuleID = 'nqueen.hip.cpp'
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
  br i1 %19, label %20, label %83

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
  br label %34

34:                                               ; preds = %80, %20
  %35 = phi i32 [ %32, %20 ], [ %82, %80 ]
  %36 = phi i32 [ 0, %20 ], [ %78, %80 ]
  %37 = phi i32 [ 0, %20 ], [ %77, %80 ]
  %38 = and i32 %35, %18
  %39 = icmp eq i32 %38, %18
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = add nsw i32 %37, -1
  br label %76

42:                                               ; preds = %34
  %43 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, i32 0, i32 %8, i32 %37
  %44 = add i32 %35, 1
  %45 = xor i32 %35, -1
  %46 = and i32 %44, %45
  %47 = or i32 %44, %35
  store i32 %47, i32 addrspace(3)* %43, align 4, !tbaa !7
  %48 = and i32 %46, %18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %42
  %51 = add nuw nsw i32 %37, 1
  %52 = icmp eq i32 %51, %1
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = add nsw i32 %36, 1
  %55 = add nsw i32 %37, -1
  br label %76

56:                                               ; preds = %50
  %57 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, i32 0, i32 %8, i32 %37
  %58 = load i32, i32 addrspace(3)* %57, align 4, !tbaa !7
  %59 = or i32 %58, %46
  %60 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE4mask, i32 0, i32 %8, i32 %51
  store i32 %59, i32 addrspace(3)* %60, align 4, !tbaa !7
  %61 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, i32 0, i32 %8, i32 %37
  %62 = load i32, i32 addrspace(3)* %61, align 4, !tbaa !7
  %63 = or i32 %62, %46
  %64 = shl i32 %63, 1
  %65 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6l_mask, i32 0, i32 %8, i32 %51
  store i32 %64, i32 addrspace(3)* %65, align 4, !tbaa !7
  %66 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, i32 0, i32 %8, i32 %37
  %67 = load i32, i32 addrspace(3)* %66, align 4, !tbaa !7
  %68 = or i32 %67, %46
  %69 = lshr i32 %68, 1
  %70 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE6r_mask, i32 0, i32 %8, i32 %51
  store i32 %69, i32 addrspace(3)* %70, align 4, !tbaa !7
  %71 = or i32 %64, %59
  %72 = or i32 %71, %69
  %73 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, i32 0, i32 %8, i32 %51
  store i32 %72, i32 addrspace(3)* %73, align 4, !tbaa !7
  br label %76

74:                                               ; preds = %42
  %75 = add nsw i32 %37, -1
  br label %76

76:                                               ; preds = %74, %56, %53, %40
  %77 = phi i32 [ %41, %40 ], [ %55, %53 ], [ %51, %56 ], [ %75, %74 ]
  %78 = phi i32 [ %36, %40 ], [ %54, %53 ], [ %36, %56 ], [ %36, %74 ]
  %79 = icmp sgt i32 %77, -1
  br i1 %79, label %80, label %83, !llvm.loop !11

80:                                               ; preds = %76
  %81 = getelementptr inbounds [64 x [10 x i32]], [64 x [10 x i32]] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE1m, i32 0, i32 %8, i32 %77
  %82 = load i32, i32 addrspace(3)* %81, align 4, !tbaa !7
  br label %34

83:                                               ; preds = %76, %7
  %84 = phi i32 [ 0, %7 ], [ %78, %76 ]
  %85 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %8
  store i32 %84, i32 addrspace(3)* %85, align 4, !tbaa !7
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %86 = icmp ult i32 %8, 32
  %87 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %8
  br i1 %86, label %88, label %94

88:                                               ; preds = %83
  %89 = add nuw nsw i32 %8, 32
  %90 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %89
  %91 = load i32, i32 addrspace(3)* %90, align 4, !tbaa !7
  %92 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !7
  %93 = add i32 %92, %91
  store i32 %93, i32 addrspace(3)* %87, align 4, !tbaa !7
  br label %94

94:                                               ; preds = %88, %83
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %95 = icmp ult i32 %8, 16
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = add nuw nsw i32 %8, 16
  %98 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %97
  %99 = load i32, i32 addrspace(3)* %98, align 4, !tbaa !7
  %100 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !7
  %101 = add i32 %100, %99
  store i32 %101, i32 addrspace(3)* %87, align 4, !tbaa !7
  br label %102

102:                                              ; preds = %96, %94
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %103 = icmp ult i32 %8, 8
  br i1 %103, label %104, label %110

104:                                              ; preds = %102
  %105 = add nuw nsw i32 %8, 8
  %106 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %105
  %107 = load i32, i32 addrspace(3)* %106, align 4, !tbaa !7
  %108 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !7
  %109 = add i32 %108, %107
  store i32 %109, i32 addrspace(3)* %87, align 4, !tbaa !7
  br label %110

110:                                              ; preds = %104, %102
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %111 = icmp ult i32 %8, 4
  br i1 %111, label %112, label %118

112:                                              ; preds = %110
  %113 = add nuw nsw i32 %8, 4
  %114 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %113
  %115 = load i32, i32 addrspace(3)* %114, align 4, !tbaa !7
  %116 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !7
  %117 = add i32 %116, %115
  store i32 %117, i32 addrspace(3)* %87, align 4, !tbaa !7
  br label %118

118:                                              ; preds = %112, %110
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %119 = icmp ult i32 %8, 2
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  %121 = add nuw nsw i32 %8, 2
  %122 = getelementptr inbounds [64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 %121
  %123 = load i32, i32 addrspace(3)* %122, align 4, !tbaa !7
  %124 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !7
  %125 = add i32 %124, %123
  store i32 %125, i32 addrspace(3)* %87, align 4, !tbaa !7
  br label %126

126:                                              ; preds = %120, %118
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %127 = icmp eq i32 %8, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 1), align 4, !tbaa !7
  %130 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 0), align 16, !tbaa !7
  %131 = add i32 %130, %129
  store i32 %131, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 0), align 16, !tbaa !7
  br label %132

132:                                              ; preds = %128, %126
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %127, label %133, label %137

133:                                              ; preds = %132
  %134 = sext i32 %9 to i64
  %135 = getelementptr inbounds i32, i32 addrspace(1)* %5, i64 %134
  %136 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @_ZZ24solve_nqueen_cuda_kerneliiPjS_S_S_iE3sum, i32 0, i32 0), align 16, !tbaa !7
  store i32 %136, i32 addrspace(1)* %135, align 4, !tbaa !7
  br label %137

137:                                              ; preds = %133, %132
  ret void
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
