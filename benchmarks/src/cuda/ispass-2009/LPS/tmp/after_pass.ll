; ModuleID = '<stdin>'
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
%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" = type { i8 }
%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" = type { i8 }
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
@_ZZ13GPU_laplace3diiiiPfS_E2u1 = internal unnamed_addr addrspace(3) global [612 x float] undef, align 16
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" undef, comdat, align 1
@_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE = weak protected addrspace(4) externally_initialized constant %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" undef, comdat, align 1

; Function Attrs: convergent noinline nounwind
define weak hidden void @__assert_fail(i8* %0, i8* %1, i32 %2, i8* %3) local_unnamed_addr #0 {
.preheader52.preheader:
  %4 = tail call i8 addrspace(4)* @llvm.amdgcn.implicitarg.ptr() #19
  %5 = getelementptr inbounds i8, i8 addrspace(4)* %4, i64 24
  %6 = bitcast i8 addrspace(4)* %5 to i64 addrspace(4)*
  %7 = load i64, i64 addrspace(4)* %6, align 8, !tbaa !4
  %8 = inttoptr i64 %7 to i8*
  %9 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %8, i64 33, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #22
  %10 = extractelement <2 x i64> %9, i64 0
  br i1 icmp eq (i8* addrspacecast (i8 addrspace(4)* getelementptr inbounds ([47 x i8], [47 x i8] addrspace(4)* @.str, i64 0, i64 0) to i8*), i8* null), label %11, label %15

11:                                               ; preds = %.preheader52.preheader
  %12 = and i64 %10, -225
  %13 = or i64 %12, 32
  %14 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %8, i64 %13, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #22
  br label %__ockl_printf_append_string_n.exit

15:                                               ; preds = %.preheader52.preheader
  %16 = and i64 %10, 2
  %17 = and i64 %10, -3
  %18 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %17, i64 0
  br label %19

19:                                               ; preds = %.loopexit39, %15
  %20 = phi i64 [ select (i1 icmp eq (i8* addrspacecast (i8 addrspace(4)* getelementptr inbounds ([47 x i8], [47 x i8] addrspace(4)* @.str, i64 0, i64 0) to i8*), i8* null), i64 0, i64 add (i64 ptrtoint (i8* addrspacecast (i8 addrspace(4)* getelementptr inbounds ([47 x i8], [47 x i8] addrspace(4)* @.str, i64 0, i64 46) to i8*) to i64), i64 add (i64 sub (i64 0, i64 ptrtoint ([47 x i8]* addrspacecast ([47 x i8] addrspace(4)* @.str to [47 x i8]*) to i64)), i64 1))), %15 ], [ %441, %.loopexit39 ]
  %21 = phi i8 addrspace(4)* [ getelementptr inbounds ([47 x i8], [47 x i8] addrspace(4)* @.str, i64 0, i64 0), %15 ], [ %442, %.loopexit39 ]
  %22 = phi <2 x i64> [ %18, %15 ], [ %440, %.loopexit39 ]
  %23 = icmp ugt i64 %20, 56
  %24 = extractelement <2 x i64> %22, i64 0
  %25 = or i64 %24, %16
  %26 = insertelement <2 x i64> poison, i64 %25, i64 0
  %27 = select i1 %23, <2 x i64> %22, <2 x i64> %26
  %28 = icmp ult i64 %20, 56
  %29 = select i1 %28, i64 %20, i64 56
  %30 = trunc i64 %29 to i32
  %31 = extractelement <2 x i64> %27, i64 0
  %32 = and i64 %31, -225
  %33 = shl nuw nsw i64 %29, 2
  %34 = add nuw nsw i64 %33, 28
  %35 = and i64 %34, 480
  %36 = or i64 %32, %35
  %37 = icmp ugt i32 %30, 7
  br i1 %37, label %40, label %38

38:                                               ; preds = %19
  %39 = icmp eq i32 %30, 0
  br i1 %39, label %.loopexit51, label %.preheader50

40:                                               ; preds = %19
  %41 = load i8, i8 addrspace(4)* %21, align 1, !tbaa !8
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 1
  %44 = load i8, i8 addrspace(4)* %43, align 1, !tbaa !8
  %45 = zext i8 %44 to i64
  %46 = shl nuw nsw i64 %45, 8
  %47 = or i64 %46, %42
  %48 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 2
  %49 = load i8, i8 addrspace(4)* %48, align 1, !tbaa !8
  %50 = zext i8 %49 to i64
  %51 = shl nuw nsw i64 %50, 16
  %52 = or i64 %47, %51
  %53 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 3
  %54 = load i8, i8 addrspace(4)* %53, align 1, !tbaa !8
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = or i64 %52, %56
  %58 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 4
  %59 = load i8, i8 addrspace(4)* %58, align 1, !tbaa !8
  %60 = zext i8 %59 to i64
  %61 = shl nuw nsw i64 %60, 32
  %62 = or i64 %57, %61
  %63 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 5
  %64 = load i8, i8 addrspace(4)* %63, align 1, !tbaa !8
  %65 = zext i8 %64 to i64
  %66 = shl nuw nsw i64 %65, 40
  %67 = or i64 %62, %66
  %68 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 6
  %69 = load i8, i8 addrspace(4)* %68, align 1, !tbaa !8
  %70 = zext i8 %69 to i64
  %71 = shl nuw nsw i64 %70, 48
  %72 = or i64 %67, %71
  %73 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 7
  %74 = load i8, i8 addrspace(4)* %73, align 1, !tbaa !8
  %75 = zext i8 %74 to i64
  %76 = shl nuw i64 %75, 56
  %77 = or i64 %72, %76
  %78 = add nsw i32 %30, -8
  %79 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 8
  br label %.loopexit51

.preheader50:                                     ; preds = %38, %.preheader50
  %80 = phi i32 [ %91, %.preheader50 ], [ 0, %38 ]
  %81 = phi i64 [ %90, %.preheader50 ], [ 0, %38 ]
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 %82
  %84 = load i8, i8 addrspace(4)* %83, align 1, !tbaa !8
  %85 = zext i8 %84 to i64
  %86 = shl i32 %80, 3
  %87 = and i32 %86, 56
  %88 = zext i32 %87 to i64
  %89 = shl nuw i64 %85, %88
  %90 = or i64 %89, %81
  %91 = add nuw nsw i32 %80, 1
  %92 = icmp eq i32 %91, %30
  br i1 %92, label %.loopexit51, label %.preheader50

.loopexit51:                                      ; preds = %.preheader50, %40, %38
  %93 = phi i8 addrspace(4)* [ %79, %40 ], [ %21, %38 ], [ %21, %.preheader50 ]
  %94 = phi i32 [ %78, %40 ], [ 0, %38 ], [ 0, %.preheader50 ]
  %95 = phi i64 [ %77, %40 ], [ 0, %38 ], [ %90, %.preheader50 ]
  %96 = icmp ugt i32 %94, 7
  br i1 %96, label %99, label %97

97:                                               ; preds = %.loopexit51
  %98 = icmp eq i32 %94, 0
  br i1 %98, label %.loopexit49, label %.preheader48

99:                                               ; preds = %.loopexit51
  %100 = load i8, i8 addrspace(4)* %93, align 1, !tbaa !8
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 1
  %103 = load i8, i8 addrspace(4)* %102, align 1, !tbaa !8
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 8
  %106 = or i64 %105, %101
  %107 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 2
  %108 = load i8, i8 addrspace(4)* %107, align 1, !tbaa !8
  %109 = zext i8 %108 to i64
  %110 = shl nuw nsw i64 %109, 16
  %111 = or i64 %106, %110
  %112 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 3
  %113 = load i8, i8 addrspace(4)* %112, align 1, !tbaa !8
  %114 = zext i8 %113 to i64
  %115 = shl nuw nsw i64 %114, 24
  %116 = or i64 %111, %115
  %117 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 4
  %118 = load i8, i8 addrspace(4)* %117, align 1, !tbaa !8
  %119 = zext i8 %118 to i64
  %120 = shl nuw nsw i64 %119, 32
  %121 = or i64 %116, %120
  %122 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 5
  %123 = load i8, i8 addrspace(4)* %122, align 1, !tbaa !8
  %124 = zext i8 %123 to i64
  %125 = shl nuw nsw i64 %124, 40
  %126 = or i64 %121, %125
  %127 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 6
  %128 = load i8, i8 addrspace(4)* %127, align 1, !tbaa !8
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i64 %129, 48
  %131 = or i64 %126, %130
  %132 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 7
  %133 = load i8, i8 addrspace(4)* %132, align 1, !tbaa !8
  %134 = zext i8 %133 to i64
  %135 = shl nuw i64 %134, 56
  %136 = or i64 %131, %135
  %137 = add nsw i32 %94, -8
  %138 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 8
  br label %.loopexit49

.preheader48:                                     ; preds = %97, %.preheader48
  %139 = phi i32 [ %149, %.preheader48 ], [ 0, %97 ]
  %140 = phi i64 [ %148, %.preheader48 ], [ 0, %97 ]
  %141 = zext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8 addrspace(4)* %93, i64 %141
  %143 = load i8, i8 addrspace(4)* %142, align 1, !tbaa !8
  %144 = zext i8 %143 to i64
  %145 = shl i32 %139, 3
  %146 = zext i32 %145 to i64
  %147 = shl nuw i64 %144, %146
  %148 = or i64 %147, %140
  %149 = add nuw nsw i32 %139, 1
  %150 = icmp eq i32 %149, %94
  br i1 %150, label %.loopexit49, label %.preheader48

.loopexit49:                                      ; preds = %.preheader48, %99, %97
  %151 = phi i8 addrspace(4)* [ %138, %99 ], [ %93, %97 ], [ %93, %.preheader48 ]
  %152 = phi i32 [ %137, %99 ], [ 0, %97 ], [ 0, %.preheader48 ]
  %153 = phi i64 [ %136, %99 ], [ 0, %97 ], [ %148, %.preheader48 ]
  %154 = icmp ugt i32 %152, 7
  br i1 %154, label %157, label %155

155:                                              ; preds = %.loopexit49
  %156 = icmp eq i32 %152, 0
  br i1 %156, label %.loopexit47, label %.preheader46

157:                                              ; preds = %.loopexit49
  %158 = load i8, i8 addrspace(4)* %151, align 1, !tbaa !8
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 1
  %161 = load i8, i8 addrspace(4)* %160, align 1, !tbaa !8
  %162 = zext i8 %161 to i64
  %163 = shl nuw nsw i64 %162, 8
  %164 = or i64 %163, %159
  %165 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 2
  %166 = load i8, i8 addrspace(4)* %165, align 1, !tbaa !8
  %167 = zext i8 %166 to i64
  %168 = shl nuw nsw i64 %167, 16
  %169 = or i64 %164, %168
  %170 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 3
  %171 = load i8, i8 addrspace(4)* %170, align 1, !tbaa !8
  %172 = zext i8 %171 to i64
  %173 = shl nuw nsw i64 %172, 24
  %174 = or i64 %169, %173
  %175 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 4
  %176 = load i8, i8 addrspace(4)* %175, align 1, !tbaa !8
  %177 = zext i8 %176 to i64
  %178 = shl nuw nsw i64 %177, 32
  %179 = or i64 %174, %178
  %180 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 5
  %181 = load i8, i8 addrspace(4)* %180, align 1, !tbaa !8
  %182 = zext i8 %181 to i64
  %183 = shl nuw nsw i64 %182, 40
  %184 = or i64 %179, %183
  %185 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 6
  %186 = load i8, i8 addrspace(4)* %185, align 1, !tbaa !8
  %187 = zext i8 %186 to i64
  %188 = shl nuw nsw i64 %187, 48
  %189 = or i64 %184, %188
  %190 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 7
  %191 = load i8, i8 addrspace(4)* %190, align 1, !tbaa !8
  %192 = zext i8 %191 to i64
  %193 = shl nuw i64 %192, 56
  %194 = or i64 %189, %193
  %195 = add nsw i32 %152, -8
  %196 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 8
  br label %.loopexit47

.preheader46:                                     ; preds = %155, %.preheader46
  %197 = phi i32 [ %207, %.preheader46 ], [ 0, %155 ]
  %198 = phi i64 [ %206, %.preheader46 ], [ 0, %155 ]
  %199 = zext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8 addrspace(4)* %151, i64 %199
  %201 = load i8, i8 addrspace(4)* %200, align 1, !tbaa !8
  %202 = zext i8 %201 to i64
  %203 = shl i32 %197, 3
  %204 = zext i32 %203 to i64
  %205 = shl nuw i64 %202, %204
  %206 = or i64 %205, %198
  %207 = add nuw nsw i32 %197, 1
  %208 = icmp eq i32 %207, %152
  br i1 %208, label %.loopexit47, label %.preheader46

.loopexit47:                                      ; preds = %.preheader46, %157, %155
  %209 = phi i8 addrspace(4)* [ %196, %157 ], [ %151, %155 ], [ %151, %.preheader46 ]
  %210 = phi i32 [ %195, %157 ], [ 0, %155 ], [ 0, %.preheader46 ]
  %211 = phi i64 [ %194, %157 ], [ 0, %155 ], [ %206, %.preheader46 ]
  %212 = icmp ugt i32 %210, 7
  br i1 %212, label %215, label %213

213:                                              ; preds = %.loopexit47
  %214 = icmp eq i32 %210, 0
  br i1 %214, label %.loopexit45, label %.preheader44

215:                                              ; preds = %.loopexit47
  %216 = load i8, i8 addrspace(4)* %209, align 1, !tbaa !8
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 1
  %219 = load i8, i8 addrspace(4)* %218, align 1, !tbaa !8
  %220 = zext i8 %219 to i64
  %221 = shl nuw nsw i64 %220, 8
  %222 = or i64 %221, %217
  %223 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 2
  %224 = load i8, i8 addrspace(4)* %223, align 1, !tbaa !8
  %225 = zext i8 %224 to i64
  %226 = shl nuw nsw i64 %225, 16
  %227 = or i64 %222, %226
  %228 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 3
  %229 = load i8, i8 addrspace(4)* %228, align 1, !tbaa !8
  %230 = zext i8 %229 to i64
  %231 = shl nuw nsw i64 %230, 24
  %232 = or i64 %227, %231
  %233 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 4
  %234 = load i8, i8 addrspace(4)* %233, align 1, !tbaa !8
  %235 = zext i8 %234 to i64
  %236 = shl nuw nsw i64 %235, 32
  %237 = or i64 %232, %236
  %238 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 5
  %239 = load i8, i8 addrspace(4)* %238, align 1, !tbaa !8
  %240 = zext i8 %239 to i64
  %241 = shl nuw nsw i64 %240, 40
  %242 = or i64 %237, %241
  %243 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 6
  %244 = load i8, i8 addrspace(4)* %243, align 1, !tbaa !8
  %245 = zext i8 %244 to i64
  %246 = shl nuw nsw i64 %245, 48
  %247 = or i64 %242, %246
  %248 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 7
  %249 = load i8, i8 addrspace(4)* %248, align 1, !tbaa !8
  %250 = zext i8 %249 to i64
  %251 = shl nuw i64 %250, 56
  %252 = or i64 %247, %251
  %253 = add i32 %210, -8
  %254 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 8
  br label %.loopexit45

.preheader44:                                     ; preds = %213, %.preheader44
  %255 = phi i32 [ %265, %.preheader44 ], [ 0, %213 ]
  %256 = phi i64 [ %264, %.preheader44 ], [ 0, %213 ]
  %257 = zext i32 %255 to i64
  %258 = getelementptr inbounds i8, i8 addrspace(4)* %209, i64 %257
  %259 = load i8, i8 addrspace(4)* %258, align 1, !tbaa !8
  %260 = zext i8 %259 to i64
  %261 = shl i32 %255, 3
  %262 = zext i32 %261 to i64
  %263 = shl nuw i64 %260, %262
  %264 = or i64 %263, %256
  %265 = add nuw nsw i32 %255, 1
  %266 = icmp eq i32 %265, %210
  br i1 %266, label %.loopexit45, label %.preheader44

.loopexit45:                                      ; preds = %.preheader44, %215, %213
  %267 = phi i8 addrspace(4)* [ %254, %215 ], [ %209, %213 ], [ %209, %.preheader44 ]
  %268 = phi i32 [ %253, %215 ], [ 0, %213 ], [ 0, %.preheader44 ]
  %269 = phi i64 [ %252, %215 ], [ 0, %213 ], [ %264, %.preheader44 ]
  %270 = icmp ugt i32 %268, 7
  br i1 %270, label %273, label %271

271:                                              ; preds = %.loopexit45
  %272 = icmp eq i32 %268, 0
  br i1 %272, label %.loopexit43, label %.preheader42

273:                                              ; preds = %.loopexit45
  %274 = load i8, i8 addrspace(4)* %267, align 1, !tbaa !8
  %275 = zext i8 %274 to i64
  %276 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 1
  %277 = load i8, i8 addrspace(4)* %276, align 1, !tbaa !8
  %278 = zext i8 %277 to i64
  %279 = shl nuw nsw i64 %278, 8
  %280 = or i64 %279, %275
  %281 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 2
  %282 = load i8, i8 addrspace(4)* %281, align 1, !tbaa !8
  %283 = zext i8 %282 to i64
  %284 = shl nuw nsw i64 %283, 16
  %285 = or i64 %280, %284
  %286 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 3
  %287 = load i8, i8 addrspace(4)* %286, align 1, !tbaa !8
  %288 = zext i8 %287 to i64
  %289 = shl nuw nsw i64 %288, 24
  %290 = or i64 %285, %289
  %291 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 4
  %292 = load i8, i8 addrspace(4)* %291, align 1, !tbaa !8
  %293 = zext i8 %292 to i64
  %294 = shl nuw nsw i64 %293, 32
  %295 = or i64 %290, %294
  %296 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 5
  %297 = load i8, i8 addrspace(4)* %296, align 1, !tbaa !8
  %298 = zext i8 %297 to i64
  %299 = shl nuw nsw i64 %298, 40
  %300 = or i64 %295, %299
  %301 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 6
  %302 = load i8, i8 addrspace(4)* %301, align 1, !tbaa !8
  %303 = zext i8 %302 to i64
  %304 = shl nuw nsw i64 %303, 48
  %305 = or i64 %300, %304
  %306 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 7
  %307 = load i8, i8 addrspace(4)* %306, align 1, !tbaa !8
  %308 = zext i8 %307 to i64
  %309 = shl nuw i64 %308, 56
  %310 = or i64 %305, %309
  %311 = add i32 %268, -8
  %312 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 8
  br label %.loopexit43

.preheader42:                                     ; preds = %271, %.preheader42
  %313 = phi i32 [ %323, %.preheader42 ], [ 0, %271 ]
  %314 = phi i64 [ %322, %.preheader42 ], [ 0, %271 ]
  %315 = zext i32 %313 to i64
  %316 = getelementptr inbounds i8, i8 addrspace(4)* %267, i64 %315
  %317 = load i8, i8 addrspace(4)* %316, align 1, !tbaa !8
  %318 = zext i8 %317 to i64
  %319 = shl i32 %313, 3
  %320 = zext i32 %319 to i64
  %321 = shl nuw i64 %318, %320
  %322 = or i64 %321, %314
  %323 = add nuw nsw i32 %313, 1
  %324 = icmp eq i32 %323, %268
  br i1 %324, label %.loopexit43, label %.preheader42

.loopexit43:                                      ; preds = %.preheader42, %273, %271
  %325 = phi i8 addrspace(4)* [ %312, %273 ], [ %267, %271 ], [ %267, %.preheader42 ]
  %326 = phi i32 [ %311, %273 ], [ 0, %271 ], [ 0, %.preheader42 ]
  %327 = phi i64 [ %310, %273 ], [ 0, %271 ], [ %322, %.preheader42 ]
  %328 = icmp ugt i32 %326, 7
  br i1 %328, label %331, label %329

329:                                              ; preds = %.loopexit43
  %330 = icmp eq i32 %326, 0
  br i1 %330, label %.loopexit41, label %.preheader40

331:                                              ; preds = %.loopexit43
  %332 = load i8, i8 addrspace(4)* %325, align 1, !tbaa !8
  %333 = zext i8 %332 to i64
  %334 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 1
  %335 = load i8, i8 addrspace(4)* %334, align 1, !tbaa !8
  %336 = zext i8 %335 to i64
  %337 = shl nuw nsw i64 %336, 8
  %338 = or i64 %337, %333
  %339 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 2
  %340 = load i8, i8 addrspace(4)* %339, align 1, !tbaa !8
  %341 = zext i8 %340 to i64
  %342 = shl nuw nsw i64 %341, 16
  %343 = or i64 %338, %342
  %344 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 3
  %345 = load i8, i8 addrspace(4)* %344, align 1, !tbaa !8
  %346 = zext i8 %345 to i64
  %347 = shl nuw nsw i64 %346, 24
  %348 = or i64 %343, %347
  %349 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 4
  %350 = load i8, i8 addrspace(4)* %349, align 1, !tbaa !8
  %351 = zext i8 %350 to i64
  %352 = shl nuw nsw i64 %351, 32
  %353 = or i64 %348, %352
  %354 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 5
  %355 = load i8, i8 addrspace(4)* %354, align 1, !tbaa !8
  %356 = zext i8 %355 to i64
  %357 = shl nuw nsw i64 %356, 40
  %358 = or i64 %353, %357
  %359 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 6
  %360 = load i8, i8 addrspace(4)* %359, align 1, !tbaa !8
  %361 = zext i8 %360 to i64
  %362 = shl nuw nsw i64 %361, 48
  %363 = or i64 %358, %362
  %364 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 7
  %365 = load i8, i8 addrspace(4)* %364, align 1, !tbaa !8
  %366 = zext i8 %365 to i64
  %367 = shl nuw i64 %366, 56
  %368 = or i64 %363, %367
  %369 = add i32 %326, -8
  %370 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 8
  br label %.loopexit41

.preheader40:                                     ; preds = %329, %.preheader40
  %371 = phi i32 [ %381, %.preheader40 ], [ 0, %329 ]
  %372 = phi i64 [ %380, %.preheader40 ], [ 0, %329 ]
  %373 = zext i32 %371 to i64
  %374 = getelementptr inbounds i8, i8 addrspace(4)* %325, i64 %373
  %375 = load i8, i8 addrspace(4)* %374, align 1, !tbaa !8
  %376 = zext i8 %375 to i64
  %377 = shl i32 %371, 3
  %378 = zext i32 %377 to i64
  %379 = shl nuw i64 %376, %378
  %380 = or i64 %379, %372
  %381 = add nuw nsw i32 %371, 1
  %382 = icmp eq i32 %381, %326
  br i1 %382, label %.loopexit41, label %.preheader40

.loopexit41:                                      ; preds = %.preheader40, %331, %329
  %383 = phi i8 addrspace(4)* [ %370, %331 ], [ %325, %329 ], [ %325, %.preheader40 ]
  %384 = phi i32 [ %369, %331 ], [ 0, %329 ], [ 0, %.preheader40 ]
  %385 = phi i64 [ %368, %331 ], [ 0, %329 ], [ %380, %.preheader40 ]
  %386 = icmp ugt i32 %384, 7
  br i1 %386, label %389, label %387

387:                                              ; preds = %.loopexit41
  %388 = icmp eq i32 %384, 0
  br i1 %388, label %.loopexit39, label %.preheader38

389:                                              ; preds = %.loopexit41
  %390 = load i8, i8 addrspace(4)* %383, align 1, !tbaa !8
  %391 = zext i8 %390 to i64
  %392 = getelementptr inbounds i8, i8 addrspace(4)* %383, i64 1
  %393 = load i8, i8 addrspace(4)* %392, align 1, !tbaa !8
  %394 = zext i8 %393 to i64
  %395 = shl nuw nsw i64 %394, 8
  %396 = or i64 %395, %391
  %397 = getelementptr inbounds i8, i8 addrspace(4)* %383, i64 2
  %398 = load i8, i8 addrspace(4)* %397, align 1, !tbaa !8
  %399 = zext i8 %398 to i64
  %400 = shl nuw nsw i64 %399, 16
  %401 = or i64 %396, %400
  %402 = getelementptr inbounds i8, i8 addrspace(4)* %383, i64 3
  %403 = load i8, i8 addrspace(4)* %402, align 1, !tbaa !8
  %404 = zext i8 %403 to i64
  %405 = shl nuw nsw i64 %404, 24
  %406 = or i64 %401, %405
  %407 = getelementptr inbounds i8, i8 addrspace(4)* %383, i64 4
  %408 = load i8, i8 addrspace(4)* %407, align 1, !tbaa !8
  %409 = zext i8 %408 to i64
  %410 = shl nuw nsw i64 %409, 32
  %411 = or i64 %406, %410
  %412 = getelementptr inbounds i8, i8 addrspace(4)* %383, i64 5
  %413 = load i8, i8 addrspace(4)* %412, align 1, !tbaa !8
  %414 = zext i8 %413 to i64
  %415 = shl nuw nsw i64 %414, 40
  %416 = or i64 %411, %415
  %417 = getelementptr inbounds i8, i8 addrspace(4)* %383, i64 6
  %418 = load i8, i8 addrspace(4)* %417, align 1, !tbaa !8
  %419 = zext i8 %418 to i64
  %420 = shl nuw nsw i64 %419, 48
  %421 = or i64 %416, %420
  %422 = getelementptr inbounds i8, i8 addrspace(4)* %383, i64 7
  %423 = load i8, i8 addrspace(4)* %422, align 1, !tbaa !8
  %424 = zext i8 %423 to i64
  %425 = shl nuw i64 %424, 56
  %426 = or i64 %421, %425
  br label %.loopexit39

.preheader38:                                     ; preds = %387, %.preheader38
  %427 = phi i32 [ %437, %.preheader38 ], [ 0, %387 ]
  %428 = phi i64 [ %436, %.preheader38 ], [ 0, %387 ]
  %429 = zext i32 %427 to i64
  %430 = getelementptr inbounds i8, i8 addrspace(4)* %383, i64 %429
  %431 = load i8, i8 addrspace(4)* %430, align 1, !tbaa !8
  %432 = zext i8 %431 to i64
  %433 = shl i32 %427, 3
  %434 = zext i32 %433 to i64
  %435 = shl nuw i64 %432, %434
  %436 = or i64 %435, %428
  %437 = add nuw nsw i32 %427, 1
  %438 = icmp eq i32 %437, %384
  br i1 %438, label %.loopexit39, label %.preheader38

.loopexit39:                                      ; preds = %.preheader38, %389, %387
  %439 = phi i64 [ %426, %389 ], [ 0, %387 ], [ %436, %.preheader38 ]
  %440 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %8, i64 %36, i64 %95, i64 %153, i64 %211, i64 %269, i64 %327, i64 %385, i64 %439) #22
  %441 = sub i64 %20, %29
  %442 = getelementptr inbounds i8, i8 addrspace(4)* %21, i64 %29
  %443 = icmp eq i64 %441, 0
  br i1 %443, label %__ockl_printf_append_string_n.exit, label %19

__ockl_printf_append_string_n.exit:               ; preds = %.loopexit39, %11
  %444 = phi <2 x i64> [ %14, %11 ], [ %440, %.loopexit39 ]
  %445 = extractelement <2 x i64> %444, i64 0
  %446 = icmp eq i8* %1, null
  br i1 %446, label %456, label %.preheader37

.preheader37:                                     ; preds = %__ockl_printf_append_string_n.exit, %.preheader37
  %447 = phi i8* [ %448, %.preheader37 ], [ %1, %__ockl_printf_append_string_n.exit ]
  %448 = getelementptr i8, i8* %447, i64 1
  %449 = load i8, i8* %447, align 1
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %451, label %.preheader37

451:                                              ; preds = %.preheader37
  %452 = ptrtoint i8* %1 to i64
  %453 = ptrtoint i8* %447 to i64
  %454 = sub i64 1, %452
  %455 = add i64 %454, %453
  br label %456

456:                                              ; preds = %451, %__ockl_printf_append_string_n.exit
  %457 = phi i64 [ %455, %451 ], [ 0, %__ockl_printf_append_string_n.exit ]
  br i1 %446, label %458, label %462

458:                                              ; preds = %456
  %459 = and i64 %445, -225
  %460 = or i64 %459, 32
  %461 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %8, i64 %460, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #22
  br label %__ockl_printf_append_string_n.exit5

462:                                              ; preds = %456
  %463 = and i64 %445, 2
  %464 = and i64 %445, -3
  %465 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %464, i64 0
  br label %466

466:                                              ; preds = %.loopexit24, %462
  %467 = phi i64 [ %457, %462 ], [ %888, %.loopexit24 ]
  %468 = phi i8* [ %1, %462 ], [ %889, %.loopexit24 ]
  %469 = phi <2 x i64> [ %465, %462 ], [ %887, %.loopexit24 ]
  %470 = icmp ugt i64 %467, 56
  %471 = extractelement <2 x i64> %469, i64 0
  %472 = or i64 %471, %463
  %473 = insertelement <2 x i64> poison, i64 %472, i64 0
  %474 = select i1 %470, <2 x i64> %469, <2 x i64> %473
  %475 = icmp ult i64 %467, 56
  %476 = select i1 %475, i64 %467, i64 56
  %477 = trunc i64 %476 to i32
  %478 = extractelement <2 x i64> %474, i64 0
  %479 = and i64 %478, -225
  %480 = shl nuw nsw i64 %476, 2
  %481 = add nuw nsw i64 %480, 28
  %482 = and i64 %481, 480
  %483 = or i64 %479, %482
  %484 = icmp ugt i32 %477, 7
  br i1 %484, label %487, label %485

485:                                              ; preds = %466
  %486 = icmp eq i32 %477, 0
  br i1 %486, label %.loopexit36, label %.preheader35

487:                                              ; preds = %466
  %488 = load i8, i8* %468, align 1, !tbaa !8
  %489 = zext i8 %488 to i64
  %490 = getelementptr inbounds i8, i8* %468, i64 1
  %491 = load i8, i8* %490, align 1, !tbaa !8
  %492 = zext i8 %491 to i64
  %493 = shl nuw nsw i64 %492, 8
  %494 = or i64 %493, %489
  %495 = getelementptr inbounds i8, i8* %468, i64 2
  %496 = load i8, i8* %495, align 1, !tbaa !8
  %497 = zext i8 %496 to i64
  %498 = shl nuw nsw i64 %497, 16
  %499 = or i64 %494, %498
  %500 = getelementptr inbounds i8, i8* %468, i64 3
  %501 = load i8, i8* %500, align 1, !tbaa !8
  %502 = zext i8 %501 to i64
  %503 = shl nuw nsw i64 %502, 24
  %504 = or i64 %499, %503
  %505 = getelementptr inbounds i8, i8* %468, i64 4
  %506 = load i8, i8* %505, align 1, !tbaa !8
  %507 = zext i8 %506 to i64
  %508 = shl nuw nsw i64 %507, 32
  %509 = or i64 %504, %508
  %510 = getelementptr inbounds i8, i8* %468, i64 5
  %511 = load i8, i8* %510, align 1, !tbaa !8
  %512 = zext i8 %511 to i64
  %513 = shl nuw nsw i64 %512, 40
  %514 = or i64 %509, %513
  %515 = getelementptr inbounds i8, i8* %468, i64 6
  %516 = load i8, i8* %515, align 1, !tbaa !8
  %517 = zext i8 %516 to i64
  %518 = shl nuw nsw i64 %517, 48
  %519 = or i64 %514, %518
  %520 = getelementptr inbounds i8, i8* %468, i64 7
  %521 = load i8, i8* %520, align 1, !tbaa !8
  %522 = zext i8 %521 to i64
  %523 = shl nuw i64 %522, 56
  %524 = or i64 %519, %523
  %525 = add nsw i32 %477, -8
  %526 = getelementptr inbounds i8, i8* %468, i64 8
  br label %.loopexit36

.preheader35:                                     ; preds = %485, %.preheader35
  %527 = phi i32 [ %538, %.preheader35 ], [ 0, %485 ]
  %528 = phi i64 [ %537, %.preheader35 ], [ 0, %485 ]
  %529 = zext i32 %527 to i64
  %530 = getelementptr inbounds i8, i8* %468, i64 %529
  %531 = load i8, i8* %530, align 1, !tbaa !8
  %532 = zext i8 %531 to i64
  %533 = shl i32 %527, 3
  %534 = and i32 %533, 56
  %535 = zext i32 %534 to i64
  %536 = shl nuw i64 %532, %535
  %537 = or i64 %536, %528
  %538 = add nuw nsw i32 %527, 1
  %539 = icmp eq i32 %538, %477
  br i1 %539, label %.loopexit36, label %.preheader35

.loopexit36:                                      ; preds = %.preheader35, %487, %485
  %540 = phi i8* [ %526, %487 ], [ %468, %485 ], [ %468, %.preheader35 ]
  %541 = phi i32 [ %525, %487 ], [ 0, %485 ], [ 0, %.preheader35 ]
  %542 = phi i64 [ %524, %487 ], [ 0, %485 ], [ %537, %.preheader35 ]
  %543 = icmp ugt i32 %541, 7
  br i1 %543, label %546, label %544

544:                                              ; preds = %.loopexit36
  %545 = icmp eq i32 %541, 0
  br i1 %545, label %.loopexit34, label %.preheader33

546:                                              ; preds = %.loopexit36
  %547 = load i8, i8* %540, align 1, !tbaa !8
  %548 = zext i8 %547 to i64
  %549 = getelementptr inbounds i8, i8* %540, i64 1
  %550 = load i8, i8* %549, align 1, !tbaa !8
  %551 = zext i8 %550 to i64
  %552 = shl nuw nsw i64 %551, 8
  %553 = or i64 %552, %548
  %554 = getelementptr inbounds i8, i8* %540, i64 2
  %555 = load i8, i8* %554, align 1, !tbaa !8
  %556 = zext i8 %555 to i64
  %557 = shl nuw nsw i64 %556, 16
  %558 = or i64 %553, %557
  %559 = getelementptr inbounds i8, i8* %540, i64 3
  %560 = load i8, i8* %559, align 1, !tbaa !8
  %561 = zext i8 %560 to i64
  %562 = shl nuw nsw i64 %561, 24
  %563 = or i64 %558, %562
  %564 = getelementptr inbounds i8, i8* %540, i64 4
  %565 = load i8, i8* %564, align 1, !tbaa !8
  %566 = zext i8 %565 to i64
  %567 = shl nuw nsw i64 %566, 32
  %568 = or i64 %563, %567
  %569 = getelementptr inbounds i8, i8* %540, i64 5
  %570 = load i8, i8* %569, align 1, !tbaa !8
  %571 = zext i8 %570 to i64
  %572 = shl nuw nsw i64 %571, 40
  %573 = or i64 %568, %572
  %574 = getelementptr inbounds i8, i8* %540, i64 6
  %575 = load i8, i8* %574, align 1, !tbaa !8
  %576 = zext i8 %575 to i64
  %577 = shl nuw nsw i64 %576, 48
  %578 = or i64 %573, %577
  %579 = getelementptr inbounds i8, i8* %540, i64 7
  %580 = load i8, i8* %579, align 1, !tbaa !8
  %581 = zext i8 %580 to i64
  %582 = shl nuw i64 %581, 56
  %583 = or i64 %578, %582
  %584 = add nsw i32 %541, -8
  %585 = getelementptr inbounds i8, i8* %540, i64 8
  br label %.loopexit34

.preheader33:                                     ; preds = %544, %.preheader33
  %586 = phi i32 [ %596, %.preheader33 ], [ 0, %544 ]
  %587 = phi i64 [ %595, %.preheader33 ], [ 0, %544 ]
  %588 = zext i32 %586 to i64
  %589 = getelementptr inbounds i8, i8* %540, i64 %588
  %590 = load i8, i8* %589, align 1, !tbaa !8
  %591 = zext i8 %590 to i64
  %592 = shl i32 %586, 3
  %593 = zext i32 %592 to i64
  %594 = shl nuw i64 %591, %593
  %595 = or i64 %594, %587
  %596 = add nuw nsw i32 %586, 1
  %597 = icmp eq i32 %596, %541
  br i1 %597, label %.loopexit34, label %.preheader33

.loopexit34:                                      ; preds = %.preheader33, %546, %544
  %598 = phi i8* [ %585, %546 ], [ %540, %544 ], [ %540, %.preheader33 ]
  %599 = phi i32 [ %584, %546 ], [ 0, %544 ], [ 0, %.preheader33 ]
  %600 = phi i64 [ %583, %546 ], [ 0, %544 ], [ %595, %.preheader33 ]
  %601 = icmp ugt i32 %599, 7
  br i1 %601, label %604, label %602

602:                                              ; preds = %.loopexit34
  %603 = icmp eq i32 %599, 0
  br i1 %603, label %.loopexit32, label %.preheader31

604:                                              ; preds = %.loopexit34
  %605 = load i8, i8* %598, align 1, !tbaa !8
  %606 = zext i8 %605 to i64
  %607 = getelementptr inbounds i8, i8* %598, i64 1
  %608 = load i8, i8* %607, align 1, !tbaa !8
  %609 = zext i8 %608 to i64
  %610 = shl nuw nsw i64 %609, 8
  %611 = or i64 %610, %606
  %612 = getelementptr inbounds i8, i8* %598, i64 2
  %613 = load i8, i8* %612, align 1, !tbaa !8
  %614 = zext i8 %613 to i64
  %615 = shl nuw nsw i64 %614, 16
  %616 = or i64 %611, %615
  %617 = getelementptr inbounds i8, i8* %598, i64 3
  %618 = load i8, i8* %617, align 1, !tbaa !8
  %619 = zext i8 %618 to i64
  %620 = shl nuw nsw i64 %619, 24
  %621 = or i64 %616, %620
  %622 = getelementptr inbounds i8, i8* %598, i64 4
  %623 = load i8, i8* %622, align 1, !tbaa !8
  %624 = zext i8 %623 to i64
  %625 = shl nuw nsw i64 %624, 32
  %626 = or i64 %621, %625
  %627 = getelementptr inbounds i8, i8* %598, i64 5
  %628 = load i8, i8* %627, align 1, !tbaa !8
  %629 = zext i8 %628 to i64
  %630 = shl nuw nsw i64 %629, 40
  %631 = or i64 %626, %630
  %632 = getelementptr inbounds i8, i8* %598, i64 6
  %633 = load i8, i8* %632, align 1, !tbaa !8
  %634 = zext i8 %633 to i64
  %635 = shl nuw nsw i64 %634, 48
  %636 = or i64 %631, %635
  %637 = getelementptr inbounds i8, i8* %598, i64 7
  %638 = load i8, i8* %637, align 1, !tbaa !8
  %639 = zext i8 %638 to i64
  %640 = shl nuw i64 %639, 56
  %641 = or i64 %636, %640
  %642 = add nsw i32 %599, -8
  %643 = getelementptr inbounds i8, i8* %598, i64 8
  br label %.loopexit32

.preheader31:                                     ; preds = %602, %.preheader31
  %644 = phi i32 [ %654, %.preheader31 ], [ 0, %602 ]
  %645 = phi i64 [ %653, %.preheader31 ], [ 0, %602 ]
  %646 = zext i32 %644 to i64
  %647 = getelementptr inbounds i8, i8* %598, i64 %646
  %648 = load i8, i8* %647, align 1, !tbaa !8
  %649 = zext i8 %648 to i64
  %650 = shl i32 %644, 3
  %651 = zext i32 %650 to i64
  %652 = shl nuw i64 %649, %651
  %653 = or i64 %652, %645
  %654 = add nuw nsw i32 %644, 1
  %655 = icmp eq i32 %654, %599
  br i1 %655, label %.loopexit32, label %.preheader31

.loopexit32:                                      ; preds = %.preheader31, %604, %602
  %656 = phi i8* [ %643, %604 ], [ %598, %602 ], [ %598, %.preheader31 ]
  %657 = phi i32 [ %642, %604 ], [ 0, %602 ], [ 0, %.preheader31 ]
  %658 = phi i64 [ %641, %604 ], [ 0, %602 ], [ %653, %.preheader31 ]
  %659 = icmp ugt i32 %657, 7
  br i1 %659, label %662, label %660

660:                                              ; preds = %.loopexit32
  %661 = icmp eq i32 %657, 0
  br i1 %661, label %.loopexit30, label %.preheader29

662:                                              ; preds = %.loopexit32
  %663 = load i8, i8* %656, align 1, !tbaa !8
  %664 = zext i8 %663 to i64
  %665 = getelementptr inbounds i8, i8* %656, i64 1
  %666 = load i8, i8* %665, align 1, !tbaa !8
  %667 = zext i8 %666 to i64
  %668 = shl nuw nsw i64 %667, 8
  %669 = or i64 %668, %664
  %670 = getelementptr inbounds i8, i8* %656, i64 2
  %671 = load i8, i8* %670, align 1, !tbaa !8
  %672 = zext i8 %671 to i64
  %673 = shl nuw nsw i64 %672, 16
  %674 = or i64 %669, %673
  %675 = getelementptr inbounds i8, i8* %656, i64 3
  %676 = load i8, i8* %675, align 1, !tbaa !8
  %677 = zext i8 %676 to i64
  %678 = shl nuw nsw i64 %677, 24
  %679 = or i64 %674, %678
  %680 = getelementptr inbounds i8, i8* %656, i64 4
  %681 = load i8, i8* %680, align 1, !tbaa !8
  %682 = zext i8 %681 to i64
  %683 = shl nuw nsw i64 %682, 32
  %684 = or i64 %679, %683
  %685 = getelementptr inbounds i8, i8* %656, i64 5
  %686 = load i8, i8* %685, align 1, !tbaa !8
  %687 = zext i8 %686 to i64
  %688 = shl nuw nsw i64 %687, 40
  %689 = or i64 %684, %688
  %690 = getelementptr inbounds i8, i8* %656, i64 6
  %691 = load i8, i8* %690, align 1, !tbaa !8
  %692 = zext i8 %691 to i64
  %693 = shl nuw nsw i64 %692, 48
  %694 = or i64 %689, %693
  %695 = getelementptr inbounds i8, i8* %656, i64 7
  %696 = load i8, i8* %695, align 1, !tbaa !8
  %697 = zext i8 %696 to i64
  %698 = shl nuw i64 %697, 56
  %699 = or i64 %694, %698
  %700 = add i32 %657, -8
  %701 = getelementptr inbounds i8, i8* %656, i64 8
  br label %.loopexit30

.preheader29:                                     ; preds = %660, %.preheader29
  %702 = phi i32 [ %712, %.preheader29 ], [ 0, %660 ]
  %703 = phi i64 [ %711, %.preheader29 ], [ 0, %660 ]
  %704 = zext i32 %702 to i64
  %705 = getelementptr inbounds i8, i8* %656, i64 %704
  %706 = load i8, i8* %705, align 1, !tbaa !8
  %707 = zext i8 %706 to i64
  %708 = shl i32 %702, 3
  %709 = zext i32 %708 to i64
  %710 = shl nuw i64 %707, %709
  %711 = or i64 %710, %703
  %712 = add nuw nsw i32 %702, 1
  %713 = icmp eq i32 %712, %657
  br i1 %713, label %.loopexit30, label %.preheader29

.loopexit30:                                      ; preds = %.preheader29, %662, %660
  %714 = phi i8* [ %701, %662 ], [ %656, %660 ], [ %656, %.preheader29 ]
  %715 = phi i32 [ %700, %662 ], [ 0, %660 ], [ 0, %.preheader29 ]
  %716 = phi i64 [ %699, %662 ], [ 0, %660 ], [ %711, %.preheader29 ]
  %717 = icmp ugt i32 %715, 7
  br i1 %717, label %720, label %718

718:                                              ; preds = %.loopexit30
  %719 = icmp eq i32 %715, 0
  br i1 %719, label %.loopexit28, label %.preheader27

720:                                              ; preds = %.loopexit30
  %721 = load i8, i8* %714, align 1, !tbaa !8
  %722 = zext i8 %721 to i64
  %723 = getelementptr inbounds i8, i8* %714, i64 1
  %724 = load i8, i8* %723, align 1, !tbaa !8
  %725 = zext i8 %724 to i64
  %726 = shl nuw nsw i64 %725, 8
  %727 = or i64 %726, %722
  %728 = getelementptr inbounds i8, i8* %714, i64 2
  %729 = load i8, i8* %728, align 1, !tbaa !8
  %730 = zext i8 %729 to i64
  %731 = shl nuw nsw i64 %730, 16
  %732 = or i64 %727, %731
  %733 = getelementptr inbounds i8, i8* %714, i64 3
  %734 = load i8, i8* %733, align 1, !tbaa !8
  %735 = zext i8 %734 to i64
  %736 = shl nuw nsw i64 %735, 24
  %737 = or i64 %732, %736
  %738 = getelementptr inbounds i8, i8* %714, i64 4
  %739 = load i8, i8* %738, align 1, !tbaa !8
  %740 = zext i8 %739 to i64
  %741 = shl nuw nsw i64 %740, 32
  %742 = or i64 %737, %741
  %743 = getelementptr inbounds i8, i8* %714, i64 5
  %744 = load i8, i8* %743, align 1, !tbaa !8
  %745 = zext i8 %744 to i64
  %746 = shl nuw nsw i64 %745, 40
  %747 = or i64 %742, %746
  %748 = getelementptr inbounds i8, i8* %714, i64 6
  %749 = load i8, i8* %748, align 1, !tbaa !8
  %750 = zext i8 %749 to i64
  %751 = shl nuw nsw i64 %750, 48
  %752 = or i64 %747, %751
  %753 = getelementptr inbounds i8, i8* %714, i64 7
  %754 = load i8, i8* %753, align 1, !tbaa !8
  %755 = zext i8 %754 to i64
  %756 = shl nuw i64 %755, 56
  %757 = or i64 %752, %756
  %758 = add i32 %715, -8
  %759 = getelementptr inbounds i8, i8* %714, i64 8
  br label %.loopexit28

.preheader27:                                     ; preds = %718, %.preheader27
  %760 = phi i32 [ %770, %.preheader27 ], [ 0, %718 ]
  %761 = phi i64 [ %769, %.preheader27 ], [ 0, %718 ]
  %762 = zext i32 %760 to i64
  %763 = getelementptr inbounds i8, i8* %714, i64 %762
  %764 = load i8, i8* %763, align 1, !tbaa !8
  %765 = zext i8 %764 to i64
  %766 = shl i32 %760, 3
  %767 = zext i32 %766 to i64
  %768 = shl nuw i64 %765, %767
  %769 = or i64 %768, %761
  %770 = add nuw nsw i32 %760, 1
  %771 = icmp eq i32 %770, %715
  br i1 %771, label %.loopexit28, label %.preheader27

.loopexit28:                                      ; preds = %.preheader27, %720, %718
  %772 = phi i8* [ %759, %720 ], [ %714, %718 ], [ %714, %.preheader27 ]
  %773 = phi i32 [ %758, %720 ], [ 0, %718 ], [ 0, %.preheader27 ]
  %774 = phi i64 [ %757, %720 ], [ 0, %718 ], [ %769, %.preheader27 ]
  %775 = icmp ugt i32 %773, 7
  br i1 %775, label %778, label %776

776:                                              ; preds = %.loopexit28
  %777 = icmp eq i32 %773, 0
  br i1 %777, label %.loopexit26, label %.preheader25

778:                                              ; preds = %.loopexit28
  %779 = load i8, i8* %772, align 1, !tbaa !8
  %780 = zext i8 %779 to i64
  %781 = getelementptr inbounds i8, i8* %772, i64 1
  %782 = load i8, i8* %781, align 1, !tbaa !8
  %783 = zext i8 %782 to i64
  %784 = shl nuw nsw i64 %783, 8
  %785 = or i64 %784, %780
  %786 = getelementptr inbounds i8, i8* %772, i64 2
  %787 = load i8, i8* %786, align 1, !tbaa !8
  %788 = zext i8 %787 to i64
  %789 = shl nuw nsw i64 %788, 16
  %790 = or i64 %785, %789
  %791 = getelementptr inbounds i8, i8* %772, i64 3
  %792 = load i8, i8* %791, align 1, !tbaa !8
  %793 = zext i8 %792 to i64
  %794 = shl nuw nsw i64 %793, 24
  %795 = or i64 %790, %794
  %796 = getelementptr inbounds i8, i8* %772, i64 4
  %797 = load i8, i8* %796, align 1, !tbaa !8
  %798 = zext i8 %797 to i64
  %799 = shl nuw nsw i64 %798, 32
  %800 = or i64 %795, %799
  %801 = getelementptr inbounds i8, i8* %772, i64 5
  %802 = load i8, i8* %801, align 1, !tbaa !8
  %803 = zext i8 %802 to i64
  %804 = shl nuw nsw i64 %803, 40
  %805 = or i64 %800, %804
  %806 = getelementptr inbounds i8, i8* %772, i64 6
  %807 = load i8, i8* %806, align 1, !tbaa !8
  %808 = zext i8 %807 to i64
  %809 = shl nuw nsw i64 %808, 48
  %810 = or i64 %805, %809
  %811 = getelementptr inbounds i8, i8* %772, i64 7
  %812 = load i8, i8* %811, align 1, !tbaa !8
  %813 = zext i8 %812 to i64
  %814 = shl nuw i64 %813, 56
  %815 = or i64 %810, %814
  %816 = add i32 %773, -8
  %817 = getelementptr inbounds i8, i8* %772, i64 8
  br label %.loopexit26

.preheader25:                                     ; preds = %776, %.preheader25
  %818 = phi i32 [ %828, %.preheader25 ], [ 0, %776 ]
  %819 = phi i64 [ %827, %.preheader25 ], [ 0, %776 ]
  %820 = zext i32 %818 to i64
  %821 = getelementptr inbounds i8, i8* %772, i64 %820
  %822 = load i8, i8* %821, align 1, !tbaa !8
  %823 = zext i8 %822 to i64
  %824 = shl i32 %818, 3
  %825 = zext i32 %824 to i64
  %826 = shl nuw i64 %823, %825
  %827 = or i64 %826, %819
  %828 = add nuw nsw i32 %818, 1
  %829 = icmp eq i32 %828, %773
  br i1 %829, label %.loopexit26, label %.preheader25

.loopexit26:                                      ; preds = %.preheader25, %778, %776
  %830 = phi i8* [ %817, %778 ], [ %772, %776 ], [ %772, %.preheader25 ]
  %831 = phi i32 [ %816, %778 ], [ 0, %776 ], [ 0, %.preheader25 ]
  %832 = phi i64 [ %815, %778 ], [ 0, %776 ], [ %827, %.preheader25 ]
  %833 = icmp ugt i32 %831, 7
  br i1 %833, label %836, label %834

834:                                              ; preds = %.loopexit26
  %835 = icmp eq i32 %831, 0
  br i1 %835, label %.loopexit24, label %.preheader23

836:                                              ; preds = %.loopexit26
  %837 = load i8, i8* %830, align 1, !tbaa !8
  %838 = zext i8 %837 to i64
  %839 = getelementptr inbounds i8, i8* %830, i64 1
  %840 = load i8, i8* %839, align 1, !tbaa !8
  %841 = zext i8 %840 to i64
  %842 = shl nuw nsw i64 %841, 8
  %843 = or i64 %842, %838
  %844 = getelementptr inbounds i8, i8* %830, i64 2
  %845 = load i8, i8* %844, align 1, !tbaa !8
  %846 = zext i8 %845 to i64
  %847 = shl nuw nsw i64 %846, 16
  %848 = or i64 %843, %847
  %849 = getelementptr inbounds i8, i8* %830, i64 3
  %850 = load i8, i8* %849, align 1, !tbaa !8
  %851 = zext i8 %850 to i64
  %852 = shl nuw nsw i64 %851, 24
  %853 = or i64 %848, %852
  %854 = getelementptr inbounds i8, i8* %830, i64 4
  %855 = load i8, i8* %854, align 1, !tbaa !8
  %856 = zext i8 %855 to i64
  %857 = shl nuw nsw i64 %856, 32
  %858 = or i64 %853, %857
  %859 = getelementptr inbounds i8, i8* %830, i64 5
  %860 = load i8, i8* %859, align 1, !tbaa !8
  %861 = zext i8 %860 to i64
  %862 = shl nuw nsw i64 %861, 40
  %863 = or i64 %858, %862
  %864 = getelementptr inbounds i8, i8* %830, i64 6
  %865 = load i8, i8* %864, align 1, !tbaa !8
  %866 = zext i8 %865 to i64
  %867 = shl nuw nsw i64 %866, 48
  %868 = or i64 %863, %867
  %869 = getelementptr inbounds i8, i8* %830, i64 7
  %870 = load i8, i8* %869, align 1, !tbaa !8
  %871 = zext i8 %870 to i64
  %872 = shl nuw i64 %871, 56
  %873 = or i64 %868, %872
  br label %.loopexit24

.preheader23:                                     ; preds = %834, %.preheader23
  %874 = phi i32 [ %884, %.preheader23 ], [ 0, %834 ]
  %875 = phi i64 [ %883, %.preheader23 ], [ 0, %834 ]
  %876 = zext i32 %874 to i64
  %877 = getelementptr inbounds i8, i8* %830, i64 %876
  %878 = load i8, i8* %877, align 1, !tbaa !8
  %879 = zext i8 %878 to i64
  %880 = shl i32 %874, 3
  %881 = zext i32 %880 to i64
  %882 = shl nuw i64 %879, %881
  %883 = or i64 %882, %875
  %884 = add nuw nsw i32 %874, 1
  %885 = icmp eq i32 %884, %831
  br i1 %885, label %.loopexit24, label %.preheader23

.loopexit24:                                      ; preds = %.preheader23, %836, %834
  %886 = phi i64 [ %873, %836 ], [ 0, %834 ], [ %883, %.preheader23 ]
  %887 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %8, i64 %483, i64 %542, i64 %600, i64 %658, i64 %716, i64 %774, i64 %832, i64 %886) #22
  %888 = sub i64 %467, %476
  %889 = getelementptr inbounds i8, i8* %468, i64 %476
  %890 = icmp eq i64 %888, 0
  br i1 %890, label %__ockl_printf_append_string_n.exit5, label %466

__ockl_printf_append_string_n.exit5:              ; preds = %.loopexit24, %458
  %891 = phi <2 x i64> [ %461, %458 ], [ %887, %.loopexit24 ]
  %892 = extractelement <2 x i64> %891, i64 0
  %893 = zext i32 %2 to i64
  %894 = and i64 %892, -225
  %895 = or i64 %894, 32
  %896 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %8, i64 %895, i64 %893, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #22
  %897 = extractelement <2 x i64> %896, i64 0
  %898 = icmp eq i8* %3, null
  br i1 %898, label %908, label %.preheader22

.preheader22:                                     ; preds = %__ockl_printf_append_string_n.exit5, %.preheader22
  %899 = phi i8* [ %900, %.preheader22 ], [ %3, %__ockl_printf_append_string_n.exit5 ]
  %900 = getelementptr i8, i8* %899, i64 1
  %901 = load i8, i8* %899, align 1
  %902 = icmp eq i8 %901, 0
  br i1 %902, label %903, label %.preheader22

903:                                              ; preds = %.preheader22
  %904 = ptrtoint i8* %3 to i64
  %905 = ptrtoint i8* %899 to i64
  %906 = sub i64 1, %904
  %907 = add i64 %906, %905
  br label %908

908:                                              ; preds = %903, %__ockl_printf_append_string_n.exit5
  %909 = phi i64 [ %907, %903 ], [ 0, %__ockl_printf_append_string_n.exit5 ]
  br i1 %898, label %910, label %914

910:                                              ; preds = %908
  %911 = and i64 %897, -225
  %912 = or i64 %911, 32
  %913 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %8, i64 %912, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #22
  br label %__ockl_printf_append_string_n.exit6

914:                                              ; preds = %908
  %915 = and i64 %897, 2
  %916 = and i64 %897, -3
  %917 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %916, i64 0
  br label %918

918:                                              ; preds = %.loopexit, %914
  %919 = phi i64 [ %909, %914 ], [ %1340, %.loopexit ]
  %920 = phi i8* [ %3, %914 ], [ %1341, %.loopexit ]
  %921 = phi <2 x i64> [ %917, %914 ], [ %1339, %.loopexit ]
  %922 = icmp ugt i64 %919, 56
  %923 = extractelement <2 x i64> %921, i64 0
  %924 = or i64 %923, %915
  %925 = insertelement <2 x i64> poison, i64 %924, i64 0
  %926 = select i1 %922, <2 x i64> %921, <2 x i64> %925
  %927 = icmp ult i64 %919, 56
  %928 = select i1 %927, i64 %919, i64 56
  %929 = trunc i64 %928 to i32
  %930 = extractelement <2 x i64> %926, i64 0
  %931 = and i64 %930, -225
  %932 = shl nuw nsw i64 %928, 2
  %933 = add nuw nsw i64 %932, 28
  %934 = and i64 %933, 480
  %935 = or i64 %931, %934
  %936 = icmp ugt i32 %929, 7
  br i1 %936, label %939, label %937

937:                                              ; preds = %918
  %938 = icmp eq i32 %929, 0
  br i1 %938, label %.loopexit21, label %.preheader20

939:                                              ; preds = %918
  %940 = load i8, i8* %920, align 1, !tbaa !8
  %941 = zext i8 %940 to i64
  %942 = getelementptr inbounds i8, i8* %920, i64 1
  %943 = load i8, i8* %942, align 1, !tbaa !8
  %944 = zext i8 %943 to i64
  %945 = shl nuw nsw i64 %944, 8
  %946 = or i64 %945, %941
  %947 = getelementptr inbounds i8, i8* %920, i64 2
  %948 = load i8, i8* %947, align 1, !tbaa !8
  %949 = zext i8 %948 to i64
  %950 = shl nuw nsw i64 %949, 16
  %951 = or i64 %946, %950
  %952 = getelementptr inbounds i8, i8* %920, i64 3
  %953 = load i8, i8* %952, align 1, !tbaa !8
  %954 = zext i8 %953 to i64
  %955 = shl nuw nsw i64 %954, 24
  %956 = or i64 %951, %955
  %957 = getelementptr inbounds i8, i8* %920, i64 4
  %958 = load i8, i8* %957, align 1, !tbaa !8
  %959 = zext i8 %958 to i64
  %960 = shl nuw nsw i64 %959, 32
  %961 = or i64 %956, %960
  %962 = getelementptr inbounds i8, i8* %920, i64 5
  %963 = load i8, i8* %962, align 1, !tbaa !8
  %964 = zext i8 %963 to i64
  %965 = shl nuw nsw i64 %964, 40
  %966 = or i64 %961, %965
  %967 = getelementptr inbounds i8, i8* %920, i64 6
  %968 = load i8, i8* %967, align 1, !tbaa !8
  %969 = zext i8 %968 to i64
  %970 = shl nuw nsw i64 %969, 48
  %971 = or i64 %966, %970
  %972 = getelementptr inbounds i8, i8* %920, i64 7
  %973 = load i8, i8* %972, align 1, !tbaa !8
  %974 = zext i8 %973 to i64
  %975 = shl nuw i64 %974, 56
  %976 = or i64 %971, %975
  %977 = add nsw i32 %929, -8
  %978 = getelementptr inbounds i8, i8* %920, i64 8
  br label %.loopexit21

.preheader20:                                     ; preds = %937, %.preheader20
  %979 = phi i32 [ %990, %.preheader20 ], [ 0, %937 ]
  %980 = phi i64 [ %989, %.preheader20 ], [ 0, %937 ]
  %981 = zext i32 %979 to i64
  %982 = getelementptr inbounds i8, i8* %920, i64 %981
  %983 = load i8, i8* %982, align 1, !tbaa !8
  %984 = zext i8 %983 to i64
  %985 = shl i32 %979, 3
  %986 = and i32 %985, 56
  %987 = zext i32 %986 to i64
  %988 = shl nuw i64 %984, %987
  %989 = or i64 %988, %980
  %990 = add nuw nsw i32 %979, 1
  %991 = icmp eq i32 %990, %929
  br i1 %991, label %.loopexit21, label %.preheader20

.loopexit21:                                      ; preds = %.preheader20, %939, %937
  %992 = phi i8* [ %978, %939 ], [ %920, %937 ], [ %920, %.preheader20 ]
  %993 = phi i32 [ %977, %939 ], [ 0, %937 ], [ 0, %.preheader20 ]
  %994 = phi i64 [ %976, %939 ], [ 0, %937 ], [ %989, %.preheader20 ]
  %995 = icmp ugt i32 %993, 7
  br i1 %995, label %998, label %996

996:                                              ; preds = %.loopexit21
  %997 = icmp eq i32 %993, 0
  br i1 %997, label %.loopexit19, label %.preheader18

998:                                              ; preds = %.loopexit21
  %999 = load i8, i8* %992, align 1, !tbaa !8
  %1000 = zext i8 %999 to i64
  %1001 = getelementptr inbounds i8, i8* %992, i64 1
  %1002 = load i8, i8* %1001, align 1, !tbaa !8
  %1003 = zext i8 %1002 to i64
  %1004 = shl nuw nsw i64 %1003, 8
  %1005 = or i64 %1004, %1000
  %1006 = getelementptr inbounds i8, i8* %992, i64 2
  %1007 = load i8, i8* %1006, align 1, !tbaa !8
  %1008 = zext i8 %1007 to i64
  %1009 = shl nuw nsw i64 %1008, 16
  %1010 = or i64 %1005, %1009
  %1011 = getelementptr inbounds i8, i8* %992, i64 3
  %1012 = load i8, i8* %1011, align 1, !tbaa !8
  %1013 = zext i8 %1012 to i64
  %1014 = shl nuw nsw i64 %1013, 24
  %1015 = or i64 %1010, %1014
  %1016 = getelementptr inbounds i8, i8* %992, i64 4
  %1017 = load i8, i8* %1016, align 1, !tbaa !8
  %1018 = zext i8 %1017 to i64
  %1019 = shl nuw nsw i64 %1018, 32
  %1020 = or i64 %1015, %1019
  %1021 = getelementptr inbounds i8, i8* %992, i64 5
  %1022 = load i8, i8* %1021, align 1, !tbaa !8
  %1023 = zext i8 %1022 to i64
  %1024 = shl nuw nsw i64 %1023, 40
  %1025 = or i64 %1020, %1024
  %1026 = getelementptr inbounds i8, i8* %992, i64 6
  %1027 = load i8, i8* %1026, align 1, !tbaa !8
  %1028 = zext i8 %1027 to i64
  %1029 = shl nuw nsw i64 %1028, 48
  %1030 = or i64 %1025, %1029
  %1031 = getelementptr inbounds i8, i8* %992, i64 7
  %1032 = load i8, i8* %1031, align 1, !tbaa !8
  %1033 = zext i8 %1032 to i64
  %1034 = shl nuw i64 %1033, 56
  %1035 = or i64 %1030, %1034
  %1036 = add nsw i32 %993, -8
  %1037 = getelementptr inbounds i8, i8* %992, i64 8
  br label %.loopexit19

.preheader18:                                     ; preds = %996, %.preheader18
  %1038 = phi i32 [ %1048, %.preheader18 ], [ 0, %996 ]
  %1039 = phi i64 [ %1047, %.preheader18 ], [ 0, %996 ]
  %1040 = zext i32 %1038 to i64
  %1041 = getelementptr inbounds i8, i8* %992, i64 %1040
  %1042 = load i8, i8* %1041, align 1, !tbaa !8
  %1043 = zext i8 %1042 to i64
  %1044 = shl i32 %1038, 3
  %1045 = zext i32 %1044 to i64
  %1046 = shl nuw i64 %1043, %1045
  %1047 = or i64 %1046, %1039
  %1048 = add nuw nsw i32 %1038, 1
  %1049 = icmp eq i32 %1048, %993
  br i1 %1049, label %.loopexit19, label %.preheader18

.loopexit19:                                      ; preds = %.preheader18, %998, %996
  %1050 = phi i8* [ %1037, %998 ], [ %992, %996 ], [ %992, %.preheader18 ]
  %1051 = phi i32 [ %1036, %998 ], [ 0, %996 ], [ 0, %.preheader18 ]
  %1052 = phi i64 [ %1035, %998 ], [ 0, %996 ], [ %1047, %.preheader18 ]
  %1053 = icmp ugt i32 %1051, 7
  br i1 %1053, label %1056, label %1054

1054:                                             ; preds = %.loopexit19
  %1055 = icmp eq i32 %1051, 0
  br i1 %1055, label %.loopexit17, label %.preheader16

1056:                                             ; preds = %.loopexit19
  %1057 = load i8, i8* %1050, align 1, !tbaa !8
  %1058 = zext i8 %1057 to i64
  %1059 = getelementptr inbounds i8, i8* %1050, i64 1
  %1060 = load i8, i8* %1059, align 1, !tbaa !8
  %1061 = zext i8 %1060 to i64
  %1062 = shl nuw nsw i64 %1061, 8
  %1063 = or i64 %1062, %1058
  %1064 = getelementptr inbounds i8, i8* %1050, i64 2
  %1065 = load i8, i8* %1064, align 1, !tbaa !8
  %1066 = zext i8 %1065 to i64
  %1067 = shl nuw nsw i64 %1066, 16
  %1068 = or i64 %1063, %1067
  %1069 = getelementptr inbounds i8, i8* %1050, i64 3
  %1070 = load i8, i8* %1069, align 1, !tbaa !8
  %1071 = zext i8 %1070 to i64
  %1072 = shl nuw nsw i64 %1071, 24
  %1073 = or i64 %1068, %1072
  %1074 = getelementptr inbounds i8, i8* %1050, i64 4
  %1075 = load i8, i8* %1074, align 1, !tbaa !8
  %1076 = zext i8 %1075 to i64
  %1077 = shl nuw nsw i64 %1076, 32
  %1078 = or i64 %1073, %1077
  %1079 = getelementptr inbounds i8, i8* %1050, i64 5
  %1080 = load i8, i8* %1079, align 1, !tbaa !8
  %1081 = zext i8 %1080 to i64
  %1082 = shl nuw nsw i64 %1081, 40
  %1083 = or i64 %1078, %1082
  %1084 = getelementptr inbounds i8, i8* %1050, i64 6
  %1085 = load i8, i8* %1084, align 1, !tbaa !8
  %1086 = zext i8 %1085 to i64
  %1087 = shl nuw nsw i64 %1086, 48
  %1088 = or i64 %1083, %1087
  %1089 = getelementptr inbounds i8, i8* %1050, i64 7
  %1090 = load i8, i8* %1089, align 1, !tbaa !8
  %1091 = zext i8 %1090 to i64
  %1092 = shl nuw i64 %1091, 56
  %1093 = or i64 %1088, %1092
  %1094 = add nsw i32 %1051, -8
  %1095 = getelementptr inbounds i8, i8* %1050, i64 8
  br label %.loopexit17

.preheader16:                                     ; preds = %1054, %.preheader16
  %1096 = phi i32 [ %1106, %.preheader16 ], [ 0, %1054 ]
  %1097 = phi i64 [ %1105, %.preheader16 ], [ 0, %1054 ]
  %1098 = zext i32 %1096 to i64
  %1099 = getelementptr inbounds i8, i8* %1050, i64 %1098
  %1100 = load i8, i8* %1099, align 1, !tbaa !8
  %1101 = zext i8 %1100 to i64
  %1102 = shl i32 %1096, 3
  %1103 = zext i32 %1102 to i64
  %1104 = shl nuw i64 %1101, %1103
  %1105 = or i64 %1104, %1097
  %1106 = add nuw nsw i32 %1096, 1
  %1107 = icmp eq i32 %1106, %1051
  br i1 %1107, label %.loopexit17, label %.preheader16

.loopexit17:                                      ; preds = %.preheader16, %1056, %1054
  %1108 = phi i8* [ %1095, %1056 ], [ %1050, %1054 ], [ %1050, %.preheader16 ]
  %1109 = phi i32 [ %1094, %1056 ], [ 0, %1054 ], [ 0, %.preheader16 ]
  %1110 = phi i64 [ %1093, %1056 ], [ 0, %1054 ], [ %1105, %.preheader16 ]
  %1111 = icmp ugt i32 %1109, 7
  br i1 %1111, label %1114, label %1112

1112:                                             ; preds = %.loopexit17
  %1113 = icmp eq i32 %1109, 0
  br i1 %1113, label %.loopexit15, label %.preheader14

1114:                                             ; preds = %.loopexit17
  %1115 = load i8, i8* %1108, align 1, !tbaa !8
  %1116 = zext i8 %1115 to i64
  %1117 = getelementptr inbounds i8, i8* %1108, i64 1
  %1118 = load i8, i8* %1117, align 1, !tbaa !8
  %1119 = zext i8 %1118 to i64
  %1120 = shl nuw nsw i64 %1119, 8
  %1121 = or i64 %1120, %1116
  %1122 = getelementptr inbounds i8, i8* %1108, i64 2
  %1123 = load i8, i8* %1122, align 1, !tbaa !8
  %1124 = zext i8 %1123 to i64
  %1125 = shl nuw nsw i64 %1124, 16
  %1126 = or i64 %1121, %1125
  %1127 = getelementptr inbounds i8, i8* %1108, i64 3
  %1128 = load i8, i8* %1127, align 1, !tbaa !8
  %1129 = zext i8 %1128 to i64
  %1130 = shl nuw nsw i64 %1129, 24
  %1131 = or i64 %1126, %1130
  %1132 = getelementptr inbounds i8, i8* %1108, i64 4
  %1133 = load i8, i8* %1132, align 1, !tbaa !8
  %1134 = zext i8 %1133 to i64
  %1135 = shl nuw nsw i64 %1134, 32
  %1136 = or i64 %1131, %1135
  %1137 = getelementptr inbounds i8, i8* %1108, i64 5
  %1138 = load i8, i8* %1137, align 1, !tbaa !8
  %1139 = zext i8 %1138 to i64
  %1140 = shl nuw nsw i64 %1139, 40
  %1141 = or i64 %1136, %1140
  %1142 = getelementptr inbounds i8, i8* %1108, i64 6
  %1143 = load i8, i8* %1142, align 1, !tbaa !8
  %1144 = zext i8 %1143 to i64
  %1145 = shl nuw nsw i64 %1144, 48
  %1146 = or i64 %1141, %1145
  %1147 = getelementptr inbounds i8, i8* %1108, i64 7
  %1148 = load i8, i8* %1147, align 1, !tbaa !8
  %1149 = zext i8 %1148 to i64
  %1150 = shl nuw i64 %1149, 56
  %1151 = or i64 %1146, %1150
  %1152 = add i32 %1109, -8
  %1153 = getelementptr inbounds i8, i8* %1108, i64 8
  br label %.loopexit15

.preheader14:                                     ; preds = %1112, %.preheader14
  %1154 = phi i32 [ %1164, %.preheader14 ], [ 0, %1112 ]
  %1155 = phi i64 [ %1163, %.preheader14 ], [ 0, %1112 ]
  %1156 = zext i32 %1154 to i64
  %1157 = getelementptr inbounds i8, i8* %1108, i64 %1156
  %1158 = load i8, i8* %1157, align 1, !tbaa !8
  %1159 = zext i8 %1158 to i64
  %1160 = shl i32 %1154, 3
  %1161 = zext i32 %1160 to i64
  %1162 = shl nuw i64 %1159, %1161
  %1163 = or i64 %1162, %1155
  %1164 = add nuw nsw i32 %1154, 1
  %1165 = icmp eq i32 %1164, %1109
  br i1 %1165, label %.loopexit15, label %.preheader14

.loopexit15:                                      ; preds = %.preheader14, %1114, %1112
  %1166 = phi i8* [ %1153, %1114 ], [ %1108, %1112 ], [ %1108, %.preheader14 ]
  %1167 = phi i32 [ %1152, %1114 ], [ 0, %1112 ], [ 0, %.preheader14 ]
  %1168 = phi i64 [ %1151, %1114 ], [ 0, %1112 ], [ %1163, %.preheader14 ]
  %1169 = icmp ugt i32 %1167, 7
  br i1 %1169, label %1172, label %1170

1170:                                             ; preds = %.loopexit15
  %1171 = icmp eq i32 %1167, 0
  br i1 %1171, label %.loopexit13, label %.preheader12

1172:                                             ; preds = %.loopexit15
  %1173 = load i8, i8* %1166, align 1, !tbaa !8
  %1174 = zext i8 %1173 to i64
  %1175 = getelementptr inbounds i8, i8* %1166, i64 1
  %1176 = load i8, i8* %1175, align 1, !tbaa !8
  %1177 = zext i8 %1176 to i64
  %1178 = shl nuw nsw i64 %1177, 8
  %1179 = or i64 %1178, %1174
  %1180 = getelementptr inbounds i8, i8* %1166, i64 2
  %1181 = load i8, i8* %1180, align 1, !tbaa !8
  %1182 = zext i8 %1181 to i64
  %1183 = shl nuw nsw i64 %1182, 16
  %1184 = or i64 %1179, %1183
  %1185 = getelementptr inbounds i8, i8* %1166, i64 3
  %1186 = load i8, i8* %1185, align 1, !tbaa !8
  %1187 = zext i8 %1186 to i64
  %1188 = shl nuw nsw i64 %1187, 24
  %1189 = or i64 %1184, %1188
  %1190 = getelementptr inbounds i8, i8* %1166, i64 4
  %1191 = load i8, i8* %1190, align 1, !tbaa !8
  %1192 = zext i8 %1191 to i64
  %1193 = shl nuw nsw i64 %1192, 32
  %1194 = or i64 %1189, %1193
  %1195 = getelementptr inbounds i8, i8* %1166, i64 5
  %1196 = load i8, i8* %1195, align 1, !tbaa !8
  %1197 = zext i8 %1196 to i64
  %1198 = shl nuw nsw i64 %1197, 40
  %1199 = or i64 %1194, %1198
  %1200 = getelementptr inbounds i8, i8* %1166, i64 6
  %1201 = load i8, i8* %1200, align 1, !tbaa !8
  %1202 = zext i8 %1201 to i64
  %1203 = shl nuw nsw i64 %1202, 48
  %1204 = or i64 %1199, %1203
  %1205 = getelementptr inbounds i8, i8* %1166, i64 7
  %1206 = load i8, i8* %1205, align 1, !tbaa !8
  %1207 = zext i8 %1206 to i64
  %1208 = shl nuw i64 %1207, 56
  %1209 = or i64 %1204, %1208
  %1210 = add i32 %1167, -8
  %1211 = getelementptr inbounds i8, i8* %1166, i64 8
  br label %.loopexit13

.preheader12:                                     ; preds = %1170, %.preheader12
  %1212 = phi i32 [ %1222, %.preheader12 ], [ 0, %1170 ]
  %1213 = phi i64 [ %1221, %.preheader12 ], [ 0, %1170 ]
  %1214 = zext i32 %1212 to i64
  %1215 = getelementptr inbounds i8, i8* %1166, i64 %1214
  %1216 = load i8, i8* %1215, align 1, !tbaa !8
  %1217 = zext i8 %1216 to i64
  %1218 = shl i32 %1212, 3
  %1219 = zext i32 %1218 to i64
  %1220 = shl nuw i64 %1217, %1219
  %1221 = or i64 %1220, %1213
  %1222 = add nuw nsw i32 %1212, 1
  %1223 = icmp eq i32 %1222, %1167
  br i1 %1223, label %.loopexit13, label %.preheader12

.loopexit13:                                      ; preds = %.preheader12, %1172, %1170
  %1224 = phi i8* [ %1211, %1172 ], [ %1166, %1170 ], [ %1166, %.preheader12 ]
  %1225 = phi i32 [ %1210, %1172 ], [ 0, %1170 ], [ 0, %.preheader12 ]
  %1226 = phi i64 [ %1209, %1172 ], [ 0, %1170 ], [ %1221, %.preheader12 ]
  %1227 = icmp ugt i32 %1225, 7
  br i1 %1227, label %1230, label %1228

1228:                                             ; preds = %.loopexit13
  %1229 = icmp eq i32 %1225, 0
  br i1 %1229, label %.loopexit11, label %.preheader10

1230:                                             ; preds = %.loopexit13
  %1231 = load i8, i8* %1224, align 1, !tbaa !8
  %1232 = zext i8 %1231 to i64
  %1233 = getelementptr inbounds i8, i8* %1224, i64 1
  %1234 = load i8, i8* %1233, align 1, !tbaa !8
  %1235 = zext i8 %1234 to i64
  %1236 = shl nuw nsw i64 %1235, 8
  %1237 = or i64 %1236, %1232
  %1238 = getelementptr inbounds i8, i8* %1224, i64 2
  %1239 = load i8, i8* %1238, align 1, !tbaa !8
  %1240 = zext i8 %1239 to i64
  %1241 = shl nuw nsw i64 %1240, 16
  %1242 = or i64 %1237, %1241
  %1243 = getelementptr inbounds i8, i8* %1224, i64 3
  %1244 = load i8, i8* %1243, align 1, !tbaa !8
  %1245 = zext i8 %1244 to i64
  %1246 = shl nuw nsw i64 %1245, 24
  %1247 = or i64 %1242, %1246
  %1248 = getelementptr inbounds i8, i8* %1224, i64 4
  %1249 = load i8, i8* %1248, align 1, !tbaa !8
  %1250 = zext i8 %1249 to i64
  %1251 = shl nuw nsw i64 %1250, 32
  %1252 = or i64 %1247, %1251
  %1253 = getelementptr inbounds i8, i8* %1224, i64 5
  %1254 = load i8, i8* %1253, align 1, !tbaa !8
  %1255 = zext i8 %1254 to i64
  %1256 = shl nuw nsw i64 %1255, 40
  %1257 = or i64 %1252, %1256
  %1258 = getelementptr inbounds i8, i8* %1224, i64 6
  %1259 = load i8, i8* %1258, align 1, !tbaa !8
  %1260 = zext i8 %1259 to i64
  %1261 = shl nuw nsw i64 %1260, 48
  %1262 = or i64 %1257, %1261
  %1263 = getelementptr inbounds i8, i8* %1224, i64 7
  %1264 = load i8, i8* %1263, align 1, !tbaa !8
  %1265 = zext i8 %1264 to i64
  %1266 = shl nuw i64 %1265, 56
  %1267 = or i64 %1262, %1266
  %1268 = add i32 %1225, -8
  %1269 = getelementptr inbounds i8, i8* %1224, i64 8
  br label %.loopexit11

.preheader10:                                     ; preds = %1228, %.preheader10
  %1270 = phi i32 [ %1280, %.preheader10 ], [ 0, %1228 ]
  %1271 = phi i64 [ %1279, %.preheader10 ], [ 0, %1228 ]
  %1272 = zext i32 %1270 to i64
  %1273 = getelementptr inbounds i8, i8* %1224, i64 %1272
  %1274 = load i8, i8* %1273, align 1, !tbaa !8
  %1275 = zext i8 %1274 to i64
  %1276 = shl i32 %1270, 3
  %1277 = zext i32 %1276 to i64
  %1278 = shl nuw i64 %1275, %1277
  %1279 = or i64 %1278, %1271
  %1280 = add nuw nsw i32 %1270, 1
  %1281 = icmp eq i32 %1280, %1225
  br i1 %1281, label %.loopexit11, label %.preheader10

.loopexit11:                                      ; preds = %.preheader10, %1230, %1228
  %1282 = phi i8* [ %1269, %1230 ], [ %1224, %1228 ], [ %1224, %.preheader10 ]
  %1283 = phi i32 [ %1268, %1230 ], [ 0, %1228 ], [ 0, %.preheader10 ]
  %1284 = phi i64 [ %1267, %1230 ], [ 0, %1228 ], [ %1279, %.preheader10 ]
  %1285 = icmp ugt i32 %1283, 7
  br i1 %1285, label %1288, label %1286

1286:                                             ; preds = %.loopexit11
  %1287 = icmp eq i32 %1283, 0
  br i1 %1287, label %.loopexit, label %.preheader9

1288:                                             ; preds = %.loopexit11
  %1289 = load i8, i8* %1282, align 1, !tbaa !8
  %1290 = zext i8 %1289 to i64
  %1291 = getelementptr inbounds i8, i8* %1282, i64 1
  %1292 = load i8, i8* %1291, align 1, !tbaa !8
  %1293 = zext i8 %1292 to i64
  %1294 = shl nuw nsw i64 %1293, 8
  %1295 = or i64 %1294, %1290
  %1296 = getelementptr inbounds i8, i8* %1282, i64 2
  %1297 = load i8, i8* %1296, align 1, !tbaa !8
  %1298 = zext i8 %1297 to i64
  %1299 = shl nuw nsw i64 %1298, 16
  %1300 = or i64 %1295, %1299
  %1301 = getelementptr inbounds i8, i8* %1282, i64 3
  %1302 = load i8, i8* %1301, align 1, !tbaa !8
  %1303 = zext i8 %1302 to i64
  %1304 = shl nuw nsw i64 %1303, 24
  %1305 = or i64 %1300, %1304
  %1306 = getelementptr inbounds i8, i8* %1282, i64 4
  %1307 = load i8, i8* %1306, align 1, !tbaa !8
  %1308 = zext i8 %1307 to i64
  %1309 = shl nuw nsw i64 %1308, 32
  %1310 = or i64 %1305, %1309
  %1311 = getelementptr inbounds i8, i8* %1282, i64 5
  %1312 = load i8, i8* %1311, align 1, !tbaa !8
  %1313 = zext i8 %1312 to i64
  %1314 = shl nuw nsw i64 %1313, 40
  %1315 = or i64 %1310, %1314
  %1316 = getelementptr inbounds i8, i8* %1282, i64 6
  %1317 = load i8, i8* %1316, align 1, !tbaa !8
  %1318 = zext i8 %1317 to i64
  %1319 = shl nuw nsw i64 %1318, 48
  %1320 = or i64 %1315, %1319
  %1321 = getelementptr inbounds i8, i8* %1282, i64 7
  %1322 = load i8, i8* %1321, align 1, !tbaa !8
  %1323 = zext i8 %1322 to i64
  %1324 = shl nuw i64 %1323, 56
  %1325 = or i64 %1320, %1324
  br label %.loopexit

.preheader9:                                      ; preds = %1286, %.preheader9
  %1326 = phi i32 [ %1336, %.preheader9 ], [ 0, %1286 ]
  %1327 = phi i64 [ %1335, %.preheader9 ], [ 0, %1286 ]
  %1328 = zext i32 %1326 to i64
  %1329 = getelementptr inbounds i8, i8* %1282, i64 %1328
  %1330 = load i8, i8* %1329, align 1, !tbaa !8
  %1331 = zext i8 %1330 to i64
  %1332 = shl i32 %1326, 3
  %1333 = zext i32 %1332 to i64
  %1334 = shl nuw i64 %1331, %1333
  %1335 = or i64 %1334, %1327
  %1336 = add nuw nsw i32 %1326, 1
  %1337 = icmp eq i32 %1336, %1283
  br i1 %1337, label %.loopexit, label %.preheader9

.loopexit:                                        ; preds = %.preheader9, %1288, %1286
  %1338 = phi i64 [ %1325, %1288 ], [ 0, %1286 ], [ %1335, %.preheader9 ]
  %1339 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %8, i64 %935, i64 %994, i64 %1052, i64 %1110, i64 %1168, i64 %1226, i64 %1284, i64 %1338) #22
  %1340 = sub i64 %919, %928
  %1341 = getelementptr inbounds i8, i8* %920, i64 %928
  %1342 = icmp eq i64 %1340, 0
  br i1 %1342, label %__ockl_printf_append_string_n.exit6, label %918

__ockl_printf_append_string_n.exit6:              ; preds = %.loopexit, %910
  %1343 = phi <2 x i64> [ %913, %910 ], [ %1339, %.loopexit ]
  %1344 = icmp eq i8* %0, null
  br i1 %1344, label %1354, label %.preheader

.preheader:                                       ; preds = %__ockl_printf_append_string_n.exit6, %.preheader
  %1345 = phi i8* [ %1346, %.preheader ], [ %0, %__ockl_printf_append_string_n.exit6 ]
  %1346 = getelementptr i8, i8* %1345, i64 1
  %1347 = load i8, i8* %1345, align 1
  %1348 = icmp eq i8 %1347, 0
  br i1 %1348, label %1349, label %.preheader

1349:                                             ; preds = %.preheader
  %1350 = ptrtoint i8* %0 to i64
  %1351 = ptrtoint i8* %1345 to i64
  %1352 = sub i64 1, %1350
  %1353 = add i64 %1352, %1351
  br label %1354

1354:                                             ; preds = %1349, %__ockl_printf_append_string_n.exit6
  %1355 = phi i64 [ %1353, %1349 ], [ 0, %__ockl_printf_append_string_n.exit6 ]
  %1356 = extractelement <2 x i64> %1343, i64 0
  %1357 = tail call fastcc i64 @__ockl_printf_append_string_n(i64 %1356, i8* %0, i64 %1355, i32 1)
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #1

; Function Attrs: noinline nounwind mustprogress
define weak hidden void @__assertfail(i8* %0, i8* %1, i32 %2, i8* %3, i64 %4) local_unnamed_addr #2 {
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: convergent noinline norecurse nounwind mustprogress
define protected amdgpu_kernel void @_Z13GPU_laplace3diiiiPfS_(i32 %0, i32 %1, i32 %2, i32 %3, float addrspace(1)* nocapture readonly %4, float addrspace(1)* nocapture %5) local_unnamed_addr #3 {
  %7 = add nsw i32 %0, -1
  %8 = add nsw i32 %1, -1
  %9 = add nsw i32 %2, -1
  %10 = tail call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"*)) #22
  %11 = tail call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*)) #22
  %12 = shl i32 %11, 5
  %13 = add i32 %12, %10
  %14 = icmp slt i32 %13, 76
  br i1 %14, label %unify.bb, label %17

unify.bb:                                         ; preds = %6
  %15 = tail call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*)) #22
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %predication.split, label %predication.tail

17:                                               ; preds = %predication.tail, %6
  %.0105 = phi i32 [ undef, %6 ], [ %137, %predication.tail ]
  %.0104.in = phi i1 [ false, %6 ], [ %spec.select211, %predication.tail ]
  %.097 = phi i32 [ undef, %6 ], [ %145, %predication.tail ]
  %18 = tail call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"*)) #22
  %19 = tail call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*)) #22
  %20 = add nsw i32 %18, 1
  %21 = add nsw i32 %19, 1
  %22 = tail call fastcc i32 @_ZL7__mul24ii(i32 %21, i32 34) #19
  %23 = add nsw i32 %20, %22
  %24 = add nsw i32 %23, 204
  %25 = tail call i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"*)) #22
  %26 = tail call fastcc i32 @_ZL7__mul24ii(i32 %25, i32 32) #19
  %27 = add nsw i32 %26, %18
  %28 = tail call i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"*)) #22
  %29 = tail call fastcc i32 @_ZL7__mul24ii(i32 %28, i32 4) #19
  %30 = add nsw i32 %29, %19
  %31 = tail call fastcc i32 @_ZL7__mul24ii(i32 %30, i32 %3) #19
  %32 = add nsw i32 %31, %27
  %33 = icmp slt i32 %27, %0
  %34 = icmp slt i32 %30, %1
  %35 = and i1 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %17
  %37 = add nsw i32 %23, 408
  %38 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %37
  %39 = bitcast float addrspace(3)* %38 to i32 addrspace(3)*
  %40 = sext i32 %32 to i64
  %41 = getelementptr inbounds float, float addrspace(1)* %4, i64 %40
  %42 = bitcast float addrspace(1)* %41 to i32 addrspace(1)*
  %43 = load i32, i32 addrspace(1)* %42, align 4
  store i32 %43, i32 addrspace(3)* %39, align 4
  br label %44

44:                                               ; preds = %36, %17
  br i1 %.0104.in, label %45, label %.preheader

45:                                               ; preds = %44
  %46 = add nsw i32 %.0105, 204
  %47 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %46
  %48 = bitcast float addrspace(3)* %47 to i32 addrspace(3)*
  %49 = sext i32 %.097 to i64
  %50 = getelementptr inbounds float, float addrspace(1)* %4, i64 %49
  %51 = bitcast float addrspace(1)* %50 to i32 addrspace(1)*
  %52 = load i32, i32 addrspace(1)* %51, align 4
  store i32 %52, i32 addrspace(3)* %48, align 4
  br label %.preheader

.preheader:                                       ; preds = %45, %44
  %53 = icmp sgt i32 %2, 0
  br i1 %53, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %54 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %24
  %55 = bitcast float addrspace(3)* %54 to i32 addrspace(3)*
  %56 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %23
  %57 = bitcast float addrspace(3)* %56 to i32 addrspace(3)*
  %58 = add nsw i32 %23, 408
  %59 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %58
  %60 = bitcast float addrspace(3)* %59 to i32 addrspace(3)*
  %61 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %.0105
  %62 = bitcast float addrspace(3)* %61 to i32 addrspace(3)*
  %63 = add nsw i32 %.0105, -204
  %64 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %63
  %65 = bitcast float addrspace(3)* %64 to i32 addrspace(3)*
  %66 = add nsw i32 %.0105, 204
  %67 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %66
  %68 = bitcast float addrspace(3)* %67 to i32 addrspace(3)*
  %69 = icmp eq i32 %27, 0
  %70 = icmp eq i32 %27, %7
  %not. = xor i1 %69, true
  %71 = and i1 %70, %not.
  %72 = icmp eq i32 %30, 0
  %73 = and i1 %72, %not.
  %notlhs = xor i1 %70, true
  %74 = and i1 %73, %notlhs
  %75 = icmp eq i32 %30, %8
  %76 = and i1 %75, %not.
  %not.205 = xor i1 %71, true
  %77 = and i1 %76, %not.205
  %not.206 = xor i1 %74, true
  %78 = and i1 %77, %not.206
  %not.210 = xor i1 %78, true
  %79 = add nsw i32 %23, 203
  %80 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %79
  %81 = add nsw i32 %23, 205
  %82 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %81
  %83 = add nsw i32 %23, 170
  %84 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %83
  %85 = add nsw i32 %23, 238
  %86 = getelementptr inbounds [612 x float], [612 x float] addrspace(3)* @_ZZ13GPU_laplace3diiiiPfS_E2u1, i32 0, i32 %85
  br label %87

87:                                               ; preds = %.lr.ph, %123
  %.0218 = phi i32 [ %32, %.lr.ph ], [ %.1, %123 ]
  %.198217 = phi i32 [ %.097, %.lr.ph ], [ %.2, %123 ]
  %.099216 = phi i32 [ undef, %.lr.ph ], [ %.1100, %123 ]
  %.0106212 = phi i32 [ 0, %.lr.ph ], [ %124, %123 ]
  br i1 %35, label %88, label %99

88:                                               ; preds = %87
  %89 = tail call fastcc i32 @_ZL7__mul24ii(i32 %1, i32 %3) #19
  %90 = add nsw i32 %89, %.0218
  %91 = load i32, i32 addrspace(3)* %55, align 4
  store i32 %91, i32 addrspace(3)* %57, align 4
  %92 = load i32, i32 addrspace(3)* %60, align 4
  store i32 %92, i32 addrspace(3)* %55, align 4
  %93 = icmp slt i32 %.0106212, %9
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = sext i32 %90 to i64
  %96 = getelementptr inbounds float, float addrspace(1)* %4, i64 %95
  %97 = bitcast float addrspace(1)* %96 to i32 addrspace(1)*
  %98 = load i32, i32 addrspace(1)* %97, align 4
  store i32 %98, i32 addrspace(3)* %60, align 4
  br label %99

99:                                               ; preds = %88, %94, %87
  %.1100 = phi i32 [ %.0218, %94 ], [ %.0218, %88 ], [ %.099216, %87 ]
  %.1 = phi i32 [ %90, %94 ], [ %90, %88 ], [ %.0218, %87 ]
  br i1 %.0104.in, label %100, label %111

100:                                              ; preds = %99
  %101 = tail call fastcc i32 @_ZL7__mul24ii(i32 %1, i32 %3) #19
  %102 = add nsw i32 %101, %.198217
  %103 = load i32, i32 addrspace(3)* %62, align 4
  store i32 %103, i32 addrspace(3)* %65, align 4
  %104 = load i32, i32 addrspace(3)* %68, align 4
  store i32 %104, i32 addrspace(3)* %62, align 4
  %105 = icmp slt i32 %.0106212, %9
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = sext i32 %102 to i64
  %108 = getelementptr inbounds float, float addrspace(1)* %4, i64 %107
  %109 = bitcast float addrspace(1)* %108 to i32 addrspace(1)*
  %110 = load i32, i32 addrspace(1)* %109, align 4
  store i32 %110, i32 addrspace(3)* %68, align 4
  br label %111

111:                                              ; preds = %100, %106, %99
  %.2 = phi i32 [ %102, %106 ], [ %102, %100 ], [ %.198217, %99 ]
  tail call void @_Z13__syncthreadsv() #22
  br i1 %35, label %unify.bb124, label %123

unify.bb124:                                      ; preds = %111
  %112 = icmp eq i32 %.0106212, 0
  %113 = and i1 %112, %not.
  %114 = and i1 %113, %not.205
  %115 = and i1 %114, %not.206
  %116 = and i1 %115, %not.210
  %117 = icmp eq i32 %.0106212, %9
  %118 = or i1 %69, %117
  %119 = or i1 %70, %118
  %120 = or i1 %72, %119
  %121 = or i1 %78, %120
  %122 = or i1 %115, %121
  br i1 %122, label %merged.bb, label %merged.bb196

123:                                              ; preds = %merged.bb195, %111
  tail call void @_Z13__syncthreadsv() #22
  %124 = add nuw nsw i32 %.0106212, 1
  %exitcond.not = icmp eq i32 %124, %2
  br i1 %exitcond.not, label %._crit_edge, label %87, !llvm.loop !9

._crit_edge:                                      ; preds = %123, %.preheader
  ret void

predication.split:                                ; preds = %unify.bb
  %125 = tail call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1xE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"*)) #22
  %126 = tail call i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI15__HIP_ThreadIdxE1yE to %"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"*)) #22
  br label %predication.tail

predication.tail:                                 ; preds = %unify.bb, %predication.split
  %merged.select107 = phi i32 [ 33, %unify.bb ], [ 5, %predication.split ]
  %127 = phi i32 [ undef, %unify.bb ], [ %125, %predication.split ]
  %128 = phi i32 [ undef, %unify.bb ], [ %126, %predication.split ]
  %.frozen = freeze i32 %13
  %129 = sdiv i32 %.frozen, 2
  %130 = mul i32 %129, 2
  %.decomposed = sub i32 %.frozen, %130
  %merged.select = select i1 %16, i32 %128, i32 %.decomposed
  %131 = mul i32 %merged.select, %merged.select107
  %132 = add nsw i32 %131, -1
  %133 = add nsw i32 %129, -32
  %.0101 = select i1 %16, i32 %127, i32 %132
  %merged.select108 = select i1 %16, i32 %131, i32 %133
  %134 = add i32 %merged.select108, -1
  %135 = tail call fastcc i32 @_ZL7__mul24ii(i32 %merged.select108, i32 34) #19
  %136 = add i32 %.0101, 205
  %137 = add i32 %136, %135
  %138 = tail call i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X" addrspace(4)* @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1xE to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"*)) #22
  %139 = tail call fastcc i32 @_ZL7__mul24ii(i32 %138, i32 32) #19
  %140 = add nsw i32 %139, %.0101
  %141 = tail call i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"* nonnull dereferenceable(1) addrspacecast (%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y" addrspace(4)* @_ZN17__HIP_CoordinatesI14__HIP_BlockIdxE1yE to %"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"*)) #22
  %142 = tail call fastcc i32 @_ZL7__mul24ii(i32 %141, i32 4) #19
  %143 = add nsw i32 %134, %142
  %144 = tail call fastcc i32 @_ZL7__mul24ii(i32 %143, i32 %3) #19
  %145 = add nsw i32 %144, %140
  %146 = icmp sgt i32 %140, -1
  %147 = icmp slt i32 %140, %0
  %148 = icmp sgt i32 %143, -1
  %or.cond = and i1 %147, %148
  %149 = icmp slt i32 %143, %1
  %spec.select = and i1 %149, %or.cond
  %spec.select211 = and i1 %146, %spec.select
  br label %17

merged.bb:                                        ; preds = %unify.bb124
  %150 = load float, float addrspace(3)* %54, align 4
  br label %merged.bb195

merged.bb195:                                     ; preds = %merged.bb, %merged.bb196
  %151 = phi float [ undef, %merged.bb196 ], [ %150, %merged.bb ]
  %152 = phi float [ %177, %merged.bb196 ], [ %150, %merged.bb ]
  %153 = select i1 %116, float undef, float %151
  %154 = select i1 %116, float %151, float %152
  %155 = select i1 %78, float undef, float %153
  %156 = or i1 %78, %115
  %157 = select i1 %78, float %153, float %154
  %158 = select i1 %74, float undef, float %155
  %159 = select i1 %74, float %155, float %157
  %160 = or i1 %74, %156
  %161 = or i1 %71, %160
  %162 = select i1 %161, float undef, float %151
  %163 = select i1 %71, float %158, float %159
  %.0102 = select i1 %69, float %162, float %163
  %164 = sext i32 %.1100 to i64
  %165 = getelementptr inbounds float, float addrspace(1)* %5, i64 %164
  store float %.0102, float addrspace(1)* %165, align 4
  br label %123

merged.bb196:                                     ; preds = %unify.bb124
  %166 = load float, float addrspace(3)* %80, align 4
  %167 = load float, float addrspace(3)* %82, align 4
  %168 = fadd contract float %166, %167
  %169 = load float, float addrspace(3)* %84, align 4
  %170 = fadd contract float %168, %169
  %171 = load float, float addrspace(3)* %86, align 4
  %172 = fadd contract float %170, %171
  %173 = load float, float addrspace(3)* %56, align 4
  %174 = fadd contract float %172, %173
  %175 = load float, float addrspace(3)* %59, align 4
  %176 = fadd contract float %174, %175
  %177 = fmul contract float %176, 0x3FC5555560000000
  br label %merged.bb195
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::X"* nonnull dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %struct.__HIP_ThreadIdx, align 1, addrspace(5)
  %3 = addrspacecast %struct.__HIP_ThreadIdx addrspace(5)* %2 to %struct.__HIP_ThreadIdx*
  %4 = call i32 @_ZNK15__HIP_ThreadIdxclEj(%struct.__HIP_ThreadIdx* nonnull dereferenceable(1) %3, i32 0) #19
  ret i32 %4
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK17__HIP_CoordinatesI15__HIP_ThreadIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_ThreadIdx>::Y"* nonnull dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %struct.__HIP_ThreadIdx, align 1, addrspace(5)
  %3 = addrspacecast %struct.__HIP_ThreadIdx addrspace(5)* %2 to %struct.__HIP_ThreadIdx*
  %4 = call i32 @_ZNK15__HIP_ThreadIdxclEj(%struct.__HIP_ThreadIdx* nonnull dereferenceable(1) %3, i32 1) #19
  ret i32 %4
}

; Function Attrs: noinline norecurse nounwind readnone
define internal fastcc i32 @_ZL7__mul24ii(i32 %0, i32 %1) unnamed_addr #5 {
  %3 = shl i32 %0, 8
  %4 = ashr exact i32 %3, 8
  %5 = shl i32 %1, 8
  %6 = ashr exact i32 %5, 8
  %7 = mul nsw i32 %6, %4
  ret i32 %7
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1XcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::X"* nonnull dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %struct.__HIP_BlockIdx, align 1, addrspace(5)
  %3 = addrspacecast %struct.__HIP_BlockIdx addrspace(5)* %2 to %struct.__HIP_BlockIdx*
  %4 = call i32 @_ZNK14__HIP_BlockIdxclEj(%struct.__HIP_BlockIdx* nonnull dereferenceable(1) %3, i32 0) #19
  ret i32 %4
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden i32 @_ZNK17__HIP_CoordinatesI14__HIP_BlockIdxE1YcvjEv(%"struct.__HIP_Coordinates<__HIP_BlockIdx>::Y"* nonnull dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %struct.__HIP_BlockIdx, align 1, addrspace(5)
  %3 = addrspacecast %struct.__HIP_BlockIdx addrspace(5)* %2 to %struct.__HIP_BlockIdx*
  %4 = call i32 @_ZNK14__HIP_BlockIdxclEj(%struct.__HIP_BlockIdx* nonnull dereferenceable(1) %3, i32 1) #19
  ret i32 %4
}

; Function Attrs: convergent noinline nounwind mustprogress
define linkonce_odr hidden void @_Z13__syncthreadsv() local_unnamed_addr #4 comdat {
  tail call fastcc void @_ZL9__barrieri() #22
  ret void
}

; Function Attrs: convergent noinline nounwind mustprogress
define internal fastcc void @_ZL9__barrieri() unnamed_addr #4 {
  tail call fastcc void @_ZL20__work_group_barrierj14__memory_scope() #22
  ret void
}

; Function Attrs: convergent noinline nounwind
define internal fastcc void @_ZL20__work_group_barrierj14__memory_scope() unnamed_addr #6 {
  fence syncscope("workgroup") release
  tail call void @llvm.amdgcn.s.barrier()
  fence syncscope("workgroup") acquire
  ret void
}

; Function Attrs: convergent nounwind willreturn
declare void @llvm.amdgcn.s.barrier() #7

; Function Attrs: noinline nounwind
define linkonce_odr hidden i32 @_ZNK15__HIP_ThreadIdxclEj(%struct.__HIP_ThreadIdx* nonnull dereferenceable(1) %0, i32 %1) local_unnamed_addr #8 comdat align 2 {
  switch i32 %1, label %__ockl_get_local_id.exit [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @llvm.amdgcn.workitem.id.x() #19, !range !11
  br label %__ockl_get_local_id.exit

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.amdgcn.workitem.id.y() #19, !range !11
  br label %__ockl_get_local_id.exit

7:                                                ; preds = %2
  %8 = tail call i32 @llvm.amdgcn.workitem.id.z() #19, !range !11
  br label %__ockl_get_local_id.exit

__ockl_get_local_id.exit:                         ; preds = %2, %3, %5, %7
  %9 = phi i32 [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind
define linkonce_odr hidden i32 @_ZNK14__HIP_BlockIdxclEj(%struct.__HIP_BlockIdx* nonnull dereferenceable(1) %0, i32 %1) local_unnamed_addr #8 comdat align 2 {
  switch i32 %1, label %__ockl_get_group_id.exit [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @llvm.amdgcn.workgroup.id.x() #19
  br label %__ockl_get_group_id.exit

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.amdgcn.workgroup.id.y() #19
  br label %__ockl_get_group_id.exit

7:                                                ; preds = %2
  %8 = tail call i32 @llvm.amdgcn.workgroup.id.z() #19
  br label %__ockl_get_group_id.exit

__ockl_get_group_id.exit:                         ; preds = %2, %3, %5, %7
  %9 = phi i32 [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.implicitarg.ptr() #9

; Function Attrs: convergent noinline norecurse nounwind optnone
define internal fastcc <2 x i64> @__ockl_hostcall_internal(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) unnamed_addr #10 {
  %10 = alloca i8*, align 8, addrspace(5)
  %11 = alloca i32, align 4, addrspace(5)
  %12 = alloca i64, align 8, addrspace(5)
  %13 = alloca i64, align 8, addrspace(5)
  %14 = alloca i64, align 8, addrspace(5)
  %15 = alloca i64, align 8, addrspace(5)
  %16 = alloca i64, align 8, addrspace(5)
  %17 = alloca i64, align 8, addrspace(5)
  %18 = alloca i64, align 8, addrspace(5)
  %19 = alloca i64, align 8, addrspace(5)
  %20 = alloca i32, align 4, addrspace(5)
  %21 = alloca i32, align 4, addrspace(5)
  %22 = alloca %0 addrspace(1)*, align 8, addrspace(5)
  %23 = alloca i64, align 8, addrspace(5)
  %24 = alloca %1 addrspace(1)*, align 8, addrspace(5)
  %25 = alloca %2 addrspace(1)*, align 8, addrspace(5)
  %26 = alloca <2 x i64>, align 16, addrspace(5)
  store i8* %0, i8* addrspace(5)* %10, align 8, !tbaa !12
  store i32 2, i32 addrspace(5)* %11, align 4, !tbaa !14
  store i64 %1, i64 addrspace(5)* %12, align 8, !tbaa !4
  store i64 %2, i64 addrspace(5)* %13, align 8, !tbaa !4
  store i64 %3, i64 addrspace(5)* %14, align 8, !tbaa !4
  store i64 %4, i64 addrspace(5)* %15, align 8, !tbaa !4
  store i64 %5, i64 addrspace(5)* %16, align 8, !tbaa !4
  store i64 %6, i64 addrspace(5)* %17, align 8, !tbaa !4
  store i64 %7, i64 addrspace(5)* %18, align 8, !tbaa !4
  store i64 %8, i64 addrspace(5)* %19, align 8, !tbaa !4
  %27 = bitcast i32 addrspace(5)* %20 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %27) #19
  %28 = call i32 @llvm.amdgcn.mbcnt.lo(i32 -1, i32 0) #19
  %29 = call i32 @llvm.amdgcn.mbcnt.hi(i32 -1, i32 %28) #19
  store i32 %29, i32 addrspace(5)* %20, align 4, !tbaa !14
  %30 = load i32, i32 addrspace(5)* %20, align 4, !tbaa !14
  %31 = call fastcc i32 @0(i32 %30) #23
  store i32 %31, i32 addrspace(5)* %20, align 4, !tbaa !14
  %32 = bitcast i32 addrspace(5)* %21 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 4, i8 addrspace(5)* %32) #19
  %33 = load i32, i32 addrspace(5)* %20, align 4, !tbaa !14
  %34 = call i32 @llvm.amdgcn.readfirstlane(i32 %33)
  store i32 %34, i32 addrspace(5)* %21, align 4, !tbaa !14
  %35 = bitcast %0 addrspace(1)* addrspace(5)* %22 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %35) #19
  %36 = load i8*, i8* addrspace(5)* %10, align 8, !tbaa !12
  %37 = addrspacecast i8* %36 to %0 addrspace(1)*
  store %0 addrspace(1)* %37, %0 addrspace(1)* addrspace(5)* %22, align 8, !tbaa !12
  %38 = bitcast i64 addrspace(5)* %23 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %38) #19
  %39 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %22, align 8, !tbaa !12
  %40 = load i32, i32 addrspace(5)* %20, align 4, !tbaa !14
  %41 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !14
  %42 = call fastcc i64 @1(%0 addrspace(1)* %39, i32 %40, i32 %41) #23
  store i64 %42, i64 addrspace(5)* %23, align 8, !tbaa !4
  %43 = bitcast %1 addrspace(1)* addrspace(5)* %24 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %43) #19
  %44 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %22, align 8, !tbaa !12
  %45 = load i64, i64 addrspace(5)* %23, align 8, !tbaa !4
  %46 = getelementptr %0, %0 addrspace(1)* %44, i64 0, i32 0
  %47 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %46, align 8, !tbaa !16
  %48 = getelementptr %0, %0 addrspace(1)* %44, i64 0, i32 5
  %49 = load i64, i64 addrspace(1)* %48, align 8, !tbaa !19
  %50 = call fastcc %1 addrspace(1)* @2(%1 addrspace(1)* %47, i64 %49, i64 %45) #23
  store %1 addrspace(1)* %50, %1 addrspace(1)* addrspace(5)* %24, align 8, !tbaa !12
  %51 = bitcast %2 addrspace(1)* addrspace(5)* %25 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 8, i8 addrspace(5)* %51) #19
  %52 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %22, align 8, !tbaa !12
  %53 = load i64, i64 addrspace(5)* %23, align 8, !tbaa !4
  %54 = getelementptr %0, %0 addrspace(1)* %52, i64 0, i32 1
  %55 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(1)* %54, align 8, !tbaa !20
  %56 = getelementptr %0, %0 addrspace(1)* %52, i64 0, i32 5
  %57 = load i64, i64 addrspace(1)* %56, align 8, !tbaa !19
  %58 = call fastcc %2 addrspace(1)* @3(%2 addrspace(1)* %55, i64 %57, i64 %53) #23
  store %2 addrspace(1)* %58, %2 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !12
  %59 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(5)* %24, align 8, !tbaa !12
  %60 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !12
  %61 = load i32, i32 addrspace(5)* %11, align 4, !tbaa !14
  %62 = load i64, i64 addrspace(5)* %12, align 8, !tbaa !4
  %63 = load i64, i64 addrspace(5)* %13, align 8, !tbaa !4
  %64 = load i64, i64 addrspace(5)* %14, align 8, !tbaa !4
  %65 = load i64, i64 addrspace(5)* %15, align 8, !tbaa !4
  %66 = load i64, i64 addrspace(5)* %16, align 8, !tbaa !4
  %67 = load i64, i64 addrspace(5)* %17, align 8, !tbaa !4
  %68 = load i64, i64 addrspace(5)* %18, align 8, !tbaa !4
  %69 = load i64, i64 addrspace(5)* %19, align 8, !tbaa !4
  %70 = load i32, i32 addrspace(5)* %20, align 4, !tbaa !14
  %71 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !14
  call fastcc void @4(%1 addrspace(1)* %59, %2 addrspace(1)* %60, i32 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i32 %70, i32 %71) #23
  %72 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %22, align 8, !tbaa !12
  %73 = load i64, i64 addrspace(5)* %23, align 8, !tbaa !4
  %74 = load i32, i32 addrspace(5)* %20, align 4, !tbaa !14
  %75 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !14
  call fastcc void @5(%0 addrspace(1)* %72, i64 %73, i32 %74, i32 %75) #23
  %76 = bitcast <2 x i64> addrspace(5)* %26 to i8 addrspace(5)*
  call void @llvm.lifetime.start.p5i8(i64 16, i8 addrspace(5)* %76) #19
  %77 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(5)* %24, align 8, !tbaa !12
  %78 = load %2 addrspace(1)*, %2 addrspace(1)* addrspace(5)* %25, align 8, !tbaa !12
  %79 = load i32, i32 addrspace(5)* %20, align 4, !tbaa !14
  %80 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !14
  %81 = call fastcc <2 x i64> @6(%1 addrspace(1)* %77, %2 addrspace(1)* %78, i32 %79, i32 %80) #23
  store <2 x i64> %81, <2 x i64> addrspace(5)* %26, align 16, !tbaa !8
  %82 = load %0 addrspace(1)*, %0 addrspace(1)* addrspace(5)* %22, align 8, !tbaa !12
  %83 = load i64, i64 addrspace(5)* %23, align 8, !tbaa !4
  %84 = load i32, i32 addrspace(5)* %20, align 4, !tbaa !14
  %85 = load i32, i32 addrspace(5)* %21, align 4, !tbaa !14
  call fastcc void @7(%0 addrspace(1)* %82, i64 %83, i32 %84, i32 %85) #23
  %86 = load <2 x i64>, <2 x i64> addrspace(5)* %26, align 16, !tbaa !8
  %87 = bitcast <2 x i64> addrspace(5)* %26 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 16, i8 addrspace(5)* %87) #19
  %88 = bitcast %2 addrspace(1)* addrspace(5)* %25 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %88) #19
  %89 = bitcast %1 addrspace(1)* addrspace(5)* %24 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %89) #19
  %90 = bitcast i64 addrspace(5)* %23 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %90) #19
  %91 = bitcast %0 addrspace(1)* addrspace(5)* %22 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 8, i8 addrspace(5)* %91) #19
  %92 = bitcast i32 addrspace(5)* %21 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %92) #19
  %93 = bitcast i32 addrspace(5)* %20 to i8 addrspace(5)*
  call void @llvm.lifetime.end.p5i8(i64 4, i8 addrspace(5)* %93) #19
  ret <2 x i64> %86
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #11

; Function Attrs: convergent norecurse nounwind
define internal fastcc i32 @0(i32 %0) unnamed_addr #12 {
  %2 = tail call i32 asm sideeffect "; ockl readfirstlane hoisting hack $0", "=v,0"(i32 %0) #22, !srcloc !21
  ret i32 %2
}

; Function Attrs: convergent nounwind readnone willreturn
declare i32 @llvm.amdgcn.readfirstlane(i32) #13

; Function Attrs: convergent norecurse nounwind
define internal fastcc i64 @1(%0 addrspace(1)* nocapture %0, i32 %1, i32 %2) unnamed_addr #12 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %5, label %27

5:                                                ; preds = %3
  %6 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 3
  %7 = load atomic i64, i64 addrspace(1)* %6 syncscope("one-as") acquire, align 8
  %8 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %9 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %8, align 8, !tbaa !16
  %10 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 5
  %11 = load i64, i64 addrspace(1)* %10, align 8, !tbaa !19
  %12 = and i64 %11, %7
  %13 = getelementptr inbounds %1, %1 addrspace(1)* %9, i64 %12, i32 0
  %14 = load atomic i64, i64 addrspace(1)* %13 syncscope("one-as") monotonic, align 8
  %15 = cmpxchg i64 addrspace(1)* %6, i64 %7, i64 %14 syncscope("one-as") acquire monotonic
  %16 = extractvalue { i64, i1 } %15, 1
  br i1 %16, label %27, label %.preheader

.preheader:                                       ; preds = %5, %.preheader
  %17 = phi { i64, i1 } [ %24, %.preheader ], [ %15, %5 ]
  %18 = extractvalue { i64, i1 } %17, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #19
  %19 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %8, align 8, !tbaa !16
  %20 = load i64, i64 addrspace(1)* %10, align 8, !tbaa !19
  %21 = and i64 %20, %18
  %22 = getelementptr inbounds %1, %1 addrspace(1)* %19, i64 %21, i32 0
  %23 = load atomic i64, i64 addrspace(1)* %22 syncscope("one-as") monotonic, align 8
  %24 = cmpxchg i64 addrspace(1)* %6, i64 %18, i64 %23 syncscope("one-as") acquire monotonic
  %25 = extractvalue { i64, i1 } %24, 1
  br i1 %25, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader
  %26 = extractvalue { i64, i1 } %17, 0
  br label %27

27:                                               ; preds = %.loopexit, %5, %3
  %28 = phi i64 [ 0, %3 ], [ %7, %5 ], [ %26, %.loopexit ]
  %29 = trunc i64 %28 to i32
  %30 = lshr i64 %28, 32
  %31 = trunc i64 %30 to i32
  %32 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %29)
  %33 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %31)
  %34 = zext i32 %33 to i64
  %35 = shl nuw i64 %34, 32
  %36 = zext i32 %32 to i64
  %37 = or i64 %35, %36
  ret i64 %37
}

; Function Attrs: norecurse nounwind readnone
define internal fastcc %1 addrspace(1)* @2(%1 addrspace(1)* readnone %0, i64 %1, i64 %2) unnamed_addr #14 {
  %4 = and i64 %2, %1
  %5 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 %4
  ret %1 addrspace(1)* %5
}

; Function Attrs: norecurse nounwind readnone
define internal fastcc %2 addrspace(1)* @3(%2 addrspace(1)* readnone %0, i64 %1, i64 %2) unnamed_addr #14 {
  %4 = and i64 %2, %1
  %5 = getelementptr inbounds %2, %2 addrspace(1)* %0, i64 %4
  ret %2 addrspace(1)* %5
}

; Function Attrs: convergent nofree norecurse nounwind
define internal fastcc void @4(%1 addrspace(1)* nocapture %0, %2 addrspace(1)* nocapture %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i32 %11, i32 %12) unnamed_addr #15 {
  %14 = tail call i64 @llvm.read_register.i64(metadata !22) #23
  %15 = icmp eq i32 %11, %12
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 2
  %18 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 1
  %19 = getelementptr inbounds %1, %1 addrspace(1)* %0, i64 0, i32 3
  store i32 %2, i32 addrspace(1)* %17, align 8, !tbaa !23
  store i64 %14, i64 addrspace(1)* %18, align 8, !tbaa !25
  store i32 1, i32 addrspace(1)* %19, align 4, !tbaa !26
  br label %20

20:                                               ; preds = %16, %13
  %21 = zext i32 %11 to i64
  %22 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 0
  store i64 %3, i64 addrspace(1)* %22, align 8, !tbaa !4
  %23 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 1
  store i64 %4, i64 addrspace(1)* %23, align 8, !tbaa !4
  %24 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 2
  store i64 %5, i64 addrspace(1)* %24, align 8, !tbaa !4
  %25 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 3
  store i64 %6, i64 addrspace(1)* %25, align 8, !tbaa !4
  %26 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 4
  store i64 %7, i64 addrspace(1)* %26, align 8, !tbaa !4
  %27 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 5
  store i64 %8, i64 addrspace(1)* %27, align 8, !tbaa !4
  %28 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 6
  store i64 %9, i64 addrspace(1)* %28, align 8, !tbaa !4
  %29 = getelementptr inbounds %2, %2 addrspace(1)* %1, i64 0, i32 0, i64 %21, i64 7
  store i64 %10, i64 addrspace(1)* %29, align 8, !tbaa !4
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal fastcc void @5(%0 addrspace(1)* nocapture %0, i64 %1, i32 %2, i32 %3) unnamed_addr #12 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %6, label %__ockl_hsa_signal_add.exit

6:                                                ; preds = %4
  %7 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 4
  %8 = load atomic i64, i64 addrspace(1)* %7 syncscope("one-as") monotonic, align 8
  %9 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %10 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %9, align 8, !tbaa !16
  %11 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 5
  %12 = load i64, i64 addrspace(1)* %11, align 8, !tbaa !19
  %13 = and i64 %12, %1
  %14 = getelementptr inbounds %1, %1 addrspace(1)* %10, i64 %13, i32 0
  store i64 %8, i64 addrspace(1)* %14, align 8, !tbaa !27
  %15 = cmpxchg i64 addrspace(1)* %7, i64 %8, i64 %1 syncscope("one-as") release monotonic
  %16 = extractvalue { i64, i1 } %15, 1
  br i1 %16, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %6, %.preheader
  %17 = phi { i64, i1 } [ %19, %.preheader ], [ %15, %6 ]
  %18 = extractvalue { i64, i1 } %17, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #19
  store i64 %18, i64 addrspace(1)* %14, align 8, !tbaa !27
  %19 = cmpxchg i64 addrspace(1)* %7, i64 %18, i64 %1 syncscope("one-as") release monotonic
  %20 = extractvalue { i64, i1 } %19, 1
  br i1 %20, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %6
  %21 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 2, i32 0
  %22 = load i64, i64 addrspace(1)* %21, align 8
  %23 = inttoptr i64 %22 to %4 addrspace(1)*
  %24 = getelementptr inbounds %4, %4 addrspace(1)* %23, i64 0, i32 1, i32 0
  %25 = atomicrmw add i64 addrspace(1)* %24, i64 1 syncscope("one-as") release
  %26 = getelementptr inbounds %4, %4 addrspace(1)* %23, i64 0, i32 2
  %27 = load i64, i64 addrspace(1)* %26, align 16, !tbaa !28
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %__ockl_hsa_signal_add.exit, label %29

29:                                               ; preds = %.loopexit
  %30 = inttoptr i64 %27 to i64 addrspace(1)*
  %31 = getelementptr inbounds %4, %4 addrspace(1)* %23, i64 0, i32 3
  %32 = load i32, i32 addrspace(1)* %31, align 8, !tbaa !30
  %33 = zext i32 %32 to i64
  store atomic i64 %33, i64 addrspace(1)* %30 syncscope("one-as") release, align 8
  %34 = tail call i32 @llvm.amdgcn.readfirstlane(i32 %32) #19
  %35 = and i32 %34, 255
  tail call void @llvm.amdgcn.s.sendmsg(i32 1, i32 %35) #19
  br label %__ockl_hsa_signal_add.exit

__ockl_hsa_signal_add.exit:                       ; preds = %29, %.loopexit, %4
  ret void
}

; Function Attrs: convergent norecurse nounwind
define internal fastcc <2 x i64> @6(%1 addrspace(1)* nocapture readonly %0, %2 addrspace(1)* nocapture readonly %1, i32 %2, i32 %3) unnamed_addr #16 {
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
  %20 = load <2 x i64>, <2 x i64> addrspace(1)* %19, align 8, !tbaa !4
  ret <2 x i64> %20
}

; Function Attrs: norecurse nounwind
define internal fastcc void @7(%0 addrspace(1)* nocapture %0, i64 %1, i32 %2, i32 %3) unnamed_addr #17 {
  %5 = icmp eq i32 %2, %3
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %4
  %7 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 5
  %8 = load i64, i64 addrspace(1)* %7, align 8, !tbaa !19
  %9 = add i64 %8, 1
  %10 = add i64 %9, %1
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i64 %9, i64 %10
  %13 = getelementptr inbounds %0, %0 addrspace(1)* %0, i64 0, i32 3
  %14 = load atomic i64, i64 addrspace(1)* %13 syncscope("one-as") monotonic, align 8
  %15 = getelementptr %0, %0 addrspace(1)* %0, i64 0, i32 0
  %16 = load %1 addrspace(1)*, %1 addrspace(1)* addrspace(1)* %15, align 8, !tbaa !16
  %17 = and i64 %12, %8
  %18 = getelementptr inbounds %1, %1 addrspace(1)* %16, i64 %17, i32 0
  store i64 %14, i64 addrspace(1)* %18, align 8, !tbaa !27
  %19 = cmpxchg i64 addrspace(1)* %13, i64 %14, i64 %12 syncscope("one-as") release monotonic
  %20 = extractvalue { i64, i1 } %19, 1
  br i1 %20, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %6, %.preheader
  %21 = phi { i64, i1 } [ %23, %.preheader ], [ %19, %6 ]
  %22 = extractvalue { i64, i1 } %21, 0
  tail call void @llvm.amdgcn.s.sleep(i32 1) #19
  store i64 %22, i64 addrspace(1)* %18, align 8, !tbaa !27
  %23 = cmpxchg i64 addrspace(1)* %13, i64 %22, i64 %12 syncscope("one-as") release monotonic
  %24 = extractvalue { i64, i1 } %23, 1
  br i1 %24, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %6, %4
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p5i8(i64 immarg, i8 addrspace(5)* nocapture) #11

; Function Attrs: nounwind willreturn
declare void @llvm.amdgcn.s.sleep(i32 immarg) #18

; Function Attrs: nounwind
declare void @llvm.amdgcn.s.sendmsg(i32 immarg, i32) #19

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #20

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.amdgcn.mbcnt.lo(i32, i32) #21

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.amdgcn.mbcnt.hi(i32, i32) #21

; Function Attrs: convergent norecurse nounwind
define internal fastcc i64 @__ockl_printf_append_string_n(i64 %0, i8* readonly %1, i64 %2, i32 %3) unnamed_addr #16 {
  %5 = icmp eq i32 %3, 0
  %6 = or i64 %0, 2
  %7 = select i1 %5, i64 %0, i64 %6
  %8 = icmp eq i8* %1, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = and i64 %7, -225
  %11 = or i64 %10, 32
  %12 = tail call i8 addrspace(4)* @llvm.amdgcn.implicitarg.ptr() #19
  %13 = getelementptr inbounds i8, i8 addrspace(4)* %12, i64 24
  %14 = bitcast i8 addrspace(4)* %13 to i64 addrspace(4)*
  %15 = load i64, i64 addrspace(4)* %14, align 8, !tbaa !4
  %16 = inttoptr i64 %15 to i8*
  %17 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %16, i64 %11, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0) #22
  br label %.loopexit26

18:                                               ; preds = %4
  %19 = and i64 %7, 2
  %20 = and i64 %7, -3
  %21 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %20, i64 0
  %22 = tail call i8 addrspace(4)* @llvm.amdgcn.implicitarg.ptr() #19
  %23 = getelementptr inbounds i8, i8 addrspace(4)* %22, i64 24
  %24 = bitcast i8 addrspace(4)* %23 to i64 addrspace(4)*
  %25 = load i64, i64 addrspace(4)* %24, align 8, !tbaa !4
  %26 = inttoptr i64 %25 to i8*
  br label %27

27:                                               ; preds = %.loopexit, %18
  %28 = phi i64 [ %2, %18 ], [ %449, %.loopexit ]
  %29 = phi i8* [ %1, %18 ], [ %450, %.loopexit ]
  %30 = phi <2 x i64> [ %21, %18 ], [ %448, %.loopexit ]
  %31 = icmp ugt i64 %28, 56
  %32 = extractelement <2 x i64> %30, i64 0
  %33 = or i64 %32, %19
  %34 = insertelement <2 x i64> poison, i64 %33, i64 0
  %35 = select i1 %31, <2 x i64> %30, <2 x i64> %34
  %36 = icmp ult i64 %28, 56
  %37 = select i1 %36, i64 %28, i64 56
  %38 = trunc i64 %37 to i32
  %39 = extractelement <2 x i64> %35, i64 0
  %40 = and i64 %39, -225
  %41 = shl nuw nsw i64 %37, 2
  %42 = add nuw nsw i64 %41, 28
  %43 = and i64 %42, 480
  %44 = or i64 %40, %43
  %45 = icmp ugt i32 %38, 7
  br i1 %45, label %48, label %46

46:                                               ; preds = %27
  %47 = icmp eq i32 %38, 0
  br i1 %47, label %.loopexit25, label %.preheader24

48:                                               ; preds = %27
  %49 = load i8, i8* %29, align 1, !tbaa !8
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds i8, i8* %29, i64 1
  %52 = load i8, i8* %51, align 1, !tbaa !8
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 8
  %55 = or i64 %54, %50
  %56 = getelementptr inbounds i8, i8* %29, i64 2
  %57 = load i8, i8* %56, align 1, !tbaa !8
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 16
  %60 = or i64 %55, %59
  %61 = getelementptr inbounds i8, i8* %29, i64 3
  %62 = load i8, i8* %61, align 1, !tbaa !8
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 24
  %65 = or i64 %60, %64
  %66 = getelementptr inbounds i8, i8* %29, i64 4
  %67 = load i8, i8* %66, align 1, !tbaa !8
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 32
  %70 = or i64 %65, %69
  %71 = getelementptr inbounds i8, i8* %29, i64 5
  %72 = load i8, i8* %71, align 1, !tbaa !8
  %73 = zext i8 %72 to i64
  %74 = shl nuw nsw i64 %73, 40
  %75 = or i64 %70, %74
  %76 = getelementptr inbounds i8, i8* %29, i64 6
  %77 = load i8, i8* %76, align 1, !tbaa !8
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 48
  %80 = or i64 %75, %79
  %81 = getelementptr inbounds i8, i8* %29, i64 7
  %82 = load i8, i8* %81, align 1, !tbaa !8
  %83 = zext i8 %82 to i64
  %84 = shl nuw i64 %83, 56
  %85 = or i64 %80, %84
  %86 = add nsw i32 %38, -8
  %87 = getelementptr inbounds i8, i8* %29, i64 8
  br label %.loopexit25

.preheader24:                                     ; preds = %46, %.preheader24
  %88 = phi i32 [ %99, %.preheader24 ], [ 0, %46 ]
  %89 = phi i64 [ %98, %.preheader24 ], [ 0, %46 ]
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %29, i64 %90
  %92 = load i8, i8* %91, align 1, !tbaa !8
  %93 = zext i8 %92 to i64
  %94 = shl i32 %88, 3
  %95 = and i32 %94, 56
  %96 = zext i32 %95 to i64
  %97 = shl nuw i64 %93, %96
  %98 = or i64 %97, %89
  %99 = add nuw nsw i32 %88, 1
  %100 = icmp eq i32 %99, %38
  br i1 %100, label %.loopexit25, label %.preheader24

.loopexit25:                                      ; preds = %.preheader24, %48, %46
  %101 = phi i8* [ %87, %48 ], [ %29, %46 ], [ %29, %.preheader24 ]
  %102 = phi i32 [ %86, %48 ], [ 0, %46 ], [ 0, %.preheader24 ]
  %103 = phi i64 [ %85, %48 ], [ 0, %46 ], [ %98, %.preheader24 ]
  %104 = icmp ugt i32 %102, 7
  br i1 %104, label %107, label %105

105:                                              ; preds = %.loopexit25
  %106 = icmp eq i32 %102, 0
  br i1 %106, label %.loopexit23, label %.preheader22

107:                                              ; preds = %.loopexit25
  %108 = load i8, i8* %101, align 1, !tbaa !8
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds i8, i8* %101, i64 1
  %111 = load i8, i8* %110, align 1, !tbaa !8
  %112 = zext i8 %111 to i64
  %113 = shl nuw nsw i64 %112, 8
  %114 = or i64 %113, %109
  %115 = getelementptr inbounds i8, i8* %101, i64 2
  %116 = load i8, i8* %115, align 1, !tbaa !8
  %117 = zext i8 %116 to i64
  %118 = shl nuw nsw i64 %117, 16
  %119 = or i64 %114, %118
  %120 = getelementptr inbounds i8, i8* %101, i64 3
  %121 = load i8, i8* %120, align 1, !tbaa !8
  %122 = zext i8 %121 to i64
  %123 = shl nuw nsw i64 %122, 24
  %124 = or i64 %119, %123
  %125 = getelementptr inbounds i8, i8* %101, i64 4
  %126 = load i8, i8* %125, align 1, !tbaa !8
  %127 = zext i8 %126 to i64
  %128 = shl nuw nsw i64 %127, 32
  %129 = or i64 %124, %128
  %130 = getelementptr inbounds i8, i8* %101, i64 5
  %131 = load i8, i8* %130, align 1, !tbaa !8
  %132 = zext i8 %131 to i64
  %133 = shl nuw nsw i64 %132, 40
  %134 = or i64 %129, %133
  %135 = getelementptr inbounds i8, i8* %101, i64 6
  %136 = load i8, i8* %135, align 1, !tbaa !8
  %137 = zext i8 %136 to i64
  %138 = shl nuw nsw i64 %137, 48
  %139 = or i64 %134, %138
  %140 = getelementptr inbounds i8, i8* %101, i64 7
  %141 = load i8, i8* %140, align 1, !tbaa !8
  %142 = zext i8 %141 to i64
  %143 = shl nuw i64 %142, 56
  %144 = or i64 %139, %143
  %145 = add nsw i32 %102, -8
  %146 = getelementptr inbounds i8, i8* %101, i64 8
  br label %.loopexit23

.preheader22:                                     ; preds = %105, %.preheader22
  %147 = phi i32 [ %157, %.preheader22 ], [ 0, %105 ]
  %148 = phi i64 [ %156, %.preheader22 ], [ 0, %105 ]
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %101, i64 %149
  %151 = load i8, i8* %150, align 1, !tbaa !8
  %152 = zext i8 %151 to i64
  %153 = shl i32 %147, 3
  %154 = zext i32 %153 to i64
  %155 = shl nuw i64 %152, %154
  %156 = or i64 %155, %148
  %157 = add nuw nsw i32 %147, 1
  %158 = icmp eq i32 %157, %102
  br i1 %158, label %.loopexit23, label %.preheader22

.loopexit23:                                      ; preds = %.preheader22, %107, %105
  %159 = phi i8* [ %146, %107 ], [ %101, %105 ], [ %101, %.preheader22 ]
  %160 = phi i32 [ %145, %107 ], [ 0, %105 ], [ 0, %.preheader22 ]
  %161 = phi i64 [ %144, %107 ], [ 0, %105 ], [ %156, %.preheader22 ]
  %162 = icmp ugt i32 %160, 7
  br i1 %162, label %165, label %163

163:                                              ; preds = %.loopexit23
  %164 = icmp eq i32 %160, 0
  br i1 %164, label %.loopexit21, label %.preheader20

165:                                              ; preds = %.loopexit23
  %166 = load i8, i8* %159, align 1, !tbaa !8
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds i8, i8* %159, i64 1
  %169 = load i8, i8* %168, align 1, !tbaa !8
  %170 = zext i8 %169 to i64
  %171 = shl nuw nsw i64 %170, 8
  %172 = or i64 %171, %167
  %173 = getelementptr inbounds i8, i8* %159, i64 2
  %174 = load i8, i8* %173, align 1, !tbaa !8
  %175 = zext i8 %174 to i64
  %176 = shl nuw nsw i64 %175, 16
  %177 = or i64 %172, %176
  %178 = getelementptr inbounds i8, i8* %159, i64 3
  %179 = load i8, i8* %178, align 1, !tbaa !8
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 24
  %182 = or i64 %177, %181
  %183 = getelementptr inbounds i8, i8* %159, i64 4
  %184 = load i8, i8* %183, align 1, !tbaa !8
  %185 = zext i8 %184 to i64
  %186 = shl nuw nsw i64 %185, 32
  %187 = or i64 %182, %186
  %188 = getelementptr inbounds i8, i8* %159, i64 5
  %189 = load i8, i8* %188, align 1, !tbaa !8
  %190 = zext i8 %189 to i64
  %191 = shl nuw nsw i64 %190, 40
  %192 = or i64 %187, %191
  %193 = getelementptr inbounds i8, i8* %159, i64 6
  %194 = load i8, i8* %193, align 1, !tbaa !8
  %195 = zext i8 %194 to i64
  %196 = shl nuw nsw i64 %195, 48
  %197 = or i64 %192, %196
  %198 = getelementptr inbounds i8, i8* %159, i64 7
  %199 = load i8, i8* %198, align 1, !tbaa !8
  %200 = zext i8 %199 to i64
  %201 = shl nuw i64 %200, 56
  %202 = or i64 %197, %201
  %203 = add nsw i32 %160, -8
  %204 = getelementptr inbounds i8, i8* %159, i64 8
  br label %.loopexit21

.preheader20:                                     ; preds = %163, %.preheader20
  %205 = phi i32 [ %215, %.preheader20 ], [ 0, %163 ]
  %206 = phi i64 [ %214, %.preheader20 ], [ 0, %163 ]
  %207 = zext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %159, i64 %207
  %209 = load i8, i8* %208, align 1, !tbaa !8
  %210 = zext i8 %209 to i64
  %211 = shl i32 %205, 3
  %212 = zext i32 %211 to i64
  %213 = shl nuw i64 %210, %212
  %214 = or i64 %213, %206
  %215 = add nuw nsw i32 %205, 1
  %216 = icmp eq i32 %215, %160
  br i1 %216, label %.loopexit21, label %.preheader20

.loopexit21:                                      ; preds = %.preheader20, %165, %163
  %217 = phi i8* [ %204, %165 ], [ %159, %163 ], [ %159, %.preheader20 ]
  %218 = phi i32 [ %203, %165 ], [ 0, %163 ], [ 0, %.preheader20 ]
  %219 = phi i64 [ %202, %165 ], [ 0, %163 ], [ %214, %.preheader20 ]
  %220 = icmp ugt i32 %218, 7
  br i1 %220, label %223, label %221

221:                                              ; preds = %.loopexit21
  %222 = icmp eq i32 %218, 0
  br i1 %222, label %.loopexit19, label %.preheader18

223:                                              ; preds = %.loopexit21
  %224 = load i8, i8* %217, align 1, !tbaa !8
  %225 = zext i8 %224 to i64
  %226 = getelementptr inbounds i8, i8* %217, i64 1
  %227 = load i8, i8* %226, align 1, !tbaa !8
  %228 = zext i8 %227 to i64
  %229 = shl nuw nsw i64 %228, 8
  %230 = or i64 %229, %225
  %231 = getelementptr inbounds i8, i8* %217, i64 2
  %232 = load i8, i8* %231, align 1, !tbaa !8
  %233 = zext i8 %232 to i64
  %234 = shl nuw nsw i64 %233, 16
  %235 = or i64 %230, %234
  %236 = getelementptr inbounds i8, i8* %217, i64 3
  %237 = load i8, i8* %236, align 1, !tbaa !8
  %238 = zext i8 %237 to i64
  %239 = shl nuw nsw i64 %238, 24
  %240 = or i64 %235, %239
  %241 = getelementptr inbounds i8, i8* %217, i64 4
  %242 = load i8, i8* %241, align 1, !tbaa !8
  %243 = zext i8 %242 to i64
  %244 = shl nuw nsw i64 %243, 32
  %245 = or i64 %240, %244
  %246 = getelementptr inbounds i8, i8* %217, i64 5
  %247 = load i8, i8* %246, align 1, !tbaa !8
  %248 = zext i8 %247 to i64
  %249 = shl nuw nsw i64 %248, 40
  %250 = or i64 %245, %249
  %251 = getelementptr inbounds i8, i8* %217, i64 6
  %252 = load i8, i8* %251, align 1, !tbaa !8
  %253 = zext i8 %252 to i64
  %254 = shl nuw nsw i64 %253, 48
  %255 = or i64 %250, %254
  %256 = getelementptr inbounds i8, i8* %217, i64 7
  %257 = load i8, i8* %256, align 1, !tbaa !8
  %258 = zext i8 %257 to i64
  %259 = shl nuw i64 %258, 56
  %260 = or i64 %255, %259
  %261 = add i32 %218, -8
  %262 = getelementptr inbounds i8, i8* %217, i64 8
  br label %.loopexit19

.preheader18:                                     ; preds = %221, %.preheader18
  %263 = phi i32 [ %273, %.preheader18 ], [ 0, %221 ]
  %264 = phi i64 [ %272, %.preheader18 ], [ 0, %221 ]
  %265 = zext i32 %263 to i64
  %266 = getelementptr inbounds i8, i8* %217, i64 %265
  %267 = load i8, i8* %266, align 1, !tbaa !8
  %268 = zext i8 %267 to i64
  %269 = shl i32 %263, 3
  %270 = zext i32 %269 to i64
  %271 = shl nuw i64 %268, %270
  %272 = or i64 %271, %264
  %273 = add nuw nsw i32 %263, 1
  %274 = icmp eq i32 %273, %218
  br i1 %274, label %.loopexit19, label %.preheader18

.loopexit19:                                      ; preds = %.preheader18, %223, %221
  %275 = phi i8* [ %262, %223 ], [ %217, %221 ], [ %217, %.preheader18 ]
  %276 = phi i32 [ %261, %223 ], [ 0, %221 ], [ 0, %.preheader18 ]
  %277 = phi i64 [ %260, %223 ], [ 0, %221 ], [ %272, %.preheader18 ]
  %278 = icmp ugt i32 %276, 7
  br i1 %278, label %281, label %279

279:                                              ; preds = %.loopexit19
  %280 = icmp eq i32 %276, 0
  br i1 %280, label %.loopexit17, label %.preheader16

281:                                              ; preds = %.loopexit19
  %282 = load i8, i8* %275, align 1, !tbaa !8
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds i8, i8* %275, i64 1
  %285 = load i8, i8* %284, align 1, !tbaa !8
  %286 = zext i8 %285 to i64
  %287 = shl nuw nsw i64 %286, 8
  %288 = or i64 %287, %283
  %289 = getelementptr inbounds i8, i8* %275, i64 2
  %290 = load i8, i8* %289, align 1, !tbaa !8
  %291 = zext i8 %290 to i64
  %292 = shl nuw nsw i64 %291, 16
  %293 = or i64 %288, %292
  %294 = getelementptr inbounds i8, i8* %275, i64 3
  %295 = load i8, i8* %294, align 1, !tbaa !8
  %296 = zext i8 %295 to i64
  %297 = shl nuw nsw i64 %296, 24
  %298 = or i64 %293, %297
  %299 = getelementptr inbounds i8, i8* %275, i64 4
  %300 = load i8, i8* %299, align 1, !tbaa !8
  %301 = zext i8 %300 to i64
  %302 = shl nuw nsw i64 %301, 32
  %303 = or i64 %298, %302
  %304 = getelementptr inbounds i8, i8* %275, i64 5
  %305 = load i8, i8* %304, align 1, !tbaa !8
  %306 = zext i8 %305 to i64
  %307 = shl nuw nsw i64 %306, 40
  %308 = or i64 %303, %307
  %309 = getelementptr inbounds i8, i8* %275, i64 6
  %310 = load i8, i8* %309, align 1, !tbaa !8
  %311 = zext i8 %310 to i64
  %312 = shl nuw nsw i64 %311, 48
  %313 = or i64 %308, %312
  %314 = getelementptr inbounds i8, i8* %275, i64 7
  %315 = load i8, i8* %314, align 1, !tbaa !8
  %316 = zext i8 %315 to i64
  %317 = shl nuw i64 %316, 56
  %318 = or i64 %313, %317
  %319 = add i32 %276, -8
  %320 = getelementptr inbounds i8, i8* %275, i64 8
  br label %.loopexit17

.preheader16:                                     ; preds = %279, %.preheader16
  %321 = phi i32 [ %331, %.preheader16 ], [ 0, %279 ]
  %322 = phi i64 [ %330, %.preheader16 ], [ 0, %279 ]
  %323 = zext i32 %321 to i64
  %324 = getelementptr inbounds i8, i8* %275, i64 %323
  %325 = load i8, i8* %324, align 1, !tbaa !8
  %326 = zext i8 %325 to i64
  %327 = shl i32 %321, 3
  %328 = zext i32 %327 to i64
  %329 = shl nuw i64 %326, %328
  %330 = or i64 %329, %322
  %331 = add nuw nsw i32 %321, 1
  %332 = icmp eq i32 %331, %276
  br i1 %332, label %.loopexit17, label %.preheader16

.loopexit17:                                      ; preds = %.preheader16, %281, %279
  %333 = phi i8* [ %320, %281 ], [ %275, %279 ], [ %275, %.preheader16 ]
  %334 = phi i32 [ %319, %281 ], [ 0, %279 ], [ 0, %.preheader16 ]
  %335 = phi i64 [ %318, %281 ], [ 0, %279 ], [ %330, %.preheader16 ]
  %336 = icmp ugt i32 %334, 7
  br i1 %336, label %339, label %337

337:                                              ; preds = %.loopexit17
  %338 = icmp eq i32 %334, 0
  br i1 %338, label %.loopexit15, label %.preheader14

339:                                              ; preds = %.loopexit17
  %340 = load i8, i8* %333, align 1, !tbaa !8
  %341 = zext i8 %340 to i64
  %342 = getelementptr inbounds i8, i8* %333, i64 1
  %343 = load i8, i8* %342, align 1, !tbaa !8
  %344 = zext i8 %343 to i64
  %345 = shl nuw nsw i64 %344, 8
  %346 = or i64 %345, %341
  %347 = getelementptr inbounds i8, i8* %333, i64 2
  %348 = load i8, i8* %347, align 1, !tbaa !8
  %349 = zext i8 %348 to i64
  %350 = shl nuw nsw i64 %349, 16
  %351 = or i64 %346, %350
  %352 = getelementptr inbounds i8, i8* %333, i64 3
  %353 = load i8, i8* %352, align 1, !tbaa !8
  %354 = zext i8 %353 to i64
  %355 = shl nuw nsw i64 %354, 24
  %356 = or i64 %351, %355
  %357 = getelementptr inbounds i8, i8* %333, i64 4
  %358 = load i8, i8* %357, align 1, !tbaa !8
  %359 = zext i8 %358 to i64
  %360 = shl nuw nsw i64 %359, 32
  %361 = or i64 %356, %360
  %362 = getelementptr inbounds i8, i8* %333, i64 5
  %363 = load i8, i8* %362, align 1, !tbaa !8
  %364 = zext i8 %363 to i64
  %365 = shl nuw nsw i64 %364, 40
  %366 = or i64 %361, %365
  %367 = getelementptr inbounds i8, i8* %333, i64 6
  %368 = load i8, i8* %367, align 1, !tbaa !8
  %369 = zext i8 %368 to i64
  %370 = shl nuw nsw i64 %369, 48
  %371 = or i64 %366, %370
  %372 = getelementptr inbounds i8, i8* %333, i64 7
  %373 = load i8, i8* %372, align 1, !tbaa !8
  %374 = zext i8 %373 to i64
  %375 = shl nuw i64 %374, 56
  %376 = or i64 %371, %375
  %377 = add i32 %334, -8
  %378 = getelementptr inbounds i8, i8* %333, i64 8
  br label %.loopexit15

.preheader14:                                     ; preds = %337, %.preheader14
  %379 = phi i32 [ %389, %.preheader14 ], [ 0, %337 ]
  %380 = phi i64 [ %388, %.preheader14 ], [ 0, %337 ]
  %381 = zext i32 %379 to i64
  %382 = getelementptr inbounds i8, i8* %333, i64 %381
  %383 = load i8, i8* %382, align 1, !tbaa !8
  %384 = zext i8 %383 to i64
  %385 = shl i32 %379, 3
  %386 = zext i32 %385 to i64
  %387 = shl nuw i64 %384, %386
  %388 = or i64 %387, %380
  %389 = add nuw nsw i32 %379, 1
  %390 = icmp eq i32 %389, %334
  br i1 %390, label %.loopexit15, label %.preheader14

.loopexit15:                                      ; preds = %.preheader14, %339, %337
  %391 = phi i8* [ %378, %339 ], [ %333, %337 ], [ %333, %.preheader14 ]
  %392 = phi i32 [ %377, %339 ], [ 0, %337 ], [ 0, %.preheader14 ]
  %393 = phi i64 [ %376, %339 ], [ 0, %337 ], [ %388, %.preheader14 ]
  %394 = icmp ugt i32 %392, 7
  br i1 %394, label %397, label %395

395:                                              ; preds = %.loopexit15
  %396 = icmp eq i32 %392, 0
  br i1 %396, label %.loopexit, label %.preheader

397:                                              ; preds = %.loopexit15
  %398 = load i8, i8* %391, align 1, !tbaa !8
  %399 = zext i8 %398 to i64
  %400 = getelementptr inbounds i8, i8* %391, i64 1
  %401 = load i8, i8* %400, align 1, !tbaa !8
  %402 = zext i8 %401 to i64
  %403 = shl nuw nsw i64 %402, 8
  %404 = or i64 %403, %399
  %405 = getelementptr inbounds i8, i8* %391, i64 2
  %406 = load i8, i8* %405, align 1, !tbaa !8
  %407 = zext i8 %406 to i64
  %408 = shl nuw nsw i64 %407, 16
  %409 = or i64 %404, %408
  %410 = getelementptr inbounds i8, i8* %391, i64 3
  %411 = load i8, i8* %410, align 1, !tbaa !8
  %412 = zext i8 %411 to i64
  %413 = shl nuw nsw i64 %412, 24
  %414 = or i64 %409, %413
  %415 = getelementptr inbounds i8, i8* %391, i64 4
  %416 = load i8, i8* %415, align 1, !tbaa !8
  %417 = zext i8 %416 to i64
  %418 = shl nuw nsw i64 %417, 32
  %419 = or i64 %414, %418
  %420 = getelementptr inbounds i8, i8* %391, i64 5
  %421 = load i8, i8* %420, align 1, !tbaa !8
  %422 = zext i8 %421 to i64
  %423 = shl nuw nsw i64 %422, 40
  %424 = or i64 %419, %423
  %425 = getelementptr inbounds i8, i8* %391, i64 6
  %426 = load i8, i8* %425, align 1, !tbaa !8
  %427 = zext i8 %426 to i64
  %428 = shl nuw nsw i64 %427, 48
  %429 = or i64 %424, %428
  %430 = getelementptr inbounds i8, i8* %391, i64 7
  %431 = load i8, i8* %430, align 1, !tbaa !8
  %432 = zext i8 %431 to i64
  %433 = shl nuw i64 %432, 56
  %434 = or i64 %429, %433
  br label %.loopexit

.preheader:                                       ; preds = %395, %.preheader
  %435 = phi i32 [ %445, %.preheader ], [ 0, %395 ]
  %436 = phi i64 [ %444, %.preheader ], [ 0, %395 ]
  %437 = zext i32 %435 to i64
  %438 = getelementptr inbounds i8, i8* %391, i64 %437
  %439 = load i8, i8* %438, align 1, !tbaa !8
  %440 = zext i8 %439 to i64
  %441 = shl i32 %435, 3
  %442 = zext i32 %441 to i64
  %443 = shl nuw i64 %440, %442
  %444 = or i64 %443, %436
  %445 = add nuw nsw i32 %435, 1
  %446 = icmp eq i32 %445, %392
  br i1 %446, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %397, %395
  %447 = phi i64 [ %434, %397 ], [ 0, %395 ], [ %444, %.preheader ]
  %448 = tail call fastcc <2 x i64> @__ockl_hostcall_internal(i8* %26, i64 %44, i64 %103, i64 %161, i64 %219, i64 %277, i64 %335, i64 %393, i64 %447) #22
  %449 = sub i64 %28, %37
  %450 = getelementptr inbounds i8, i8* %29, i64 %37
  %451 = icmp eq i64 %449, 0
  br i1 %451, label %.loopexit26, label %27

.loopexit26:                                      ; preds = %.loopexit, %9
  %452 = phi <2 x i64> [ %17, %9 ], [ %448, %.loopexit ]
  %453 = extractelement <2 x i64> %452, i64 0
  ret i64 %453
}

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #9

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.y() #9

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.z() #9

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #9

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.y() #9

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.z() #9

attributes #0 = { convergent noinline nounwind "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noreturn nounwind }
attributes #2 = { noinline nounwind mustprogress "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent noinline norecurse nounwind mustprogress "amdgpu-flat-work-group-size"="1,1024" "amdgpu-implicitarg-num-bytes"="56" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent noinline nounwind mustprogress "amdgpu-flat-work-group-size"="1,1024" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+add-no-carry-insts,+aperture-regs,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+ds-src2-insts,+enable-ds128,+enable-prt-strict-null,+fast-denormal-f32,+fast-fmaf,+flat-address-space,+flat-for-global,+flat-global-insts,+flat-inst-offsets,+flat-scratch-insts,+fma-mix-insts,+fp64,+gcn3-encoding,+gfx7-gfx8-gfx9-insts,+gfx8-insts,+gfx9,+gfx9-insts,+half-rate-64-ops,+image-gather4-d16-bug,+int-clamp-insts,+inv-2pi-inline-imm,+ldsbankcount32,+load-store-opt,+localmemorysize65536,+mad-mac-f32-insts,+promote-alloca,+r128-a16,+s-memrealtime,+s-memtime-inst,+scalar-atomics,+scalar-flat-scratch-insts,+scalar-stores,+sdwa,+sdwa-omod,+sdwa-scalar,+sdwa-sdst,+sramecc-support,+trap-handler,+unaligned-access-mode,+unaligned-buffer-access,+unaligned-ds-access,+vgpr-index-mode,+vop3p,-wavefrontsize16,-wavefrontsize32,+wavefrontsize64,+xnack-support" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse nounwind readnone "amdgpu-flat-work-group-size"="1,1024" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+add-no-carry-insts,+aperture-regs,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+ds-src2-insts,+enable-ds128,+enable-prt-strict-null,+fast-denormal-f32,+fast-fmaf,+flat-address-space,+flat-for-global,+flat-global-insts,+flat-inst-offsets,+flat-scratch-insts,+fma-mix-insts,+fp64,+gcn3-encoding,+gfx7-gfx8-gfx9-insts,+gfx8-insts,+gfx9,+gfx9-insts,+half-rate-64-ops,+image-gather4-d16-bug,+int-clamp-insts,+inv-2pi-inline-imm,+ldsbankcount32,+load-store-opt,+localmemorysize65536,+mad-mac-f32-insts,+promote-alloca,+r128-a16,+s-memrealtime,+s-memtime-inst,+scalar-atomics,+scalar-flat-scratch-insts,+scalar-stores,+sdwa,+sdwa-omod,+sdwa-scalar,+sdwa-sdst,+sramecc-support,+trap-handler,+unaligned-access-mode,+unaligned-buffer-access,+unaligned-ds-access,+vgpr-index-mode,+vop3p,-wavefrontsize16,-wavefrontsize32,+wavefrontsize64,+xnack-support" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { convergent noinline nounwind "amdgpu-flat-work-group-size"="1,1024" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+add-no-carry-insts,+aperture-regs,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+ds-src2-insts,+enable-ds128,+enable-prt-strict-null,+fast-denormal-f32,+fast-fmaf,+flat-address-space,+flat-for-global,+flat-global-insts,+flat-inst-offsets,+flat-scratch-insts,+fma-mix-insts,+fp64,+gcn3-encoding,+gfx7-gfx8-gfx9-insts,+gfx8-insts,+gfx9,+gfx9-insts,+half-rate-64-ops,+image-gather4-d16-bug,+int-clamp-insts,+inv-2pi-inline-imm,+ldsbankcount32,+load-store-opt,+localmemorysize65536,+mad-mac-f32-insts,+promote-alloca,+r128-a16,+s-memrealtime,+s-memtime-inst,+scalar-atomics,+scalar-flat-scratch-insts,+scalar-stores,+sdwa,+sdwa-omod,+sdwa-scalar,+sdwa-sdst,+sramecc-support,+trap-handler,+unaligned-access-mode,+unaligned-buffer-access,+unaligned-ds-access,+vgpr-index-mode,+vop3p,-wavefrontsize16,-wavefrontsize32,+wavefrontsize64,+xnack-support" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { convergent nounwind willreturn }
attributes #8 = { noinline nounwind "amdgpu-flat-work-group-size"="1,1024" "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx906" "target-features"="+16-bit-insts,+add-no-carry-insts,+aperture-regs,+ci-insts,+dl-insts,+dot1-insts,+dot2-insts,+dpp,+ds-src2-insts,+enable-ds128,+enable-prt-strict-null,+fast-denormal-f32,+fast-fmaf,+flat-address-space,+flat-for-global,+flat-global-insts,+flat-inst-offsets,+flat-scratch-insts,+fma-mix-insts,+fp64,+gcn3-encoding,+gfx7-gfx8-gfx9-insts,+gfx8-insts,+gfx9,+gfx9-insts,+half-rate-64-ops,+image-gather4-d16-bug,+int-clamp-insts,+inv-2pi-inline-imm,+ldsbankcount32,+load-store-opt,+localmemorysize65536,+mad-mac-f32-insts,+promote-alloca,+r128-a16,+s-memrealtime,+s-memtime-inst,+scalar-atomics,+scalar-flat-scratch-insts,+scalar-stores,+sdwa,+sdwa-omod,+sdwa-scalar,+sdwa-sdst,+sramecc-support,+trap-handler,+unaligned-access-mode,+unaligned-buffer-access,+unaligned-ds-access,+vgpr-index-mode,+vop3p,-wavefrontsize16,-wavefrontsize32,+wavefrontsize64,+xnack-support" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone speculatable willreturn }
attributes #10 = { convergent noinline norecurse nounwind optnone "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nosync nounwind willreturn }
attributes #12 = { convergent norecurse nounwind "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { convergent nounwind readnone willreturn }
attributes #14 = { norecurse nounwind readnone "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { convergent nofree norecurse nounwind "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { convergent norecurse nounwind "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { norecurse nounwind "amdgpu-unsafe-fp-atomics"="true" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind readonly }
attributes #21 = { nounwind readnone willreturn }
attributes #22 = { convergent nounwind }
attributes #23 = { convergent }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 12.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-4.2.0 21161 b204d7f0cae65b6cd4446eec50fc1fb675d582af)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"long", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i32 0, i32 1024}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!17, !13, i64 0}
!17 = !{!"", !13, i64 0, !13, i64 8, !18, i64 16, !5, i64 24, !5, i64 32, !5, i64 40}
!18 = !{!"hsa_signal_s", !5, i64 0}
!19 = !{!17, !5, i64 40}
!20 = !{!17, !13, i64 8}
!21 = !{i32 2509}
!22 = !{!"exec"}
!23 = !{!24, !15, i64 16}
!24 = !{!"", !5, i64 0, !5, i64 8, !15, i64 16, !15, i64 20}
!25 = !{!24, !5, i64 8}
!26 = !{!24, !15, i64 20}
!27 = !{!24, !5, i64 0}
!28 = !{!29, !5, i64 16}
!29 = !{!"amd_signal_s", !5, i64 0, !6, i64 8, !5, i64 16, !15, i64 24, !15, i64 28, !5, i64 32, !5, i64 40, !6, i64 48, !6, i64 56}
!30 = !{!29, !15, i64 24}
