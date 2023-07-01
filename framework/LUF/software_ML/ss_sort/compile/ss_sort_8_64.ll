; ModuleID = 'ss_sort_8_64.ll'
source_filename = "ss_sort_8_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print(i32* %a, i32 %size) #0 {
entry:
  %cmp1 = icmp sgt i32 %size, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %size to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @local_scan(i32* %bucket) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc9
  %indvars.iv6 = phi i64 [ 0, %entry ], [ %indvars.iv.next7, %for.inc9 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 1, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv6, 5
  %1 = add nuw nsw i64 %0, %indvars.iv
  %2 = add nsw i64 %1, -1
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %2
  %3 = load i32, i32* %arrayidx, align 4
  %4 = shl nsw i64 %indvars.iv6, 5
  %5 = add nuw nsw i64 %4, %indvars.iv
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %5
  %6 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %6, %3
  store i32 %add8, i32* %arrayidx7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 32
  br i1 %exitcond, label %for.body3, label %for.inc9, !llvm.loop !2

for.inc9:                                         ; preds = %for.body3
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next7, 524288
  br i1 %exitcond10, label %for.body, label %for.end11, !llvm.loop !4

for.end11:                                        ; preds = %for.inc9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sum_scan(i32* %sum, i32* %bucket) #0 {
entry:
  store i32 0, i32* %sum, align 4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = add nsw i64 %indvars.iv, -1
  %arrayidx1 = getelementptr inbounds i32, i32* %sum, i64 %0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = shl nsw i64 %indvars.iv, 5
  %3 = add nsw i64 %2, -1
  %arrayidx4 = getelementptr inbounds i32, i32* %bucket, i64 %3
  %4 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %1, %4
  %arrayidx6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  store i32 %add, i32* %arrayidx6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 524288
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !5

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @last_step_scan(i32* %bucket, i32* %sum) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc11
  %indvars.iv5 = phi i64 [ 0, %entry ], [ %indvars.iv.next6, %for.inc11 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv5, 5
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv5
  %3 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %2, %3
  %4 = shl nsw i64 %indvars.iv5, 5
  %5 = add nuw nsw i64 %4, %indvars.iv
  %arrayidx10 = getelementptr inbounds i32, i32* %bucket, i64 %5
  store i32 %add6, i32* %arrayidx10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 32
  br i1 %exitcond, label %for.body3, label %for.inc11, !llvm.loop !6

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next6, 524288
  br i1 %exitcond10, label %for.body, label %for.end13, !llvm.loop !7

for.end13:                                        ; preds = %for.inc11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(i32* %bucket) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv
  store i32 0, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 16777216
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !8

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hist(i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc10
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5, %for.inc10 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv4, 7
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, %exp
  %and = shl i32 %shr, 17
  %mul4 = and i32 %and, 393216
  %3 = trunc i64 %indvars.iv4 to i32
  %add5 = add nuw nsw i32 %mul4, %3
  %add6 = add nuw nsw i32 %add5, 1
  %idxprom7 = zext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7
  %4 = load i32, i32* %arrayidx8, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %arrayidx8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body3, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end12, !llvm.loop !10

for.end12:                                        ; preds = %for.inc10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update(i32* %b, i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc17.63, %entry
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5.63, %for.inc17.63 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv4, 7
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, %exp
  %and = shl i32 %shr, 17
  %mul4 = and i32 %and, 393216
  %3 = trunc i64 %indvars.iv4 to i32
  %add5 = add nuw nsw i32 %mul4, %3
  %idxprom6 = zext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6
  %4 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %b, i64 %idxprom8
  store i32 %2, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %4, 1
  %shr11 = ashr i32 %2, %exp
  %and12 = shl i32 %shr11, 17
  %mul13 = and i32 %and12, 393216
  %5 = trunc i64 %indvars.iv4 to i32
  %add14 = add nuw nsw i32 %mul13, %5
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15
  store i32 %add10, i32* %arrayidx16, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body3, label %for.inc17, !llvm.loop !11

for.inc17:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.body3.1

for.end19:                                        ; preds = %for.inc17.63
  ret void

for.body3.1:                                      ; preds = %for.body3.1, %for.inc17
  %indvars.iv.1 = phi i64 [ 0, %for.inc17 ], [ %indvars.iv.next.1, %for.body3.1 ]
  %6 = shl nsw i64 %indvars.iv.next5, 7
  %7 = add nuw nsw i64 %6, %indvars.iv.1
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %7
  %8 = load i32, i32* %arrayidx.1, align 4
  %shr.1 = ashr i32 %8, %exp
  %and.1 = shl i32 %shr.1, 17
  %mul4.1 = and i32 %and.1, 393216
  %9 = trunc i64 %indvars.iv.next5 to i32
  %add5.1 = add nuw nsw i32 %mul4.1, %9
  %idxprom6.1 = zext i32 %add5.1 to i64
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.1
  %10 = load i32, i32* %arrayidx7.1, align 4
  %idxprom8.1 = sext i32 %10 to i64
  %arrayidx9.1 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.1
  store i32 %8, i32* %arrayidx9.1, align 4
  %add10.1 = add nsw i32 %10, 1
  %shr11.1 = ashr i32 %8, %exp
  %and12.1 = shl i32 %shr11.1, 17
  %mul13.1 = and i32 %and12.1, 393216
  %11 = trunc i64 %indvars.iv.next5 to i32
  %add14.1 = add nuw nsw i32 %mul13.1, %11
  %idxprom15.1 = zext i32 %add14.1 to i64
  %arrayidx16.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.1
  store i32 %add10.1, i32* %arrayidx16.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 4
  br i1 %exitcond.1, label %for.body3.1, label %for.inc17.1, !llvm.loop !11

for.inc17.1:                                      ; preds = %for.body3.1
  %indvars.iv.next5.1 = add nuw nsw i64 %indvars.iv.next5, 1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.body3.2, %for.inc17.1
  %indvars.iv.2 = phi i64 [ 0, %for.inc17.1 ], [ %indvars.iv.next.2, %for.body3.2 ]
  %12 = shl nsw i64 %indvars.iv.next5.1, 7
  %13 = add nuw nsw i64 %12, %indvars.iv.2
  %arrayidx.2 = getelementptr inbounds i32, i32* %a, i64 %13
  %14 = load i32, i32* %arrayidx.2, align 4
  %shr.2 = ashr i32 %14, %exp
  %and.2 = shl i32 %shr.2, 17
  %mul4.2 = and i32 %and.2, 393216
  %15 = trunc i64 %indvars.iv.next5.1 to i32
  %add5.2 = add nuw nsw i32 %mul4.2, %15
  %idxprom6.2 = zext i32 %add5.2 to i64
  %arrayidx7.2 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.2
  %16 = load i32, i32* %arrayidx7.2, align 4
  %idxprom8.2 = sext i32 %16 to i64
  %arrayidx9.2 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.2
  store i32 %14, i32* %arrayidx9.2, align 4
  %add10.2 = add nsw i32 %16, 1
  %shr11.2 = ashr i32 %14, %exp
  %and12.2 = shl i32 %shr11.2, 17
  %mul13.2 = and i32 %and12.2, 393216
  %17 = trunc i64 %indvars.iv.next5.1 to i32
  %add14.2 = add nuw nsw i32 %mul13.2, %17
  %idxprom15.2 = zext i32 %add14.2 to i64
  %arrayidx16.2 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.2
  store i32 %add10.2, i32* %arrayidx16.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, 4
  br i1 %exitcond.2, label %for.body3.2, label %for.inc17.2, !llvm.loop !11

for.inc17.2:                                      ; preds = %for.body3.2
  %indvars.iv.next5.2 = add nuw nsw i64 %indvars.iv.next5.1, 1
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.body3.3, %for.inc17.2
  %indvars.iv.3 = phi i64 [ 0, %for.inc17.2 ], [ %indvars.iv.next.3, %for.body3.3 ]
  %18 = shl nsw i64 %indvars.iv.next5.2, 7
  %19 = add nuw nsw i64 %18, %indvars.iv.3
  %arrayidx.3 = getelementptr inbounds i32, i32* %a, i64 %19
  %20 = load i32, i32* %arrayidx.3, align 4
  %shr.3 = ashr i32 %20, %exp
  %and.3 = shl i32 %shr.3, 17
  %mul4.3 = and i32 %and.3, 393216
  %21 = trunc i64 %indvars.iv.next5.2 to i32
  %add5.3 = add nuw nsw i32 %mul4.3, %21
  %idxprom6.3 = zext i32 %add5.3 to i64
  %arrayidx7.3 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.3
  %22 = load i32, i32* %arrayidx7.3, align 4
  %idxprom8.3 = sext i32 %22 to i64
  %arrayidx9.3 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.3
  store i32 %20, i32* %arrayidx9.3, align 4
  %add10.3 = add nsw i32 %22, 1
  %shr11.3 = ashr i32 %20, %exp
  %and12.3 = shl i32 %shr11.3, 17
  %mul13.3 = and i32 %and12.3, 393216
  %23 = trunc i64 %indvars.iv.next5.2 to i32
  %add14.3 = add nuw nsw i32 %mul13.3, %23
  %idxprom15.3 = zext i32 %add14.3 to i64
  %arrayidx16.3 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.3
  store i32 %add10.3, i32* %arrayidx16.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, 4
  br i1 %exitcond.3, label %for.body3.3, label %for.inc17.3, !llvm.loop !11

for.inc17.3:                                      ; preds = %for.body3.3
  %indvars.iv.next5.3 = add nuw nsw i64 %indvars.iv.next5.2, 1
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.body3.4, %for.inc17.3
  %indvars.iv.4 = phi i64 [ 0, %for.inc17.3 ], [ %indvars.iv.next.4, %for.body3.4 ]
  %24 = shl nsw i64 %indvars.iv.next5.3, 7
  %25 = add nuw nsw i64 %24, %indvars.iv.4
  %arrayidx.4 = getelementptr inbounds i32, i32* %a, i64 %25
  %26 = load i32, i32* %arrayidx.4, align 4
  %shr.4 = ashr i32 %26, %exp
  %and.4 = shl i32 %shr.4, 17
  %mul4.4 = and i32 %and.4, 393216
  %27 = trunc i64 %indvars.iv.next5.3 to i32
  %add5.4 = add nuw nsw i32 %mul4.4, %27
  %idxprom6.4 = zext i32 %add5.4 to i64
  %arrayidx7.4 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.4
  %28 = load i32, i32* %arrayidx7.4, align 4
  %idxprom8.4 = sext i32 %28 to i64
  %arrayidx9.4 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.4
  store i32 %26, i32* %arrayidx9.4, align 4
  %add10.4 = add nsw i32 %28, 1
  %shr11.4 = ashr i32 %26, %exp
  %and12.4 = shl i32 %shr11.4, 17
  %mul13.4 = and i32 %and12.4, 393216
  %29 = trunc i64 %indvars.iv.next5.3 to i32
  %add14.4 = add nuw nsw i32 %mul13.4, %29
  %idxprom15.4 = zext i32 %add14.4 to i64
  %arrayidx16.4 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.4
  store i32 %add10.4, i32* %arrayidx16.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4 = icmp ne i64 %indvars.iv.next.4, 4
  br i1 %exitcond.4, label %for.body3.4, label %for.inc17.4, !llvm.loop !11

for.inc17.4:                                      ; preds = %for.body3.4
  %indvars.iv.next5.4 = add nuw nsw i64 %indvars.iv.next5.3, 1
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.body3.5, %for.inc17.4
  %indvars.iv.5 = phi i64 [ 0, %for.inc17.4 ], [ %indvars.iv.next.5, %for.body3.5 ]
  %30 = shl nsw i64 %indvars.iv.next5.4, 7
  %31 = add nuw nsw i64 %30, %indvars.iv.5
  %arrayidx.5 = getelementptr inbounds i32, i32* %a, i64 %31
  %32 = load i32, i32* %arrayidx.5, align 4
  %shr.5 = ashr i32 %32, %exp
  %and.5 = shl i32 %shr.5, 17
  %mul4.5 = and i32 %and.5, 393216
  %33 = trunc i64 %indvars.iv.next5.4 to i32
  %add5.5 = add nuw nsw i32 %mul4.5, %33
  %idxprom6.5 = zext i32 %add5.5 to i64
  %arrayidx7.5 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.5
  %34 = load i32, i32* %arrayidx7.5, align 4
  %idxprom8.5 = sext i32 %34 to i64
  %arrayidx9.5 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.5
  store i32 %32, i32* %arrayidx9.5, align 4
  %add10.5 = add nsw i32 %34, 1
  %shr11.5 = ashr i32 %32, %exp
  %and12.5 = shl i32 %shr11.5, 17
  %mul13.5 = and i32 %and12.5, 393216
  %35 = trunc i64 %indvars.iv.next5.4 to i32
  %add14.5 = add nuw nsw i32 %mul13.5, %35
  %idxprom15.5 = zext i32 %add14.5 to i64
  %arrayidx16.5 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.5
  store i32 %add10.5, i32* %arrayidx16.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5 = icmp ne i64 %indvars.iv.next.5, 4
  br i1 %exitcond.5, label %for.body3.5, label %for.inc17.5, !llvm.loop !11

for.inc17.5:                                      ; preds = %for.body3.5
  %indvars.iv.next5.5 = add nuw nsw i64 %indvars.iv.next5.4, 1
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.body3.6, %for.inc17.5
  %indvars.iv.6 = phi i64 [ 0, %for.inc17.5 ], [ %indvars.iv.next.6, %for.body3.6 ]
  %36 = shl nsw i64 %indvars.iv.next5.5, 7
  %37 = add nuw nsw i64 %36, %indvars.iv.6
  %arrayidx.6 = getelementptr inbounds i32, i32* %a, i64 %37
  %38 = load i32, i32* %arrayidx.6, align 4
  %shr.6 = ashr i32 %38, %exp
  %and.6 = shl i32 %shr.6, 17
  %mul4.6 = and i32 %and.6, 393216
  %39 = trunc i64 %indvars.iv.next5.5 to i32
  %add5.6 = add nuw nsw i32 %mul4.6, %39
  %idxprom6.6 = zext i32 %add5.6 to i64
  %arrayidx7.6 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.6
  %40 = load i32, i32* %arrayidx7.6, align 4
  %idxprom8.6 = sext i32 %40 to i64
  %arrayidx9.6 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.6
  store i32 %38, i32* %arrayidx9.6, align 4
  %add10.6 = add nsw i32 %40, 1
  %shr11.6 = ashr i32 %38, %exp
  %and12.6 = shl i32 %shr11.6, 17
  %mul13.6 = and i32 %and12.6, 393216
  %41 = trunc i64 %indvars.iv.next5.5 to i32
  %add14.6 = add nuw nsw i32 %mul13.6, %41
  %idxprom15.6 = zext i32 %add14.6 to i64
  %arrayidx16.6 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.6
  store i32 %add10.6, i32* %arrayidx16.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6 = icmp ne i64 %indvars.iv.next.6, 4
  br i1 %exitcond.6, label %for.body3.6, label %for.inc17.6, !llvm.loop !11

for.inc17.6:                                      ; preds = %for.body3.6
  %indvars.iv.next5.6 = add nuw nsw i64 %indvars.iv.next5.5, 1
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.body3.7, %for.inc17.6
  %indvars.iv.7 = phi i64 [ 0, %for.inc17.6 ], [ %indvars.iv.next.7, %for.body3.7 ]
  %42 = shl nsw i64 %indvars.iv.next5.6, 7
  %43 = add nuw nsw i64 %42, %indvars.iv.7
  %arrayidx.7 = getelementptr inbounds i32, i32* %a, i64 %43
  %44 = load i32, i32* %arrayidx.7, align 4
  %shr.7 = ashr i32 %44, %exp
  %and.7 = shl i32 %shr.7, 17
  %mul4.7 = and i32 %and.7, 393216
  %45 = trunc i64 %indvars.iv.next5.6 to i32
  %add5.7 = add nuw nsw i32 %mul4.7, %45
  %idxprom6.7 = zext i32 %add5.7 to i64
  %arrayidx7.7 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.7
  %46 = load i32, i32* %arrayidx7.7, align 4
  %idxprom8.7 = sext i32 %46 to i64
  %arrayidx9.7 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.7
  store i32 %44, i32* %arrayidx9.7, align 4
  %add10.7 = add nsw i32 %46, 1
  %shr11.7 = ashr i32 %44, %exp
  %and12.7 = shl i32 %shr11.7, 17
  %mul13.7 = and i32 %and12.7, 393216
  %47 = trunc i64 %indvars.iv.next5.6 to i32
  %add14.7 = add nuw nsw i32 %mul13.7, %47
  %idxprom15.7 = zext i32 %add14.7 to i64
  %arrayidx16.7 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.7
  store i32 %add10.7, i32* %arrayidx16.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7 = icmp ne i64 %indvars.iv.next.7, 4
  br i1 %exitcond.7, label %for.body3.7, label %for.inc17.7, !llvm.loop !11

for.inc17.7:                                      ; preds = %for.body3.7
  %indvars.iv.next5.7 = add nuw nsw i64 %indvars.iv.next5.6, 1
  br label %for.body3.8

for.body3.8:                                      ; preds = %for.body3.8, %for.inc17.7
  %indvars.iv.8 = phi i64 [ 0, %for.inc17.7 ], [ %indvars.iv.next.8, %for.body3.8 ]
  %48 = shl nsw i64 %indvars.iv.next5.7, 7
  %49 = add nuw nsw i64 %48, %indvars.iv.8
  %arrayidx.8 = getelementptr inbounds i32, i32* %a, i64 %49
  %50 = load i32, i32* %arrayidx.8, align 4
  %shr.8 = ashr i32 %50, %exp
  %and.8 = shl i32 %shr.8, 17
  %mul4.8 = and i32 %and.8, 393216
  %51 = trunc i64 %indvars.iv.next5.7 to i32
  %add5.8 = add nuw nsw i32 %mul4.8, %51
  %idxprom6.8 = zext i32 %add5.8 to i64
  %arrayidx7.8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.8
  %52 = load i32, i32* %arrayidx7.8, align 4
  %idxprom8.8 = sext i32 %52 to i64
  %arrayidx9.8 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.8
  store i32 %50, i32* %arrayidx9.8, align 4
  %add10.8 = add nsw i32 %52, 1
  %shr11.8 = ashr i32 %50, %exp
  %and12.8 = shl i32 %shr11.8, 17
  %mul13.8 = and i32 %and12.8, 393216
  %53 = trunc i64 %indvars.iv.next5.7 to i32
  %add14.8 = add nuw nsw i32 %mul13.8, %53
  %idxprom15.8 = zext i32 %add14.8 to i64
  %arrayidx16.8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.8
  store i32 %add10.8, i32* %arrayidx16.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1
  %exitcond.8 = icmp ne i64 %indvars.iv.next.8, 4
  br i1 %exitcond.8, label %for.body3.8, label %for.inc17.8, !llvm.loop !11

for.inc17.8:                                      ; preds = %for.body3.8
  %indvars.iv.next5.8 = add nuw nsw i64 %indvars.iv.next5.7, 1
  br label %for.body3.9

for.body3.9:                                      ; preds = %for.body3.9, %for.inc17.8
  %indvars.iv.9 = phi i64 [ 0, %for.inc17.8 ], [ %indvars.iv.next.9, %for.body3.9 ]
  %54 = shl nsw i64 %indvars.iv.next5.8, 7
  %55 = add nuw nsw i64 %54, %indvars.iv.9
  %arrayidx.9 = getelementptr inbounds i32, i32* %a, i64 %55
  %56 = load i32, i32* %arrayidx.9, align 4
  %shr.9 = ashr i32 %56, %exp
  %and.9 = shl i32 %shr.9, 17
  %mul4.9 = and i32 %and.9, 393216
  %57 = trunc i64 %indvars.iv.next5.8 to i32
  %add5.9 = add nuw nsw i32 %mul4.9, %57
  %idxprom6.9 = zext i32 %add5.9 to i64
  %arrayidx7.9 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.9
  %58 = load i32, i32* %arrayidx7.9, align 4
  %idxprom8.9 = sext i32 %58 to i64
  %arrayidx9.9 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.9
  store i32 %56, i32* %arrayidx9.9, align 4
  %add10.9 = add nsw i32 %58, 1
  %shr11.9 = ashr i32 %56, %exp
  %and12.9 = shl i32 %shr11.9, 17
  %mul13.9 = and i32 %and12.9, 393216
  %59 = trunc i64 %indvars.iv.next5.8 to i32
  %add14.9 = add nuw nsw i32 %mul13.9, %59
  %idxprom15.9 = zext i32 %add14.9 to i64
  %arrayidx16.9 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.9
  store i32 %add10.9, i32* %arrayidx16.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1
  %exitcond.9 = icmp ne i64 %indvars.iv.next.9, 4
  br i1 %exitcond.9, label %for.body3.9, label %for.inc17.9, !llvm.loop !11

for.inc17.9:                                      ; preds = %for.body3.9
  %indvars.iv.next5.9 = add nuw nsw i64 %indvars.iv.next5.8, 1
  br label %for.body3.10

for.body3.10:                                     ; preds = %for.body3.10, %for.inc17.9
  %indvars.iv.10 = phi i64 [ 0, %for.inc17.9 ], [ %indvars.iv.next.10, %for.body3.10 ]
  %60 = shl nsw i64 %indvars.iv.next5.9, 7
  %61 = add nuw nsw i64 %60, %indvars.iv.10
  %arrayidx.10 = getelementptr inbounds i32, i32* %a, i64 %61
  %62 = load i32, i32* %arrayidx.10, align 4
  %shr.10 = ashr i32 %62, %exp
  %and.10 = shl i32 %shr.10, 17
  %mul4.10 = and i32 %and.10, 393216
  %63 = trunc i64 %indvars.iv.next5.9 to i32
  %add5.10 = add nuw nsw i32 %mul4.10, %63
  %idxprom6.10 = zext i32 %add5.10 to i64
  %arrayidx7.10 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.10
  %64 = load i32, i32* %arrayidx7.10, align 4
  %idxprom8.10 = sext i32 %64 to i64
  %arrayidx9.10 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.10
  store i32 %62, i32* %arrayidx9.10, align 4
  %add10.10 = add nsw i32 %64, 1
  %shr11.10 = ashr i32 %62, %exp
  %and12.10 = shl i32 %shr11.10, 17
  %mul13.10 = and i32 %and12.10, 393216
  %65 = trunc i64 %indvars.iv.next5.9 to i32
  %add14.10 = add nuw nsw i32 %mul13.10, %65
  %idxprom15.10 = zext i32 %add14.10 to i64
  %arrayidx16.10 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.10
  store i32 %add10.10, i32* %arrayidx16.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.10, 1
  %exitcond.10 = icmp ne i64 %indvars.iv.next.10, 4
  br i1 %exitcond.10, label %for.body3.10, label %for.inc17.10, !llvm.loop !11

for.inc17.10:                                     ; preds = %for.body3.10
  %indvars.iv.next5.10 = add nuw nsw i64 %indvars.iv.next5.9, 1
  br label %for.body3.11

for.body3.11:                                     ; preds = %for.body3.11, %for.inc17.10
  %indvars.iv.11 = phi i64 [ 0, %for.inc17.10 ], [ %indvars.iv.next.11, %for.body3.11 ]
  %66 = shl nsw i64 %indvars.iv.next5.10, 7
  %67 = add nuw nsw i64 %66, %indvars.iv.11
  %arrayidx.11 = getelementptr inbounds i32, i32* %a, i64 %67
  %68 = load i32, i32* %arrayidx.11, align 4
  %shr.11 = ashr i32 %68, %exp
  %and.11 = shl i32 %shr.11, 17
  %mul4.11 = and i32 %and.11, 393216
  %69 = trunc i64 %indvars.iv.next5.10 to i32
  %add5.11 = add nuw nsw i32 %mul4.11, %69
  %idxprom6.11 = zext i32 %add5.11 to i64
  %arrayidx7.11 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.11
  %70 = load i32, i32* %arrayidx7.11, align 4
  %idxprom8.11 = sext i32 %70 to i64
  %arrayidx9.11 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.11
  store i32 %68, i32* %arrayidx9.11, align 4
  %add10.11 = add nsw i32 %70, 1
  %shr11.11 = ashr i32 %68, %exp
  %and12.11 = shl i32 %shr11.11, 17
  %mul13.11 = and i32 %and12.11, 393216
  %71 = trunc i64 %indvars.iv.next5.10 to i32
  %add14.11 = add nuw nsw i32 %mul13.11, %71
  %idxprom15.11 = zext i32 %add14.11 to i64
  %arrayidx16.11 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.11
  store i32 %add10.11, i32* %arrayidx16.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.11, 1
  %exitcond.11 = icmp ne i64 %indvars.iv.next.11, 4
  br i1 %exitcond.11, label %for.body3.11, label %for.inc17.11, !llvm.loop !11

for.inc17.11:                                     ; preds = %for.body3.11
  %indvars.iv.next5.11 = add nuw nsw i64 %indvars.iv.next5.10, 1
  br label %for.body3.12

for.body3.12:                                     ; preds = %for.body3.12, %for.inc17.11
  %indvars.iv.12 = phi i64 [ 0, %for.inc17.11 ], [ %indvars.iv.next.12, %for.body3.12 ]
  %72 = shl nsw i64 %indvars.iv.next5.11, 7
  %73 = add nuw nsw i64 %72, %indvars.iv.12
  %arrayidx.12 = getelementptr inbounds i32, i32* %a, i64 %73
  %74 = load i32, i32* %arrayidx.12, align 4
  %shr.12 = ashr i32 %74, %exp
  %and.12 = shl i32 %shr.12, 17
  %mul4.12 = and i32 %and.12, 393216
  %75 = trunc i64 %indvars.iv.next5.11 to i32
  %add5.12 = add nuw nsw i32 %mul4.12, %75
  %idxprom6.12 = zext i32 %add5.12 to i64
  %arrayidx7.12 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.12
  %76 = load i32, i32* %arrayidx7.12, align 4
  %idxprom8.12 = sext i32 %76 to i64
  %arrayidx9.12 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.12
  store i32 %74, i32* %arrayidx9.12, align 4
  %add10.12 = add nsw i32 %76, 1
  %shr11.12 = ashr i32 %74, %exp
  %and12.12 = shl i32 %shr11.12, 17
  %mul13.12 = and i32 %and12.12, 393216
  %77 = trunc i64 %indvars.iv.next5.11 to i32
  %add14.12 = add nuw nsw i32 %mul13.12, %77
  %idxprom15.12 = zext i32 %add14.12 to i64
  %arrayidx16.12 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.12
  store i32 %add10.12, i32* %arrayidx16.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.12, 1
  %exitcond.12 = icmp ne i64 %indvars.iv.next.12, 4
  br i1 %exitcond.12, label %for.body3.12, label %for.inc17.12, !llvm.loop !11

for.inc17.12:                                     ; preds = %for.body3.12
  %indvars.iv.next5.12 = add nuw nsw i64 %indvars.iv.next5.11, 1
  br label %for.body3.13

for.body3.13:                                     ; preds = %for.body3.13, %for.inc17.12
  %indvars.iv.13 = phi i64 [ 0, %for.inc17.12 ], [ %indvars.iv.next.13, %for.body3.13 ]
  %78 = shl nsw i64 %indvars.iv.next5.12, 7
  %79 = add nuw nsw i64 %78, %indvars.iv.13
  %arrayidx.13 = getelementptr inbounds i32, i32* %a, i64 %79
  %80 = load i32, i32* %arrayidx.13, align 4
  %shr.13 = ashr i32 %80, %exp
  %and.13 = shl i32 %shr.13, 17
  %mul4.13 = and i32 %and.13, 393216
  %81 = trunc i64 %indvars.iv.next5.12 to i32
  %add5.13 = add nuw nsw i32 %mul4.13, %81
  %idxprom6.13 = zext i32 %add5.13 to i64
  %arrayidx7.13 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.13
  %82 = load i32, i32* %arrayidx7.13, align 4
  %idxprom8.13 = sext i32 %82 to i64
  %arrayidx9.13 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.13
  store i32 %80, i32* %arrayidx9.13, align 4
  %add10.13 = add nsw i32 %82, 1
  %shr11.13 = ashr i32 %80, %exp
  %and12.13 = shl i32 %shr11.13, 17
  %mul13.13 = and i32 %and12.13, 393216
  %83 = trunc i64 %indvars.iv.next5.12 to i32
  %add14.13 = add nuw nsw i32 %mul13.13, %83
  %idxprom15.13 = zext i32 %add14.13 to i64
  %arrayidx16.13 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.13
  store i32 %add10.13, i32* %arrayidx16.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.13, 1
  %exitcond.13 = icmp ne i64 %indvars.iv.next.13, 4
  br i1 %exitcond.13, label %for.body3.13, label %for.inc17.13, !llvm.loop !11

for.inc17.13:                                     ; preds = %for.body3.13
  %indvars.iv.next5.13 = add nuw nsw i64 %indvars.iv.next5.12, 1
  br label %for.body3.14

for.body3.14:                                     ; preds = %for.body3.14, %for.inc17.13
  %indvars.iv.14 = phi i64 [ 0, %for.inc17.13 ], [ %indvars.iv.next.14, %for.body3.14 ]
  %84 = shl nsw i64 %indvars.iv.next5.13, 7
  %85 = add nuw nsw i64 %84, %indvars.iv.14
  %arrayidx.14 = getelementptr inbounds i32, i32* %a, i64 %85
  %86 = load i32, i32* %arrayidx.14, align 4
  %shr.14 = ashr i32 %86, %exp
  %and.14 = shl i32 %shr.14, 17
  %mul4.14 = and i32 %and.14, 393216
  %87 = trunc i64 %indvars.iv.next5.13 to i32
  %add5.14 = add nuw nsw i32 %mul4.14, %87
  %idxprom6.14 = zext i32 %add5.14 to i64
  %arrayidx7.14 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.14
  %88 = load i32, i32* %arrayidx7.14, align 4
  %idxprom8.14 = sext i32 %88 to i64
  %arrayidx9.14 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.14
  store i32 %86, i32* %arrayidx9.14, align 4
  %add10.14 = add nsw i32 %88, 1
  %shr11.14 = ashr i32 %86, %exp
  %and12.14 = shl i32 %shr11.14, 17
  %mul13.14 = and i32 %and12.14, 393216
  %89 = trunc i64 %indvars.iv.next5.13 to i32
  %add14.14 = add nuw nsw i32 %mul13.14, %89
  %idxprom15.14 = zext i32 %add14.14 to i64
  %arrayidx16.14 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.14
  store i32 %add10.14, i32* %arrayidx16.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.14, 1
  %exitcond.14 = icmp ne i64 %indvars.iv.next.14, 4
  br i1 %exitcond.14, label %for.body3.14, label %for.inc17.14, !llvm.loop !11

for.inc17.14:                                     ; preds = %for.body3.14
  %indvars.iv.next5.14 = add nuw nsw i64 %indvars.iv.next5.13, 1
  br label %for.body3.15

for.body3.15:                                     ; preds = %for.body3.15, %for.inc17.14
  %indvars.iv.15 = phi i64 [ 0, %for.inc17.14 ], [ %indvars.iv.next.15, %for.body3.15 ]
  %90 = shl nsw i64 %indvars.iv.next5.14, 7
  %91 = add nuw nsw i64 %90, %indvars.iv.15
  %arrayidx.15 = getelementptr inbounds i32, i32* %a, i64 %91
  %92 = load i32, i32* %arrayidx.15, align 4
  %shr.15 = ashr i32 %92, %exp
  %and.15 = shl i32 %shr.15, 17
  %mul4.15 = and i32 %and.15, 393216
  %93 = trunc i64 %indvars.iv.next5.14 to i32
  %add5.15 = add nuw nsw i32 %mul4.15, %93
  %idxprom6.15 = zext i32 %add5.15 to i64
  %arrayidx7.15 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.15
  %94 = load i32, i32* %arrayidx7.15, align 4
  %idxprom8.15 = sext i32 %94 to i64
  %arrayidx9.15 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.15
  store i32 %92, i32* %arrayidx9.15, align 4
  %add10.15 = add nsw i32 %94, 1
  %shr11.15 = ashr i32 %92, %exp
  %and12.15 = shl i32 %shr11.15, 17
  %mul13.15 = and i32 %and12.15, 393216
  %95 = trunc i64 %indvars.iv.next5.14 to i32
  %add14.15 = add nuw nsw i32 %mul13.15, %95
  %idxprom15.15 = zext i32 %add14.15 to i64
  %arrayidx16.15 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.15
  store i32 %add10.15, i32* %arrayidx16.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.15, 1
  %exitcond.15 = icmp ne i64 %indvars.iv.next.15, 4
  br i1 %exitcond.15, label %for.body3.15, label %for.inc17.15, !llvm.loop !11

for.inc17.15:                                     ; preds = %for.body3.15
  %indvars.iv.next5.15 = add nuw nsw i64 %indvars.iv.next5.14, 1
  br label %for.body3.16

for.body3.16:                                     ; preds = %for.body3.16, %for.inc17.15
  %indvars.iv.16 = phi i64 [ 0, %for.inc17.15 ], [ %indvars.iv.next.16, %for.body3.16 ]
  %96 = shl nsw i64 %indvars.iv.next5.15, 7
  %97 = add nuw nsw i64 %96, %indvars.iv.16
  %arrayidx.16 = getelementptr inbounds i32, i32* %a, i64 %97
  %98 = load i32, i32* %arrayidx.16, align 4
  %shr.16 = ashr i32 %98, %exp
  %and.16 = shl i32 %shr.16, 17
  %mul4.16 = and i32 %and.16, 393216
  %99 = trunc i64 %indvars.iv.next5.15 to i32
  %add5.16 = add nuw nsw i32 %mul4.16, %99
  %idxprom6.16 = zext i32 %add5.16 to i64
  %arrayidx7.16 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.16
  %100 = load i32, i32* %arrayidx7.16, align 4
  %idxprom8.16 = sext i32 %100 to i64
  %arrayidx9.16 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.16
  store i32 %98, i32* %arrayidx9.16, align 4
  %add10.16 = add nsw i32 %100, 1
  %shr11.16 = ashr i32 %98, %exp
  %and12.16 = shl i32 %shr11.16, 17
  %mul13.16 = and i32 %and12.16, 393216
  %101 = trunc i64 %indvars.iv.next5.15 to i32
  %add14.16 = add nuw nsw i32 %mul13.16, %101
  %idxprom15.16 = zext i32 %add14.16 to i64
  %arrayidx16.16 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.16
  store i32 %add10.16, i32* %arrayidx16.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.16, 1
  %exitcond.16 = icmp ne i64 %indvars.iv.next.16, 4
  br i1 %exitcond.16, label %for.body3.16, label %for.inc17.16, !llvm.loop !11

for.inc17.16:                                     ; preds = %for.body3.16
  %indvars.iv.next5.16 = add nuw nsw i64 %indvars.iv.next5.15, 1
  br label %for.body3.17

for.body3.17:                                     ; preds = %for.body3.17, %for.inc17.16
  %indvars.iv.17 = phi i64 [ 0, %for.inc17.16 ], [ %indvars.iv.next.17, %for.body3.17 ]
  %102 = shl nsw i64 %indvars.iv.next5.16, 7
  %103 = add nuw nsw i64 %102, %indvars.iv.17
  %arrayidx.17 = getelementptr inbounds i32, i32* %a, i64 %103
  %104 = load i32, i32* %arrayidx.17, align 4
  %shr.17 = ashr i32 %104, %exp
  %and.17 = shl i32 %shr.17, 17
  %mul4.17 = and i32 %and.17, 393216
  %105 = trunc i64 %indvars.iv.next5.16 to i32
  %add5.17 = add nuw nsw i32 %mul4.17, %105
  %idxprom6.17 = zext i32 %add5.17 to i64
  %arrayidx7.17 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.17
  %106 = load i32, i32* %arrayidx7.17, align 4
  %idxprom8.17 = sext i32 %106 to i64
  %arrayidx9.17 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.17
  store i32 %104, i32* %arrayidx9.17, align 4
  %add10.17 = add nsw i32 %106, 1
  %shr11.17 = ashr i32 %104, %exp
  %and12.17 = shl i32 %shr11.17, 17
  %mul13.17 = and i32 %and12.17, 393216
  %107 = trunc i64 %indvars.iv.next5.16 to i32
  %add14.17 = add nuw nsw i32 %mul13.17, %107
  %idxprom15.17 = zext i32 %add14.17 to i64
  %arrayidx16.17 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.17
  store i32 %add10.17, i32* %arrayidx16.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.17, 1
  %exitcond.17 = icmp ne i64 %indvars.iv.next.17, 4
  br i1 %exitcond.17, label %for.body3.17, label %for.inc17.17, !llvm.loop !11

for.inc17.17:                                     ; preds = %for.body3.17
  %indvars.iv.next5.17 = add nuw nsw i64 %indvars.iv.next5.16, 1
  br label %for.body3.18

for.body3.18:                                     ; preds = %for.body3.18, %for.inc17.17
  %indvars.iv.18 = phi i64 [ 0, %for.inc17.17 ], [ %indvars.iv.next.18, %for.body3.18 ]
  %108 = shl nsw i64 %indvars.iv.next5.17, 7
  %109 = add nuw nsw i64 %108, %indvars.iv.18
  %arrayidx.18 = getelementptr inbounds i32, i32* %a, i64 %109
  %110 = load i32, i32* %arrayidx.18, align 4
  %shr.18 = ashr i32 %110, %exp
  %and.18 = shl i32 %shr.18, 17
  %mul4.18 = and i32 %and.18, 393216
  %111 = trunc i64 %indvars.iv.next5.17 to i32
  %add5.18 = add nuw nsw i32 %mul4.18, %111
  %idxprom6.18 = zext i32 %add5.18 to i64
  %arrayidx7.18 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.18
  %112 = load i32, i32* %arrayidx7.18, align 4
  %idxprom8.18 = sext i32 %112 to i64
  %arrayidx9.18 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.18
  store i32 %110, i32* %arrayidx9.18, align 4
  %add10.18 = add nsw i32 %112, 1
  %shr11.18 = ashr i32 %110, %exp
  %and12.18 = shl i32 %shr11.18, 17
  %mul13.18 = and i32 %and12.18, 393216
  %113 = trunc i64 %indvars.iv.next5.17 to i32
  %add14.18 = add nuw nsw i32 %mul13.18, %113
  %idxprom15.18 = zext i32 %add14.18 to i64
  %arrayidx16.18 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.18
  store i32 %add10.18, i32* %arrayidx16.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.18, 1
  %exitcond.18 = icmp ne i64 %indvars.iv.next.18, 4
  br i1 %exitcond.18, label %for.body3.18, label %for.inc17.18, !llvm.loop !11

for.inc17.18:                                     ; preds = %for.body3.18
  %indvars.iv.next5.18 = add nuw nsw i64 %indvars.iv.next5.17, 1
  br label %for.body3.19

for.body3.19:                                     ; preds = %for.body3.19, %for.inc17.18
  %indvars.iv.19 = phi i64 [ 0, %for.inc17.18 ], [ %indvars.iv.next.19, %for.body3.19 ]
  %114 = shl nsw i64 %indvars.iv.next5.18, 7
  %115 = add nuw nsw i64 %114, %indvars.iv.19
  %arrayidx.19 = getelementptr inbounds i32, i32* %a, i64 %115
  %116 = load i32, i32* %arrayidx.19, align 4
  %shr.19 = ashr i32 %116, %exp
  %and.19 = shl i32 %shr.19, 17
  %mul4.19 = and i32 %and.19, 393216
  %117 = trunc i64 %indvars.iv.next5.18 to i32
  %add5.19 = add nuw nsw i32 %mul4.19, %117
  %idxprom6.19 = zext i32 %add5.19 to i64
  %arrayidx7.19 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.19
  %118 = load i32, i32* %arrayidx7.19, align 4
  %idxprom8.19 = sext i32 %118 to i64
  %arrayidx9.19 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.19
  store i32 %116, i32* %arrayidx9.19, align 4
  %add10.19 = add nsw i32 %118, 1
  %shr11.19 = ashr i32 %116, %exp
  %and12.19 = shl i32 %shr11.19, 17
  %mul13.19 = and i32 %and12.19, 393216
  %119 = trunc i64 %indvars.iv.next5.18 to i32
  %add14.19 = add nuw nsw i32 %mul13.19, %119
  %idxprom15.19 = zext i32 %add14.19 to i64
  %arrayidx16.19 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.19
  store i32 %add10.19, i32* %arrayidx16.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.19, 1
  %exitcond.19 = icmp ne i64 %indvars.iv.next.19, 4
  br i1 %exitcond.19, label %for.body3.19, label %for.inc17.19, !llvm.loop !11

for.inc17.19:                                     ; preds = %for.body3.19
  %indvars.iv.next5.19 = add nuw nsw i64 %indvars.iv.next5.18, 1
  br label %for.body3.20

for.body3.20:                                     ; preds = %for.body3.20, %for.inc17.19
  %indvars.iv.20 = phi i64 [ 0, %for.inc17.19 ], [ %indvars.iv.next.20, %for.body3.20 ]
  %120 = shl nsw i64 %indvars.iv.next5.19, 7
  %121 = add nuw nsw i64 %120, %indvars.iv.20
  %arrayidx.20 = getelementptr inbounds i32, i32* %a, i64 %121
  %122 = load i32, i32* %arrayidx.20, align 4
  %shr.20 = ashr i32 %122, %exp
  %and.20 = shl i32 %shr.20, 17
  %mul4.20 = and i32 %and.20, 393216
  %123 = trunc i64 %indvars.iv.next5.19 to i32
  %add5.20 = add nuw nsw i32 %mul4.20, %123
  %idxprom6.20 = zext i32 %add5.20 to i64
  %arrayidx7.20 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.20
  %124 = load i32, i32* %arrayidx7.20, align 4
  %idxprom8.20 = sext i32 %124 to i64
  %arrayidx9.20 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.20
  store i32 %122, i32* %arrayidx9.20, align 4
  %add10.20 = add nsw i32 %124, 1
  %shr11.20 = ashr i32 %122, %exp
  %and12.20 = shl i32 %shr11.20, 17
  %mul13.20 = and i32 %and12.20, 393216
  %125 = trunc i64 %indvars.iv.next5.19 to i32
  %add14.20 = add nuw nsw i32 %mul13.20, %125
  %idxprom15.20 = zext i32 %add14.20 to i64
  %arrayidx16.20 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.20
  store i32 %add10.20, i32* %arrayidx16.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.20, 1
  %exitcond.20 = icmp ne i64 %indvars.iv.next.20, 4
  br i1 %exitcond.20, label %for.body3.20, label %for.inc17.20, !llvm.loop !11

for.inc17.20:                                     ; preds = %for.body3.20
  %indvars.iv.next5.20 = add nuw nsw i64 %indvars.iv.next5.19, 1
  br label %for.body3.21

for.body3.21:                                     ; preds = %for.body3.21, %for.inc17.20
  %indvars.iv.21 = phi i64 [ 0, %for.inc17.20 ], [ %indvars.iv.next.21, %for.body3.21 ]
  %126 = shl nsw i64 %indvars.iv.next5.20, 7
  %127 = add nuw nsw i64 %126, %indvars.iv.21
  %arrayidx.21 = getelementptr inbounds i32, i32* %a, i64 %127
  %128 = load i32, i32* %arrayidx.21, align 4
  %shr.21 = ashr i32 %128, %exp
  %and.21 = shl i32 %shr.21, 17
  %mul4.21 = and i32 %and.21, 393216
  %129 = trunc i64 %indvars.iv.next5.20 to i32
  %add5.21 = add nuw nsw i32 %mul4.21, %129
  %idxprom6.21 = zext i32 %add5.21 to i64
  %arrayidx7.21 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.21
  %130 = load i32, i32* %arrayidx7.21, align 4
  %idxprom8.21 = sext i32 %130 to i64
  %arrayidx9.21 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.21
  store i32 %128, i32* %arrayidx9.21, align 4
  %add10.21 = add nsw i32 %130, 1
  %shr11.21 = ashr i32 %128, %exp
  %and12.21 = shl i32 %shr11.21, 17
  %mul13.21 = and i32 %and12.21, 393216
  %131 = trunc i64 %indvars.iv.next5.20 to i32
  %add14.21 = add nuw nsw i32 %mul13.21, %131
  %idxprom15.21 = zext i32 %add14.21 to i64
  %arrayidx16.21 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.21
  store i32 %add10.21, i32* %arrayidx16.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.21, 1
  %exitcond.21 = icmp ne i64 %indvars.iv.next.21, 4
  br i1 %exitcond.21, label %for.body3.21, label %for.inc17.21, !llvm.loop !11

for.inc17.21:                                     ; preds = %for.body3.21
  %indvars.iv.next5.21 = add nuw nsw i64 %indvars.iv.next5.20, 1
  br label %for.body3.22

for.body3.22:                                     ; preds = %for.body3.22, %for.inc17.21
  %indvars.iv.22 = phi i64 [ 0, %for.inc17.21 ], [ %indvars.iv.next.22, %for.body3.22 ]
  %132 = shl nsw i64 %indvars.iv.next5.21, 7
  %133 = add nuw nsw i64 %132, %indvars.iv.22
  %arrayidx.22 = getelementptr inbounds i32, i32* %a, i64 %133
  %134 = load i32, i32* %arrayidx.22, align 4
  %shr.22 = ashr i32 %134, %exp
  %and.22 = shl i32 %shr.22, 17
  %mul4.22 = and i32 %and.22, 393216
  %135 = trunc i64 %indvars.iv.next5.21 to i32
  %add5.22 = add nuw nsw i32 %mul4.22, %135
  %idxprom6.22 = zext i32 %add5.22 to i64
  %arrayidx7.22 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.22
  %136 = load i32, i32* %arrayidx7.22, align 4
  %idxprom8.22 = sext i32 %136 to i64
  %arrayidx9.22 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.22
  store i32 %134, i32* %arrayidx9.22, align 4
  %add10.22 = add nsw i32 %136, 1
  %shr11.22 = ashr i32 %134, %exp
  %and12.22 = shl i32 %shr11.22, 17
  %mul13.22 = and i32 %and12.22, 393216
  %137 = trunc i64 %indvars.iv.next5.21 to i32
  %add14.22 = add nuw nsw i32 %mul13.22, %137
  %idxprom15.22 = zext i32 %add14.22 to i64
  %arrayidx16.22 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.22
  store i32 %add10.22, i32* %arrayidx16.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.22, 1
  %exitcond.22 = icmp ne i64 %indvars.iv.next.22, 4
  br i1 %exitcond.22, label %for.body3.22, label %for.inc17.22, !llvm.loop !11

for.inc17.22:                                     ; preds = %for.body3.22
  %indvars.iv.next5.22 = add nuw nsw i64 %indvars.iv.next5.21, 1
  br label %for.body3.23

for.body3.23:                                     ; preds = %for.body3.23, %for.inc17.22
  %indvars.iv.23 = phi i64 [ 0, %for.inc17.22 ], [ %indvars.iv.next.23, %for.body3.23 ]
  %138 = shl nsw i64 %indvars.iv.next5.22, 7
  %139 = add nuw nsw i64 %138, %indvars.iv.23
  %arrayidx.23 = getelementptr inbounds i32, i32* %a, i64 %139
  %140 = load i32, i32* %arrayidx.23, align 4
  %shr.23 = ashr i32 %140, %exp
  %and.23 = shl i32 %shr.23, 17
  %mul4.23 = and i32 %and.23, 393216
  %141 = trunc i64 %indvars.iv.next5.22 to i32
  %add5.23 = add nuw nsw i32 %mul4.23, %141
  %idxprom6.23 = zext i32 %add5.23 to i64
  %arrayidx7.23 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.23
  %142 = load i32, i32* %arrayidx7.23, align 4
  %idxprom8.23 = sext i32 %142 to i64
  %arrayidx9.23 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.23
  store i32 %140, i32* %arrayidx9.23, align 4
  %add10.23 = add nsw i32 %142, 1
  %shr11.23 = ashr i32 %140, %exp
  %and12.23 = shl i32 %shr11.23, 17
  %mul13.23 = and i32 %and12.23, 393216
  %143 = trunc i64 %indvars.iv.next5.22 to i32
  %add14.23 = add nuw nsw i32 %mul13.23, %143
  %idxprom15.23 = zext i32 %add14.23 to i64
  %arrayidx16.23 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.23
  store i32 %add10.23, i32* %arrayidx16.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.23, 1
  %exitcond.23 = icmp ne i64 %indvars.iv.next.23, 4
  br i1 %exitcond.23, label %for.body3.23, label %for.inc17.23, !llvm.loop !11

for.inc17.23:                                     ; preds = %for.body3.23
  %indvars.iv.next5.23 = add nuw nsw i64 %indvars.iv.next5.22, 1
  br label %for.body3.24

for.body3.24:                                     ; preds = %for.body3.24, %for.inc17.23
  %indvars.iv.24 = phi i64 [ 0, %for.inc17.23 ], [ %indvars.iv.next.24, %for.body3.24 ]
  %144 = shl nsw i64 %indvars.iv.next5.23, 7
  %145 = add nuw nsw i64 %144, %indvars.iv.24
  %arrayidx.24 = getelementptr inbounds i32, i32* %a, i64 %145
  %146 = load i32, i32* %arrayidx.24, align 4
  %shr.24 = ashr i32 %146, %exp
  %and.24 = shl i32 %shr.24, 17
  %mul4.24 = and i32 %and.24, 393216
  %147 = trunc i64 %indvars.iv.next5.23 to i32
  %add5.24 = add nuw nsw i32 %mul4.24, %147
  %idxprom6.24 = zext i32 %add5.24 to i64
  %arrayidx7.24 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.24
  %148 = load i32, i32* %arrayidx7.24, align 4
  %idxprom8.24 = sext i32 %148 to i64
  %arrayidx9.24 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.24
  store i32 %146, i32* %arrayidx9.24, align 4
  %add10.24 = add nsw i32 %148, 1
  %shr11.24 = ashr i32 %146, %exp
  %and12.24 = shl i32 %shr11.24, 17
  %mul13.24 = and i32 %and12.24, 393216
  %149 = trunc i64 %indvars.iv.next5.23 to i32
  %add14.24 = add nuw nsw i32 %mul13.24, %149
  %idxprom15.24 = zext i32 %add14.24 to i64
  %arrayidx16.24 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.24
  store i32 %add10.24, i32* %arrayidx16.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.24, 1
  %exitcond.24 = icmp ne i64 %indvars.iv.next.24, 4
  br i1 %exitcond.24, label %for.body3.24, label %for.inc17.24, !llvm.loop !11

for.inc17.24:                                     ; preds = %for.body3.24
  %indvars.iv.next5.24 = add nuw nsw i64 %indvars.iv.next5.23, 1
  br label %for.body3.25

for.body3.25:                                     ; preds = %for.body3.25, %for.inc17.24
  %indvars.iv.25 = phi i64 [ 0, %for.inc17.24 ], [ %indvars.iv.next.25, %for.body3.25 ]
  %150 = shl nsw i64 %indvars.iv.next5.24, 7
  %151 = add nuw nsw i64 %150, %indvars.iv.25
  %arrayidx.25 = getelementptr inbounds i32, i32* %a, i64 %151
  %152 = load i32, i32* %arrayidx.25, align 4
  %shr.25 = ashr i32 %152, %exp
  %and.25 = shl i32 %shr.25, 17
  %mul4.25 = and i32 %and.25, 393216
  %153 = trunc i64 %indvars.iv.next5.24 to i32
  %add5.25 = add nuw nsw i32 %mul4.25, %153
  %idxprom6.25 = zext i32 %add5.25 to i64
  %arrayidx7.25 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.25
  %154 = load i32, i32* %arrayidx7.25, align 4
  %idxprom8.25 = sext i32 %154 to i64
  %arrayidx9.25 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.25
  store i32 %152, i32* %arrayidx9.25, align 4
  %add10.25 = add nsw i32 %154, 1
  %shr11.25 = ashr i32 %152, %exp
  %and12.25 = shl i32 %shr11.25, 17
  %mul13.25 = and i32 %and12.25, 393216
  %155 = trunc i64 %indvars.iv.next5.24 to i32
  %add14.25 = add nuw nsw i32 %mul13.25, %155
  %idxprom15.25 = zext i32 %add14.25 to i64
  %arrayidx16.25 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.25
  store i32 %add10.25, i32* %arrayidx16.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.25, 1
  %exitcond.25 = icmp ne i64 %indvars.iv.next.25, 4
  br i1 %exitcond.25, label %for.body3.25, label %for.inc17.25, !llvm.loop !11

for.inc17.25:                                     ; preds = %for.body3.25
  %indvars.iv.next5.25 = add nuw nsw i64 %indvars.iv.next5.24, 1
  br label %for.body3.26

for.body3.26:                                     ; preds = %for.body3.26, %for.inc17.25
  %indvars.iv.26 = phi i64 [ 0, %for.inc17.25 ], [ %indvars.iv.next.26, %for.body3.26 ]
  %156 = shl nsw i64 %indvars.iv.next5.25, 7
  %157 = add nuw nsw i64 %156, %indvars.iv.26
  %arrayidx.26 = getelementptr inbounds i32, i32* %a, i64 %157
  %158 = load i32, i32* %arrayidx.26, align 4
  %shr.26 = ashr i32 %158, %exp
  %and.26 = shl i32 %shr.26, 17
  %mul4.26 = and i32 %and.26, 393216
  %159 = trunc i64 %indvars.iv.next5.25 to i32
  %add5.26 = add nuw nsw i32 %mul4.26, %159
  %idxprom6.26 = zext i32 %add5.26 to i64
  %arrayidx7.26 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.26
  %160 = load i32, i32* %arrayidx7.26, align 4
  %idxprom8.26 = sext i32 %160 to i64
  %arrayidx9.26 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.26
  store i32 %158, i32* %arrayidx9.26, align 4
  %add10.26 = add nsw i32 %160, 1
  %shr11.26 = ashr i32 %158, %exp
  %and12.26 = shl i32 %shr11.26, 17
  %mul13.26 = and i32 %and12.26, 393216
  %161 = trunc i64 %indvars.iv.next5.25 to i32
  %add14.26 = add nuw nsw i32 %mul13.26, %161
  %idxprom15.26 = zext i32 %add14.26 to i64
  %arrayidx16.26 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.26
  store i32 %add10.26, i32* %arrayidx16.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.26, 1
  %exitcond.26 = icmp ne i64 %indvars.iv.next.26, 4
  br i1 %exitcond.26, label %for.body3.26, label %for.inc17.26, !llvm.loop !11

for.inc17.26:                                     ; preds = %for.body3.26
  %indvars.iv.next5.26 = add nuw nsw i64 %indvars.iv.next5.25, 1
  br label %for.body3.27

for.body3.27:                                     ; preds = %for.body3.27, %for.inc17.26
  %indvars.iv.27 = phi i64 [ 0, %for.inc17.26 ], [ %indvars.iv.next.27, %for.body3.27 ]
  %162 = shl nsw i64 %indvars.iv.next5.26, 7
  %163 = add nuw nsw i64 %162, %indvars.iv.27
  %arrayidx.27 = getelementptr inbounds i32, i32* %a, i64 %163
  %164 = load i32, i32* %arrayidx.27, align 4
  %shr.27 = ashr i32 %164, %exp
  %and.27 = shl i32 %shr.27, 17
  %mul4.27 = and i32 %and.27, 393216
  %165 = trunc i64 %indvars.iv.next5.26 to i32
  %add5.27 = add nuw nsw i32 %mul4.27, %165
  %idxprom6.27 = zext i32 %add5.27 to i64
  %arrayidx7.27 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.27
  %166 = load i32, i32* %arrayidx7.27, align 4
  %idxprom8.27 = sext i32 %166 to i64
  %arrayidx9.27 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.27
  store i32 %164, i32* %arrayidx9.27, align 4
  %add10.27 = add nsw i32 %166, 1
  %shr11.27 = ashr i32 %164, %exp
  %and12.27 = shl i32 %shr11.27, 17
  %mul13.27 = and i32 %and12.27, 393216
  %167 = trunc i64 %indvars.iv.next5.26 to i32
  %add14.27 = add nuw nsw i32 %mul13.27, %167
  %idxprom15.27 = zext i32 %add14.27 to i64
  %arrayidx16.27 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.27
  store i32 %add10.27, i32* %arrayidx16.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.27, 1
  %exitcond.27 = icmp ne i64 %indvars.iv.next.27, 4
  br i1 %exitcond.27, label %for.body3.27, label %for.inc17.27, !llvm.loop !11

for.inc17.27:                                     ; preds = %for.body3.27
  %indvars.iv.next5.27 = add nuw nsw i64 %indvars.iv.next5.26, 1
  br label %for.body3.28

for.body3.28:                                     ; preds = %for.body3.28, %for.inc17.27
  %indvars.iv.28 = phi i64 [ 0, %for.inc17.27 ], [ %indvars.iv.next.28, %for.body3.28 ]
  %168 = shl nsw i64 %indvars.iv.next5.27, 7
  %169 = add nuw nsw i64 %168, %indvars.iv.28
  %arrayidx.28 = getelementptr inbounds i32, i32* %a, i64 %169
  %170 = load i32, i32* %arrayidx.28, align 4
  %shr.28 = ashr i32 %170, %exp
  %and.28 = shl i32 %shr.28, 17
  %mul4.28 = and i32 %and.28, 393216
  %171 = trunc i64 %indvars.iv.next5.27 to i32
  %add5.28 = add nuw nsw i32 %mul4.28, %171
  %idxprom6.28 = zext i32 %add5.28 to i64
  %arrayidx7.28 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.28
  %172 = load i32, i32* %arrayidx7.28, align 4
  %idxprom8.28 = sext i32 %172 to i64
  %arrayidx9.28 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.28
  store i32 %170, i32* %arrayidx9.28, align 4
  %add10.28 = add nsw i32 %172, 1
  %shr11.28 = ashr i32 %170, %exp
  %and12.28 = shl i32 %shr11.28, 17
  %mul13.28 = and i32 %and12.28, 393216
  %173 = trunc i64 %indvars.iv.next5.27 to i32
  %add14.28 = add nuw nsw i32 %mul13.28, %173
  %idxprom15.28 = zext i32 %add14.28 to i64
  %arrayidx16.28 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.28
  store i32 %add10.28, i32* %arrayidx16.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.28, 1
  %exitcond.28 = icmp ne i64 %indvars.iv.next.28, 4
  br i1 %exitcond.28, label %for.body3.28, label %for.inc17.28, !llvm.loop !11

for.inc17.28:                                     ; preds = %for.body3.28
  %indvars.iv.next5.28 = add nuw nsw i64 %indvars.iv.next5.27, 1
  br label %for.body3.29

for.body3.29:                                     ; preds = %for.body3.29, %for.inc17.28
  %indvars.iv.29 = phi i64 [ 0, %for.inc17.28 ], [ %indvars.iv.next.29, %for.body3.29 ]
  %174 = shl nsw i64 %indvars.iv.next5.28, 7
  %175 = add nuw nsw i64 %174, %indvars.iv.29
  %arrayidx.29 = getelementptr inbounds i32, i32* %a, i64 %175
  %176 = load i32, i32* %arrayidx.29, align 4
  %shr.29 = ashr i32 %176, %exp
  %and.29 = shl i32 %shr.29, 17
  %mul4.29 = and i32 %and.29, 393216
  %177 = trunc i64 %indvars.iv.next5.28 to i32
  %add5.29 = add nuw nsw i32 %mul4.29, %177
  %idxprom6.29 = zext i32 %add5.29 to i64
  %arrayidx7.29 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.29
  %178 = load i32, i32* %arrayidx7.29, align 4
  %idxprom8.29 = sext i32 %178 to i64
  %arrayidx9.29 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.29
  store i32 %176, i32* %arrayidx9.29, align 4
  %add10.29 = add nsw i32 %178, 1
  %shr11.29 = ashr i32 %176, %exp
  %and12.29 = shl i32 %shr11.29, 17
  %mul13.29 = and i32 %and12.29, 393216
  %179 = trunc i64 %indvars.iv.next5.28 to i32
  %add14.29 = add nuw nsw i32 %mul13.29, %179
  %idxprom15.29 = zext i32 %add14.29 to i64
  %arrayidx16.29 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.29
  store i32 %add10.29, i32* %arrayidx16.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.29, 1
  %exitcond.29 = icmp ne i64 %indvars.iv.next.29, 4
  br i1 %exitcond.29, label %for.body3.29, label %for.inc17.29, !llvm.loop !11

for.inc17.29:                                     ; preds = %for.body3.29
  %indvars.iv.next5.29 = add nuw nsw i64 %indvars.iv.next5.28, 1
  br label %for.body3.30

for.body3.30:                                     ; preds = %for.body3.30, %for.inc17.29
  %indvars.iv.30 = phi i64 [ 0, %for.inc17.29 ], [ %indvars.iv.next.30, %for.body3.30 ]
  %180 = shl nsw i64 %indvars.iv.next5.29, 7
  %181 = add nuw nsw i64 %180, %indvars.iv.30
  %arrayidx.30 = getelementptr inbounds i32, i32* %a, i64 %181
  %182 = load i32, i32* %arrayidx.30, align 4
  %shr.30 = ashr i32 %182, %exp
  %and.30 = shl i32 %shr.30, 17
  %mul4.30 = and i32 %and.30, 393216
  %183 = trunc i64 %indvars.iv.next5.29 to i32
  %add5.30 = add nuw nsw i32 %mul4.30, %183
  %idxprom6.30 = zext i32 %add5.30 to i64
  %arrayidx7.30 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.30
  %184 = load i32, i32* %arrayidx7.30, align 4
  %idxprom8.30 = sext i32 %184 to i64
  %arrayidx9.30 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.30
  store i32 %182, i32* %arrayidx9.30, align 4
  %add10.30 = add nsw i32 %184, 1
  %shr11.30 = ashr i32 %182, %exp
  %and12.30 = shl i32 %shr11.30, 17
  %mul13.30 = and i32 %and12.30, 393216
  %185 = trunc i64 %indvars.iv.next5.29 to i32
  %add14.30 = add nuw nsw i32 %mul13.30, %185
  %idxprom15.30 = zext i32 %add14.30 to i64
  %arrayidx16.30 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.30
  store i32 %add10.30, i32* %arrayidx16.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.30, 1
  %exitcond.30 = icmp ne i64 %indvars.iv.next.30, 4
  br i1 %exitcond.30, label %for.body3.30, label %for.inc17.30, !llvm.loop !11

for.inc17.30:                                     ; preds = %for.body3.30
  %indvars.iv.next5.30 = add nuw nsw i64 %indvars.iv.next5.29, 1
  br label %for.body3.31

for.body3.31:                                     ; preds = %for.body3.31, %for.inc17.30
  %indvars.iv.31 = phi i64 [ 0, %for.inc17.30 ], [ %indvars.iv.next.31, %for.body3.31 ]
  %186 = shl nsw i64 %indvars.iv.next5.30, 7
  %187 = add nuw nsw i64 %186, %indvars.iv.31
  %arrayidx.31 = getelementptr inbounds i32, i32* %a, i64 %187
  %188 = load i32, i32* %arrayidx.31, align 4
  %shr.31 = ashr i32 %188, %exp
  %and.31 = shl i32 %shr.31, 17
  %mul4.31 = and i32 %and.31, 393216
  %189 = trunc i64 %indvars.iv.next5.30 to i32
  %add5.31 = add nuw nsw i32 %mul4.31, %189
  %idxprom6.31 = zext i32 %add5.31 to i64
  %arrayidx7.31 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.31
  %190 = load i32, i32* %arrayidx7.31, align 4
  %idxprom8.31 = sext i32 %190 to i64
  %arrayidx9.31 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.31
  store i32 %188, i32* %arrayidx9.31, align 4
  %add10.31 = add nsw i32 %190, 1
  %shr11.31 = ashr i32 %188, %exp
  %and12.31 = shl i32 %shr11.31, 17
  %mul13.31 = and i32 %and12.31, 393216
  %191 = trunc i64 %indvars.iv.next5.30 to i32
  %add14.31 = add nuw nsw i32 %mul13.31, %191
  %idxprom15.31 = zext i32 %add14.31 to i64
  %arrayidx16.31 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.31
  store i32 %add10.31, i32* %arrayidx16.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.31, 1
  %exitcond.31 = icmp ne i64 %indvars.iv.next.31, 4
  br i1 %exitcond.31, label %for.body3.31, label %for.inc17.31, !llvm.loop !11

for.inc17.31:                                     ; preds = %for.body3.31
  %indvars.iv.next5.31 = add nuw nsw i64 %indvars.iv.next5.30, 1
  br label %for.body3.32

for.body3.32:                                     ; preds = %for.body3.32, %for.inc17.31
  %indvars.iv.32 = phi i64 [ 0, %for.inc17.31 ], [ %indvars.iv.next.32, %for.body3.32 ]
  %192 = shl nsw i64 %indvars.iv.next5.31, 7
  %193 = add nuw nsw i64 %192, %indvars.iv.32
  %arrayidx.32 = getelementptr inbounds i32, i32* %a, i64 %193
  %194 = load i32, i32* %arrayidx.32, align 4
  %shr.32 = ashr i32 %194, %exp
  %and.32 = shl i32 %shr.32, 17
  %mul4.32 = and i32 %and.32, 393216
  %195 = trunc i64 %indvars.iv.next5.31 to i32
  %add5.32 = add nuw nsw i32 %mul4.32, %195
  %idxprom6.32 = zext i32 %add5.32 to i64
  %arrayidx7.32 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.32
  %196 = load i32, i32* %arrayidx7.32, align 4
  %idxprom8.32 = sext i32 %196 to i64
  %arrayidx9.32 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.32
  store i32 %194, i32* %arrayidx9.32, align 4
  %add10.32 = add nsw i32 %196, 1
  %shr11.32 = ashr i32 %194, %exp
  %and12.32 = shl i32 %shr11.32, 17
  %mul13.32 = and i32 %and12.32, 393216
  %197 = trunc i64 %indvars.iv.next5.31 to i32
  %add14.32 = add nuw nsw i32 %mul13.32, %197
  %idxprom15.32 = zext i32 %add14.32 to i64
  %arrayidx16.32 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.32
  store i32 %add10.32, i32* %arrayidx16.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.32, 1
  %exitcond.32 = icmp ne i64 %indvars.iv.next.32, 4
  br i1 %exitcond.32, label %for.body3.32, label %for.inc17.32, !llvm.loop !11

for.inc17.32:                                     ; preds = %for.body3.32
  %indvars.iv.next5.32 = add nuw nsw i64 %indvars.iv.next5.31, 1
  br label %for.body3.33

for.body3.33:                                     ; preds = %for.body3.33, %for.inc17.32
  %indvars.iv.33 = phi i64 [ 0, %for.inc17.32 ], [ %indvars.iv.next.33, %for.body3.33 ]
  %198 = shl nsw i64 %indvars.iv.next5.32, 7
  %199 = add nuw nsw i64 %198, %indvars.iv.33
  %arrayidx.33 = getelementptr inbounds i32, i32* %a, i64 %199
  %200 = load i32, i32* %arrayidx.33, align 4
  %shr.33 = ashr i32 %200, %exp
  %and.33 = shl i32 %shr.33, 17
  %mul4.33 = and i32 %and.33, 393216
  %201 = trunc i64 %indvars.iv.next5.32 to i32
  %add5.33 = add nuw nsw i32 %mul4.33, %201
  %idxprom6.33 = zext i32 %add5.33 to i64
  %arrayidx7.33 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.33
  %202 = load i32, i32* %arrayidx7.33, align 4
  %idxprom8.33 = sext i32 %202 to i64
  %arrayidx9.33 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.33
  store i32 %200, i32* %arrayidx9.33, align 4
  %add10.33 = add nsw i32 %202, 1
  %shr11.33 = ashr i32 %200, %exp
  %and12.33 = shl i32 %shr11.33, 17
  %mul13.33 = and i32 %and12.33, 393216
  %203 = trunc i64 %indvars.iv.next5.32 to i32
  %add14.33 = add nuw nsw i32 %mul13.33, %203
  %idxprom15.33 = zext i32 %add14.33 to i64
  %arrayidx16.33 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.33
  store i32 %add10.33, i32* %arrayidx16.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.33, 1
  %exitcond.33 = icmp ne i64 %indvars.iv.next.33, 4
  br i1 %exitcond.33, label %for.body3.33, label %for.inc17.33, !llvm.loop !11

for.inc17.33:                                     ; preds = %for.body3.33
  %indvars.iv.next5.33 = add nuw nsw i64 %indvars.iv.next5.32, 1
  br label %for.body3.34

for.body3.34:                                     ; preds = %for.body3.34, %for.inc17.33
  %indvars.iv.34 = phi i64 [ 0, %for.inc17.33 ], [ %indvars.iv.next.34, %for.body3.34 ]
  %204 = shl nsw i64 %indvars.iv.next5.33, 7
  %205 = add nuw nsw i64 %204, %indvars.iv.34
  %arrayidx.34 = getelementptr inbounds i32, i32* %a, i64 %205
  %206 = load i32, i32* %arrayidx.34, align 4
  %shr.34 = ashr i32 %206, %exp
  %and.34 = shl i32 %shr.34, 17
  %mul4.34 = and i32 %and.34, 393216
  %207 = trunc i64 %indvars.iv.next5.33 to i32
  %add5.34 = add nuw nsw i32 %mul4.34, %207
  %idxprom6.34 = zext i32 %add5.34 to i64
  %arrayidx7.34 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.34
  %208 = load i32, i32* %arrayidx7.34, align 4
  %idxprom8.34 = sext i32 %208 to i64
  %arrayidx9.34 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.34
  store i32 %206, i32* %arrayidx9.34, align 4
  %add10.34 = add nsw i32 %208, 1
  %shr11.34 = ashr i32 %206, %exp
  %and12.34 = shl i32 %shr11.34, 17
  %mul13.34 = and i32 %and12.34, 393216
  %209 = trunc i64 %indvars.iv.next5.33 to i32
  %add14.34 = add nuw nsw i32 %mul13.34, %209
  %idxprom15.34 = zext i32 %add14.34 to i64
  %arrayidx16.34 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.34
  store i32 %add10.34, i32* %arrayidx16.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.34, 1
  %exitcond.34 = icmp ne i64 %indvars.iv.next.34, 4
  br i1 %exitcond.34, label %for.body3.34, label %for.inc17.34, !llvm.loop !11

for.inc17.34:                                     ; preds = %for.body3.34
  %indvars.iv.next5.34 = add nuw nsw i64 %indvars.iv.next5.33, 1
  br label %for.body3.35

for.body3.35:                                     ; preds = %for.body3.35, %for.inc17.34
  %indvars.iv.35 = phi i64 [ 0, %for.inc17.34 ], [ %indvars.iv.next.35, %for.body3.35 ]
  %210 = shl nsw i64 %indvars.iv.next5.34, 7
  %211 = add nuw nsw i64 %210, %indvars.iv.35
  %arrayidx.35 = getelementptr inbounds i32, i32* %a, i64 %211
  %212 = load i32, i32* %arrayidx.35, align 4
  %shr.35 = ashr i32 %212, %exp
  %and.35 = shl i32 %shr.35, 17
  %mul4.35 = and i32 %and.35, 393216
  %213 = trunc i64 %indvars.iv.next5.34 to i32
  %add5.35 = add nuw nsw i32 %mul4.35, %213
  %idxprom6.35 = zext i32 %add5.35 to i64
  %arrayidx7.35 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.35
  %214 = load i32, i32* %arrayidx7.35, align 4
  %idxprom8.35 = sext i32 %214 to i64
  %arrayidx9.35 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.35
  store i32 %212, i32* %arrayidx9.35, align 4
  %add10.35 = add nsw i32 %214, 1
  %shr11.35 = ashr i32 %212, %exp
  %and12.35 = shl i32 %shr11.35, 17
  %mul13.35 = and i32 %and12.35, 393216
  %215 = trunc i64 %indvars.iv.next5.34 to i32
  %add14.35 = add nuw nsw i32 %mul13.35, %215
  %idxprom15.35 = zext i32 %add14.35 to i64
  %arrayidx16.35 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.35
  store i32 %add10.35, i32* %arrayidx16.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.35, 1
  %exitcond.35 = icmp ne i64 %indvars.iv.next.35, 4
  br i1 %exitcond.35, label %for.body3.35, label %for.inc17.35, !llvm.loop !11

for.inc17.35:                                     ; preds = %for.body3.35
  %indvars.iv.next5.35 = add nuw nsw i64 %indvars.iv.next5.34, 1
  br label %for.body3.36

for.body3.36:                                     ; preds = %for.body3.36, %for.inc17.35
  %indvars.iv.36 = phi i64 [ 0, %for.inc17.35 ], [ %indvars.iv.next.36, %for.body3.36 ]
  %216 = shl nsw i64 %indvars.iv.next5.35, 7
  %217 = add nuw nsw i64 %216, %indvars.iv.36
  %arrayidx.36 = getelementptr inbounds i32, i32* %a, i64 %217
  %218 = load i32, i32* %arrayidx.36, align 4
  %shr.36 = ashr i32 %218, %exp
  %and.36 = shl i32 %shr.36, 17
  %mul4.36 = and i32 %and.36, 393216
  %219 = trunc i64 %indvars.iv.next5.35 to i32
  %add5.36 = add nuw nsw i32 %mul4.36, %219
  %idxprom6.36 = zext i32 %add5.36 to i64
  %arrayidx7.36 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.36
  %220 = load i32, i32* %arrayidx7.36, align 4
  %idxprom8.36 = sext i32 %220 to i64
  %arrayidx9.36 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.36
  store i32 %218, i32* %arrayidx9.36, align 4
  %add10.36 = add nsw i32 %220, 1
  %shr11.36 = ashr i32 %218, %exp
  %and12.36 = shl i32 %shr11.36, 17
  %mul13.36 = and i32 %and12.36, 393216
  %221 = trunc i64 %indvars.iv.next5.35 to i32
  %add14.36 = add nuw nsw i32 %mul13.36, %221
  %idxprom15.36 = zext i32 %add14.36 to i64
  %arrayidx16.36 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.36
  store i32 %add10.36, i32* %arrayidx16.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.36, 1
  %exitcond.36 = icmp ne i64 %indvars.iv.next.36, 4
  br i1 %exitcond.36, label %for.body3.36, label %for.inc17.36, !llvm.loop !11

for.inc17.36:                                     ; preds = %for.body3.36
  %indvars.iv.next5.36 = add nuw nsw i64 %indvars.iv.next5.35, 1
  br label %for.body3.37

for.body3.37:                                     ; preds = %for.body3.37, %for.inc17.36
  %indvars.iv.37 = phi i64 [ 0, %for.inc17.36 ], [ %indvars.iv.next.37, %for.body3.37 ]
  %222 = shl nsw i64 %indvars.iv.next5.36, 7
  %223 = add nuw nsw i64 %222, %indvars.iv.37
  %arrayidx.37 = getelementptr inbounds i32, i32* %a, i64 %223
  %224 = load i32, i32* %arrayidx.37, align 4
  %shr.37 = ashr i32 %224, %exp
  %and.37 = shl i32 %shr.37, 17
  %mul4.37 = and i32 %and.37, 393216
  %225 = trunc i64 %indvars.iv.next5.36 to i32
  %add5.37 = add nuw nsw i32 %mul4.37, %225
  %idxprom6.37 = zext i32 %add5.37 to i64
  %arrayidx7.37 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.37
  %226 = load i32, i32* %arrayidx7.37, align 4
  %idxprom8.37 = sext i32 %226 to i64
  %arrayidx9.37 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.37
  store i32 %224, i32* %arrayidx9.37, align 4
  %add10.37 = add nsw i32 %226, 1
  %shr11.37 = ashr i32 %224, %exp
  %and12.37 = shl i32 %shr11.37, 17
  %mul13.37 = and i32 %and12.37, 393216
  %227 = trunc i64 %indvars.iv.next5.36 to i32
  %add14.37 = add nuw nsw i32 %mul13.37, %227
  %idxprom15.37 = zext i32 %add14.37 to i64
  %arrayidx16.37 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.37
  store i32 %add10.37, i32* %arrayidx16.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.37, 1
  %exitcond.37 = icmp ne i64 %indvars.iv.next.37, 4
  br i1 %exitcond.37, label %for.body3.37, label %for.inc17.37, !llvm.loop !11

for.inc17.37:                                     ; preds = %for.body3.37
  %indvars.iv.next5.37 = add nuw nsw i64 %indvars.iv.next5.36, 1
  br label %for.body3.38

for.body3.38:                                     ; preds = %for.body3.38, %for.inc17.37
  %indvars.iv.38 = phi i64 [ 0, %for.inc17.37 ], [ %indvars.iv.next.38, %for.body3.38 ]
  %228 = shl nsw i64 %indvars.iv.next5.37, 7
  %229 = add nuw nsw i64 %228, %indvars.iv.38
  %arrayidx.38 = getelementptr inbounds i32, i32* %a, i64 %229
  %230 = load i32, i32* %arrayidx.38, align 4
  %shr.38 = ashr i32 %230, %exp
  %and.38 = shl i32 %shr.38, 17
  %mul4.38 = and i32 %and.38, 393216
  %231 = trunc i64 %indvars.iv.next5.37 to i32
  %add5.38 = add nuw nsw i32 %mul4.38, %231
  %idxprom6.38 = zext i32 %add5.38 to i64
  %arrayidx7.38 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.38
  %232 = load i32, i32* %arrayidx7.38, align 4
  %idxprom8.38 = sext i32 %232 to i64
  %arrayidx9.38 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.38
  store i32 %230, i32* %arrayidx9.38, align 4
  %add10.38 = add nsw i32 %232, 1
  %shr11.38 = ashr i32 %230, %exp
  %and12.38 = shl i32 %shr11.38, 17
  %mul13.38 = and i32 %and12.38, 393216
  %233 = trunc i64 %indvars.iv.next5.37 to i32
  %add14.38 = add nuw nsw i32 %mul13.38, %233
  %idxprom15.38 = zext i32 %add14.38 to i64
  %arrayidx16.38 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.38
  store i32 %add10.38, i32* %arrayidx16.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.38, 1
  %exitcond.38 = icmp ne i64 %indvars.iv.next.38, 4
  br i1 %exitcond.38, label %for.body3.38, label %for.inc17.38, !llvm.loop !11

for.inc17.38:                                     ; preds = %for.body3.38
  %indvars.iv.next5.38 = add nuw nsw i64 %indvars.iv.next5.37, 1
  br label %for.body3.39

for.body3.39:                                     ; preds = %for.body3.39, %for.inc17.38
  %indvars.iv.39 = phi i64 [ 0, %for.inc17.38 ], [ %indvars.iv.next.39, %for.body3.39 ]
  %234 = shl nsw i64 %indvars.iv.next5.38, 7
  %235 = add nuw nsw i64 %234, %indvars.iv.39
  %arrayidx.39 = getelementptr inbounds i32, i32* %a, i64 %235
  %236 = load i32, i32* %arrayidx.39, align 4
  %shr.39 = ashr i32 %236, %exp
  %and.39 = shl i32 %shr.39, 17
  %mul4.39 = and i32 %and.39, 393216
  %237 = trunc i64 %indvars.iv.next5.38 to i32
  %add5.39 = add nuw nsw i32 %mul4.39, %237
  %idxprom6.39 = zext i32 %add5.39 to i64
  %arrayidx7.39 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.39
  %238 = load i32, i32* %arrayidx7.39, align 4
  %idxprom8.39 = sext i32 %238 to i64
  %arrayidx9.39 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.39
  store i32 %236, i32* %arrayidx9.39, align 4
  %add10.39 = add nsw i32 %238, 1
  %shr11.39 = ashr i32 %236, %exp
  %and12.39 = shl i32 %shr11.39, 17
  %mul13.39 = and i32 %and12.39, 393216
  %239 = trunc i64 %indvars.iv.next5.38 to i32
  %add14.39 = add nuw nsw i32 %mul13.39, %239
  %idxprom15.39 = zext i32 %add14.39 to i64
  %arrayidx16.39 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.39
  store i32 %add10.39, i32* %arrayidx16.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.39, 1
  %exitcond.39 = icmp ne i64 %indvars.iv.next.39, 4
  br i1 %exitcond.39, label %for.body3.39, label %for.inc17.39, !llvm.loop !11

for.inc17.39:                                     ; preds = %for.body3.39
  %indvars.iv.next5.39 = add nuw nsw i64 %indvars.iv.next5.38, 1
  br label %for.body3.40

for.body3.40:                                     ; preds = %for.body3.40, %for.inc17.39
  %indvars.iv.40 = phi i64 [ 0, %for.inc17.39 ], [ %indvars.iv.next.40, %for.body3.40 ]
  %240 = shl nsw i64 %indvars.iv.next5.39, 7
  %241 = add nuw nsw i64 %240, %indvars.iv.40
  %arrayidx.40 = getelementptr inbounds i32, i32* %a, i64 %241
  %242 = load i32, i32* %arrayidx.40, align 4
  %shr.40 = ashr i32 %242, %exp
  %and.40 = shl i32 %shr.40, 17
  %mul4.40 = and i32 %and.40, 393216
  %243 = trunc i64 %indvars.iv.next5.39 to i32
  %add5.40 = add nuw nsw i32 %mul4.40, %243
  %idxprom6.40 = zext i32 %add5.40 to i64
  %arrayidx7.40 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.40
  %244 = load i32, i32* %arrayidx7.40, align 4
  %idxprom8.40 = sext i32 %244 to i64
  %arrayidx9.40 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.40
  store i32 %242, i32* %arrayidx9.40, align 4
  %add10.40 = add nsw i32 %244, 1
  %shr11.40 = ashr i32 %242, %exp
  %and12.40 = shl i32 %shr11.40, 17
  %mul13.40 = and i32 %and12.40, 393216
  %245 = trunc i64 %indvars.iv.next5.39 to i32
  %add14.40 = add nuw nsw i32 %mul13.40, %245
  %idxprom15.40 = zext i32 %add14.40 to i64
  %arrayidx16.40 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.40
  store i32 %add10.40, i32* %arrayidx16.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.40, 1
  %exitcond.40 = icmp ne i64 %indvars.iv.next.40, 4
  br i1 %exitcond.40, label %for.body3.40, label %for.inc17.40, !llvm.loop !11

for.inc17.40:                                     ; preds = %for.body3.40
  %indvars.iv.next5.40 = add nuw nsw i64 %indvars.iv.next5.39, 1
  br label %for.body3.41

for.body3.41:                                     ; preds = %for.body3.41, %for.inc17.40
  %indvars.iv.41 = phi i64 [ 0, %for.inc17.40 ], [ %indvars.iv.next.41, %for.body3.41 ]
  %246 = shl nsw i64 %indvars.iv.next5.40, 7
  %247 = add nuw nsw i64 %246, %indvars.iv.41
  %arrayidx.41 = getelementptr inbounds i32, i32* %a, i64 %247
  %248 = load i32, i32* %arrayidx.41, align 4
  %shr.41 = ashr i32 %248, %exp
  %and.41 = shl i32 %shr.41, 17
  %mul4.41 = and i32 %and.41, 393216
  %249 = trunc i64 %indvars.iv.next5.40 to i32
  %add5.41 = add nuw nsw i32 %mul4.41, %249
  %idxprom6.41 = zext i32 %add5.41 to i64
  %arrayidx7.41 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.41
  %250 = load i32, i32* %arrayidx7.41, align 4
  %idxprom8.41 = sext i32 %250 to i64
  %arrayidx9.41 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.41
  store i32 %248, i32* %arrayidx9.41, align 4
  %add10.41 = add nsw i32 %250, 1
  %shr11.41 = ashr i32 %248, %exp
  %and12.41 = shl i32 %shr11.41, 17
  %mul13.41 = and i32 %and12.41, 393216
  %251 = trunc i64 %indvars.iv.next5.40 to i32
  %add14.41 = add nuw nsw i32 %mul13.41, %251
  %idxprom15.41 = zext i32 %add14.41 to i64
  %arrayidx16.41 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.41
  store i32 %add10.41, i32* %arrayidx16.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.41, 1
  %exitcond.41 = icmp ne i64 %indvars.iv.next.41, 4
  br i1 %exitcond.41, label %for.body3.41, label %for.inc17.41, !llvm.loop !11

for.inc17.41:                                     ; preds = %for.body3.41
  %indvars.iv.next5.41 = add nuw nsw i64 %indvars.iv.next5.40, 1
  br label %for.body3.42

for.body3.42:                                     ; preds = %for.body3.42, %for.inc17.41
  %indvars.iv.42 = phi i64 [ 0, %for.inc17.41 ], [ %indvars.iv.next.42, %for.body3.42 ]
  %252 = shl nsw i64 %indvars.iv.next5.41, 7
  %253 = add nuw nsw i64 %252, %indvars.iv.42
  %arrayidx.42 = getelementptr inbounds i32, i32* %a, i64 %253
  %254 = load i32, i32* %arrayidx.42, align 4
  %shr.42 = ashr i32 %254, %exp
  %and.42 = shl i32 %shr.42, 17
  %mul4.42 = and i32 %and.42, 393216
  %255 = trunc i64 %indvars.iv.next5.41 to i32
  %add5.42 = add nuw nsw i32 %mul4.42, %255
  %idxprom6.42 = zext i32 %add5.42 to i64
  %arrayidx7.42 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.42
  %256 = load i32, i32* %arrayidx7.42, align 4
  %idxprom8.42 = sext i32 %256 to i64
  %arrayidx9.42 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.42
  store i32 %254, i32* %arrayidx9.42, align 4
  %add10.42 = add nsw i32 %256, 1
  %shr11.42 = ashr i32 %254, %exp
  %and12.42 = shl i32 %shr11.42, 17
  %mul13.42 = and i32 %and12.42, 393216
  %257 = trunc i64 %indvars.iv.next5.41 to i32
  %add14.42 = add nuw nsw i32 %mul13.42, %257
  %idxprom15.42 = zext i32 %add14.42 to i64
  %arrayidx16.42 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.42
  store i32 %add10.42, i32* %arrayidx16.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.42, 1
  %exitcond.42 = icmp ne i64 %indvars.iv.next.42, 4
  br i1 %exitcond.42, label %for.body3.42, label %for.inc17.42, !llvm.loop !11

for.inc17.42:                                     ; preds = %for.body3.42
  %indvars.iv.next5.42 = add nuw nsw i64 %indvars.iv.next5.41, 1
  br label %for.body3.43

for.body3.43:                                     ; preds = %for.body3.43, %for.inc17.42
  %indvars.iv.43 = phi i64 [ 0, %for.inc17.42 ], [ %indvars.iv.next.43, %for.body3.43 ]
  %258 = shl nsw i64 %indvars.iv.next5.42, 7
  %259 = add nuw nsw i64 %258, %indvars.iv.43
  %arrayidx.43 = getelementptr inbounds i32, i32* %a, i64 %259
  %260 = load i32, i32* %arrayidx.43, align 4
  %shr.43 = ashr i32 %260, %exp
  %and.43 = shl i32 %shr.43, 17
  %mul4.43 = and i32 %and.43, 393216
  %261 = trunc i64 %indvars.iv.next5.42 to i32
  %add5.43 = add nuw nsw i32 %mul4.43, %261
  %idxprom6.43 = zext i32 %add5.43 to i64
  %arrayidx7.43 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.43
  %262 = load i32, i32* %arrayidx7.43, align 4
  %idxprom8.43 = sext i32 %262 to i64
  %arrayidx9.43 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.43
  store i32 %260, i32* %arrayidx9.43, align 4
  %add10.43 = add nsw i32 %262, 1
  %shr11.43 = ashr i32 %260, %exp
  %and12.43 = shl i32 %shr11.43, 17
  %mul13.43 = and i32 %and12.43, 393216
  %263 = trunc i64 %indvars.iv.next5.42 to i32
  %add14.43 = add nuw nsw i32 %mul13.43, %263
  %idxprom15.43 = zext i32 %add14.43 to i64
  %arrayidx16.43 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.43
  store i32 %add10.43, i32* %arrayidx16.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.43, 1
  %exitcond.43 = icmp ne i64 %indvars.iv.next.43, 4
  br i1 %exitcond.43, label %for.body3.43, label %for.inc17.43, !llvm.loop !11

for.inc17.43:                                     ; preds = %for.body3.43
  %indvars.iv.next5.43 = add nuw nsw i64 %indvars.iv.next5.42, 1
  br label %for.body3.44

for.body3.44:                                     ; preds = %for.body3.44, %for.inc17.43
  %indvars.iv.44 = phi i64 [ 0, %for.inc17.43 ], [ %indvars.iv.next.44, %for.body3.44 ]
  %264 = shl nsw i64 %indvars.iv.next5.43, 7
  %265 = add nuw nsw i64 %264, %indvars.iv.44
  %arrayidx.44 = getelementptr inbounds i32, i32* %a, i64 %265
  %266 = load i32, i32* %arrayidx.44, align 4
  %shr.44 = ashr i32 %266, %exp
  %and.44 = shl i32 %shr.44, 17
  %mul4.44 = and i32 %and.44, 393216
  %267 = trunc i64 %indvars.iv.next5.43 to i32
  %add5.44 = add nuw nsw i32 %mul4.44, %267
  %idxprom6.44 = zext i32 %add5.44 to i64
  %arrayidx7.44 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.44
  %268 = load i32, i32* %arrayidx7.44, align 4
  %idxprom8.44 = sext i32 %268 to i64
  %arrayidx9.44 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.44
  store i32 %266, i32* %arrayidx9.44, align 4
  %add10.44 = add nsw i32 %268, 1
  %shr11.44 = ashr i32 %266, %exp
  %and12.44 = shl i32 %shr11.44, 17
  %mul13.44 = and i32 %and12.44, 393216
  %269 = trunc i64 %indvars.iv.next5.43 to i32
  %add14.44 = add nuw nsw i32 %mul13.44, %269
  %idxprom15.44 = zext i32 %add14.44 to i64
  %arrayidx16.44 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.44
  store i32 %add10.44, i32* %arrayidx16.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.44, 1
  %exitcond.44 = icmp ne i64 %indvars.iv.next.44, 4
  br i1 %exitcond.44, label %for.body3.44, label %for.inc17.44, !llvm.loop !11

for.inc17.44:                                     ; preds = %for.body3.44
  %indvars.iv.next5.44 = add nuw nsw i64 %indvars.iv.next5.43, 1
  br label %for.body3.45

for.body3.45:                                     ; preds = %for.body3.45, %for.inc17.44
  %indvars.iv.45 = phi i64 [ 0, %for.inc17.44 ], [ %indvars.iv.next.45, %for.body3.45 ]
  %270 = shl nsw i64 %indvars.iv.next5.44, 7
  %271 = add nuw nsw i64 %270, %indvars.iv.45
  %arrayidx.45 = getelementptr inbounds i32, i32* %a, i64 %271
  %272 = load i32, i32* %arrayidx.45, align 4
  %shr.45 = ashr i32 %272, %exp
  %and.45 = shl i32 %shr.45, 17
  %mul4.45 = and i32 %and.45, 393216
  %273 = trunc i64 %indvars.iv.next5.44 to i32
  %add5.45 = add nuw nsw i32 %mul4.45, %273
  %idxprom6.45 = zext i32 %add5.45 to i64
  %arrayidx7.45 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.45
  %274 = load i32, i32* %arrayidx7.45, align 4
  %idxprom8.45 = sext i32 %274 to i64
  %arrayidx9.45 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.45
  store i32 %272, i32* %arrayidx9.45, align 4
  %add10.45 = add nsw i32 %274, 1
  %shr11.45 = ashr i32 %272, %exp
  %and12.45 = shl i32 %shr11.45, 17
  %mul13.45 = and i32 %and12.45, 393216
  %275 = trunc i64 %indvars.iv.next5.44 to i32
  %add14.45 = add nuw nsw i32 %mul13.45, %275
  %idxprom15.45 = zext i32 %add14.45 to i64
  %arrayidx16.45 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.45
  store i32 %add10.45, i32* %arrayidx16.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.45, 1
  %exitcond.45 = icmp ne i64 %indvars.iv.next.45, 4
  br i1 %exitcond.45, label %for.body3.45, label %for.inc17.45, !llvm.loop !11

for.inc17.45:                                     ; preds = %for.body3.45
  %indvars.iv.next5.45 = add nuw nsw i64 %indvars.iv.next5.44, 1
  br label %for.body3.46

for.body3.46:                                     ; preds = %for.body3.46, %for.inc17.45
  %indvars.iv.46 = phi i64 [ 0, %for.inc17.45 ], [ %indvars.iv.next.46, %for.body3.46 ]
  %276 = shl nsw i64 %indvars.iv.next5.45, 7
  %277 = add nuw nsw i64 %276, %indvars.iv.46
  %arrayidx.46 = getelementptr inbounds i32, i32* %a, i64 %277
  %278 = load i32, i32* %arrayidx.46, align 4
  %shr.46 = ashr i32 %278, %exp
  %and.46 = shl i32 %shr.46, 17
  %mul4.46 = and i32 %and.46, 393216
  %279 = trunc i64 %indvars.iv.next5.45 to i32
  %add5.46 = add nuw nsw i32 %mul4.46, %279
  %idxprom6.46 = zext i32 %add5.46 to i64
  %arrayidx7.46 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.46
  %280 = load i32, i32* %arrayidx7.46, align 4
  %idxprom8.46 = sext i32 %280 to i64
  %arrayidx9.46 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.46
  store i32 %278, i32* %arrayidx9.46, align 4
  %add10.46 = add nsw i32 %280, 1
  %shr11.46 = ashr i32 %278, %exp
  %and12.46 = shl i32 %shr11.46, 17
  %mul13.46 = and i32 %and12.46, 393216
  %281 = trunc i64 %indvars.iv.next5.45 to i32
  %add14.46 = add nuw nsw i32 %mul13.46, %281
  %idxprom15.46 = zext i32 %add14.46 to i64
  %arrayidx16.46 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.46
  store i32 %add10.46, i32* %arrayidx16.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.46, 1
  %exitcond.46 = icmp ne i64 %indvars.iv.next.46, 4
  br i1 %exitcond.46, label %for.body3.46, label %for.inc17.46, !llvm.loop !11

for.inc17.46:                                     ; preds = %for.body3.46
  %indvars.iv.next5.46 = add nuw nsw i64 %indvars.iv.next5.45, 1
  br label %for.body3.47

for.body3.47:                                     ; preds = %for.body3.47, %for.inc17.46
  %indvars.iv.47 = phi i64 [ 0, %for.inc17.46 ], [ %indvars.iv.next.47, %for.body3.47 ]
  %282 = shl nsw i64 %indvars.iv.next5.46, 7
  %283 = add nuw nsw i64 %282, %indvars.iv.47
  %arrayidx.47 = getelementptr inbounds i32, i32* %a, i64 %283
  %284 = load i32, i32* %arrayidx.47, align 4
  %shr.47 = ashr i32 %284, %exp
  %and.47 = shl i32 %shr.47, 17
  %mul4.47 = and i32 %and.47, 393216
  %285 = trunc i64 %indvars.iv.next5.46 to i32
  %add5.47 = add nuw nsw i32 %mul4.47, %285
  %idxprom6.47 = zext i32 %add5.47 to i64
  %arrayidx7.47 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.47
  %286 = load i32, i32* %arrayidx7.47, align 4
  %idxprom8.47 = sext i32 %286 to i64
  %arrayidx9.47 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.47
  store i32 %284, i32* %arrayidx9.47, align 4
  %add10.47 = add nsw i32 %286, 1
  %shr11.47 = ashr i32 %284, %exp
  %and12.47 = shl i32 %shr11.47, 17
  %mul13.47 = and i32 %and12.47, 393216
  %287 = trunc i64 %indvars.iv.next5.46 to i32
  %add14.47 = add nuw nsw i32 %mul13.47, %287
  %idxprom15.47 = zext i32 %add14.47 to i64
  %arrayidx16.47 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.47
  store i32 %add10.47, i32* %arrayidx16.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.47, 1
  %exitcond.47 = icmp ne i64 %indvars.iv.next.47, 4
  br i1 %exitcond.47, label %for.body3.47, label %for.inc17.47, !llvm.loop !11

for.inc17.47:                                     ; preds = %for.body3.47
  %indvars.iv.next5.47 = add nuw nsw i64 %indvars.iv.next5.46, 1
  br label %for.body3.48

for.body3.48:                                     ; preds = %for.body3.48, %for.inc17.47
  %indvars.iv.48 = phi i64 [ 0, %for.inc17.47 ], [ %indvars.iv.next.48, %for.body3.48 ]
  %288 = shl nsw i64 %indvars.iv.next5.47, 7
  %289 = add nuw nsw i64 %288, %indvars.iv.48
  %arrayidx.48 = getelementptr inbounds i32, i32* %a, i64 %289
  %290 = load i32, i32* %arrayidx.48, align 4
  %shr.48 = ashr i32 %290, %exp
  %and.48 = shl i32 %shr.48, 17
  %mul4.48 = and i32 %and.48, 393216
  %291 = trunc i64 %indvars.iv.next5.47 to i32
  %add5.48 = add nuw nsw i32 %mul4.48, %291
  %idxprom6.48 = zext i32 %add5.48 to i64
  %arrayidx7.48 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.48
  %292 = load i32, i32* %arrayidx7.48, align 4
  %idxprom8.48 = sext i32 %292 to i64
  %arrayidx9.48 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.48
  store i32 %290, i32* %arrayidx9.48, align 4
  %add10.48 = add nsw i32 %292, 1
  %shr11.48 = ashr i32 %290, %exp
  %and12.48 = shl i32 %shr11.48, 17
  %mul13.48 = and i32 %and12.48, 393216
  %293 = trunc i64 %indvars.iv.next5.47 to i32
  %add14.48 = add nuw nsw i32 %mul13.48, %293
  %idxprom15.48 = zext i32 %add14.48 to i64
  %arrayidx16.48 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.48
  store i32 %add10.48, i32* %arrayidx16.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.48, 1
  %exitcond.48 = icmp ne i64 %indvars.iv.next.48, 4
  br i1 %exitcond.48, label %for.body3.48, label %for.inc17.48, !llvm.loop !11

for.inc17.48:                                     ; preds = %for.body3.48
  %indvars.iv.next5.48 = add nuw nsw i64 %indvars.iv.next5.47, 1
  br label %for.body3.49

for.body3.49:                                     ; preds = %for.body3.49, %for.inc17.48
  %indvars.iv.49 = phi i64 [ 0, %for.inc17.48 ], [ %indvars.iv.next.49, %for.body3.49 ]
  %294 = shl nsw i64 %indvars.iv.next5.48, 7
  %295 = add nuw nsw i64 %294, %indvars.iv.49
  %arrayidx.49 = getelementptr inbounds i32, i32* %a, i64 %295
  %296 = load i32, i32* %arrayidx.49, align 4
  %shr.49 = ashr i32 %296, %exp
  %and.49 = shl i32 %shr.49, 17
  %mul4.49 = and i32 %and.49, 393216
  %297 = trunc i64 %indvars.iv.next5.48 to i32
  %add5.49 = add nuw nsw i32 %mul4.49, %297
  %idxprom6.49 = zext i32 %add5.49 to i64
  %arrayidx7.49 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.49
  %298 = load i32, i32* %arrayidx7.49, align 4
  %idxprom8.49 = sext i32 %298 to i64
  %arrayidx9.49 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.49
  store i32 %296, i32* %arrayidx9.49, align 4
  %add10.49 = add nsw i32 %298, 1
  %shr11.49 = ashr i32 %296, %exp
  %and12.49 = shl i32 %shr11.49, 17
  %mul13.49 = and i32 %and12.49, 393216
  %299 = trunc i64 %indvars.iv.next5.48 to i32
  %add14.49 = add nuw nsw i32 %mul13.49, %299
  %idxprom15.49 = zext i32 %add14.49 to i64
  %arrayidx16.49 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.49
  store i32 %add10.49, i32* %arrayidx16.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.49, 1
  %exitcond.49 = icmp ne i64 %indvars.iv.next.49, 4
  br i1 %exitcond.49, label %for.body3.49, label %for.inc17.49, !llvm.loop !11

for.inc17.49:                                     ; preds = %for.body3.49
  %indvars.iv.next5.49 = add nuw nsw i64 %indvars.iv.next5.48, 1
  br label %for.body3.50

for.body3.50:                                     ; preds = %for.body3.50, %for.inc17.49
  %indvars.iv.50 = phi i64 [ 0, %for.inc17.49 ], [ %indvars.iv.next.50, %for.body3.50 ]
  %300 = shl nsw i64 %indvars.iv.next5.49, 7
  %301 = add nuw nsw i64 %300, %indvars.iv.50
  %arrayidx.50 = getelementptr inbounds i32, i32* %a, i64 %301
  %302 = load i32, i32* %arrayidx.50, align 4
  %shr.50 = ashr i32 %302, %exp
  %and.50 = shl i32 %shr.50, 17
  %mul4.50 = and i32 %and.50, 393216
  %303 = trunc i64 %indvars.iv.next5.49 to i32
  %add5.50 = add nuw nsw i32 %mul4.50, %303
  %idxprom6.50 = zext i32 %add5.50 to i64
  %arrayidx7.50 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.50
  %304 = load i32, i32* %arrayidx7.50, align 4
  %idxprom8.50 = sext i32 %304 to i64
  %arrayidx9.50 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.50
  store i32 %302, i32* %arrayidx9.50, align 4
  %add10.50 = add nsw i32 %304, 1
  %shr11.50 = ashr i32 %302, %exp
  %and12.50 = shl i32 %shr11.50, 17
  %mul13.50 = and i32 %and12.50, 393216
  %305 = trunc i64 %indvars.iv.next5.49 to i32
  %add14.50 = add nuw nsw i32 %mul13.50, %305
  %idxprom15.50 = zext i32 %add14.50 to i64
  %arrayidx16.50 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.50
  store i32 %add10.50, i32* %arrayidx16.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.50, 1
  %exitcond.50 = icmp ne i64 %indvars.iv.next.50, 4
  br i1 %exitcond.50, label %for.body3.50, label %for.inc17.50, !llvm.loop !11

for.inc17.50:                                     ; preds = %for.body3.50
  %indvars.iv.next5.50 = add nuw nsw i64 %indvars.iv.next5.49, 1
  br label %for.body3.51

for.body3.51:                                     ; preds = %for.body3.51, %for.inc17.50
  %indvars.iv.51 = phi i64 [ 0, %for.inc17.50 ], [ %indvars.iv.next.51, %for.body3.51 ]
  %306 = shl nsw i64 %indvars.iv.next5.50, 7
  %307 = add nuw nsw i64 %306, %indvars.iv.51
  %arrayidx.51 = getelementptr inbounds i32, i32* %a, i64 %307
  %308 = load i32, i32* %arrayidx.51, align 4
  %shr.51 = ashr i32 %308, %exp
  %and.51 = shl i32 %shr.51, 17
  %mul4.51 = and i32 %and.51, 393216
  %309 = trunc i64 %indvars.iv.next5.50 to i32
  %add5.51 = add nuw nsw i32 %mul4.51, %309
  %idxprom6.51 = zext i32 %add5.51 to i64
  %arrayidx7.51 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.51
  %310 = load i32, i32* %arrayidx7.51, align 4
  %idxprom8.51 = sext i32 %310 to i64
  %arrayidx9.51 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.51
  store i32 %308, i32* %arrayidx9.51, align 4
  %add10.51 = add nsw i32 %310, 1
  %shr11.51 = ashr i32 %308, %exp
  %and12.51 = shl i32 %shr11.51, 17
  %mul13.51 = and i32 %and12.51, 393216
  %311 = trunc i64 %indvars.iv.next5.50 to i32
  %add14.51 = add nuw nsw i32 %mul13.51, %311
  %idxprom15.51 = zext i32 %add14.51 to i64
  %arrayidx16.51 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.51
  store i32 %add10.51, i32* %arrayidx16.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.51, 1
  %exitcond.51 = icmp ne i64 %indvars.iv.next.51, 4
  br i1 %exitcond.51, label %for.body3.51, label %for.inc17.51, !llvm.loop !11

for.inc17.51:                                     ; preds = %for.body3.51
  %indvars.iv.next5.51 = add nuw nsw i64 %indvars.iv.next5.50, 1
  br label %for.body3.52

for.body3.52:                                     ; preds = %for.body3.52, %for.inc17.51
  %indvars.iv.52 = phi i64 [ 0, %for.inc17.51 ], [ %indvars.iv.next.52, %for.body3.52 ]
  %312 = shl nsw i64 %indvars.iv.next5.51, 7
  %313 = add nuw nsw i64 %312, %indvars.iv.52
  %arrayidx.52 = getelementptr inbounds i32, i32* %a, i64 %313
  %314 = load i32, i32* %arrayidx.52, align 4
  %shr.52 = ashr i32 %314, %exp
  %and.52 = shl i32 %shr.52, 17
  %mul4.52 = and i32 %and.52, 393216
  %315 = trunc i64 %indvars.iv.next5.51 to i32
  %add5.52 = add nuw nsw i32 %mul4.52, %315
  %idxprom6.52 = zext i32 %add5.52 to i64
  %arrayidx7.52 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.52
  %316 = load i32, i32* %arrayidx7.52, align 4
  %idxprom8.52 = sext i32 %316 to i64
  %arrayidx9.52 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.52
  store i32 %314, i32* %arrayidx9.52, align 4
  %add10.52 = add nsw i32 %316, 1
  %shr11.52 = ashr i32 %314, %exp
  %and12.52 = shl i32 %shr11.52, 17
  %mul13.52 = and i32 %and12.52, 393216
  %317 = trunc i64 %indvars.iv.next5.51 to i32
  %add14.52 = add nuw nsw i32 %mul13.52, %317
  %idxprom15.52 = zext i32 %add14.52 to i64
  %arrayidx16.52 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.52
  store i32 %add10.52, i32* %arrayidx16.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.52, 1
  %exitcond.52 = icmp ne i64 %indvars.iv.next.52, 4
  br i1 %exitcond.52, label %for.body3.52, label %for.inc17.52, !llvm.loop !11

for.inc17.52:                                     ; preds = %for.body3.52
  %indvars.iv.next5.52 = add nuw nsw i64 %indvars.iv.next5.51, 1
  br label %for.body3.53

for.body3.53:                                     ; preds = %for.body3.53, %for.inc17.52
  %indvars.iv.53 = phi i64 [ 0, %for.inc17.52 ], [ %indvars.iv.next.53, %for.body3.53 ]
  %318 = shl nsw i64 %indvars.iv.next5.52, 7
  %319 = add nuw nsw i64 %318, %indvars.iv.53
  %arrayidx.53 = getelementptr inbounds i32, i32* %a, i64 %319
  %320 = load i32, i32* %arrayidx.53, align 4
  %shr.53 = ashr i32 %320, %exp
  %and.53 = shl i32 %shr.53, 17
  %mul4.53 = and i32 %and.53, 393216
  %321 = trunc i64 %indvars.iv.next5.52 to i32
  %add5.53 = add nuw nsw i32 %mul4.53, %321
  %idxprom6.53 = zext i32 %add5.53 to i64
  %arrayidx7.53 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.53
  %322 = load i32, i32* %arrayidx7.53, align 4
  %idxprom8.53 = sext i32 %322 to i64
  %arrayidx9.53 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.53
  store i32 %320, i32* %arrayidx9.53, align 4
  %add10.53 = add nsw i32 %322, 1
  %shr11.53 = ashr i32 %320, %exp
  %and12.53 = shl i32 %shr11.53, 17
  %mul13.53 = and i32 %and12.53, 393216
  %323 = trunc i64 %indvars.iv.next5.52 to i32
  %add14.53 = add nuw nsw i32 %mul13.53, %323
  %idxprom15.53 = zext i32 %add14.53 to i64
  %arrayidx16.53 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.53
  store i32 %add10.53, i32* %arrayidx16.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.53, 1
  %exitcond.53 = icmp ne i64 %indvars.iv.next.53, 4
  br i1 %exitcond.53, label %for.body3.53, label %for.inc17.53, !llvm.loop !11

for.inc17.53:                                     ; preds = %for.body3.53
  %indvars.iv.next5.53 = add nuw nsw i64 %indvars.iv.next5.52, 1
  br label %for.body3.54

for.body3.54:                                     ; preds = %for.body3.54, %for.inc17.53
  %indvars.iv.54 = phi i64 [ 0, %for.inc17.53 ], [ %indvars.iv.next.54, %for.body3.54 ]
  %324 = shl nsw i64 %indvars.iv.next5.53, 7
  %325 = add nuw nsw i64 %324, %indvars.iv.54
  %arrayidx.54 = getelementptr inbounds i32, i32* %a, i64 %325
  %326 = load i32, i32* %arrayidx.54, align 4
  %shr.54 = ashr i32 %326, %exp
  %and.54 = shl i32 %shr.54, 17
  %mul4.54 = and i32 %and.54, 393216
  %327 = trunc i64 %indvars.iv.next5.53 to i32
  %add5.54 = add nuw nsw i32 %mul4.54, %327
  %idxprom6.54 = zext i32 %add5.54 to i64
  %arrayidx7.54 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.54
  %328 = load i32, i32* %arrayidx7.54, align 4
  %idxprom8.54 = sext i32 %328 to i64
  %arrayidx9.54 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.54
  store i32 %326, i32* %arrayidx9.54, align 4
  %add10.54 = add nsw i32 %328, 1
  %shr11.54 = ashr i32 %326, %exp
  %and12.54 = shl i32 %shr11.54, 17
  %mul13.54 = and i32 %and12.54, 393216
  %329 = trunc i64 %indvars.iv.next5.53 to i32
  %add14.54 = add nuw nsw i32 %mul13.54, %329
  %idxprom15.54 = zext i32 %add14.54 to i64
  %arrayidx16.54 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.54
  store i32 %add10.54, i32* %arrayidx16.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.54, 1
  %exitcond.54 = icmp ne i64 %indvars.iv.next.54, 4
  br i1 %exitcond.54, label %for.body3.54, label %for.inc17.54, !llvm.loop !11

for.inc17.54:                                     ; preds = %for.body3.54
  %indvars.iv.next5.54 = add nuw nsw i64 %indvars.iv.next5.53, 1
  br label %for.body3.55

for.body3.55:                                     ; preds = %for.body3.55, %for.inc17.54
  %indvars.iv.55 = phi i64 [ 0, %for.inc17.54 ], [ %indvars.iv.next.55, %for.body3.55 ]
  %330 = shl nsw i64 %indvars.iv.next5.54, 7
  %331 = add nuw nsw i64 %330, %indvars.iv.55
  %arrayidx.55 = getelementptr inbounds i32, i32* %a, i64 %331
  %332 = load i32, i32* %arrayidx.55, align 4
  %shr.55 = ashr i32 %332, %exp
  %and.55 = shl i32 %shr.55, 17
  %mul4.55 = and i32 %and.55, 393216
  %333 = trunc i64 %indvars.iv.next5.54 to i32
  %add5.55 = add nuw nsw i32 %mul4.55, %333
  %idxprom6.55 = zext i32 %add5.55 to i64
  %arrayidx7.55 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.55
  %334 = load i32, i32* %arrayidx7.55, align 4
  %idxprom8.55 = sext i32 %334 to i64
  %arrayidx9.55 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.55
  store i32 %332, i32* %arrayidx9.55, align 4
  %add10.55 = add nsw i32 %334, 1
  %shr11.55 = ashr i32 %332, %exp
  %and12.55 = shl i32 %shr11.55, 17
  %mul13.55 = and i32 %and12.55, 393216
  %335 = trunc i64 %indvars.iv.next5.54 to i32
  %add14.55 = add nuw nsw i32 %mul13.55, %335
  %idxprom15.55 = zext i32 %add14.55 to i64
  %arrayidx16.55 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.55
  store i32 %add10.55, i32* %arrayidx16.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.55, 1
  %exitcond.55 = icmp ne i64 %indvars.iv.next.55, 4
  br i1 %exitcond.55, label %for.body3.55, label %for.inc17.55, !llvm.loop !11

for.inc17.55:                                     ; preds = %for.body3.55
  %indvars.iv.next5.55 = add nuw nsw i64 %indvars.iv.next5.54, 1
  br label %for.body3.56

for.body3.56:                                     ; preds = %for.body3.56, %for.inc17.55
  %indvars.iv.56 = phi i64 [ 0, %for.inc17.55 ], [ %indvars.iv.next.56, %for.body3.56 ]
  %336 = shl nsw i64 %indvars.iv.next5.55, 7
  %337 = add nuw nsw i64 %336, %indvars.iv.56
  %arrayidx.56 = getelementptr inbounds i32, i32* %a, i64 %337
  %338 = load i32, i32* %arrayidx.56, align 4
  %shr.56 = ashr i32 %338, %exp
  %and.56 = shl i32 %shr.56, 17
  %mul4.56 = and i32 %and.56, 393216
  %339 = trunc i64 %indvars.iv.next5.55 to i32
  %add5.56 = add nuw nsw i32 %mul4.56, %339
  %idxprom6.56 = zext i32 %add5.56 to i64
  %arrayidx7.56 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.56
  %340 = load i32, i32* %arrayidx7.56, align 4
  %idxprom8.56 = sext i32 %340 to i64
  %arrayidx9.56 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.56
  store i32 %338, i32* %arrayidx9.56, align 4
  %add10.56 = add nsw i32 %340, 1
  %shr11.56 = ashr i32 %338, %exp
  %and12.56 = shl i32 %shr11.56, 17
  %mul13.56 = and i32 %and12.56, 393216
  %341 = trunc i64 %indvars.iv.next5.55 to i32
  %add14.56 = add nuw nsw i32 %mul13.56, %341
  %idxprom15.56 = zext i32 %add14.56 to i64
  %arrayidx16.56 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.56
  store i32 %add10.56, i32* %arrayidx16.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.56, 1
  %exitcond.56 = icmp ne i64 %indvars.iv.next.56, 4
  br i1 %exitcond.56, label %for.body3.56, label %for.inc17.56, !llvm.loop !11

for.inc17.56:                                     ; preds = %for.body3.56
  %indvars.iv.next5.56 = add nuw nsw i64 %indvars.iv.next5.55, 1
  br label %for.body3.57

for.body3.57:                                     ; preds = %for.body3.57, %for.inc17.56
  %indvars.iv.57 = phi i64 [ 0, %for.inc17.56 ], [ %indvars.iv.next.57, %for.body3.57 ]
  %342 = shl nsw i64 %indvars.iv.next5.56, 7
  %343 = add nuw nsw i64 %342, %indvars.iv.57
  %arrayidx.57 = getelementptr inbounds i32, i32* %a, i64 %343
  %344 = load i32, i32* %arrayidx.57, align 4
  %shr.57 = ashr i32 %344, %exp
  %and.57 = shl i32 %shr.57, 17
  %mul4.57 = and i32 %and.57, 393216
  %345 = trunc i64 %indvars.iv.next5.56 to i32
  %add5.57 = add nuw nsw i32 %mul4.57, %345
  %idxprom6.57 = zext i32 %add5.57 to i64
  %arrayidx7.57 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.57
  %346 = load i32, i32* %arrayidx7.57, align 4
  %idxprom8.57 = sext i32 %346 to i64
  %arrayidx9.57 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.57
  store i32 %344, i32* %arrayidx9.57, align 4
  %add10.57 = add nsw i32 %346, 1
  %shr11.57 = ashr i32 %344, %exp
  %and12.57 = shl i32 %shr11.57, 17
  %mul13.57 = and i32 %and12.57, 393216
  %347 = trunc i64 %indvars.iv.next5.56 to i32
  %add14.57 = add nuw nsw i32 %mul13.57, %347
  %idxprom15.57 = zext i32 %add14.57 to i64
  %arrayidx16.57 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.57
  store i32 %add10.57, i32* %arrayidx16.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.57, 1
  %exitcond.57 = icmp ne i64 %indvars.iv.next.57, 4
  br i1 %exitcond.57, label %for.body3.57, label %for.inc17.57, !llvm.loop !11

for.inc17.57:                                     ; preds = %for.body3.57
  %indvars.iv.next5.57 = add nuw nsw i64 %indvars.iv.next5.56, 1
  br label %for.body3.58

for.body3.58:                                     ; preds = %for.body3.58, %for.inc17.57
  %indvars.iv.58 = phi i64 [ 0, %for.inc17.57 ], [ %indvars.iv.next.58, %for.body3.58 ]
  %348 = shl nsw i64 %indvars.iv.next5.57, 7
  %349 = add nuw nsw i64 %348, %indvars.iv.58
  %arrayidx.58 = getelementptr inbounds i32, i32* %a, i64 %349
  %350 = load i32, i32* %arrayidx.58, align 4
  %shr.58 = ashr i32 %350, %exp
  %and.58 = shl i32 %shr.58, 17
  %mul4.58 = and i32 %and.58, 393216
  %351 = trunc i64 %indvars.iv.next5.57 to i32
  %add5.58 = add nuw nsw i32 %mul4.58, %351
  %idxprom6.58 = zext i32 %add5.58 to i64
  %arrayidx7.58 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.58
  %352 = load i32, i32* %arrayidx7.58, align 4
  %idxprom8.58 = sext i32 %352 to i64
  %arrayidx9.58 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.58
  store i32 %350, i32* %arrayidx9.58, align 4
  %add10.58 = add nsw i32 %352, 1
  %shr11.58 = ashr i32 %350, %exp
  %and12.58 = shl i32 %shr11.58, 17
  %mul13.58 = and i32 %and12.58, 393216
  %353 = trunc i64 %indvars.iv.next5.57 to i32
  %add14.58 = add nuw nsw i32 %mul13.58, %353
  %idxprom15.58 = zext i32 %add14.58 to i64
  %arrayidx16.58 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.58
  store i32 %add10.58, i32* %arrayidx16.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.58, 1
  %exitcond.58 = icmp ne i64 %indvars.iv.next.58, 4
  br i1 %exitcond.58, label %for.body3.58, label %for.inc17.58, !llvm.loop !11

for.inc17.58:                                     ; preds = %for.body3.58
  %indvars.iv.next5.58 = add nuw nsw i64 %indvars.iv.next5.57, 1
  br label %for.body3.59

for.body3.59:                                     ; preds = %for.body3.59, %for.inc17.58
  %indvars.iv.59 = phi i64 [ 0, %for.inc17.58 ], [ %indvars.iv.next.59, %for.body3.59 ]
  %354 = shl nsw i64 %indvars.iv.next5.58, 7
  %355 = add nuw nsw i64 %354, %indvars.iv.59
  %arrayidx.59 = getelementptr inbounds i32, i32* %a, i64 %355
  %356 = load i32, i32* %arrayidx.59, align 4
  %shr.59 = ashr i32 %356, %exp
  %and.59 = shl i32 %shr.59, 17
  %mul4.59 = and i32 %and.59, 393216
  %357 = trunc i64 %indvars.iv.next5.58 to i32
  %add5.59 = add nuw nsw i32 %mul4.59, %357
  %idxprom6.59 = zext i32 %add5.59 to i64
  %arrayidx7.59 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.59
  %358 = load i32, i32* %arrayidx7.59, align 4
  %idxprom8.59 = sext i32 %358 to i64
  %arrayidx9.59 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.59
  store i32 %356, i32* %arrayidx9.59, align 4
  %add10.59 = add nsw i32 %358, 1
  %shr11.59 = ashr i32 %356, %exp
  %and12.59 = shl i32 %shr11.59, 17
  %mul13.59 = and i32 %and12.59, 393216
  %359 = trunc i64 %indvars.iv.next5.58 to i32
  %add14.59 = add nuw nsw i32 %mul13.59, %359
  %idxprom15.59 = zext i32 %add14.59 to i64
  %arrayidx16.59 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.59
  store i32 %add10.59, i32* %arrayidx16.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.59, 1
  %exitcond.59 = icmp ne i64 %indvars.iv.next.59, 4
  br i1 %exitcond.59, label %for.body3.59, label %for.inc17.59, !llvm.loop !11

for.inc17.59:                                     ; preds = %for.body3.59
  %indvars.iv.next5.59 = add nuw nsw i64 %indvars.iv.next5.58, 1
  br label %for.body3.60

for.body3.60:                                     ; preds = %for.body3.60, %for.inc17.59
  %indvars.iv.60 = phi i64 [ 0, %for.inc17.59 ], [ %indvars.iv.next.60, %for.body3.60 ]
  %360 = shl nsw i64 %indvars.iv.next5.59, 7
  %361 = add nuw nsw i64 %360, %indvars.iv.60
  %arrayidx.60 = getelementptr inbounds i32, i32* %a, i64 %361
  %362 = load i32, i32* %arrayidx.60, align 4
  %shr.60 = ashr i32 %362, %exp
  %and.60 = shl i32 %shr.60, 17
  %mul4.60 = and i32 %and.60, 393216
  %363 = trunc i64 %indvars.iv.next5.59 to i32
  %add5.60 = add nuw nsw i32 %mul4.60, %363
  %idxprom6.60 = zext i32 %add5.60 to i64
  %arrayidx7.60 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.60
  %364 = load i32, i32* %arrayidx7.60, align 4
  %idxprom8.60 = sext i32 %364 to i64
  %arrayidx9.60 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.60
  store i32 %362, i32* %arrayidx9.60, align 4
  %add10.60 = add nsw i32 %364, 1
  %shr11.60 = ashr i32 %362, %exp
  %and12.60 = shl i32 %shr11.60, 17
  %mul13.60 = and i32 %and12.60, 393216
  %365 = trunc i64 %indvars.iv.next5.59 to i32
  %add14.60 = add nuw nsw i32 %mul13.60, %365
  %idxprom15.60 = zext i32 %add14.60 to i64
  %arrayidx16.60 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.60
  store i32 %add10.60, i32* %arrayidx16.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.60, 1
  %exitcond.60 = icmp ne i64 %indvars.iv.next.60, 4
  br i1 %exitcond.60, label %for.body3.60, label %for.inc17.60, !llvm.loop !11

for.inc17.60:                                     ; preds = %for.body3.60
  %indvars.iv.next5.60 = add nuw nsw i64 %indvars.iv.next5.59, 1
  br label %for.body3.61

for.body3.61:                                     ; preds = %for.body3.61, %for.inc17.60
  %indvars.iv.61 = phi i64 [ 0, %for.inc17.60 ], [ %indvars.iv.next.61, %for.body3.61 ]
  %366 = shl nsw i64 %indvars.iv.next5.60, 7
  %367 = add nuw nsw i64 %366, %indvars.iv.61
  %arrayidx.61 = getelementptr inbounds i32, i32* %a, i64 %367
  %368 = load i32, i32* %arrayidx.61, align 4
  %shr.61 = ashr i32 %368, %exp
  %and.61 = shl i32 %shr.61, 17
  %mul4.61 = and i32 %and.61, 393216
  %369 = trunc i64 %indvars.iv.next5.60 to i32
  %add5.61 = add nuw nsw i32 %mul4.61, %369
  %idxprom6.61 = zext i32 %add5.61 to i64
  %arrayidx7.61 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.61
  %370 = load i32, i32* %arrayidx7.61, align 4
  %idxprom8.61 = sext i32 %370 to i64
  %arrayidx9.61 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.61
  store i32 %368, i32* %arrayidx9.61, align 4
  %add10.61 = add nsw i32 %370, 1
  %shr11.61 = ashr i32 %368, %exp
  %and12.61 = shl i32 %shr11.61, 17
  %mul13.61 = and i32 %and12.61, 393216
  %371 = trunc i64 %indvars.iv.next5.60 to i32
  %add14.61 = add nuw nsw i32 %mul13.61, %371
  %idxprom15.61 = zext i32 %add14.61 to i64
  %arrayidx16.61 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.61
  store i32 %add10.61, i32* %arrayidx16.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.61, 1
  %exitcond.61 = icmp ne i64 %indvars.iv.next.61, 4
  br i1 %exitcond.61, label %for.body3.61, label %for.inc17.61, !llvm.loop !11

for.inc17.61:                                     ; preds = %for.body3.61
  %indvars.iv.next5.61 = add nuw nsw i64 %indvars.iv.next5.60, 1
  br label %for.body3.62

for.body3.62:                                     ; preds = %for.body3.62, %for.inc17.61
  %indvars.iv.62 = phi i64 [ 0, %for.inc17.61 ], [ %indvars.iv.next.62, %for.body3.62 ]
  %372 = shl nsw i64 %indvars.iv.next5.61, 7
  %373 = add nuw nsw i64 %372, %indvars.iv.62
  %arrayidx.62 = getelementptr inbounds i32, i32* %a, i64 %373
  %374 = load i32, i32* %arrayidx.62, align 4
  %shr.62 = ashr i32 %374, %exp
  %and.62 = shl i32 %shr.62, 17
  %mul4.62 = and i32 %and.62, 393216
  %375 = trunc i64 %indvars.iv.next5.61 to i32
  %add5.62 = add nuw nsw i32 %mul4.62, %375
  %idxprom6.62 = zext i32 %add5.62 to i64
  %arrayidx7.62 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.62
  %376 = load i32, i32* %arrayidx7.62, align 4
  %idxprom8.62 = sext i32 %376 to i64
  %arrayidx9.62 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.62
  store i32 %374, i32* %arrayidx9.62, align 4
  %add10.62 = add nsw i32 %376, 1
  %shr11.62 = ashr i32 %374, %exp
  %and12.62 = shl i32 %shr11.62, 17
  %mul13.62 = and i32 %and12.62, 393216
  %377 = trunc i64 %indvars.iv.next5.61 to i32
  %add14.62 = add nuw nsw i32 %mul13.62, %377
  %idxprom15.62 = zext i32 %add14.62 to i64
  %arrayidx16.62 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.62
  store i32 %add10.62, i32* %arrayidx16.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.62, 1
  %exitcond.62 = icmp ne i64 %indvars.iv.next.62, 4
  br i1 %exitcond.62, label %for.body3.62, label %for.inc17.62, !llvm.loop !11

for.inc17.62:                                     ; preds = %for.body3.62
  %indvars.iv.next5.62 = add nuw nsw i64 %indvars.iv.next5.61, 1
  br label %for.body3.63

for.body3.63:                                     ; preds = %for.body3.63, %for.inc17.62
  %indvars.iv.63 = phi i64 [ 0, %for.inc17.62 ], [ %indvars.iv.next.63, %for.body3.63 ]
  %378 = shl nsw i64 %indvars.iv.next5.62, 7
  %379 = add nuw nsw i64 %378, %indvars.iv.63
  %arrayidx.63 = getelementptr inbounds i32, i32* %a, i64 %379
  %380 = load i32, i32* %arrayidx.63, align 4
  %shr.63 = ashr i32 %380, %exp
  %and.63 = shl i32 %shr.63, 17
  %mul4.63 = and i32 %and.63, 393216
  %381 = trunc i64 %indvars.iv.next5.62 to i32
  %add5.63 = add nuw nsw i32 %mul4.63, %381
  %idxprom6.63 = zext i32 %add5.63 to i64
  %arrayidx7.63 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.63
  %382 = load i32, i32* %arrayidx7.63, align 4
  %idxprom8.63 = sext i32 %382 to i64
  %arrayidx9.63 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.63
  store i32 %380, i32* %arrayidx9.63, align 4
  %add10.63 = add nsw i32 %382, 1
  %shr11.63 = ashr i32 %380, %exp
  %and12.63 = shl i32 %shr11.63, 17
  %mul13.63 = and i32 %and12.63, 393216
  %383 = trunc i64 %indvars.iv.next5.62 to i32
  %add14.63 = add nuw nsw i32 %mul13.63, %383
  %idxprom15.63 = zext i32 %add14.63 to i64
  %arrayidx16.63 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.63
  store i32 %add10.63, i32* %arrayidx16.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.63, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 4
  br i1 %exitcond.63, label %for.body3.63, label %for.inc17.63, !llvm.loop !11

for.inc17.63:                                     ; preds = %for.body3.63
  %indvars.iv.next5.63 = add nuw nsw i64 %indvars.iv.next5.62, 1
  %exitcond7.63 = icmp ne i64 %indvars.iv.next5.63, 131072
  br i1 %exitcond7.63, label %for.body, label %for.end19, !llvm.loop !12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ss_sort(i32* %a, i32* %b, i32* %bucket, i32* %sum) #0 {
entry:
  call void @init(i32* %bucket)
  %cmp1 = icmp eq i32 0, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @hist(i32* %bucket, i32* %a, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @hist(i32* %bucket, i32* %b, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @local_scan(i32* %bucket)
  call void @sum_scan(i32* %sum, i32* %bucket)
  call void @last_step_scan(i32* %bucket, i32* %sum)
  %cmp2 = icmp eq i32 0, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  call void @update(i32* %b, i32* %bucket, i32* %a, i32 0)
  br label %for.inc

if.else4:                                         ; preds = %if.end
  call void @update(i32* %a, i32* %bucket, i32* %b, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.else4
  %flag.1 = phi i32 [ 1, %if.then3 ], [ 0, %if.else4 ]
  %add = add nuw nsw i32 0, 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call noalias dereferenceable_or_null(67108864) i8* @malloc(i64 67108864) #3
  %call1 = call noalias dereferenceable_or_null(33554432) i8* @malloc(i64 33554432) #3
  %call2 = call noalias dereferenceable_or_null(33554432) i8* @malloc(i64 33554432) #3
  %0 = bitcast i8* %call2 to i32*
  %call3 = call noalias dereferenceable_or_null(2097152) i8* @malloc(i64 2097152) #3
  call void @srand(i32 8650341) #3
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %call4 = call i32 @rand() #3
  %conv = sitofp i32 %call4 to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  %mul = fmul double %div, 2.550000e+02
  %add = fadd double %mul, 0.000000e+00
  %conv7 = fptosi double %add to i32
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %conv7, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 8388608
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %1 = bitcast i8* %call to i32*
  %2 = bitcast i8* %call1 to i32*
  %3 = bitcast i8* %call3 to i32*
  call void @ss_sort(i32* %0, i32* %2, i32* %1, i32* %3)
  call void @print(i32* %0, i32 1)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.count", i32 1}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
