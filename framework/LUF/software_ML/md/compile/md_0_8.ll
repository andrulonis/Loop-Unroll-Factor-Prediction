; ModuleID = 'md_0_8.ll'
source_filename = "md_0_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"total pairs - %i \0A\00", align 1
@__const.main.probSizes = private unnamed_addr constant [4 x i32] [i32 12288, i32 24576, i32 36864, i32 73728], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"after, X:%i Y:%i Z%i \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @md(i32* %d_force_x, i32* %d_force_y, i32* %d_force_z, i32* %position_x, i32* %position_y, i32* %position_z, i32* %NL) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.end.7, %entry
  %indvars.iv7 = phi i64 [ 0, %entry ], [ %indvars.iv.next8.7, %for.end.7 ]
  %arrayidx = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv7
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv7
  %1 = load i32, i32* %arrayidx2, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv7
  %2 = load i32, i32* %arrayidx4, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.body, %for.body7
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body7 ]
  %fz.04 = phi i32 [ 0, %for.body ], [ %add34, %for.body7 ]
  %fy.03 = phi i32 [ 0, %for.body ], [ %add32, %for.body7 ]
  %fx.02 = phi i32 [ 0, %for.body ], [ %add30, %for.body7 ]
  %3 = shl nsw i64 %indvars.iv7, 5
  %4 = add nuw nsw i64 %3, %indvars.iv
  %arrayidx9 = getelementptr inbounds i32, i32* %NL, i64 %4
  %5 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %5 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10
  %6 = load i32, i32* %arrayidx11, align 4
  %idxprom12 = sext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12
  %7 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14
  %8 = load i32, i32* %arrayidx15, align 4
  %sub = sub nsw i32 %0, %6
  %sub16 = sub nsw i32 %1, %7
  %sub17 = sub nsw i32 %2, %8
  %mul18 = mul nsw i32 %sub, %sub
  %mul19 = mul nsw i32 %sub16, %sub16
  %mul20 = mul nsw i32 %sub17, %sub17
  %add21 = add nuw nsw i32 %mul18, %mul19
  %add22 = add nuw nsw i32 %add21, %mul20
  %mul23 = mul nsw i32 %add22, %add22
  %mul24 = mul nsw i32 %mul23, %add22
  %mul25 = mul nsw i32 %add22, %mul24
  %mul26 = mul nsw i32 %mul24, 15
  %sub27 = add nsw i32 %mul26, -20
  %mul28 = mul nsw i32 %mul25, %sub27
  %mul29 = mul nsw i32 %sub, %mul28
  %add30 = add nsw i32 %fx.02, %mul29
  %mul31 = mul nsw i32 %sub16, %mul28
  %add32 = add nsw i32 %fy.03, %mul31
  %mul33 = mul nsw i32 %sub17, %mul28
  %add34 = add nsw i32 %fz.04, %mul33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.body7, label %for.end, !llvm.loop !2

for.end:                                          ; preds = %for.body7
  %add30.lcssa = phi i32 [ %add30, %for.body7 ]
  %add32.lcssa = phi i32 [ %add32, %for.body7 ]
  %add34.lcssa = phi i32 [ %add34, %for.body7 ]
  %arrayidx36 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv7
  store i32 %add30.lcssa, i32* %arrayidx36, align 4
  %arrayidx38 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv7
  store i32 %add32.lcssa, i32* %arrayidx38, align 4
  %arrayidx40 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv7
  store i32 %add34.lcssa, i32* %arrayidx40, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv.next8
  %9 = load i32, i32* %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv.next8
  %10 = load i32, i32* %arrayidx2.1, align 4
  %arrayidx4.1 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv.next8
  %11 = load i32, i32* %arrayidx4.1, align 4
  br label %for.body7.1

for.end43:                                        ; preds = %for.end.7
  ret void

for.body7.1:                                      ; preds = %for.body7.1, %for.end
  %indvars.iv.1 = phi i64 [ 0, %for.end ], [ %indvars.iv.next.1, %for.body7.1 ]
  %fz.04.1 = phi i32 [ 0, %for.end ], [ %add34.1, %for.body7.1 ]
  %fy.03.1 = phi i32 [ 0, %for.end ], [ %add32.1, %for.body7.1 ]
  %fx.02.1 = phi i32 [ 0, %for.end ], [ %add30.1, %for.body7.1 ]
  %12 = shl nsw i64 %indvars.iv.next8, 5
  %13 = add nuw nsw i64 %12, %indvars.iv.1
  %arrayidx9.1 = getelementptr inbounds i32, i32* %NL, i64 %13
  %14 = load i32, i32* %arrayidx9.1, align 4
  %idxprom10.1 = sext i32 %14 to i64
  %arrayidx11.1 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.1
  %15 = load i32, i32* %arrayidx11.1, align 4
  %idxprom12.1 = sext i32 %14 to i64
  %arrayidx13.1 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.1
  %16 = load i32, i32* %arrayidx13.1, align 4
  %idxprom14.1 = sext i32 %14 to i64
  %arrayidx15.1 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.1
  %17 = load i32, i32* %arrayidx15.1, align 4
  %sub.1 = sub nsw i32 %9, %15
  %sub16.1 = sub nsw i32 %10, %16
  %sub17.1 = sub nsw i32 %11, %17
  %mul18.1 = mul nsw i32 %sub.1, %sub.1
  %mul19.1 = mul nsw i32 %sub16.1, %sub16.1
  %mul20.1 = mul nsw i32 %sub17.1, %sub17.1
  %add21.1 = add nuw nsw i32 %mul18.1, %mul19.1
  %add22.1 = add nuw nsw i32 %add21.1, %mul20.1
  %mul23.1 = mul nsw i32 %add22.1, %add22.1
  %mul24.1 = mul nsw i32 %mul23.1, %add22.1
  %mul25.1 = mul nsw i32 %add22.1, %mul24.1
  %mul26.1 = mul nsw i32 %mul24.1, 15
  %sub27.1 = add nsw i32 %mul26.1, -20
  %mul28.1 = mul nsw i32 %mul25.1, %sub27.1
  %mul29.1 = mul nsw i32 %sub.1, %mul28.1
  %add30.1 = add nsw i32 %fx.02.1, %mul29.1
  %mul31.1 = mul nsw i32 %sub16.1, %mul28.1
  %add32.1 = add nsw i32 %fy.03.1, %mul31.1
  %mul33.1 = mul nsw i32 %sub17.1, %mul28.1
  %add34.1 = add nsw i32 %fz.04.1, %mul33.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 1024
  br i1 %exitcond.1, label %for.body7.1, label %for.end.1, !llvm.loop !2

for.end.1:                                        ; preds = %for.body7.1
  %add30.lcssa.1 = phi i32 [ %add30.1, %for.body7.1 ]
  %add32.lcssa.1 = phi i32 [ %add32.1, %for.body7.1 ]
  %add34.lcssa.1 = phi i32 [ %add34.1, %for.body7.1 ]
  %arrayidx36.1 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv.next8
  store i32 %add30.lcssa.1, i32* %arrayidx36.1, align 4
  %arrayidx38.1 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv.next8
  store i32 %add32.lcssa.1, i32* %arrayidx38.1, align 4
  %arrayidx40.1 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv.next8
  store i32 %add34.lcssa.1, i32* %arrayidx40.1, align 4
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv.next8, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv.next8.1
  %18 = load i32, i32* %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv.next8.1
  %19 = load i32, i32* %arrayidx2.2, align 4
  %arrayidx4.2 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv.next8.1
  %20 = load i32, i32* %arrayidx4.2, align 4
  br label %for.body7.2

for.body7.2:                                      ; preds = %for.body7.2, %for.end.1
  %indvars.iv.2 = phi i64 [ 0, %for.end.1 ], [ %indvars.iv.next.2, %for.body7.2 ]
  %fz.04.2 = phi i32 [ 0, %for.end.1 ], [ %add34.2, %for.body7.2 ]
  %fy.03.2 = phi i32 [ 0, %for.end.1 ], [ %add32.2, %for.body7.2 ]
  %fx.02.2 = phi i32 [ 0, %for.end.1 ], [ %add30.2, %for.body7.2 ]
  %21 = shl nsw i64 %indvars.iv.next8.1, 5
  %22 = add nuw nsw i64 %21, %indvars.iv.2
  %arrayidx9.2 = getelementptr inbounds i32, i32* %NL, i64 %22
  %23 = load i32, i32* %arrayidx9.2, align 4
  %idxprom10.2 = sext i32 %23 to i64
  %arrayidx11.2 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.2
  %24 = load i32, i32* %arrayidx11.2, align 4
  %idxprom12.2 = sext i32 %23 to i64
  %arrayidx13.2 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.2
  %25 = load i32, i32* %arrayidx13.2, align 4
  %idxprom14.2 = sext i32 %23 to i64
  %arrayidx15.2 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.2
  %26 = load i32, i32* %arrayidx15.2, align 4
  %sub.2 = sub nsw i32 %18, %24
  %sub16.2 = sub nsw i32 %19, %25
  %sub17.2 = sub nsw i32 %20, %26
  %mul18.2 = mul nsw i32 %sub.2, %sub.2
  %mul19.2 = mul nsw i32 %sub16.2, %sub16.2
  %mul20.2 = mul nsw i32 %sub17.2, %sub17.2
  %add21.2 = add nuw nsw i32 %mul18.2, %mul19.2
  %add22.2 = add nuw nsw i32 %add21.2, %mul20.2
  %mul23.2 = mul nsw i32 %add22.2, %add22.2
  %mul24.2 = mul nsw i32 %mul23.2, %add22.2
  %mul25.2 = mul nsw i32 %add22.2, %mul24.2
  %mul26.2 = mul nsw i32 %mul24.2, 15
  %sub27.2 = add nsw i32 %mul26.2, -20
  %mul28.2 = mul nsw i32 %mul25.2, %sub27.2
  %mul29.2 = mul nsw i32 %sub.2, %mul28.2
  %add30.2 = add nsw i32 %fx.02.2, %mul29.2
  %mul31.2 = mul nsw i32 %sub16.2, %mul28.2
  %add32.2 = add nsw i32 %fy.03.2, %mul31.2
  %mul33.2 = mul nsw i32 %sub17.2, %mul28.2
  %add34.2 = add nsw i32 %fz.04.2, %mul33.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, 1024
  br i1 %exitcond.2, label %for.body7.2, label %for.end.2, !llvm.loop !2

for.end.2:                                        ; preds = %for.body7.2
  %add30.lcssa.2 = phi i32 [ %add30.2, %for.body7.2 ]
  %add32.lcssa.2 = phi i32 [ %add32.2, %for.body7.2 ]
  %add34.lcssa.2 = phi i32 [ %add34.2, %for.body7.2 ]
  %arrayidx36.2 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv.next8.1
  store i32 %add30.lcssa.2, i32* %arrayidx36.2, align 4
  %arrayidx38.2 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv.next8.1
  store i32 %add32.lcssa.2, i32* %arrayidx38.2, align 4
  %arrayidx40.2 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv.next8.1
  store i32 %add34.lcssa.2, i32* %arrayidx40.2, align 4
  %indvars.iv.next8.2 = add nuw nsw i64 %indvars.iv.next8.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv.next8.2
  %27 = load i32, i32* %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv.next8.2
  %28 = load i32, i32* %arrayidx2.3, align 4
  %arrayidx4.3 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv.next8.2
  %29 = load i32, i32* %arrayidx4.3, align 4
  br label %for.body7.3

for.body7.3:                                      ; preds = %for.body7.3, %for.end.2
  %indvars.iv.3 = phi i64 [ 0, %for.end.2 ], [ %indvars.iv.next.3, %for.body7.3 ]
  %fz.04.3 = phi i32 [ 0, %for.end.2 ], [ %add34.3, %for.body7.3 ]
  %fy.03.3 = phi i32 [ 0, %for.end.2 ], [ %add32.3, %for.body7.3 ]
  %fx.02.3 = phi i32 [ 0, %for.end.2 ], [ %add30.3, %for.body7.3 ]
  %30 = shl nsw i64 %indvars.iv.next8.2, 5
  %31 = add nuw nsw i64 %30, %indvars.iv.3
  %arrayidx9.3 = getelementptr inbounds i32, i32* %NL, i64 %31
  %32 = load i32, i32* %arrayidx9.3, align 4
  %idxprom10.3 = sext i32 %32 to i64
  %arrayidx11.3 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.3
  %33 = load i32, i32* %arrayidx11.3, align 4
  %idxprom12.3 = sext i32 %32 to i64
  %arrayidx13.3 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.3
  %34 = load i32, i32* %arrayidx13.3, align 4
  %idxprom14.3 = sext i32 %32 to i64
  %arrayidx15.3 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.3
  %35 = load i32, i32* %arrayidx15.3, align 4
  %sub.3 = sub nsw i32 %27, %33
  %sub16.3 = sub nsw i32 %28, %34
  %sub17.3 = sub nsw i32 %29, %35
  %mul18.3 = mul nsw i32 %sub.3, %sub.3
  %mul19.3 = mul nsw i32 %sub16.3, %sub16.3
  %mul20.3 = mul nsw i32 %sub17.3, %sub17.3
  %add21.3 = add nuw nsw i32 %mul18.3, %mul19.3
  %add22.3 = add nuw nsw i32 %add21.3, %mul20.3
  %mul23.3 = mul nsw i32 %add22.3, %add22.3
  %mul24.3 = mul nsw i32 %mul23.3, %add22.3
  %mul25.3 = mul nsw i32 %add22.3, %mul24.3
  %mul26.3 = mul nsw i32 %mul24.3, 15
  %sub27.3 = add nsw i32 %mul26.3, -20
  %mul28.3 = mul nsw i32 %mul25.3, %sub27.3
  %mul29.3 = mul nsw i32 %sub.3, %mul28.3
  %add30.3 = add nsw i32 %fx.02.3, %mul29.3
  %mul31.3 = mul nsw i32 %sub16.3, %mul28.3
  %add32.3 = add nsw i32 %fy.03.3, %mul31.3
  %mul33.3 = mul nsw i32 %sub17.3, %mul28.3
  %add34.3 = add nsw i32 %fz.04.3, %mul33.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, 1024
  br i1 %exitcond.3, label %for.body7.3, label %for.end.3, !llvm.loop !2

for.end.3:                                        ; preds = %for.body7.3
  %add30.lcssa.3 = phi i32 [ %add30.3, %for.body7.3 ]
  %add32.lcssa.3 = phi i32 [ %add32.3, %for.body7.3 ]
  %add34.lcssa.3 = phi i32 [ %add34.3, %for.body7.3 ]
  %arrayidx36.3 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv.next8.2
  store i32 %add30.lcssa.3, i32* %arrayidx36.3, align 4
  %arrayidx38.3 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv.next8.2
  store i32 %add32.lcssa.3, i32* %arrayidx38.3, align 4
  %arrayidx40.3 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv.next8.2
  store i32 %add34.lcssa.3, i32* %arrayidx40.3, align 4
  %indvars.iv.next8.3 = add nuw nsw i64 %indvars.iv.next8.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv.next8.3
  %36 = load i32, i32* %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv.next8.3
  %37 = load i32, i32* %arrayidx2.4, align 4
  %arrayidx4.4 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv.next8.3
  %38 = load i32, i32* %arrayidx4.4, align 4
  br label %for.body7.4

for.body7.4:                                      ; preds = %for.body7.4, %for.end.3
  %indvars.iv.4 = phi i64 [ 0, %for.end.3 ], [ %indvars.iv.next.4, %for.body7.4 ]
  %fz.04.4 = phi i32 [ 0, %for.end.3 ], [ %add34.4, %for.body7.4 ]
  %fy.03.4 = phi i32 [ 0, %for.end.3 ], [ %add32.4, %for.body7.4 ]
  %fx.02.4 = phi i32 [ 0, %for.end.3 ], [ %add30.4, %for.body7.4 ]
  %39 = shl nsw i64 %indvars.iv.next8.3, 5
  %40 = add nuw nsw i64 %39, %indvars.iv.4
  %arrayidx9.4 = getelementptr inbounds i32, i32* %NL, i64 %40
  %41 = load i32, i32* %arrayidx9.4, align 4
  %idxprom10.4 = sext i32 %41 to i64
  %arrayidx11.4 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.4
  %42 = load i32, i32* %arrayidx11.4, align 4
  %idxprom12.4 = sext i32 %41 to i64
  %arrayidx13.4 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.4
  %43 = load i32, i32* %arrayidx13.4, align 4
  %idxprom14.4 = sext i32 %41 to i64
  %arrayidx15.4 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.4
  %44 = load i32, i32* %arrayidx15.4, align 4
  %sub.4 = sub nsw i32 %36, %42
  %sub16.4 = sub nsw i32 %37, %43
  %sub17.4 = sub nsw i32 %38, %44
  %mul18.4 = mul nsw i32 %sub.4, %sub.4
  %mul19.4 = mul nsw i32 %sub16.4, %sub16.4
  %mul20.4 = mul nsw i32 %sub17.4, %sub17.4
  %add21.4 = add nuw nsw i32 %mul18.4, %mul19.4
  %add22.4 = add nuw nsw i32 %add21.4, %mul20.4
  %mul23.4 = mul nsw i32 %add22.4, %add22.4
  %mul24.4 = mul nsw i32 %mul23.4, %add22.4
  %mul25.4 = mul nsw i32 %add22.4, %mul24.4
  %mul26.4 = mul nsw i32 %mul24.4, 15
  %sub27.4 = add nsw i32 %mul26.4, -20
  %mul28.4 = mul nsw i32 %mul25.4, %sub27.4
  %mul29.4 = mul nsw i32 %sub.4, %mul28.4
  %add30.4 = add nsw i32 %fx.02.4, %mul29.4
  %mul31.4 = mul nsw i32 %sub16.4, %mul28.4
  %add32.4 = add nsw i32 %fy.03.4, %mul31.4
  %mul33.4 = mul nsw i32 %sub17.4, %mul28.4
  %add34.4 = add nsw i32 %fz.04.4, %mul33.4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4 = icmp ne i64 %indvars.iv.next.4, 1024
  br i1 %exitcond.4, label %for.body7.4, label %for.end.4, !llvm.loop !2

for.end.4:                                        ; preds = %for.body7.4
  %add30.lcssa.4 = phi i32 [ %add30.4, %for.body7.4 ]
  %add32.lcssa.4 = phi i32 [ %add32.4, %for.body7.4 ]
  %add34.lcssa.4 = phi i32 [ %add34.4, %for.body7.4 ]
  %arrayidx36.4 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv.next8.3
  store i32 %add30.lcssa.4, i32* %arrayidx36.4, align 4
  %arrayidx38.4 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv.next8.3
  store i32 %add32.lcssa.4, i32* %arrayidx38.4, align 4
  %arrayidx40.4 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv.next8.3
  store i32 %add34.lcssa.4, i32* %arrayidx40.4, align 4
  %indvars.iv.next8.4 = add nuw nsw i64 %indvars.iv.next8.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv.next8.4
  %45 = load i32, i32* %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv.next8.4
  %46 = load i32, i32* %arrayidx2.5, align 4
  %arrayidx4.5 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv.next8.4
  %47 = load i32, i32* %arrayidx4.5, align 4
  br label %for.body7.5

for.body7.5:                                      ; preds = %for.body7.5, %for.end.4
  %indvars.iv.5 = phi i64 [ 0, %for.end.4 ], [ %indvars.iv.next.5, %for.body7.5 ]
  %fz.04.5 = phi i32 [ 0, %for.end.4 ], [ %add34.5, %for.body7.5 ]
  %fy.03.5 = phi i32 [ 0, %for.end.4 ], [ %add32.5, %for.body7.5 ]
  %fx.02.5 = phi i32 [ 0, %for.end.4 ], [ %add30.5, %for.body7.5 ]
  %48 = shl nsw i64 %indvars.iv.next8.4, 5
  %49 = add nuw nsw i64 %48, %indvars.iv.5
  %arrayidx9.5 = getelementptr inbounds i32, i32* %NL, i64 %49
  %50 = load i32, i32* %arrayidx9.5, align 4
  %idxprom10.5 = sext i32 %50 to i64
  %arrayidx11.5 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.5
  %51 = load i32, i32* %arrayidx11.5, align 4
  %idxprom12.5 = sext i32 %50 to i64
  %arrayidx13.5 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.5
  %52 = load i32, i32* %arrayidx13.5, align 4
  %idxprom14.5 = sext i32 %50 to i64
  %arrayidx15.5 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.5
  %53 = load i32, i32* %arrayidx15.5, align 4
  %sub.5 = sub nsw i32 %45, %51
  %sub16.5 = sub nsw i32 %46, %52
  %sub17.5 = sub nsw i32 %47, %53
  %mul18.5 = mul nsw i32 %sub.5, %sub.5
  %mul19.5 = mul nsw i32 %sub16.5, %sub16.5
  %mul20.5 = mul nsw i32 %sub17.5, %sub17.5
  %add21.5 = add nuw nsw i32 %mul18.5, %mul19.5
  %add22.5 = add nuw nsw i32 %add21.5, %mul20.5
  %mul23.5 = mul nsw i32 %add22.5, %add22.5
  %mul24.5 = mul nsw i32 %mul23.5, %add22.5
  %mul25.5 = mul nsw i32 %add22.5, %mul24.5
  %mul26.5 = mul nsw i32 %mul24.5, 15
  %sub27.5 = add nsw i32 %mul26.5, -20
  %mul28.5 = mul nsw i32 %mul25.5, %sub27.5
  %mul29.5 = mul nsw i32 %sub.5, %mul28.5
  %add30.5 = add nsw i32 %fx.02.5, %mul29.5
  %mul31.5 = mul nsw i32 %sub16.5, %mul28.5
  %add32.5 = add nsw i32 %fy.03.5, %mul31.5
  %mul33.5 = mul nsw i32 %sub17.5, %mul28.5
  %add34.5 = add nsw i32 %fz.04.5, %mul33.5
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5 = icmp ne i64 %indvars.iv.next.5, 1024
  br i1 %exitcond.5, label %for.body7.5, label %for.end.5, !llvm.loop !2

for.end.5:                                        ; preds = %for.body7.5
  %add30.lcssa.5 = phi i32 [ %add30.5, %for.body7.5 ]
  %add32.lcssa.5 = phi i32 [ %add32.5, %for.body7.5 ]
  %add34.lcssa.5 = phi i32 [ %add34.5, %for.body7.5 ]
  %arrayidx36.5 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv.next8.4
  store i32 %add30.lcssa.5, i32* %arrayidx36.5, align 4
  %arrayidx38.5 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv.next8.4
  store i32 %add32.lcssa.5, i32* %arrayidx38.5, align 4
  %arrayidx40.5 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv.next8.4
  store i32 %add34.lcssa.5, i32* %arrayidx40.5, align 4
  %indvars.iv.next8.5 = add nuw nsw i64 %indvars.iv.next8.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv.next8.5
  %54 = load i32, i32* %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv.next8.5
  %55 = load i32, i32* %arrayidx2.6, align 4
  %arrayidx4.6 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv.next8.5
  %56 = load i32, i32* %arrayidx4.6, align 4
  br label %for.body7.6

for.body7.6:                                      ; preds = %for.body7.6, %for.end.5
  %indvars.iv.6 = phi i64 [ 0, %for.end.5 ], [ %indvars.iv.next.6, %for.body7.6 ]
  %fz.04.6 = phi i32 [ 0, %for.end.5 ], [ %add34.6, %for.body7.6 ]
  %fy.03.6 = phi i32 [ 0, %for.end.5 ], [ %add32.6, %for.body7.6 ]
  %fx.02.6 = phi i32 [ 0, %for.end.5 ], [ %add30.6, %for.body7.6 ]
  %57 = shl nsw i64 %indvars.iv.next8.5, 5
  %58 = add nuw nsw i64 %57, %indvars.iv.6
  %arrayidx9.6 = getelementptr inbounds i32, i32* %NL, i64 %58
  %59 = load i32, i32* %arrayidx9.6, align 4
  %idxprom10.6 = sext i32 %59 to i64
  %arrayidx11.6 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.6
  %60 = load i32, i32* %arrayidx11.6, align 4
  %idxprom12.6 = sext i32 %59 to i64
  %arrayidx13.6 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.6
  %61 = load i32, i32* %arrayidx13.6, align 4
  %idxprom14.6 = sext i32 %59 to i64
  %arrayidx15.6 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.6
  %62 = load i32, i32* %arrayidx15.6, align 4
  %sub.6 = sub nsw i32 %54, %60
  %sub16.6 = sub nsw i32 %55, %61
  %sub17.6 = sub nsw i32 %56, %62
  %mul18.6 = mul nsw i32 %sub.6, %sub.6
  %mul19.6 = mul nsw i32 %sub16.6, %sub16.6
  %mul20.6 = mul nsw i32 %sub17.6, %sub17.6
  %add21.6 = add nuw nsw i32 %mul18.6, %mul19.6
  %add22.6 = add nuw nsw i32 %add21.6, %mul20.6
  %mul23.6 = mul nsw i32 %add22.6, %add22.6
  %mul24.6 = mul nsw i32 %mul23.6, %add22.6
  %mul25.6 = mul nsw i32 %add22.6, %mul24.6
  %mul26.6 = mul nsw i32 %mul24.6, 15
  %sub27.6 = add nsw i32 %mul26.6, -20
  %mul28.6 = mul nsw i32 %mul25.6, %sub27.6
  %mul29.6 = mul nsw i32 %sub.6, %mul28.6
  %add30.6 = add nsw i32 %fx.02.6, %mul29.6
  %mul31.6 = mul nsw i32 %sub16.6, %mul28.6
  %add32.6 = add nsw i32 %fy.03.6, %mul31.6
  %mul33.6 = mul nsw i32 %sub17.6, %mul28.6
  %add34.6 = add nsw i32 %fz.04.6, %mul33.6
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6 = icmp ne i64 %indvars.iv.next.6, 1024
  br i1 %exitcond.6, label %for.body7.6, label %for.end.6, !llvm.loop !2

for.end.6:                                        ; preds = %for.body7.6
  %add30.lcssa.6 = phi i32 [ %add30.6, %for.body7.6 ]
  %add32.lcssa.6 = phi i32 [ %add32.6, %for.body7.6 ]
  %add34.lcssa.6 = phi i32 [ %add34.6, %for.body7.6 ]
  %arrayidx36.6 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv.next8.5
  store i32 %add30.lcssa.6, i32* %arrayidx36.6, align 4
  %arrayidx38.6 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv.next8.5
  store i32 %add32.lcssa.6, i32* %arrayidx38.6, align 4
  %arrayidx40.6 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv.next8.5
  store i32 %add34.lcssa.6, i32* %arrayidx40.6, align 4
  %indvars.iv.next8.6 = add nuw nsw i64 %indvars.iv.next8.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv.next8.6
  %63 = load i32, i32* %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv.next8.6
  %64 = load i32, i32* %arrayidx2.7, align 4
  %arrayidx4.7 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv.next8.6
  %65 = load i32, i32* %arrayidx4.7, align 4
  br label %for.body7.7

for.body7.7:                                      ; preds = %for.body7.7, %for.end.6
  %indvars.iv.7 = phi i64 [ 0, %for.end.6 ], [ %indvars.iv.next.7, %for.body7.7 ]
  %fz.04.7 = phi i32 [ 0, %for.end.6 ], [ %add34.7, %for.body7.7 ]
  %fy.03.7 = phi i32 [ 0, %for.end.6 ], [ %add32.7, %for.body7.7 ]
  %fx.02.7 = phi i32 [ 0, %for.end.6 ], [ %add30.7, %for.body7.7 ]
  %66 = shl nsw i64 %indvars.iv.next8.6, 5
  %67 = add nuw nsw i64 %66, %indvars.iv.7
  %arrayidx9.7 = getelementptr inbounds i32, i32* %NL, i64 %67
  %68 = load i32, i32* %arrayidx9.7, align 4
  %idxprom10.7 = sext i32 %68 to i64
  %arrayidx11.7 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.7
  %69 = load i32, i32* %arrayidx11.7, align 4
  %idxprom12.7 = sext i32 %68 to i64
  %arrayidx13.7 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.7
  %70 = load i32, i32* %arrayidx13.7, align 4
  %idxprom14.7 = sext i32 %68 to i64
  %arrayidx15.7 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.7
  %71 = load i32, i32* %arrayidx15.7, align 4
  %sub.7 = sub nsw i32 %63, %69
  %sub16.7 = sub nsw i32 %64, %70
  %sub17.7 = sub nsw i32 %65, %71
  %mul18.7 = mul nsw i32 %sub.7, %sub.7
  %mul19.7 = mul nsw i32 %sub16.7, %sub16.7
  %mul20.7 = mul nsw i32 %sub17.7, %sub17.7
  %add21.7 = add nuw nsw i32 %mul18.7, %mul19.7
  %add22.7 = add nuw nsw i32 %add21.7, %mul20.7
  %mul23.7 = mul nsw i32 %add22.7, %add22.7
  %mul24.7 = mul nsw i32 %mul23.7, %add22.7
  %mul25.7 = mul nsw i32 %add22.7, %mul24.7
  %mul26.7 = mul nsw i32 %mul24.7, 15
  %sub27.7 = add nsw i32 %mul26.7, -20
  %mul28.7 = mul nsw i32 %mul25.7, %sub27.7
  %mul29.7 = mul nsw i32 %sub.7, %mul28.7
  %add30.7 = add nsw i32 %fx.02.7, %mul29.7
  %mul31.7 = mul nsw i32 %sub16.7, %mul28.7
  %add32.7 = add nsw i32 %fy.03.7, %mul31.7
  %mul33.7 = mul nsw i32 %sub17.7, %mul28.7
  %add34.7 = add nsw i32 %fz.04.7, %mul33.7
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7 = icmp ne i64 %indvars.iv.next.7, 1024
  br i1 %exitcond.7, label %for.body7.7, label %for.end.7, !llvm.loop !2

for.end.7:                                        ; preds = %for.body7.7
  %add30.lcssa.7 = phi i32 [ %add30.7, %for.body7.7 ]
  %add32.lcssa.7 = phi i32 [ %add32.7, %for.body7.7 ]
  %add34.lcssa.7 = phi i32 [ %add34.7, %for.body7.7 ]
  %arrayidx36.7 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv.next8.6
  store i32 %add30.lcssa.7, i32* %arrayidx36.7, align 4
  %arrayidx38.7 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv.next8.6
  store i32 %add32.lcssa.7, i32* %arrayidx38.7, align 4
  %arrayidx40.7 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv.next8.6
  store i32 %add34.lcssa.7, i32* %arrayidx40.7, align 4
  %indvars.iv.next8.7 = add nuw nsw i64 %indvars.iv.next8.6, 1
  %exitcond10.7 = icmp ne i64 %indvars.iv.next8.7, 1024
  br i1 %exitcond10.7, label %for.body, label %for.end43, !llvm.loop !4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @distance(i32* %position_x, i32* %position_y, i32* %position_z, i32 %i, i32 %j) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i32, i32* %position_x, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %j to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom1
  %1 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %0, %1
  %idxprom3 = sext i32 %i to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom3
  %2 = load i32, i32* %arrayidx4, align 4
  %idxprom5 = sext i32 %j to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom5
  %3 = load i32, i32* %arrayidx6, align 4
  %sub7 = sub nsw i32 %2, %3
  %idxprom8 = sext i32 %i to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom8
  %4 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %j to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom10
  %5 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %4, %5
  %mul = mul nsw i32 %sub, %sub
  %mul13 = mul nsw i32 %sub7, %sub7
  %add = add nuw nsw i32 %mul, %mul13
  %mul14 = mul nsw i32 %sub12, %sub12
  %add15 = add nuw nsw i32 %add, %mul14
  ret i32 %add15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @buildNeighborList(i32* %position_x, i32* %position_y, i32* %position_z, [1024 x i32]* %NL) #0 {
entry:
  %currList = alloca [1024 x i32], align 16
  %currDist = alloca [1024 x i32], align 16
  %arraydecay = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 0
  br label %for.body

for.body:                                         ; preds = %entry, %for.end16
  %indvars.iv8 = phi i64 [ 0, %entry ], [ %indvars.iv.next9, %for.end16 ]
  %totalPairs.04 = phi i32 [ 0, %entry ], [ %add, %for.end16 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.3, %for.body3 ]
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv
  store i32 0, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv
  store i32 999999999, i32* %arrayidx5, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv.next
  store i32 0, i32* %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv.next
  store i32 999999999, i32* %arrayidx5.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx.2 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv.next.1
  store i32 0, i32* %arrayidx.2, align 4
  %arrayidx5.2 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv.next.1
  store i32 999999999, i32* %arrayidx5.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx.3 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv.next.2
  store i32 0, i32* %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv.next.2
  store i32 999999999, i32* %arrayidx5.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, 1024
  br i1 %exitcond.3, label %for.body3, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.body3
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %for.inc14
  %indvars.iv6 = phi i64 [ 0, %for.body8.preheader ], [ %indvars.iv.next7, %for.inc14 ]
  %cmp9 = icmp eq i64 %indvars.iv8, %indvars.iv6
  br i1 %cmp9, label %for.inc14, label %if.end

if.end:                                           ; preds = %for.body8
  %0 = trunc i64 %indvars.iv6 to i32
  %1 = trunc i64 %indvars.iv8 to i32
  %call = call i32 @distance(i32* %position_x, i32* %position_y, i32* %position_z, i32 %1, i32 %0)
  %arrayidx11 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv6
  %2 = trunc i64 %indvars.iv6 to i32
  store i32 %2, i32* %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv6
  store i32 %call, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body8, %if.end
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next7, 1024
  br i1 %exitcond, label %for.body8, label %for.end16

for.end16:                                        ; preds = %for.inc14
  %3 = trunc i64 %indvars.iv8 to i32
  %call18 = call i32 @populateNeighborList(i32* nonnull %arraydecay, i32* nonnull %arraydecay17, i32 %3, [1024 x i32]* %NL)
  %add = add nsw i32 %totalPairs.04, %call18
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next9, 1024
  br i1 %exitcond10, label %for.body, label %for.end21

for.end21:                                        ; preds = %for.end16
  %add.lcssa = phi i32 [ %add, %for.end16 ]
  %call22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %add.lcssa) #4
  ret i32 %add.lcssa
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @populateNeighborList(i32* %currDist, i32* %currList, i32 %i, [1024 x i32]* %NL) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.3, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %currList, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %i to i64
  %arrayidx4 = getelementptr inbounds [1024 x i32], [1024 x i32]* %NL, i64 %idxprom1, i64 %indvars.iv
  store i32 %0, i32* %arrayidx4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %currList, i64 %indvars.iv.next
  %1 = load i32, i32* %arrayidx.1, align 4
  %idxprom1.1 = sext i32 %i to i64
  %arrayidx4.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %NL, i64 %idxprom1.1, i64 %indvars.iv.next
  store i32 %1, i32* %arrayidx4.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %currList, i64 %indvars.iv.next.1
  %2 = load i32, i32* %arrayidx.2, align 4
  %idxprom1.2 = sext i32 %i to i64
  %arrayidx4.2 = getelementptr inbounds [1024 x i32], [1024 x i32]* %NL, i64 %idxprom1.2, i64 %indvars.iv.next.1
  store i32 %2, i32* %arrayidx4.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %currList, i64 %indvars.iv.next.2
  %3 = load i32, i32* %arrayidx.3, align 4
  %idxprom1.3 = sext i32 %i to i64
  %arrayidx4.3 = getelementptr inbounds [1024 x i32], [1024 x i32]* %NL, i64 %idxprom1.3, i64 %indvars.iv.next.2
  store i32 %3, i32* %arrayidx4.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, 1024
  br i1 %exitcond.3, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  ret i32 1024
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %position_x = alloca [1024 x i32], align 16
  %position_y = alloca [1024 x i32], align 16
  %position_z = alloca [1024 x i32], align 16
  %force_x = alloca [1024 x i32], align 16
  %force_y = alloca [1024 x i32], align 16
  %force_z = alloca [1024 x i32], align 16
  %NL = alloca [1024 x [1024 x i32]], align 16
  %neighborList = alloca [1024 x i32], align 16
  call void @srand(i32 8650341) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv22 = phi i64 [ 0, %entry ], [ %indvars.iv.next23, %for.body ]
  %call = call i32 @rand() #4
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 %indvars.iv22
  store i32 %call, i32* %arrayidx, align 4
  %call1 = call i32 @rand() #4
  %arrayidx3 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 %indvars.iv22
  store i32 %call1, i32* %arrayidx3, align 4
  %call4 = call i32 @rand() #4
  %arrayidx6 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 %indvars.iv22
  store i32 %call4, i32* %arrayidx6, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond24 = icmp ne i64 %indvars.iv.next23, 1024
  br i1 %exitcond24, label %for.body, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.body
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.inc20
  %indvars.iv19 = phi i64 [ 0, %for.body9.preheader ], [ %indvars.iv.next20, %for.inc20 ]
  br label %for.body12

for.body12:                                       ; preds = %for.body12, %for.body9
  %indvars.iv16 = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next17.3, %for.body12 ]
  %arrayidx16 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv19, i64 %indvars.iv16
  store i32 0, i32* %arrayidx16, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %arrayidx16.1 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv19, i64 %indvars.iv.next17
  store i32 0, i32* %arrayidx16.1, align 4
  %indvars.iv.next17.1 = add nuw nsw i64 %indvars.iv.next17, 1
  %arrayidx16.2 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv19, i64 %indvars.iv.next17.1
  store i32 0, i32* %arrayidx16.2, align 4
  %indvars.iv.next17.2 = add nuw nsw i64 %indvars.iv.next17.1, 1
  %arrayidx16.3 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv19, i64 %indvars.iv.next17.2
  store i32 0, i32* %arrayidx16.3, align 4
  %indvars.iv.next17.3 = add nuw nsw i64 %indvars.iv.next17.2, 1
  %exitcond18.3 = icmp ne i64 %indvars.iv.next17.3, 1024
  br i1 %exitcond18.3, label %for.body12, label %for.inc20

for.inc20:                                        ; preds = %for.body12
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond21 = icmp ne i64 %indvars.iv.next20, 1024
  br i1 %exitcond21, label %for.body9, label %for.end22

for.end22:                                        ; preds = %for.inc20
  %arraydecay = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 0
  %call26 = call i32 @buildNeighborList(i32* nonnull %arraydecay, i32* nonnull %arraydecay23, i32* nonnull %arraydecay24, [1024 x i32]* nonnull %arraydecay25)
  br label %for.body29

for.body29:                                       ; preds = %for.end22, %for.inc42
  %indvars.iv11 = phi i64 [ 0, %for.end22 ], [ %indvars.iv.next12, %for.inc42 ]
  br label %for.body32

for.body32:                                       ; preds = %for.body32, %for.body29
  %indvars.iv7 = phi i64 [ 0, %for.body29 ], [ %indvars.iv.next8.1, %for.body32 ]
  %arrayidx36 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv11, i64 %indvars.iv7
  %0 = load i32, i32* %arrayidx36, align 4
  %1 = shl nsw i64 %indvars.iv11, 5
  %2 = add nuw nsw i64 %1, %indvars.iv7
  %arrayidx38 = getelementptr inbounds [1024 x i32], [1024 x i32]* %neighborList, i64 0, i64 %2
  store i32 %0, i32* %arrayidx38, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %arrayidx36.1 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv11, i64 %indvars.iv.next8
  %3 = load i32, i32* %arrayidx36.1, align 4
  %4 = shl nsw i64 %indvars.iv11, 5
  %5 = add nuw nsw i64 %4, %indvars.iv.next8
  %arrayidx38.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %neighborList, i64 0, i64 %5
  store i32 %3, i32* %arrayidx38.1, align 4
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv.next8, 1
  %exitcond10.1 = icmp ne i64 %indvars.iv.next8.1, 32
  br i1 %exitcond10.1, label %for.body32, label %for.inc42

for.inc42:                                        ; preds = %for.body32
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next12, 32
  br i1 %exitcond15, label %for.body29, label %for.end44

for.end44:                                        ; preds = %for.inc42
  %arraydecay45 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_x, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_y, i64 0, i64 0
  %arraydecay47 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_z, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 0
  %arraydecay49 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 0
  %arraydecay50 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 0
  %arraydecay51 = getelementptr inbounds [1024 x i32], [1024 x i32]* %neighborList, i64 0, i64 0
  call void @md(i32* nonnull %arraydecay45, i32* nonnull %arraydecay46, i32* nonnull %arraydecay47, i32* nonnull %arraydecay48, i32* nonnull %arraydecay49, i32* nonnull %arraydecay50, i32* nonnull %arraydecay51)
  br label %for.body54

for.body54:                                       ; preds = %for.end44, %for.body54
  %indvars.iv = phi i64 [ 0, %for.end44 ], [ %indvars.iv.next, %for.body54 ]
  %arrayidx56 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_x, i64 0, i64 %indvars.iv
  %6 = load i32, i32* %arrayidx56, align 4
  %arrayidx58 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_y, i64 0, i64 %indvars.iv
  %7 = load i32, i32* %arrayidx58, align 4
  %arrayidx60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_z, i64 0, i64 %indvars.iv
  %8 = load i32, i32* %arrayidx60, align 4
  %call61 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7, i32 %8) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 1024
  br i1 %exitcond, label %for.body54, label %for.end64

for.end64:                                        ; preds = %for.body54
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.count", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.disable"}
