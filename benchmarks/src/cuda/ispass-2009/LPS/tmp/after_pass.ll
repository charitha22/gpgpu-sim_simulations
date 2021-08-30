; ModuleID = '<stdin>'
source_filename = "src/laplace3d.hip.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" = type { i8 }

$_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = comdat any

$_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE = comdat any

@_ZZ13GPU_laplace3diiiiPfS_E2u1 = internal unnamed_addr addrspace(3) global [1188 x float] undef, align 16
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE = weak protected local_unnamed_addr addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" undef, comdat, align 1

; Function Attrs: convergent norecurse nounwind
define protected amdgpu_kernel void @_Z13GPU_laplace3diiiiPfS_(i32 %0, i32 %1, i32 %2, i32 %3, float addrspace(1)* nocapture readonly %4, float addrspace(1)* nocapture %5) local_unnamed_addr #0 {
  %7 = add nsw i32 %0, -1
  %8 = add nsw i32 %1, -1
  %9 = add nsw i32 %2, -1
  %10 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !4
  %11 = tail call i32 @llvm.amdgcn.workitem.id.y() #3, !range !4
  %12 = shl nuw nsw i32 %11, 6
  %13 = add nuw nsw i32 %12, %10
  %14 = icmp ult i32 %13, 140
  br i1 %14, label %unify.bb, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %17 = shl i32 %16, 8
  %18 = ashr exact i32 %17, 2
  %19 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %20 = shl i32 %19, 8
  %21 = ashr exact i32 %20, 6
  %22 = shl i32 %3, 8
  %23 = ashr exact i32 %22, 8
  br label %61

unify.bb:                                         ; preds = %6
  %24 = icmp ult i32 %11, 2
  %25 = and i32 %13, 1
  %26 = select i1 %24, i32 undef, i32 %25
  %merged.select = select i1 %24, i32 %11, i32 %26
  %merged.select1 = select i1 %24, i32 5, i32 65
  %27 = mul nuw nsw i32 %merged.select, %merged.select1
  %28 = add nsw i32 %27, -1
  %29 = lshr i32 %13, 1
  %30 = select i1 %24, i32 undef, i32 %28
  %31 = select i1 %24, i32 undef, i32 %29
  %merged.select2 = select i1 %24, i32 %27, i32 %31
  %merged.select3 = select i1 %24, i32 -1, i32 -65
  %32 = add nsw i32 %merged.select2, %merged.select3
  %33 = select i1 %24, i32 %10, i32 %30
  %34 = shl nsw i32 %32, 8
  %35 = add i32 %34, 256
  %36 = ashr exact i32 %35, 8
  %37 = mul nsw i32 %36, 66
  %38 = add nsw i32 %33, 397
  %39 = add i32 %38, %37
  %40 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %41 = shl i32 %40, 8
  %42 = ashr exact i32 %41, 2
  %43 = add nsw i32 %33, %42
  %44 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %45 = shl i32 %44, 8
  %46 = ashr exact i32 %45, 6
  %47 = add nsw i32 %32, %46
  %48 = shl i32 %47, 8
  %49 = ashr exact i32 %48, 8
  %50 = shl i32 %3, 8
  %51 = ashr exact i32 %50, 8
  %52 = mul nsw i32 %49, %51
  %53 = add nsw i32 %52, %43
  %54 = icmp sgt i32 %43, -1
  %55 = icmp slt i32 %43, %0
  %56 = icmp sgt i32 %47, -1
  %57 = and i1 %56, %55
  %58 = icmp slt i32 %47, %1
  %59 = and i1 %58, %57
  %60 = and i1 %54, %59
  br label %61

61:                                               ; preds = %unify.bb, %15
  %62 = phi i32 [ %23, %15 ], [ %51, %unify.bb ]
  %63 = phi i32 [ %21, %15 ], [ %46, %unify.bb ]
  %64 = phi i32 [ %18, %15 ], [ %42, %unify.bb ]
  %65 = phi i32 [ undef, %15 ], [ %39, %unify.bb ]
  %66 = phi i1 [ false, %15 ], [ %60, %unify.bb ]
  %67 = phi i32 [ undef, %15 ], [ %53, %unify.bb ]
  %68 = add nuw nsw i32 %10, 1
  %69 = shl nuw nsw i32 %11, 8
  %70 = add nuw nsw i32 %69, 256
  %71 = lshr exact i32 %70, 8
  %72 = mul nuw nsw i32 %71, 66
  %73 = add nuw nsw i32 %68, %72
  %74 = add nuw nsw i32 %73, 396
  %75 = add nsw i32 %64, %10
  %76 = add nsw i32 %63, %11
  %77 = shl i32 %76, 8
  %78 = ashr exact i32 %77, 8
  %79 = mul nsw i32 %62, %78
  %80 = add nsw i32 %79, %75
  %81 = icmp slt i32 %75, %0
  %82 = icmp slt i32 %76, %1
  %83 = and i1 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %61
  %85 = add nuw nsw i32 %73, 792
  %86 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %85
  %87 = bitcast float addrspace(3)* %86 to i32 addrspace(3)*
  %88 = sext i32 %80 to i64
  %89 = getelementptr inbounds float, float addrspace(1)* %4, i64 %88
  %90 = bitcast float addrspace(1)* %89 to i32 addrspace(1)*
  %91 = load i32, i32 addrspace(1)* %90, align 4, !tbaa !5
  store i32 %91, i32 addrspace(3)* %87, align 4, !tbaa !5
  br label %92

92:                                               ; preds = %84, %61
  br i1 %66, label %93, label %101

93:                                               ; preds = %92
  %94 = add nsw i32 %65, 396
  %95 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %94
  %96 = bitcast float addrspace(3)* %95 to i32 addrspace(3)*
  %97 = sext i32 %67 to i64
  %98 = getelementptr inbounds float, float addrspace(1)* %4, i64 %97
  %99 = bitcast float addrspace(1)* %98 to i32 addrspace(1)*
  %100 = load i32, i32 addrspace(1)* %99, align 4, !tbaa !5
  store i32 %100, i32 addrspace(3)* %96, align 4, !tbaa !5
  br label %101

101:                                              ; preds = %93, %92
  %102 = icmp sgt i32 %2, 0
  br i1 %102, label %103, label %194

103:                                              ; preds = %101
  %104 = shl i32 %1, 8
  %105 = ashr exact i32 %104, 8
  %106 = mul nsw i32 %62, %105
  %107 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %74
  %108 = bitcast float addrspace(3)* %107 to i32 addrspace(3)*
  %109 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %73
  %110 = bitcast float addrspace(3)* %109 to i32 addrspace(3)*
  %111 = add nuw nsw i32 %73, 792
  %112 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %111
  %113 = bitcast float addrspace(3)* %112 to i32 addrspace(3)*
  %114 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %65
  %115 = bitcast float addrspace(3)* %114 to i32 addrspace(3)*
  %116 = add nsw i32 %65, -396
  %117 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %116
  %118 = bitcast float addrspace(3)* %117 to i32 addrspace(3)*
  %119 = add nsw i32 %65, 396
  %120 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %119
  %121 = bitcast float addrspace(3)* %120 to i32 addrspace(3)*
  %122 = icmp eq i32 %75, 0
  %123 = icmp eq i32 %75, %7
  %124 = icmp eq i32 %76, 0
  %125 = or i1 %123, %124
  %126 = icmp eq i32 %76, %8
  %127 = add nuw nsw i32 %73, 395
  %128 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %127
  %129 = add nuw nsw i32 %73, 397
  %130 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %129
  %131 = add nuw nsw i32 %73, 330
  %132 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %131
  %133 = add nuw nsw i32 %73, 462
  %134 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %133
  %135 = or i1 %122, %125
  br label %136

136:                                              ; preds = %191, %103
  %137 = phi i32 [ %80, %103 ], [ %153, %191 ]
  %138 = phi i32 [ %67, %103 ], [ %165, %191 ]
  %139 = phi i32 [ undef, %103 ], [ %152, %191 ]
  %140 = phi i32 [ 0, %103 ], [ %192, %191 ]
  br i1 %83, label %141, label %151

141:                                              ; preds = %136
  %142 = add nsw i32 %137, %106
  %143 = load i32, i32 addrspace(3)* %108, align 4, !tbaa !5
  store i32 %143, i32 addrspace(3)* %110, align 4, !tbaa !5
  %144 = load i32, i32 addrspace(3)* %113, align 4, !tbaa !5
  store i32 %144, i32 addrspace(3)* %108, align 4, !tbaa !5
  %145 = icmp slt i32 %140, %9
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = sext i32 %142 to i64
  %148 = getelementptr inbounds float, float addrspace(1)* %4, i64 %147
  %149 = bitcast float addrspace(1)* %148 to i32 addrspace(1)*
  %150 = load i32, i32 addrspace(1)* %149, align 4, !tbaa !5
  store i32 %150, i32 addrspace(3)* %113, align 4, !tbaa !5
  br label %151

151:                                              ; preds = %146, %141, %136
  %152 = phi i32 [ %137, %146 ], [ %137, %141 ], [ %139, %136 ]
  %153 = phi i32 [ %142, %146 ], [ %142, %141 ], [ %137, %136 ]
  br i1 %66, label %154, label %164

154:                                              ; preds = %151
  %155 = add nsw i32 %138, %106
  %156 = load i32, i32 addrspace(3)* %115, align 4, !tbaa !5
  store i32 %156, i32 addrspace(3)* %118, align 4, !tbaa !5
  %157 = load i32, i32 addrspace(3)* %121, align 4, !tbaa !5
  store i32 %157, i32 addrspace(3)* %115, align 4, !tbaa !5
  %158 = icmp slt i32 %140, %9
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = sext i32 %155 to i64
  %161 = getelementptr inbounds float, float addrspace(1)* %4, i64 %160
  %162 = bitcast float addrspace(1)* %161 to i32 addrspace(1)*
  %163 = load i32, i32 addrspace(1)* %162, align 4, !tbaa !5
  store i32 %163, i32 addrspace(3)* %121, align 4, !tbaa !5
  br label %164

164:                                              ; preds = %159, %154, %151
  %165 = phi i32 [ %155, %159 ], [ %155, %154 ], [ %138, %151 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %83, label %166, label %191

166:                                              ; preds = %164
  br i1 %135, label %172, label %167

167:                                              ; preds = %166
  %168 = icmp eq i32 %140, 0
  %169 = or i1 %126, %168
  %170 = icmp eq i32 %140, %9
  %171 = or i1 %170, %169
  br i1 %171, label %172, label %174

172:                                              ; preds = %167, %166
  %173 = load float, float addrspace(3)* %107, align 4, !tbaa !5
  br label %187

174:                                              ; preds = %167
  %175 = load float, float addrspace(3)* %128, align 4, !tbaa !5
  %176 = load float, float addrspace(3)* %130, align 4, !tbaa !5
  %177 = fadd contract float %175, %176
  %178 = load float, float addrspace(3)* %132, align 4, !tbaa !5
  %179 = fadd contract float %177, %178
  %180 = load float, float addrspace(3)* %134, align 4, !tbaa !5
  %181 = fadd contract float %179, %180
  %182 = load float, float addrspace(3)* %109, align 4, !tbaa !5
  %183 = fadd contract float %181, %182
  %184 = load float, float addrspace(3)* %112, align 4, !tbaa !5
  %185 = fadd contract float %183, %184
  %186 = fmul contract float %185, 0x3FC5555560000000
  br label %187

187:                                              ; preds = %174, %172
  %188 = phi float [ %173, %172 ], [ %186, %174 ]
  %189 = sext i32 %152 to i64
  %190 = getelementptr inbounds float, float addrspace(1)* %5, i64 %189
  store float %188, float addrspace(1)* %190, align 4, !tbaa !5
  br label %191

191:                                              ; preds = %187, %164
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %192 = add nuw nsw i32 %140, 1
  %193 = icmp eq i32 %192, %2
  br i1 %193, label %194, label %136, !llvm.loop !9

194:                                              ; preds = %191, %101
  ret void
}

; Function Attrs: convergent nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #2

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
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
