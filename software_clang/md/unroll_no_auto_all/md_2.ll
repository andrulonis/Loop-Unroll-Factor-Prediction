; ModuleID = 'unroll_no_auto_all/md.ll'
source_filename = "md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"total pairs - %i \0A\00", align 1
@__const.main.probSizes = private unnamed_addr constant [4 x i32] [i32 12288, i32 24576, i32 36864, i32 73728], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"after, X:%i Y:%i Z%i \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @md(i32* %d_force_x, i32* %d_force_y, i32* %d_force_z, i32* %position_x, i32* %position_y, i32* %position_z, i32* %NL) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.end.1, %entry
  %indvars.iv7 = phi i64 [ 0, %entry ], [ %indvars.iv.next8.1, %for.end.1 ]
  %arrayidx = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv7
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv7
  %1 = load i32, i32* %arrayidx2, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv7
  %2 = load i32, i32* %arrayidx4, align 4
  br label %for.body7

for.body7:                                        ; preds = %for.body7, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.1, %for.body7 ]
  %fz.04 = phi i32 [ 0, %for.body ], [ %add34.1, %for.body7 ]
  %fy.03 = phi i32 [ 0, %for.body ], [ %add32.1, %for.body7 ]
  %fx.02 = phi i32 [ 0, %for.body ], [ %add30.1, %for.body7 ]
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
  %9 = shl nsw i64 %indvars.iv7, 5
  %10 = add nuw nsw i64 %9, %indvars.iv.next
  %arrayidx9.1 = getelementptr inbounds i32, i32* %NL, i64 %10
  %11 = load i32, i32* %arrayidx9.1, align 4
  %idxprom10.1 = sext i32 %11 to i64
  %arrayidx11.1 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.1
  %12 = load i32, i32* %arrayidx11.1, align 4
  %idxprom12.1 = sext i32 %11 to i64
  %arrayidx13.1 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.1
  %13 = load i32, i32* %arrayidx13.1, align 4
  %idxprom14.1 = sext i32 %11 to i64
  %arrayidx15.1 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.1
  %14 = load i32, i32* %arrayidx15.1, align 4
  %sub.1 = sub nsw i32 %0, %12
  %sub16.1 = sub nsw i32 %1, %13
  %sub17.1 = sub nsw i32 %2, %14
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
  %add30.1 = add nsw i32 %add30, %mul29.1
  %mul31.1 = mul nsw i32 %sub16.1, %mul28.1
  %add32.1 = add nsw i32 %add32, %mul31.1
  %mul33.1 = mul nsw i32 %sub17.1, %mul28.1
  %add34.1 = add nsw i32 %add34, %mul33.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 1024
  br i1 %exitcond.1, label %for.body7, label %for.end, !llvm.loop !2

for.end:                                          ; preds = %for.body7
  %add30.lcssa = phi i32 [ %add30.1, %for.body7 ]
  %add32.lcssa = phi i32 [ %add32.1, %for.body7 ]
  %add34.lcssa = phi i32 [ %add34.1, %for.body7 ]
  %arrayidx36 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv7
  store i32 %add30.lcssa, i32* %arrayidx36, align 4
  %arrayidx38 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv7
  store i32 %add32.lcssa, i32* %arrayidx38, align 4
  %arrayidx40 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv7
  store i32 %add34.lcssa, i32* %arrayidx40, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %position_x, i64 %indvars.iv.next8
  %15 = load i32, i32* %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr inbounds i32, i32* %position_y, i64 %indvars.iv.next8
  %16 = load i32, i32* %arrayidx2.1, align 4
  %arrayidx4.1 = getelementptr inbounds i32, i32* %position_z, i64 %indvars.iv.next8
  %17 = load i32, i32* %arrayidx4.1, align 4
  br label %for.body7.1

for.end43:                                        ; preds = %for.end.1
  ret void

for.body7.1:                                      ; preds = %for.body7.1, %for.end
  %indvars.iv.1 = phi i64 [ 0, %for.end ], [ %indvars.iv.next.1.1, %for.body7.1 ]
  %fz.04.1 = phi i32 [ 0, %for.end ], [ %add34.1.1, %for.body7.1 ]
  %fy.03.1 = phi i32 [ 0, %for.end ], [ %add32.1.1, %for.body7.1 ]
  %fx.02.1 = phi i32 [ 0, %for.end ], [ %add30.1.1, %for.body7.1 ]
  %18 = shl nsw i64 %indvars.iv.next8, 5
  %19 = add nuw nsw i64 %18, %indvars.iv.1
  %arrayidx9.111 = getelementptr inbounds i32, i32* %NL, i64 %19
  %20 = load i32, i32* %arrayidx9.111, align 4
  %idxprom10.112 = sext i32 %20 to i64
  %arrayidx11.113 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.112
  %21 = load i32, i32* %arrayidx11.113, align 4
  %idxprom12.114 = sext i32 %20 to i64
  %arrayidx13.115 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.114
  %22 = load i32, i32* %arrayidx13.115, align 4
  %idxprom14.116 = sext i32 %20 to i64
  %arrayidx15.117 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.116
  %23 = load i32, i32* %arrayidx15.117, align 4
  %sub.118 = sub nsw i32 %15, %21
  %sub16.119 = sub nsw i32 %16, %22
  %sub17.120 = sub nsw i32 %17, %23
  %mul18.121 = mul nsw i32 %sub.118, %sub.118
  %mul19.122 = mul nsw i32 %sub16.119, %sub16.119
  %mul20.123 = mul nsw i32 %sub17.120, %sub17.120
  %add21.124 = add nuw nsw i32 %mul18.121, %mul19.122
  %add22.125 = add nuw nsw i32 %add21.124, %mul20.123
  %mul23.126 = mul nsw i32 %add22.125, %add22.125
  %mul24.127 = mul nsw i32 %mul23.126, %add22.125
  %mul25.128 = mul nsw i32 %add22.125, %mul24.127
  %mul26.129 = mul nsw i32 %mul24.127, 15
  %sub27.130 = add nsw i32 %mul26.129, -20
  %mul28.131 = mul nsw i32 %mul25.128, %sub27.130
  %mul29.132 = mul nsw i32 %sub.118, %mul28.131
  %add30.133 = add nsw i32 %fx.02.1, %mul29.132
  %mul31.134 = mul nsw i32 %sub16.119, %mul28.131
  %add32.135 = add nsw i32 %fy.03.1, %mul31.134
  %mul33.136 = mul nsw i32 %sub17.120, %mul28.131
  %add34.137 = add nsw i32 %fz.04.1, %mul33.136
  %indvars.iv.next.138 = add nuw nsw i64 %indvars.iv.1, 1
  %24 = shl nsw i64 %indvars.iv.next8, 5
  %25 = add nuw nsw i64 %24, %indvars.iv.next.138
  %arrayidx9.1.1 = getelementptr inbounds i32, i32* %NL, i64 %25
  %26 = load i32, i32* %arrayidx9.1.1, align 4
  %idxprom10.1.1 = sext i32 %26 to i64
  %arrayidx11.1.1 = getelementptr inbounds i32, i32* %position_x, i64 %idxprom10.1.1
  %27 = load i32, i32* %arrayidx11.1.1, align 4
  %idxprom12.1.1 = sext i32 %26 to i64
  %arrayidx13.1.1 = getelementptr inbounds i32, i32* %position_y, i64 %idxprom12.1.1
  %28 = load i32, i32* %arrayidx13.1.1, align 4
  %idxprom14.1.1 = sext i32 %26 to i64
  %arrayidx15.1.1 = getelementptr inbounds i32, i32* %position_z, i64 %idxprom14.1.1
  %29 = load i32, i32* %arrayidx15.1.1, align 4
  %sub.1.1 = sub nsw i32 %15, %27
  %sub16.1.1 = sub nsw i32 %16, %28
  %sub17.1.1 = sub nsw i32 %17, %29
  %mul18.1.1 = mul nsw i32 %sub.1.1, %sub.1.1
  %mul19.1.1 = mul nsw i32 %sub16.1.1, %sub16.1.1
  %mul20.1.1 = mul nsw i32 %sub17.1.1, %sub17.1.1
  %add21.1.1 = add nuw nsw i32 %mul18.1.1, %mul19.1.1
  %add22.1.1 = add nuw nsw i32 %add21.1.1, %mul20.1.1
  %mul23.1.1 = mul nsw i32 %add22.1.1, %add22.1.1
  %mul24.1.1 = mul nsw i32 %mul23.1.1, %add22.1.1
  %mul25.1.1 = mul nsw i32 %add22.1.1, %mul24.1.1
  %mul26.1.1 = mul nsw i32 %mul24.1.1, 15
  %sub27.1.1 = add nsw i32 %mul26.1.1, -20
  %mul28.1.1 = mul nsw i32 %mul25.1.1, %sub27.1.1
  %mul29.1.1 = mul nsw i32 %sub.1.1, %mul28.1.1
  %add30.1.1 = add nsw i32 %add30.133, %mul29.1.1
  %mul31.1.1 = mul nsw i32 %sub16.1.1, %mul28.1.1
  %add32.1.1 = add nsw i32 %add32.135, %mul31.1.1
  %mul33.1.1 = mul nsw i32 %sub17.1.1, %mul28.1.1
  %add34.1.1 = add nsw i32 %add34.137, %mul33.1.1
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.next.138, 1
  %exitcond.1.1 = icmp ne i64 %indvars.iv.next.1.1, 1024
  br i1 %exitcond.1.1, label %for.body7.1, label %for.end.1, !llvm.loop !2

for.end.1:                                        ; preds = %for.body7.1
  %add30.lcssa.1 = phi i32 [ %add30.1.1, %for.body7.1 ]
  %add32.lcssa.1 = phi i32 [ %add32.1.1, %for.body7.1 ]
  %add34.lcssa.1 = phi i32 [ %add34.1.1, %for.body7.1 ]
  %arrayidx36.1 = getelementptr inbounds i32, i32* %d_force_x, i64 %indvars.iv.next8
  store i32 %add30.lcssa.1, i32* %arrayidx36.1, align 4
  %arrayidx38.1 = getelementptr inbounds i32, i32* %d_force_y, i64 %indvars.iv.next8
  store i32 %add32.lcssa.1, i32* %arrayidx38.1, align 4
  %arrayidx40.1 = getelementptr inbounds i32, i32* %d_force_z, i64 %indvars.iv.next8
  store i32 %add34.lcssa.1, i32* %arrayidx40.1, align 4
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv.next8, 1
  %exitcond.139 = icmp ne i64 %indvars.iv.next8.1, 1024
  br i1 %exitcond.139, label %for.body, label %for.end43, !llvm.loop !4
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

for.body:                                         ; preds = %for.end16.1, %entry
  %indvars.iv9 = phi i64 [ 0, %entry ], [ %indvars.iv.next10.1, %for.end16.1 ]
  %totalPairs.04 = phi i32 [ 0, %entry ], [ %add.1, %for.end16.1 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.1, %for.body3 ]
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
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 1024
  br i1 %exitcond.1, label %for.body3, label %for.body8.preheader, !llvm.loop !5

for.body8.preheader:                              ; preds = %for.body3
  br label %for.body8

for.body8:                                        ; preds = %for.inc14.1, %for.body8.preheader
  %indvars.iv6 = phi i64 [ 0, %for.body8.preheader ], [ %indvars.iv.next7.1, %for.inc14.1 ]
  %cmp9 = icmp eq i64 %indvars.iv9, %indvars.iv6
  br i1 %cmp9, label %for.inc14, label %if.end

if.end:                                           ; preds = %for.body8
  %0 = trunc i64 %indvars.iv6 to i32
  %1 = trunc i64 %indvars.iv9 to i32
  %call = call i32 @distance(i32* %position_x, i32* %position_y, i32* %position_z, i32 %1, i32 %0)
  %arrayidx11 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv6
  %2 = trunc i64 %indvars.iv6 to i32
  store i32 %2, i32* %arrayidx11, align 4
  %arrayidx13 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv6
  store i32 %call, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body8, %if.end
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %cmp9.1 = icmp eq i64 %indvars.iv9, %indvars.iv.next7
  br i1 %cmp9.1, label %for.inc14.1, label %if.end.1

for.end16:                                        ; preds = %for.inc14.1
  %3 = trunc i64 %indvars.iv9 to i32
  %call18 = call i32 @populateNeighborList(i32* nonnull %arraydecay, i32* nonnull %arraydecay17, i32 %3, [1024 x i32]* %NL)
  %add = add nsw i32 %totalPairs.04, %call18
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.body3.1

for.end21:                                        ; preds = %for.end16.1
  %add.lcssa = phi i32 [ %add.1, %for.end16.1 ]
  %call22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %add.lcssa) #4
  ret i32 %add.lcssa

if.end.1:                                         ; preds = %for.inc14
  %4 = trunc i64 %indvars.iv.next7 to i32
  %5 = trunc i64 %indvars.iv9 to i32
  %call.1 = call i32 @distance(i32* %position_x, i32* %position_y, i32* %position_z, i32 %5, i32 %4)
  %arrayidx11.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv.next7
  %6 = trunc i64 %indvars.iv.next7 to i32
  store i32 %6, i32* %arrayidx11.1, align 4
  %arrayidx13.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv.next7
  store i32 %call.1, i32* %arrayidx13.1, align 4
  br label %for.inc14.1

for.inc14.1:                                      ; preds = %if.end.1, %for.inc14
  %indvars.iv.next7.1 = add nuw nsw i64 %indvars.iv.next7, 1
  %exitcond.18 = icmp ne i64 %indvars.iv.next7.1, 1024
  br i1 %exitcond.18, label %for.body8, label %for.end16, !llvm.loop !6

for.body3.1:                                      ; preds = %for.body3.1, %for.end16
  %indvars.iv.1 = phi i64 [ 0, %for.end16 ], [ %indvars.iv.next.1.1, %for.body3.1 ]
  %arrayidx.111 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv.1
  store i32 0, i32* %arrayidx.111, align 4
  %arrayidx5.112 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv.1
  store i32 999999999, i32* %arrayidx5.112, align 4
  %indvars.iv.next.113 = add nuw nsw i64 %indvars.iv.1, 1
  %arrayidx.1.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv.next.113
  store i32 0, i32* %arrayidx.1.1, align 4
  %arrayidx5.1.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv.next.113
  store i32 999999999, i32* %arrayidx5.1.1, align 4
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.next.113, 1
  %exitcond.1.1 = icmp ne i64 %indvars.iv.next.1.1, 1024
  br i1 %exitcond.1.1, label %for.body3.1, label %for.body8.preheader.1, !llvm.loop !5

for.body8.preheader.1:                            ; preds = %for.body3.1
  br label %for.body8.1

for.body8.1:                                      ; preds = %for.inc14.1.1, %for.body8.preheader.1
  %indvars.iv6.1 = phi i64 [ 0, %for.body8.preheader.1 ], [ %indvars.iv.next7.1.1, %for.inc14.1.1 ]
  %cmp9.114 = icmp eq i64 %indvars.iv.next10, %indvars.iv6.1
  br i1 %cmp9.114, label %for.inc14.120, label %if.end.118

if.end.118:                                       ; preds = %for.body8.1
  %7 = trunc i64 %indvars.iv6.1 to i32
  %8 = trunc i64 %indvars.iv.next10 to i32
  %call.115 = call i32 @distance(i32* %position_x, i32* %position_y, i32* %position_z, i32 %8, i32 %7)
  %arrayidx11.116 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv6.1
  %9 = trunc i64 %indvars.iv6.1 to i32
  store i32 %9, i32* %arrayidx11.116, align 4
  %arrayidx13.117 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv6.1
  store i32 %call.115, i32* %arrayidx13.117, align 4
  br label %for.inc14.120

for.inc14.120:                                    ; preds = %if.end.118, %for.body8.1
  %indvars.iv.next7.119 = add nuw nsw i64 %indvars.iv6.1, 1
  %cmp9.1.1 = icmp eq i64 %indvars.iv.next10, %indvars.iv.next7.119
  br i1 %cmp9.1.1, label %for.inc14.1.1, label %if.end.1.1

if.end.1.1:                                       ; preds = %for.inc14.120
  %10 = trunc i64 %indvars.iv.next7.119 to i32
  %11 = trunc i64 %indvars.iv.next10 to i32
  %call.1.1 = call i32 @distance(i32* %position_x, i32* %position_y, i32* %position_z, i32 %11, i32 %10)
  %arrayidx11.1.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %indvars.iv.next7.119
  %12 = trunc i64 %indvars.iv.next7.119 to i32
  store i32 %12, i32* %arrayidx11.1.1, align 4
  %arrayidx13.1.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %indvars.iv.next7.119
  store i32 %call.1.1, i32* %arrayidx13.1.1, align 4
  br label %for.inc14.1.1

for.inc14.1.1:                                    ; preds = %if.end.1.1, %for.inc14.120
  %indvars.iv.next7.1.1 = add nuw nsw i64 %indvars.iv.next7.119, 1
  %exitcond.18.1 = icmp ne i64 %indvars.iv.next7.1.1, 1024
  br i1 %exitcond.18.1, label %for.body8.1, label %for.end16.1, !llvm.loop !6

for.end16.1:                                      ; preds = %for.inc14.1.1
  %13 = trunc i64 %indvars.iv.next10 to i32
  %call18.1 = call i32 @populateNeighborList(i32* nonnull %arraydecay, i32* nonnull %arraydecay17, i32 %13, [1024 x i32]* %NL)
  %add.1 = add nsw i32 %add, %call18.1
  %indvars.iv.next10.1 = add nuw nsw i64 %indvars.iv.next10, 1
  %exitcond.121 = icmp ne i64 %indvars.iv.next10.1, 1024
  br i1 %exitcond.121, label %for.body, label %for.end21, !llvm.loop !7
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @populateNeighborList(i32* %currDist, i32* %currList, i32 %i, [1024 x i32]* %NL) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.1, %for.body ]
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
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 1024
  br i1 %exitcond.1, label %for.body, label %for.end, !llvm.loop !8

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

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv27 = phi i64 [ 0, %entry ], [ %indvars.iv.next28.1, %for.body ]
  %call = call i32 @rand() #4
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 %indvars.iv27
  store i32 %call, i32* %arrayidx, align 4
  %call1 = call i32 @rand() #4
  %arrayidx3 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 %indvars.iv27
  store i32 %call1, i32* %arrayidx3, align 4
  %call4 = call i32 @rand() #4
  %arrayidx6 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 %indvars.iv27
  store i32 %call4, i32* %arrayidx6, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %call.1 = call i32 @rand() #4
  %arrayidx.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 %indvars.iv.next28
  store i32 %call.1, i32* %arrayidx.1, align 4
  %call1.1 = call i32 @rand() #4
  %arrayidx3.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 %indvars.iv.next28
  store i32 %call1.1, i32* %arrayidx3.1, align 4
  %call4.1 = call i32 @rand() #4
  %arrayidx6.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 %indvars.iv.next28
  store i32 %call4.1, i32* %arrayidx6.1, align 4
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv.next28, 1
  %exitcond.129 = icmp ne i64 %indvars.iv.next28.1, 1024
  br i1 %exitcond.129, label %for.body, label %for.body9.preheader, !llvm.loop !9

for.body9.preheader:                              ; preds = %for.body
  br label %for.body9

for.body9:                                        ; preds = %for.inc20.1, %for.body9.preheader
  %indvars.iv22 = phi i64 [ 0, %for.body9.preheader ], [ %indvars.iv.next23.1, %for.inc20.1 ]
  br label %for.body12

for.body12:                                       ; preds = %for.body12, %for.body9
  %indvars.iv19 = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next20.1, %for.body12 ]
  %arrayidx16 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv22, i64 %indvars.iv19
  store i32 0, i32* %arrayidx16, align 4
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %arrayidx16.1 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv22, i64 %indvars.iv.next20
  store i32 0, i32* %arrayidx16.1, align 4
  %indvars.iv.next20.1 = add nuw nsw i64 %indvars.iv.next20, 1
  %exitcond.121 = icmp ne i64 %indvars.iv.next20.1, 1024
  br i1 %exitcond.121, label %for.body12, label %for.inc20, !llvm.loop !10

for.inc20:                                        ; preds = %for.body12
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.body12.1

for.end22:                                        ; preds = %for.inc20.1
  %arraydecay = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 0
  %call26 = call i32 @buildNeighborList(i32* nonnull %arraydecay, i32* nonnull %arraydecay23, i32* nonnull %arraydecay24, [1024 x i32]* nonnull %arraydecay25)
  br label %for.body29

for.body29:                                       ; preds = %for.inc42.1, %for.end22
  %indvars.iv11 = phi i64 [ 0, %for.end22 ], [ %indvars.iv.next12.1, %for.inc42.1 ]
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
  %exitcond.110 = icmp ne i64 %indvars.iv.next8.1, 32
  br i1 %exitcond.110, label %for.body32, label %for.inc42, !llvm.loop !11

for.inc42:                                        ; preds = %for.body32
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.body32.1

for.end44:                                        ; preds = %for.inc42.1
  %arraydecay45 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_x, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_y, i64 0, i64 0
  %arraydecay47 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_z, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 0
  %arraydecay49 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 0
  %arraydecay50 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 0
  %arraydecay51 = getelementptr inbounds [1024 x i32], [1024 x i32]* %neighborList, i64 0, i64 0
  call void @md(i32* nonnull %arraydecay45, i32* nonnull %arraydecay46, i32* nonnull %arraydecay47, i32* nonnull %arraydecay48, i32* nonnull %arraydecay49, i32* nonnull %arraydecay50, i32* nonnull %arraydecay51)
  br label %for.body54

for.body54:                                       ; preds = %for.body54, %for.end44
  %indvars.iv = phi i64 [ 0, %for.end44 ], [ %indvars.iv.next.1, %for.body54 ]
  %arrayidx56 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_x, i64 0, i64 %indvars.iv
  %6 = load i32, i32* %arrayidx56, align 4
  %arrayidx58 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_y, i64 0, i64 %indvars.iv
  %7 = load i32, i32* %arrayidx58, align 4
  %arrayidx60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_z, i64 0, i64 %indvars.iv
  %8 = load i32, i32* %arrayidx60, align 4
  %call61 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %7, i32 %8) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx56.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_x, i64 0, i64 %indvars.iv.next
  %9 = load i32, i32* %arrayidx56.1, align 4
  %arrayidx58.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_y, i64 0, i64 %indvars.iv.next
  %10 = load i32, i32* %arrayidx58.1, align 4
  %arrayidx60.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_z, i64 0, i64 %indvars.iv.next
  %11 = load i32, i32* %arrayidx60.1, align 4
  %call61.1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10, i32 %11) #4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 1024
  br i1 %exitcond.1, label %for.body54, label %for.end64, !llvm.loop !12

for.end64:                                        ; preds = %for.body54
  ret i32 0

for.body32.1:                                     ; preds = %for.body32.1, %for.inc42
  %indvars.iv7.1 = phi i64 [ 0, %for.inc42 ], [ %indvars.iv.next8.1.1, %for.body32.1 ]
  %arrayidx36.115 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv.next12, i64 %indvars.iv7.1
  %12 = load i32, i32* %arrayidx36.115, align 4
  %13 = shl nsw i64 %indvars.iv.next12, 5
  %14 = add nuw nsw i64 %13, %indvars.iv7.1
  %arrayidx38.116 = getelementptr inbounds [1024 x i32], [1024 x i32]* %neighborList, i64 0, i64 %14
  store i32 %12, i32* %arrayidx38.116, align 4
  %indvars.iv.next8.117 = add nuw nsw i64 %indvars.iv7.1, 1
  %arrayidx36.1.1 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv.next12, i64 %indvars.iv.next8.117
  %15 = load i32, i32* %arrayidx36.1.1, align 4
  %16 = shl nsw i64 %indvars.iv.next12, 5
  %17 = add nuw nsw i64 %16, %indvars.iv.next8.117
  %arrayidx38.1.1 = getelementptr inbounds [1024 x i32], [1024 x i32]* %neighborList, i64 0, i64 %17
  store i32 %15, i32* %arrayidx38.1.1, align 4
  %indvars.iv.next8.1.1 = add nuw nsw i64 %indvars.iv.next8.117, 1
  %exitcond.110.1 = icmp ne i64 %indvars.iv.next8.1.1, 32
  br i1 %exitcond.110.1, label %for.body32.1, label %for.inc42.1, !llvm.loop !11

for.inc42.1:                                      ; preds = %for.body32.1
  %indvars.iv.next12.1 = add nuw nsw i64 %indvars.iv.next12, 1
  %exitcond.118 = icmp ne i64 %indvars.iv.next12.1, 32
  br i1 %exitcond.118, label %for.body29, label %for.end44, !llvm.loop !13

for.body12.1:                                     ; preds = %for.body12.1, %for.inc20
  %indvars.iv19.1 = phi i64 [ 0, %for.inc20 ], [ %indvars.iv.next20.1.1, %for.body12.1 ]
  %arrayidx16.124 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv.next23, i64 %indvars.iv19.1
  store i32 0, i32* %arrayidx16.124, align 4
  %indvars.iv.next20.125 = add nuw nsw i64 %indvars.iv19.1, 1
  %arrayidx16.1.1 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %indvars.iv.next23, i64 %indvars.iv.next20.125
  store i32 0, i32* %arrayidx16.1.1, align 4
  %indvars.iv.next20.1.1 = add nuw nsw i64 %indvars.iv.next20.125, 1
  %exitcond.121.1 = icmp ne i64 %indvars.iv.next20.1.1, 1024
  br i1 %exitcond.121.1, label %for.body12.1, label %for.inc20.1, !llvm.loop !10

for.inc20.1:                                      ; preds = %for.body12.1
  %indvars.iv.next23.1 = add nuw nsw i64 %indvars.iv.next23, 1
  %exitcond.126 = icmp ne i64 %indvars.iv.next23.1, 1024
  br i1 %exitcond.126, label %for.body9, label %for.end22, !llvm.loop !14
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
!3 = !{!"llvm.loop.unroll.disable"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
