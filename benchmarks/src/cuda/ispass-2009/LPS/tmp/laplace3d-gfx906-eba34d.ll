; ModuleID = 'src/laplace3d.hip.cpp'
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
  br i1 %14, label %24, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %17 = shl i32 %16, 8
  %18 = ashr exact i32 %17, 2
  %19 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %20 = shl i32 %19, 8
  %21 = ashr exact i32 %20, 6
  %22 = shl i32 %3, 8
  %23 = ashr exact i32 %22, 8
  br label %65

24:                                               ; preds = %6
  %25 = icmp ult i32 %11, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = mul nuw nsw i32 %11, 5
  %28 = add nsw i32 %27, -1
  br label %35

29:                                               ; preds = %24
  %30 = and i32 %13, 1
  %31 = mul nuw nsw i32 %30, 65
  %32 = add nsw i32 %31, -1
  %33 = lshr i32 %13, 1
  %34 = add nsw i32 %33, -65
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  %37 = phi i32 [ %10, %26 ], [ %32, %29 ]
  %38 = shl nsw i32 %36, 8
  %39 = add i32 %38, 256
  %40 = ashr exact i32 %39, 8
  %41 = mul nsw i32 %40, 66
  %42 = add nsw i32 %37, 397
  %43 = add i32 %42, %41
  %44 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %45 = shl i32 %44, 8
  %46 = ashr exact i32 %45, 2
  %47 = add nsw i32 %37, %46
  %48 = tail call i32 @llvm.amdgcn.workgroup.id.y() #3
  %49 = shl i32 %48, 8
  %50 = ashr exact i32 %49, 6
  %51 = add nsw i32 %36, %50
  %52 = shl i32 %51, 8
  %53 = ashr exact i32 %52, 8
  %54 = shl i32 %3, 8
  %55 = ashr exact i32 %54, 8
  %56 = mul nsw i32 %53, %55
  %57 = add nsw i32 %56, %47
  %58 = icmp sgt i32 %47, -1
  %59 = icmp slt i32 %47, %0
  %60 = icmp sgt i32 %51, -1
  %61 = and i1 %60, %59
  %62 = icmp slt i32 %51, %1
  %63 = and i1 %62, %61
  %64 = and i1 %58, %63
  br label %65

65:                                               ; preds = %15, %35
  %66 = phi i32 [ %23, %15 ], [ %55, %35 ]
  %67 = phi i32 [ %21, %15 ], [ %50, %35 ]
  %68 = phi i32 [ %18, %15 ], [ %46, %35 ]
  %69 = phi i32 [ undef, %15 ], [ %43, %35 ]
  %70 = phi i1 [ false, %15 ], [ %64, %35 ]
  %71 = phi i32 [ undef, %15 ], [ %57, %35 ]
  %72 = add nuw nsw i32 %10, 1
  %73 = shl nuw nsw i32 %11, 8
  %74 = add nuw nsw i32 %73, 256
  %75 = lshr exact i32 %74, 8
  %76 = mul nuw nsw i32 %75, 66
  %77 = add nuw nsw i32 %72, %76
  %78 = add nuw nsw i32 %77, 396
  %79 = add nsw i32 %68, %10
  %80 = add nsw i32 %67, %11
  %81 = shl i32 %80, 8
  %82 = ashr exact i32 %81, 8
  %83 = mul nsw i32 %66, %82
  %84 = add nsw i32 %83, %79
  %85 = icmp slt i32 %79, %0
  %86 = icmp slt i32 %80, %1
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %65
  %89 = add nuw nsw i32 %77, 792
  %90 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %89
  %91 = bitcast float addrspace(3)* %90 to i32 addrspace(3)*
  %92 = sext i32 %84 to i64
  %93 = getelementptr inbounds float, float addrspace(1)* %4, i64 %92
  %94 = bitcast float addrspace(1)* %93 to i32 addrspace(1)*
  %95 = load i32, i32 addrspace(1)* %94, align 4, !tbaa !5
  store i32 %95, i32 addrspace(3)* %91, align 4, !tbaa !5
  br label %96

96:                                               ; preds = %88, %65
  br i1 %70, label %97, label %105

97:                                               ; preds = %96
  %98 = add nsw i32 %69, 396
  %99 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %98
  %100 = bitcast float addrspace(3)* %99 to i32 addrspace(3)*
  %101 = sext i32 %71 to i64
  %102 = getelementptr inbounds float, float addrspace(1)* %4, i64 %101
  %103 = bitcast float addrspace(1)* %102 to i32 addrspace(1)*
  %104 = load i32, i32 addrspace(1)* %103, align 4, !tbaa !5
  store i32 %104, i32 addrspace(3)* %100, align 4, !tbaa !5
  br label %105

105:                                              ; preds = %97, %96
  %106 = icmp sgt i32 %2, 0
  br i1 %106, label %107, label %198

107:                                              ; preds = %105
  %108 = shl i32 %1, 8
  %109 = ashr exact i32 %108, 8
  %110 = mul nsw i32 %66, %109
  %111 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %78
  %112 = bitcast float addrspace(3)* %111 to i32 addrspace(3)*
  %113 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %77
  %114 = bitcast float addrspace(3)* %113 to i32 addrspace(3)*
  %115 = add nuw nsw i32 %77, 792
  %116 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %115
  %117 = bitcast float addrspace(3)* %116 to i32 addrspace(3)*
  %118 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %69
  %119 = bitcast float addrspace(3)* %118 to i32 addrspace(3)*
  %120 = add nsw i32 %69, -396
  %121 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %120
  %122 = bitcast float addrspace(3)* %121 to i32 addrspace(3)*
  %123 = add nsw i32 %69, 396
  %124 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %123
  %125 = bitcast float addrspace(3)* %124 to i32 addrspace(3)*
  %126 = icmp eq i32 %79, 0
  %127 = icmp eq i32 %79, %7
  %128 = icmp eq i32 %80, 0
  %129 = or i1 %127, %128
  %130 = icmp eq i32 %80, %8
  %131 = add nuw nsw i32 %77, 395
  %132 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %131
  %133 = add nuw nsw i32 %77, 397
  %134 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %133
  %135 = add nuw nsw i32 %77, 330
  %136 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %135
  %137 = add nuw nsw i32 %77, 462
  %138 = getelementptr inbounds [1188 x float], [1188 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %137
  %139 = or i1 %126, %129
  br label %140

140:                                              ; preds = %107, %195
  %141 = phi i32 [ %84, %107 ], [ %157, %195 ]
  %142 = phi i32 [ %71, %107 ], [ %169, %195 ]
  %143 = phi i32 [ undef, %107 ], [ %156, %195 ]
  %144 = phi i32 [ 0, %107 ], [ %196, %195 ]
  br i1 %87, label %145, label %155

145:                                              ; preds = %140
  %146 = add nsw i32 %141, %110
  %147 = load i32, i32 addrspace(3)* %112, align 4, !tbaa !5
  store i32 %147, i32 addrspace(3)* %114, align 4, !tbaa !5
  %148 = load i32, i32 addrspace(3)* %117, align 4, !tbaa !5
  store i32 %148, i32 addrspace(3)* %112, align 4, !tbaa !5
  %149 = icmp slt i32 %144, %9
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = sext i32 %146 to i64
  %152 = getelementptr inbounds float, float addrspace(1)* %4, i64 %151
  %153 = bitcast float addrspace(1)* %152 to i32 addrspace(1)*
  %154 = load i32, i32 addrspace(1)* %153, align 4, !tbaa !5
  store i32 %154, i32 addrspace(3)* %117, align 4, !tbaa !5
  br label %155

155:                                              ; preds = %145, %150, %140
  %156 = phi i32 [ %141, %150 ], [ %141, %145 ], [ %143, %140 ]
  %157 = phi i32 [ %146, %150 ], [ %146, %145 ], [ %141, %140 ]
  br i1 %70, label %158, label %168

158:                                              ; preds = %155
  %159 = add nsw i32 %142, %110
  %160 = load i32, i32 addrspace(3)* %119, align 4, !tbaa !5
  store i32 %160, i32 addrspace(3)* %122, align 4, !tbaa !5
  %161 = load i32, i32 addrspace(3)* %125, align 4, !tbaa !5
  store i32 %161, i32 addrspace(3)* %119, align 4, !tbaa !5
  %162 = icmp slt i32 %144, %9
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = sext i32 %159 to i64
  %165 = getelementptr inbounds float, float addrspace(1)* %4, i64 %164
  %166 = bitcast float addrspace(1)* %165 to i32 addrspace(1)*
  %167 = load i32, i32 addrspace(1)* %166, align 4, !tbaa !5
  store i32 %167, i32 addrspace(3)* %125, align 4, !tbaa !5
  br label %168

168:                                              ; preds = %158, %163, %155
  %169 = phi i32 [ %159, %163 ], [ %159, %158 ], [ %142, %155 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %87, label %170, label %195

170:                                              ; preds = %168
  br i1 %139, label %176, label %171

171:                                              ; preds = %170
  %172 = icmp eq i32 %144, 0
  %173 = or i1 %130, %172
  %174 = icmp eq i32 %144, %9
  %175 = or i1 %174, %173
  br i1 %175, label %176, label %178

176:                                              ; preds = %170, %171
  %177 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %191

178:                                              ; preds = %171
  %179 = load float, float addrspace(3)* %132, align 4, !tbaa !5
  %180 = load float, float addrspace(3)* %134, align 4, !tbaa !5
  %181 = fadd contract float %179, %180
  %182 = load float, float addrspace(3)* %136, align 4, !tbaa !5
  %183 = fadd contract float %181, %182
  %184 = load float, float addrspace(3)* %138, align 4, !tbaa !5
  %185 = fadd contract float %183, %184
  %186 = load float, float addrspace(3)* %113, align 4, !tbaa !5
  %187 = fadd contract float %185, %186
  %188 = load float, float addrspace(3)* %116, align 4, !tbaa !5
  %189 = fadd contract float %187, %188
  %190 = fmul contract float %189, 0x3FC5555560000000
  br label %191

191:                                              ; preds = %178, %176
  %192 = phi float [ %177, %176 ], [ %190, %178 ]
  %193 = sext i32 %156 to i64
  %194 = getelementptr inbounds float, float addrspace(1)* %5, i64 %193
  store float %192, float addrspace(1)* %194, align 4, !tbaa !5
  br label %195

195:                                              ; preds = %191, %168
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %196 = add nuw nsw i32 %144, 1
  %197 = icmp eq i32 %196, %2
  br i1 %197, label %198, label %140, !llvm.loop !9

198:                                              ; preds = %195, %105
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
