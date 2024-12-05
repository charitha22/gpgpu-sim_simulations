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

@_ZZ13GPU_laplace3diiiiPfS_E2u1 = internal unnamed_addr addrspace(3) global [612 x float] undef, align 16
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
  %12 = shl nuw nsw i32 %11, 5
  %13 = add nuw nsw i32 %12, %10
  %14 = icmp ult i32 %13, 76
  br i1 %14, label %24, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %17 = shl i32 %16, 8
  %18 = ashr exact i32 %17, 3
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
  %31 = mul nuw nsw i32 %30, 33
  %32 = add nsw i32 %31, -1
  %33 = lshr i32 %13, 1
  %34 = add nsw i32 %33, -33
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i32 [ %28, %26 ], [ %34, %29 ]
  %37 = phi i32 [ %10, %26 ], [ %32, %29 ]
  %38 = shl nsw i32 %36, 8
  %39 = add i32 %38, 256
  %40 = ashr exact i32 %39, 8
  %41 = mul nsw i32 %40, 34
  %42 = add nsw i32 %37, 205
  %43 = add nsw i32 %42, %41
  %44 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %45 = shl i32 %44, 8
  %46 = ashr exact i32 %45, 3
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
  %76 = mul nuw nsw i32 %75, 34
  %77 = add nuw nsw i32 %72, %76
  %78 = add nuw nsw i32 %77, 204
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
  %89 = add nuw nsw i32 %77, 408
  %90 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %89
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
  %98 = add nsw i32 %69, 204
  %99 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %98
  %100 = bitcast float addrspace(3)* %99 to i32 addrspace(3)*
  %101 = sext i32 %71 to i64
  %102 = getelementptr inbounds float, float addrspace(1)* %4, i64 %101
  %103 = bitcast float addrspace(1)* %102 to i32 addrspace(1)*
  %104 = load i32, i32 addrspace(1)* %103, align 4, !tbaa !5
  store i32 %104, i32 addrspace(3)* %100, align 4, !tbaa !5
  br label %105

105:                                              ; preds = %97, %96
  %106 = icmp sgt i32 %2, 0
  br i1 %106, label %107, label %248

107:                                              ; preds = %105
  %108 = shl i32 %1, 8
  %109 = ashr exact i32 %108, 8
  %110 = mul nsw i32 %66, %109
  %111 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %78
  %112 = bitcast float addrspace(3)* %111 to i32 addrspace(3)*
  %113 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %77
  %114 = bitcast float addrspace(3)* %113 to i32 addrspace(3)*
  %115 = add nuw nsw i32 %77, 408
  %116 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %115
  %117 = bitcast float addrspace(3)* %116 to i32 addrspace(3)*
  %118 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %69
  %119 = bitcast float addrspace(3)* %118 to i32 addrspace(3)*
  %120 = add nsw i32 %69, -204
  %121 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %120
  %122 = bitcast float addrspace(3)* %121 to i32 addrspace(3)*
  %123 = add nsw i32 %69, 204
  %124 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %123
  %125 = bitcast float addrspace(3)* %124 to i32 addrspace(3)*
  %126 = icmp eq i32 %79, 0
  %127 = icmp eq i32 %79, %7
  %128 = icmp eq i32 %80, 0
  %129 = icmp eq i32 %80, %8
  %130 = add nuw nsw i32 %77, 203
  %131 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %130
  %132 = add nuw nsw i32 %77, 205
  %133 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %132
  %134 = add nuw nsw i32 %77, 170
  %135 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %134
  %136 = add nuw nsw i32 %77, 238
  %137 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %136
  br i1 %87, label %138, label %148

138:                                              ; preds = %107
  %139 = add nsw i32 %84, %110
  %140 = load i32, i32 addrspace(3)* %112, align 4, !tbaa !5
  store i32 %140, i32 addrspace(3)* %114, align 4, !tbaa !5
  %141 = load i32, i32 addrspace(3)* %117, align 4, !tbaa !5
  store i32 %141, i32 addrspace(3)* %112, align 4, !tbaa !5
  %142 = icmp sgt i32 %2, 1
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = sext i32 %139 to i64
  %145 = getelementptr inbounds float, float addrspace(1)* %4, i64 %144
  %146 = bitcast float addrspace(1)* %145 to i32 addrspace(1)*
  %147 = load i32, i32 addrspace(1)* %146, align 4, !tbaa !5
  store i32 %147, i32 addrspace(3)* %117, align 4, !tbaa !5
  br label %148

148:                                              ; preds = %143, %138, %107
  %149 = phi i32 [ %139, %143 ], [ %139, %138 ], [ %84, %107 ]
  br i1 %70, label %150, label %160

150:                                              ; preds = %148
  %151 = add nsw i32 %71, %110
  %152 = load i32, i32 addrspace(3)* %119, align 4, !tbaa !5
  store i32 %152, i32 addrspace(3)* %122, align 4, !tbaa !5
  %153 = load i32, i32 addrspace(3)* %125, align 4, !tbaa !5
  store i32 %153, i32 addrspace(3)* %119, align 4, !tbaa !5
  %154 = icmp sgt i32 %2, 1
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = sext i32 %151 to i64
  %157 = getelementptr inbounds float, float addrspace(1)* %4, i64 %156
  %158 = bitcast float addrspace(1)* %157 to i32 addrspace(1)*
  %159 = load i32, i32 addrspace(1)* %158, align 4, !tbaa !5
  store i32 %159, i32 addrspace(3)* %125, align 4, !tbaa !5
  br label %160

160:                                              ; preds = %155, %150, %148
  %161 = phi i32 [ %151, %155 ], [ %151, %150 ], [ %71, %148 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %87, label %162, label %180

162:                                              ; preds = %160
  br i1 %126, label %174, label %163

163:                                              ; preds = %162
  br i1 %127, label %172, label %164

164:                                              ; preds = %163
  br i1 %128, label %170, label %165

165:                                              ; preds = %164
  br i1 %129, label %168, label %166

166:                                              ; preds = %165
  %167 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %176

168:                                              ; preds = %165
  %169 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %176

170:                                              ; preds = %164
  %171 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %176

172:                                              ; preds = %163
  %173 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %176

174:                                              ; preds = %162
  %175 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %176

176:                                              ; preds = %174, %172, %170, %168, %166
  %177 = phi float [ %175, %174 ], [ %173, %172 ], [ %171, %170 ], [ %169, %168 ], [ %167, %166 ]
  %178 = sext i32 %84 to i64
  %179 = getelementptr inbounds float, float addrspace(1)* %5, i64 %178
  store float %177, float addrspace(1)* %179, align 4, !tbaa !5
  br label %180

180:                                              ; preds = %176, %160
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %181 = icmp eq i32 %2, 1
  br i1 %181, label %248, label %182

182:                                              ; preds = %180, %245
  %183 = phi i32 [ %199, %245 ], [ %149, %180 ]
  %184 = phi i32 [ %211, %245 ], [ %161, %180 ]
  %185 = phi i32 [ %198, %245 ], [ %84, %180 ]
  %186 = phi i32 [ %246, %245 ], [ 1, %180 ]
  br i1 %87, label %187, label %197

187:                                              ; preds = %182
  %188 = add nsw i32 %183, %110
  %189 = load i32, i32 addrspace(3)* %112, align 4, !tbaa !5
  store i32 %189, i32 addrspace(3)* %114, align 4, !tbaa !5
  %190 = load i32, i32 addrspace(3)* %117, align 4, !tbaa !5
  store i32 %190, i32 addrspace(3)* %112, align 4, !tbaa !5
  %191 = icmp slt i32 %186, %9
  br i1 %191, label %192, label %197

192:                                              ; preds = %187
  %193 = sext i32 %188 to i64
  %194 = getelementptr inbounds float, float addrspace(1)* %4, i64 %193
  %195 = bitcast float addrspace(1)* %194 to i32 addrspace(1)*
  %196 = load i32, i32 addrspace(1)* %195, align 4, !tbaa !5
  store i32 %196, i32 addrspace(3)* %117, align 4, !tbaa !5
  br label %197

197:                                              ; preds = %187, %192, %182
  %198 = phi i32 [ %183, %192 ], [ %183, %187 ], [ %185, %182 ]
  %199 = phi i32 [ %188, %192 ], [ %188, %187 ], [ %183, %182 ]
  br i1 %70, label %200, label %210

200:                                              ; preds = %197
  %201 = add nsw i32 %184, %110
  %202 = load i32, i32 addrspace(3)* %119, align 4, !tbaa !5
  store i32 %202, i32 addrspace(3)* %122, align 4, !tbaa !5
  %203 = load i32, i32 addrspace(3)* %125, align 4, !tbaa !5
  store i32 %203, i32 addrspace(3)* %119, align 4, !tbaa !5
  %204 = icmp slt i32 %186, %9
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = sext i32 %201 to i64
  %207 = getelementptr inbounds float, float addrspace(1)* %4, i64 %206
  %208 = bitcast float addrspace(1)* %207 to i32 addrspace(1)*
  %209 = load i32, i32 addrspace(1)* %208, align 4, !tbaa !5
  store i32 %209, i32 addrspace(3)* %125, align 4, !tbaa !5
  br label %210

210:                                              ; preds = %200, %205, %197
  %211 = phi i32 [ %201, %205 ], [ %201, %200 ], [ %184, %197 ]
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  br i1 %87, label %212, label %245

212:                                              ; preds = %210
  br i1 %126, label %213, label %215

213:                                              ; preds = %212
  %214 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %241

215:                                              ; preds = %212
  br i1 %127, label %216, label %218

216:                                              ; preds = %215
  %217 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %241

218:                                              ; preds = %215
  br i1 %128, label %219, label %221

219:                                              ; preds = %218
  %220 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %241

221:                                              ; preds = %218
  br i1 %129, label %222, label %224

222:                                              ; preds = %221
  %223 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %241

224:                                              ; preds = %221
  %225 = icmp eq i32 %186, %9
  br i1 %225, label %226, label %228

226:                                              ; preds = %224
  %227 = load float, float addrspace(3)* %111, align 4, !tbaa !5
  br label %241

228:                                              ; preds = %224
  %229 = load float, float addrspace(3)* %131, align 4, !tbaa !5
  %230 = load float, float addrspace(3)* %133, align 4, !tbaa !5
  %231 = fadd contract float %229, %230
  %232 = load float, float addrspace(3)* %135, align 4, !tbaa !5
  %233 = fadd contract float %231, %232
  %234 = load float, float addrspace(3)* %137, align 4, !tbaa !5
  %235 = fadd contract float %233, %234
  %236 = load float, float addrspace(3)* %113, align 4, !tbaa !5
  %237 = fadd contract float %235, %236
  %238 = load float, float addrspace(3)* %116, align 4, !tbaa !5
  %239 = fadd contract float %237, %238
  %240 = fmul contract float %239, 0x3FC5555560000000
  br label %241

241:                                              ; preds = %216, %222, %226, %228, %219, %213
  %242 = phi float [ %214, %213 ], [ %217, %216 ], [ %220, %219 ], [ %223, %222 ], [ %227, %226 ], [ %240, %228 ]
  %243 = sext i32 %198 to i64
  %244 = getelementptr inbounds float, float addrspace(1)* %5, i64 %243
  store float %242, float addrspace(1)* %244, align 4, !tbaa !5
  br label %245

245:                                              ; preds = %241, %210
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier() #3
  fence syncscope("workgroup") acquire
  %246 = add nuw nsw i32 %186, 1
  %247 = icmp eq i32 %246, %2
  br i1 %247, label %248, label %182, !llvm.loop !9

248:                                              ; preds = %180, %245, %105
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.peeled.count", i32 1}
