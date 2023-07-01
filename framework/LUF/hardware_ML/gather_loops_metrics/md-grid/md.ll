; ModuleID = 'md.ll'
source_filename = "md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dvector_t = type { double, double, double }
%struct.ivector_t = type { i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @md(i32* %host_n_points, %struct.dvector_t* %host_force, %struct.dvector_t* %host_position, i32* %n_points, %struct.dvector_t* %force, %struct.dvector_t* %position) #0 {
entry:
  %b0 = alloca %struct.ivector_t, align 4
  %b1 = alloca %struct.ivector_t, align 4
  %p = alloca %struct.dvector_t, align 8
  %q = alloca %struct.dvector_t, align 8
  %0 = bitcast i32* %host_n_points to [4 x [4 x i32]]*
  %1 = bitcast %struct.dvector_t* %host_force to [4 x [4 x [10 x %struct.dvector_t]]]*
  %2 = bitcast %struct.dvector_t* %host_position to [4 x [4 x [10 x %struct.dvector_t]]]*
  %x = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  store i32 0, i32* %x, align 4
  %x246 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc245
  %y = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  store i32 0, i32* %y, align 4
  %y242 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  br label %for.body5

for.body5:                                        ; preds = %for.body, %for.inc241
  %z = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  store i32 0, i32* %z, align 4
  %z238 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  br label %for.body9

for.body9:                                        ; preds = %for.body5, %for.inc237
  %x10 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %3 = load i32, i32* %x10, align 4
  %cmp11 = icmp slt i32 %3, 1
  %x12 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %4 = load i32, i32* %x12, align 4
  %sub13 = add nsw i32 %4, -1
  %cond = select i1 %cmp11, i32 0, i32 %sub13
  %x14 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 0
  store i32 %cond, i32* %x14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc233, %for.body9
  %x16 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 0
  %5 = load i32, i32* %x16, align 4
  %x17 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %6 = load i32, i32* %x17, align 4
  %cmp18 = icmp sgt i32 %6, 2
  %x21 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %7 = load i32, i32* %x21, align 4
  %add22 = add nsw i32 %7, 2
  %cond24 = select i1 %cmp18, i32 4, i32 %add22
  %cmp25 = icmp slt i32 %5, %cond24
  br i1 %cmp25, label %loop_grid1_y, label %for.inc237

loop_grid1_y:                                     ; preds = %for.cond15
  %y27 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %8 = load i32, i32* %y27, align 4
  %cmp29 = icmp slt i32 %8, 1
  %y32 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %9 = load i32, i32* %y32, align 4
  %sub33 = add nsw i32 %9, -1
  %cond35 = select i1 %cmp29, i32 0, i32 %sub33
  %y36 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 1
  store i32 %cond35, i32* %y36, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc229, %loop_grid1_y
  %y38 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 1
  %10 = load i32, i32* %y38, align 4
  %y39 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %11 = load i32, i32* %y39, align 4
  %cmp41 = icmp sgt i32 %11, 2
  %y44 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %12 = load i32, i32* %y44, align 4
  %add45 = add nsw i32 %12, 2
  %cond47 = select i1 %cmp41, i32 4, i32 %add45
  %cmp48 = icmp slt i32 %10, %cond47
  br i1 %cmp48, label %loop_grid1_z, label %for.inc233

loop_grid1_z:                                     ; preds = %for.cond37
  %z50 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %13 = load i32, i32* %z50, align 4
  %cmp52 = icmp slt i32 %13, 1
  %z55 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %14 = load i32, i32* %z55, align 4
  %sub56 = add nsw i32 %14, -1
  %cond58 = select i1 %cmp52, i32 0, i32 %sub56
  %z59 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 2
  store i32 %cond58, i32* %z59, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc225, %loop_grid1_z
  %z61 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 2
  %15 = load i32, i32* %z61, align 4
  %z62 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %16 = load i32, i32* %z62, align 4
  %cmp64 = icmp sgt i32 %16, 2
  %z67 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %17 = load i32, i32* %z67, align 4
  %add68 = add nsw i32 %17, 2
  %cond70 = select i1 %cmp64, i32 4, i32 %add68
  %cmp71 = icmp slt i32 %15, %cond70
  br i1 %cmp71, label %for.body72, label %for.inc229

for.body72:                                       ; preds = %for.cond60
  %x73 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 0
  %18 = load i32, i32* %x73, align 4
  %idxprom = sext i32 %18 to i64
  %y74 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 1
  %19 = load i32, i32* %y74, align 4
  %idxprom75 = sext i32 %19 to i64
  %z77 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 2
  %20 = load i32, i32* %z77, align 4
  %idxprom78 = sext i32 %20 to i64
  %x80 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 0
  %21 = load i32, i32* %x80, align 4
  %idxprom81 = sext i32 %21 to i64
  %y83 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 1
  %22 = load i32, i32* %y83, align 4
  %idxprom84 = sext i32 %22 to i64
  %z86 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 2
  %23 = load i32, i32* %z86, align 4
  %idxprom87 = sext i32 %23 to i64
  %arrayidx88 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %0, i64 %idxprom81, i64 %idxprom84, i64 %idxprom87
  %24 = load i32, i32* %arrayidx88, align 4
  %x90 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %25 = load i32, i32* %x90, align 4
  %idxprom9111 = sext i32 %25 to i64
  %y93 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %26 = load i32, i32* %y93, align 4
  %idxprom9413 = sext i32 %26 to i64
  %z96 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %27 = load i32, i32* %z96, align 4
  %idxprom9715 = sext i32 %27 to i64
  %arrayidx9816 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %0, i64 %idxprom9111, i64 %idxprom9413, i64 %idxprom9715
  %28 = load i32, i32* %arrayidx9816, align 4
  %cmp9917 = icmp sgt i32 %28, 0
  br i1 %cmp9917, label %for.body100.preheader, label %for.inc225

for.body100.preheader:                            ; preds = %for.body72
  br label %for.body100

for.body100:                                      ; preds = %for.body100.preheader, %for.end
  %indvars.iv22 = phi i64 [ 0, %for.body100.preheader ], [ %indvars.iv.next23, %for.end ]
  %x101 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %29 = load i32, i32* %x101, align 4
  %idxprom102 = sext i32 %29 to i64
  %y104 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %30 = load i32, i32* %y104, align 4
  %idxprom105 = sext i32 %30 to i64
  %z107 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %31 = load i32, i32* %z107, align 4
  %idxprom108 = sext i32 %31 to i64
  %arrayidx111 = getelementptr inbounds [4 x [4 x [10 x %struct.dvector_t]]], [4 x [4 x [10 x %struct.dvector_t]]]* %2, i64 %idxprom102, i64 %idxprom105, i64 %idxprom108, i64 %indvars.iv22
  %32 = bitcast %struct.dvector_t* %p to i8*
  %33 = bitcast %struct.dvector_t* %arrayidx111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %32, i8* nonnull align 8 dereferenceable(24) %33, i64 24, i1 false)
  %x112 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %34 = load i32, i32* %x112, align 4
  %idxprom113 = sext i32 %34 to i64
  %y115 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %35 = load i32, i32* %y115, align 4
  %idxprom116 = sext i32 %35 to i64
  %z118 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %36 = load i32, i32* %z118, align 4
  %idxprom119 = sext i32 %36 to i64
  %x123 = getelementptr inbounds [4 x [4 x [10 x %struct.dvector_t]]], [4 x [4 x [10 x %struct.dvector_t]]]* %1, i64 %idxprom113, i64 %idxprom116, i64 %idxprom119, i64 %indvars.iv22, i32 0
  %37 = load double, double* %x123, align 8
  %x124 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %38 = load i32, i32* %x124, align 4
  %idxprom125 = sext i32 %38 to i64
  %y127 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %39 = load i32, i32* %y127, align 4
  %idxprom128 = sext i32 %39 to i64
  %z130 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %40 = load i32, i32* %z130, align 4
  %idxprom131 = sext i32 %40 to i64
  %y135 = getelementptr inbounds [4 x [4 x [10 x %struct.dvector_t]]], [4 x [4 x [10 x %struct.dvector_t]]]* %1, i64 %idxprom125, i64 %idxprom128, i64 %idxprom131, i64 %indvars.iv22, i32 1
  %41 = load double, double* %y135, align 8
  %x136 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %42 = load i32, i32* %x136, align 4
  %idxprom137 = sext i32 %42 to i64
  %y139 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %43 = load i32, i32* %y139, align 4
  %idxprom140 = sext i32 %43 to i64
  %z142 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %44 = load i32, i32* %z142, align 4
  %idxprom143 = sext i32 %44 to i64
  %z147 = getelementptr inbounds [4 x [4 x [10 x %struct.dvector_t]]], [4 x [4 x [10 x %struct.dvector_t]]]* %1, i64 %idxprom137, i64 %idxprom140, i64 %idxprom143, i64 %indvars.iv22, i32 2
  %45 = load double, double* %z147, align 8
  %cmp1491 = icmp sgt i32 %24, 0
  br i1 %cmp1491, label %for.body150.preheader, label %for.end

for.body150.preheader:                            ; preds = %for.body100
  %wide.trip.count = zext i32 %24 to i64
  br label %for.body150

for.body150:                                      ; preds = %for.body150.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body150.preheader ], [ %indvars.iv.next, %for.inc ]
  %sum_z.07 = phi double [ %sum_z.1, %for.inc ], [ %45, %for.body150.preheader ]
  %sum_y.05 = phi double [ %sum_y.1, %for.inc ], [ %41, %for.body150.preheader ]
  %sum_x.03 = phi double [ %sum_x.1, %for.inc ], [ %37, %for.body150.preheader ]
  %add.ptr = getelementptr inbounds [4 x [4 x [10 x %struct.dvector_t]]], [4 x [4 x [10 x %struct.dvector_t]]]* %2, i64 %idxprom, i64 %idxprom75, i64 %idxprom78, i64 %indvars.iv
  %46 = bitcast %struct.dvector_t* %q to i8*
  %47 = bitcast %struct.dvector_t* %add.ptr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %46, i8* nonnull align 8 dereferenceable(24) %47, i64 24, i1 false)
  %x151 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %q, i64 0, i32 0
  %48 = load double, double* %x151, align 8
  %x152 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %p, i64 0, i32 0
  %49 = load double, double* %x152, align 8
  %cmp153 = fcmp une double %48, %49
  br i1 %cmp153, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body150
  %y154 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %q, i64 0, i32 1
  %50 = load double, double* %y154, align 8
  %y155 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %p, i64 0, i32 1
  %51 = load double, double* %y155, align 8
  %cmp156 = fcmp une double %50, %51
  br i1 %cmp156, label %if.then, label %lor.lhs.false157

lor.lhs.false157:                                 ; preds = %lor.lhs.false
  %z158 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %q, i64 0, i32 2
  %52 = load double, double* %z158, align 8
  %z159 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %p, i64 0, i32 2
  %53 = load double, double* %z159, align 8
  %cmp160 = fcmp une double %52, %53
  br i1 %cmp160, label %if.then, label %for.inc

if.then:                                          ; preds = %lor.lhs.false157, %lor.lhs.false, %for.body150
  %x161 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %p, i64 0, i32 0
  %54 = load double, double* %x161, align 8
  %x162 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %q, i64 0, i32 0
  %55 = load double, double* %x162, align 8
  %sub163 = fsub double %54, %55
  %y164 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %p, i64 0, i32 1
  %56 = load double, double* %y164, align 8
  %y165 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %q, i64 0, i32 1
  %57 = load double, double* %y165, align 8
  %sub166 = fsub double %56, %57
  %z167 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %p, i64 0, i32 2
  %58 = load double, double* %z167, align 8
  %z168 = getelementptr inbounds %struct.dvector_t, %struct.dvector_t* %q, i64 0, i32 2
  %59 = load double, double* %z168, align 8
  %sub169 = fsub double %58, %59
  %mul = fmul double %sub163, %sub163
  %mul170 = fmul double %sub166, %sub166
  %add171 = fadd double %mul, %mul170
  %mul172 = fmul double %sub169, %sub169
  %add173 = fadd double %add171, %mul172
  %div = fdiv double 1.000000e+00, %add173
  %mul174 = fmul double %div, %div
  %mul175 = fmul double %mul174, %div
  %mul176 = fmul double %mul175, 1.500000e+00
  %sub177 = fadd double %mul176, -2.000000e+00
  %mul178 = fmul double %mul175, %sub177
  %mul179 = fmul double %div, %mul178
  %mul180 = fmul double %mul179, %sub163
  %add181 = fadd double %sum_x.03, %mul180
  %mul182 = fmul double %mul179, %sub166
  %add183 = fadd double %sum_y.05, %mul182
  %mul184 = fmul double %mul179, %sub169
  %add185 = fadd double %sum_z.07, %mul184
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false157, %if.then
  %sum_x.1 = phi double [ %add181, %if.then ], [ %sum_x.03, %lor.lhs.false157 ]
  %sum_y.1 = phi double [ %add183, %if.then ], [ %sum_y.05, %lor.lhs.false157 ]
  %sum_z.1 = phi double [ %add185, %if.then ], [ %sum_z.07, %lor.lhs.false157 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body150, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %sum_x.0.lcssa.ph = phi double [ %sum_x.1, %for.inc ]
  %sum_y.0.lcssa.ph = phi double [ %sum_y.1, %for.inc ]
  %sum_z.0.lcssa.ph = phi double [ %sum_z.1, %for.inc ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body100
  %sum_x.0.lcssa = phi double [ %37, %for.body100 ], [ %sum_x.0.lcssa.ph, %for.end.loopexit ]
  %sum_y.0.lcssa = phi double [ %41, %for.body100 ], [ %sum_y.0.lcssa.ph, %for.end.loopexit ]
  %sum_z.0.lcssa = phi double [ %45, %for.body100 ], [ %sum_z.0.lcssa.ph, %for.end.loopexit ]
  %x186 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %60 = load i32, i32* %x186, align 4
  %idxprom187 = sext i32 %60 to i64
  %y189 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %61 = load i32, i32* %y189, align 4
  %idxprom190 = sext i32 %61 to i64
  %z192 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %62 = load i32, i32* %z192, align 4
  %idxprom193 = sext i32 %62 to i64
  %x197 = getelementptr inbounds [4 x [4 x [10 x %struct.dvector_t]]], [4 x [4 x [10 x %struct.dvector_t]]]* %1, i64 %idxprom187, i64 %idxprom190, i64 %idxprom193, i64 %indvars.iv22, i32 0
  store double %sum_x.0.lcssa, double* %x197, align 8
  %x198 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %63 = load i32, i32* %x198, align 4
  %idxprom199 = sext i32 %63 to i64
  %y201 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %64 = load i32, i32* %y201, align 4
  %idxprom202 = sext i32 %64 to i64
  %z204 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %65 = load i32, i32* %z204, align 4
  %idxprom205 = sext i32 %65 to i64
  %y209 = getelementptr inbounds [4 x [4 x [10 x %struct.dvector_t]]], [4 x [4 x [10 x %struct.dvector_t]]]* %1, i64 %idxprom199, i64 %idxprom202, i64 %idxprom205, i64 %indvars.iv22, i32 1
  store double %sum_y.0.lcssa, double* %y209, align 8
  %x210 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 0
  %66 = load i32, i32* %x210, align 4
  %idxprom211 = sext i32 %66 to i64
  %y213 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 1
  %67 = load i32, i32* %y213, align 4
  %idxprom214 = sext i32 %67 to i64
  %z216 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b0, i64 0, i32 2
  %68 = load i32, i32* %z216, align 4
  %idxprom217 = sext i32 %68 to i64
  %z221 = getelementptr inbounds [4 x [4 x [10 x %struct.dvector_t]]], [4 x [4 x [10 x %struct.dvector_t]]]* %1, i64 %idxprom211, i64 %idxprom214, i64 %idxprom217, i64 %indvars.iv22, i32 2
  store double %sum_z.0.lcssa, double* %z221, align 8
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %69 = load i32, i32* %x90, align 4
  %idxprom91 = sext i32 %69 to i64
  %70 = load i32, i32* %y93, align 4
  %idxprom94 = sext i32 %70 to i64
  %71 = load i32, i32* %z96, align 4
  %idxprom97 = sext i32 %71 to i64
  %arrayidx98 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %0, i64 %idxprom91, i64 %idxprom94, i64 %idxprom97
  %72 = load i32, i32* %arrayidx98, align 4
  %73 = sext i32 %72 to i64
  %cmp99 = icmp slt i64 %indvars.iv.next23, %73
  br i1 %cmp99, label %for.body100, label %for.inc225.loopexit

for.inc225.loopexit:                              ; preds = %for.end
  br label %for.inc225

for.inc225:                                       ; preds = %for.inc225.loopexit, %for.body72
  %z226 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 2
  %74 = load i32, i32* %z226, align 4
  %inc227 = add nsw i32 %74, 1
  store i32 %inc227, i32* %z226, align 4
  br label %for.cond60

for.inc229:                                       ; preds = %for.cond60
  %y230 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 1
  %75 = load i32, i32* %y230, align 4
  %inc231 = add nsw i32 %75, 1
  store i32 %inc231, i32* %y230, align 4
  br label %for.cond37

for.inc233:                                       ; preds = %for.cond37
  %x234 = getelementptr inbounds %struct.ivector_t, %struct.ivector_t* %b1, i64 0, i32 0
  %76 = load i32, i32* %x234, align 4
  %inc235 = add nsw i32 %76, 1
  store i32 %inc235, i32* %x234, align 4
  br label %for.cond15

for.inc237:                                       ; preds = %for.cond15
  %77 = load i32, i32* %z238, align 4
  %inc239 = add nsw i32 %77, 1
  store i32 %inc239, i32* %z238, align 4
  %cmp8 = icmp slt i32 %77, 3
  br i1 %cmp8, label %for.body9, label %for.inc241

for.inc241:                                       ; preds = %for.inc237
  %78 = load i32, i32* %y242, align 4
  %inc243 = add nsw i32 %78, 1
  store i32 %inc243, i32* %y242, align 4
  %cmp4 = icmp slt i32 %78, 3
  br i1 %cmp4, label %for.body5, label %for.inc245

for.inc245:                                       ; preds = %for.inc241
  %79 = load i32, i32* %x246, align 4
  %inc247 = add nsw i32 %79, 1
  store i32 %inc247, i32* %x246, align 4
  %cmp = icmp slt i32 %79, 3
  br i1 %cmp, label %for.body, label %for.end248

for.end248:                                       ; preds = %for.inc245
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
