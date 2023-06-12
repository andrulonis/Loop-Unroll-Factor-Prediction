; ModuleID = 'ss_sort_6_16.ll'
source_filename = "ss_sort_6_16.c"
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

for.body:                                         ; preds = %for.inc10.15, %entry
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5.15, %for.inc10.15 ]
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
  br label %for.body3.1

for.end12:                                        ; preds = %for.inc10.15
  ret void

for.body3.1:                                      ; preds = %for.body3.1, %for.inc10
  %indvars.iv.1 = phi i64 [ 0, %for.inc10 ], [ %indvars.iv.next.1, %for.body3.1 ]
  %5 = shl nsw i64 %indvars.iv.next5, 7
  %6 = add nuw nsw i64 %5, %indvars.iv.1
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %6
  %7 = load i32, i32* %arrayidx.1, align 4
  %shr.1 = ashr i32 %7, %exp
  %and.1 = shl i32 %shr.1, 17
  %mul4.1 = and i32 %and.1, 393216
  %8 = trunc i64 %indvars.iv.next5 to i32
  %add5.1 = add nuw nsw i32 %mul4.1, %8
  %add6.1 = add nuw nsw i32 %add5.1, 1
  %idxprom7.1 = zext i32 %add6.1 to i64
  %arrayidx8.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.1
  %9 = load i32, i32* %arrayidx8.1, align 4
  %inc.1 = add nsw i32 %9, 1
  store i32 %inc.1, i32* %arrayidx8.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 4
  br i1 %exitcond.1, label %for.body3.1, label %for.inc10.1, !llvm.loop !9

for.inc10.1:                                      ; preds = %for.body3.1
  %indvars.iv.next5.1 = add nuw nsw i64 %indvars.iv.next5, 1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.body3.2, %for.inc10.1
  %indvars.iv.2 = phi i64 [ 0, %for.inc10.1 ], [ %indvars.iv.next.2, %for.body3.2 ]
  %10 = shl nsw i64 %indvars.iv.next5.1, 7
  %11 = add nuw nsw i64 %10, %indvars.iv.2
  %arrayidx.2 = getelementptr inbounds i32, i32* %a, i64 %11
  %12 = load i32, i32* %arrayidx.2, align 4
  %shr.2 = ashr i32 %12, %exp
  %and.2 = shl i32 %shr.2, 17
  %mul4.2 = and i32 %and.2, 393216
  %13 = trunc i64 %indvars.iv.next5.1 to i32
  %add5.2 = add nuw nsw i32 %mul4.2, %13
  %add6.2 = add nuw nsw i32 %add5.2, 1
  %idxprom7.2 = zext i32 %add6.2 to i64
  %arrayidx8.2 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.2
  %14 = load i32, i32* %arrayidx8.2, align 4
  %inc.2 = add nsw i32 %14, 1
  store i32 %inc.2, i32* %arrayidx8.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, 4
  br i1 %exitcond.2, label %for.body3.2, label %for.inc10.2, !llvm.loop !9

for.inc10.2:                                      ; preds = %for.body3.2
  %indvars.iv.next5.2 = add nuw nsw i64 %indvars.iv.next5.1, 1
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.body3.3, %for.inc10.2
  %indvars.iv.3 = phi i64 [ 0, %for.inc10.2 ], [ %indvars.iv.next.3, %for.body3.3 ]
  %15 = shl nsw i64 %indvars.iv.next5.2, 7
  %16 = add nuw nsw i64 %15, %indvars.iv.3
  %arrayidx.3 = getelementptr inbounds i32, i32* %a, i64 %16
  %17 = load i32, i32* %arrayidx.3, align 4
  %shr.3 = ashr i32 %17, %exp
  %and.3 = shl i32 %shr.3, 17
  %mul4.3 = and i32 %and.3, 393216
  %18 = trunc i64 %indvars.iv.next5.2 to i32
  %add5.3 = add nuw nsw i32 %mul4.3, %18
  %add6.3 = add nuw nsw i32 %add5.3, 1
  %idxprom7.3 = zext i32 %add6.3 to i64
  %arrayidx8.3 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.3
  %19 = load i32, i32* %arrayidx8.3, align 4
  %inc.3 = add nsw i32 %19, 1
  store i32 %inc.3, i32* %arrayidx8.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, 4
  br i1 %exitcond.3, label %for.body3.3, label %for.inc10.3, !llvm.loop !9

for.inc10.3:                                      ; preds = %for.body3.3
  %indvars.iv.next5.3 = add nuw nsw i64 %indvars.iv.next5.2, 1
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.body3.4, %for.inc10.3
  %indvars.iv.4 = phi i64 [ 0, %for.inc10.3 ], [ %indvars.iv.next.4, %for.body3.4 ]
  %20 = shl nsw i64 %indvars.iv.next5.3, 7
  %21 = add nuw nsw i64 %20, %indvars.iv.4
  %arrayidx.4 = getelementptr inbounds i32, i32* %a, i64 %21
  %22 = load i32, i32* %arrayidx.4, align 4
  %shr.4 = ashr i32 %22, %exp
  %and.4 = shl i32 %shr.4, 17
  %mul4.4 = and i32 %and.4, 393216
  %23 = trunc i64 %indvars.iv.next5.3 to i32
  %add5.4 = add nuw nsw i32 %mul4.4, %23
  %add6.4 = add nuw nsw i32 %add5.4, 1
  %idxprom7.4 = zext i32 %add6.4 to i64
  %arrayidx8.4 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.4
  %24 = load i32, i32* %arrayidx8.4, align 4
  %inc.4 = add nsw i32 %24, 1
  store i32 %inc.4, i32* %arrayidx8.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4 = icmp ne i64 %indvars.iv.next.4, 4
  br i1 %exitcond.4, label %for.body3.4, label %for.inc10.4, !llvm.loop !9

for.inc10.4:                                      ; preds = %for.body3.4
  %indvars.iv.next5.4 = add nuw nsw i64 %indvars.iv.next5.3, 1
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.body3.5, %for.inc10.4
  %indvars.iv.5 = phi i64 [ 0, %for.inc10.4 ], [ %indvars.iv.next.5, %for.body3.5 ]
  %25 = shl nsw i64 %indvars.iv.next5.4, 7
  %26 = add nuw nsw i64 %25, %indvars.iv.5
  %arrayidx.5 = getelementptr inbounds i32, i32* %a, i64 %26
  %27 = load i32, i32* %arrayidx.5, align 4
  %shr.5 = ashr i32 %27, %exp
  %and.5 = shl i32 %shr.5, 17
  %mul4.5 = and i32 %and.5, 393216
  %28 = trunc i64 %indvars.iv.next5.4 to i32
  %add5.5 = add nuw nsw i32 %mul4.5, %28
  %add6.5 = add nuw nsw i32 %add5.5, 1
  %idxprom7.5 = zext i32 %add6.5 to i64
  %arrayidx8.5 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.5
  %29 = load i32, i32* %arrayidx8.5, align 4
  %inc.5 = add nsw i32 %29, 1
  store i32 %inc.5, i32* %arrayidx8.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5 = icmp ne i64 %indvars.iv.next.5, 4
  br i1 %exitcond.5, label %for.body3.5, label %for.inc10.5, !llvm.loop !9

for.inc10.5:                                      ; preds = %for.body3.5
  %indvars.iv.next5.5 = add nuw nsw i64 %indvars.iv.next5.4, 1
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.body3.6, %for.inc10.5
  %indvars.iv.6 = phi i64 [ 0, %for.inc10.5 ], [ %indvars.iv.next.6, %for.body3.6 ]
  %30 = shl nsw i64 %indvars.iv.next5.5, 7
  %31 = add nuw nsw i64 %30, %indvars.iv.6
  %arrayidx.6 = getelementptr inbounds i32, i32* %a, i64 %31
  %32 = load i32, i32* %arrayidx.6, align 4
  %shr.6 = ashr i32 %32, %exp
  %and.6 = shl i32 %shr.6, 17
  %mul4.6 = and i32 %and.6, 393216
  %33 = trunc i64 %indvars.iv.next5.5 to i32
  %add5.6 = add nuw nsw i32 %mul4.6, %33
  %add6.6 = add nuw nsw i32 %add5.6, 1
  %idxprom7.6 = zext i32 %add6.6 to i64
  %arrayidx8.6 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.6
  %34 = load i32, i32* %arrayidx8.6, align 4
  %inc.6 = add nsw i32 %34, 1
  store i32 %inc.6, i32* %arrayidx8.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6 = icmp ne i64 %indvars.iv.next.6, 4
  br i1 %exitcond.6, label %for.body3.6, label %for.inc10.6, !llvm.loop !9

for.inc10.6:                                      ; preds = %for.body3.6
  %indvars.iv.next5.6 = add nuw nsw i64 %indvars.iv.next5.5, 1
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.body3.7, %for.inc10.6
  %indvars.iv.7 = phi i64 [ 0, %for.inc10.6 ], [ %indvars.iv.next.7, %for.body3.7 ]
  %35 = shl nsw i64 %indvars.iv.next5.6, 7
  %36 = add nuw nsw i64 %35, %indvars.iv.7
  %arrayidx.7 = getelementptr inbounds i32, i32* %a, i64 %36
  %37 = load i32, i32* %arrayidx.7, align 4
  %shr.7 = ashr i32 %37, %exp
  %and.7 = shl i32 %shr.7, 17
  %mul4.7 = and i32 %and.7, 393216
  %38 = trunc i64 %indvars.iv.next5.6 to i32
  %add5.7 = add nuw nsw i32 %mul4.7, %38
  %add6.7 = add nuw nsw i32 %add5.7, 1
  %idxprom7.7 = zext i32 %add6.7 to i64
  %arrayidx8.7 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.7
  %39 = load i32, i32* %arrayidx8.7, align 4
  %inc.7 = add nsw i32 %39, 1
  store i32 %inc.7, i32* %arrayidx8.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7 = icmp ne i64 %indvars.iv.next.7, 4
  br i1 %exitcond.7, label %for.body3.7, label %for.inc10.7, !llvm.loop !9

for.inc10.7:                                      ; preds = %for.body3.7
  %indvars.iv.next5.7 = add nuw nsw i64 %indvars.iv.next5.6, 1
  br label %for.body3.8

for.body3.8:                                      ; preds = %for.body3.8, %for.inc10.7
  %indvars.iv.8 = phi i64 [ 0, %for.inc10.7 ], [ %indvars.iv.next.8, %for.body3.8 ]
  %40 = shl nsw i64 %indvars.iv.next5.7, 7
  %41 = add nuw nsw i64 %40, %indvars.iv.8
  %arrayidx.8 = getelementptr inbounds i32, i32* %a, i64 %41
  %42 = load i32, i32* %arrayidx.8, align 4
  %shr.8 = ashr i32 %42, %exp
  %and.8 = shl i32 %shr.8, 17
  %mul4.8 = and i32 %and.8, 393216
  %43 = trunc i64 %indvars.iv.next5.7 to i32
  %add5.8 = add nuw nsw i32 %mul4.8, %43
  %add6.8 = add nuw nsw i32 %add5.8, 1
  %idxprom7.8 = zext i32 %add6.8 to i64
  %arrayidx8.8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.8
  %44 = load i32, i32* %arrayidx8.8, align 4
  %inc.8 = add nsw i32 %44, 1
  store i32 %inc.8, i32* %arrayidx8.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1
  %exitcond.8 = icmp ne i64 %indvars.iv.next.8, 4
  br i1 %exitcond.8, label %for.body3.8, label %for.inc10.8, !llvm.loop !9

for.inc10.8:                                      ; preds = %for.body3.8
  %indvars.iv.next5.8 = add nuw nsw i64 %indvars.iv.next5.7, 1
  br label %for.body3.9

for.body3.9:                                      ; preds = %for.body3.9, %for.inc10.8
  %indvars.iv.9 = phi i64 [ 0, %for.inc10.8 ], [ %indvars.iv.next.9, %for.body3.9 ]
  %45 = shl nsw i64 %indvars.iv.next5.8, 7
  %46 = add nuw nsw i64 %45, %indvars.iv.9
  %arrayidx.9 = getelementptr inbounds i32, i32* %a, i64 %46
  %47 = load i32, i32* %arrayidx.9, align 4
  %shr.9 = ashr i32 %47, %exp
  %and.9 = shl i32 %shr.9, 17
  %mul4.9 = and i32 %and.9, 393216
  %48 = trunc i64 %indvars.iv.next5.8 to i32
  %add5.9 = add nuw nsw i32 %mul4.9, %48
  %add6.9 = add nuw nsw i32 %add5.9, 1
  %idxprom7.9 = zext i32 %add6.9 to i64
  %arrayidx8.9 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.9
  %49 = load i32, i32* %arrayidx8.9, align 4
  %inc.9 = add nsw i32 %49, 1
  store i32 %inc.9, i32* %arrayidx8.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1
  %exitcond.9 = icmp ne i64 %indvars.iv.next.9, 4
  br i1 %exitcond.9, label %for.body3.9, label %for.inc10.9, !llvm.loop !9

for.inc10.9:                                      ; preds = %for.body3.9
  %indvars.iv.next5.9 = add nuw nsw i64 %indvars.iv.next5.8, 1
  br label %for.body3.10

for.body3.10:                                     ; preds = %for.body3.10, %for.inc10.9
  %indvars.iv.10 = phi i64 [ 0, %for.inc10.9 ], [ %indvars.iv.next.10, %for.body3.10 ]
  %50 = shl nsw i64 %indvars.iv.next5.9, 7
  %51 = add nuw nsw i64 %50, %indvars.iv.10
  %arrayidx.10 = getelementptr inbounds i32, i32* %a, i64 %51
  %52 = load i32, i32* %arrayidx.10, align 4
  %shr.10 = ashr i32 %52, %exp
  %and.10 = shl i32 %shr.10, 17
  %mul4.10 = and i32 %and.10, 393216
  %53 = trunc i64 %indvars.iv.next5.9 to i32
  %add5.10 = add nuw nsw i32 %mul4.10, %53
  %add6.10 = add nuw nsw i32 %add5.10, 1
  %idxprom7.10 = zext i32 %add6.10 to i64
  %arrayidx8.10 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.10
  %54 = load i32, i32* %arrayidx8.10, align 4
  %inc.10 = add nsw i32 %54, 1
  store i32 %inc.10, i32* %arrayidx8.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.10, 1
  %exitcond.10 = icmp ne i64 %indvars.iv.next.10, 4
  br i1 %exitcond.10, label %for.body3.10, label %for.inc10.10, !llvm.loop !9

for.inc10.10:                                     ; preds = %for.body3.10
  %indvars.iv.next5.10 = add nuw nsw i64 %indvars.iv.next5.9, 1
  br label %for.body3.11

for.body3.11:                                     ; preds = %for.body3.11, %for.inc10.10
  %indvars.iv.11 = phi i64 [ 0, %for.inc10.10 ], [ %indvars.iv.next.11, %for.body3.11 ]
  %55 = shl nsw i64 %indvars.iv.next5.10, 7
  %56 = add nuw nsw i64 %55, %indvars.iv.11
  %arrayidx.11 = getelementptr inbounds i32, i32* %a, i64 %56
  %57 = load i32, i32* %arrayidx.11, align 4
  %shr.11 = ashr i32 %57, %exp
  %and.11 = shl i32 %shr.11, 17
  %mul4.11 = and i32 %and.11, 393216
  %58 = trunc i64 %indvars.iv.next5.10 to i32
  %add5.11 = add nuw nsw i32 %mul4.11, %58
  %add6.11 = add nuw nsw i32 %add5.11, 1
  %idxprom7.11 = zext i32 %add6.11 to i64
  %arrayidx8.11 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.11
  %59 = load i32, i32* %arrayidx8.11, align 4
  %inc.11 = add nsw i32 %59, 1
  store i32 %inc.11, i32* %arrayidx8.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.11, 1
  %exitcond.11 = icmp ne i64 %indvars.iv.next.11, 4
  br i1 %exitcond.11, label %for.body3.11, label %for.inc10.11, !llvm.loop !9

for.inc10.11:                                     ; preds = %for.body3.11
  %indvars.iv.next5.11 = add nuw nsw i64 %indvars.iv.next5.10, 1
  br label %for.body3.12

for.body3.12:                                     ; preds = %for.body3.12, %for.inc10.11
  %indvars.iv.12 = phi i64 [ 0, %for.inc10.11 ], [ %indvars.iv.next.12, %for.body3.12 ]
  %60 = shl nsw i64 %indvars.iv.next5.11, 7
  %61 = add nuw nsw i64 %60, %indvars.iv.12
  %arrayidx.12 = getelementptr inbounds i32, i32* %a, i64 %61
  %62 = load i32, i32* %arrayidx.12, align 4
  %shr.12 = ashr i32 %62, %exp
  %and.12 = shl i32 %shr.12, 17
  %mul4.12 = and i32 %and.12, 393216
  %63 = trunc i64 %indvars.iv.next5.11 to i32
  %add5.12 = add nuw nsw i32 %mul4.12, %63
  %add6.12 = add nuw nsw i32 %add5.12, 1
  %idxprom7.12 = zext i32 %add6.12 to i64
  %arrayidx8.12 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.12
  %64 = load i32, i32* %arrayidx8.12, align 4
  %inc.12 = add nsw i32 %64, 1
  store i32 %inc.12, i32* %arrayidx8.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.12, 1
  %exitcond.12 = icmp ne i64 %indvars.iv.next.12, 4
  br i1 %exitcond.12, label %for.body3.12, label %for.inc10.12, !llvm.loop !9

for.inc10.12:                                     ; preds = %for.body3.12
  %indvars.iv.next5.12 = add nuw nsw i64 %indvars.iv.next5.11, 1
  br label %for.body3.13

for.body3.13:                                     ; preds = %for.body3.13, %for.inc10.12
  %indvars.iv.13 = phi i64 [ 0, %for.inc10.12 ], [ %indvars.iv.next.13, %for.body3.13 ]
  %65 = shl nsw i64 %indvars.iv.next5.12, 7
  %66 = add nuw nsw i64 %65, %indvars.iv.13
  %arrayidx.13 = getelementptr inbounds i32, i32* %a, i64 %66
  %67 = load i32, i32* %arrayidx.13, align 4
  %shr.13 = ashr i32 %67, %exp
  %and.13 = shl i32 %shr.13, 17
  %mul4.13 = and i32 %and.13, 393216
  %68 = trunc i64 %indvars.iv.next5.12 to i32
  %add5.13 = add nuw nsw i32 %mul4.13, %68
  %add6.13 = add nuw nsw i32 %add5.13, 1
  %idxprom7.13 = zext i32 %add6.13 to i64
  %arrayidx8.13 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.13
  %69 = load i32, i32* %arrayidx8.13, align 4
  %inc.13 = add nsw i32 %69, 1
  store i32 %inc.13, i32* %arrayidx8.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.13, 1
  %exitcond.13 = icmp ne i64 %indvars.iv.next.13, 4
  br i1 %exitcond.13, label %for.body3.13, label %for.inc10.13, !llvm.loop !9

for.inc10.13:                                     ; preds = %for.body3.13
  %indvars.iv.next5.13 = add nuw nsw i64 %indvars.iv.next5.12, 1
  br label %for.body3.14

for.body3.14:                                     ; preds = %for.body3.14, %for.inc10.13
  %indvars.iv.14 = phi i64 [ 0, %for.inc10.13 ], [ %indvars.iv.next.14, %for.body3.14 ]
  %70 = shl nsw i64 %indvars.iv.next5.13, 7
  %71 = add nuw nsw i64 %70, %indvars.iv.14
  %arrayidx.14 = getelementptr inbounds i32, i32* %a, i64 %71
  %72 = load i32, i32* %arrayidx.14, align 4
  %shr.14 = ashr i32 %72, %exp
  %and.14 = shl i32 %shr.14, 17
  %mul4.14 = and i32 %and.14, 393216
  %73 = trunc i64 %indvars.iv.next5.13 to i32
  %add5.14 = add nuw nsw i32 %mul4.14, %73
  %add6.14 = add nuw nsw i32 %add5.14, 1
  %idxprom7.14 = zext i32 %add6.14 to i64
  %arrayidx8.14 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.14
  %74 = load i32, i32* %arrayidx8.14, align 4
  %inc.14 = add nsw i32 %74, 1
  store i32 %inc.14, i32* %arrayidx8.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.14, 1
  %exitcond.14 = icmp ne i64 %indvars.iv.next.14, 4
  br i1 %exitcond.14, label %for.body3.14, label %for.inc10.14, !llvm.loop !9

for.inc10.14:                                     ; preds = %for.body3.14
  %indvars.iv.next5.14 = add nuw nsw i64 %indvars.iv.next5.13, 1
  br label %for.body3.15

for.body3.15:                                     ; preds = %for.body3.15, %for.inc10.14
  %indvars.iv.15 = phi i64 [ 0, %for.inc10.14 ], [ %indvars.iv.next.15, %for.body3.15 ]
  %75 = shl nsw i64 %indvars.iv.next5.14, 7
  %76 = add nuw nsw i64 %75, %indvars.iv.15
  %arrayidx.15 = getelementptr inbounds i32, i32* %a, i64 %76
  %77 = load i32, i32* %arrayidx.15, align 4
  %shr.15 = ashr i32 %77, %exp
  %and.15 = shl i32 %shr.15, 17
  %mul4.15 = and i32 %and.15, 393216
  %78 = trunc i64 %indvars.iv.next5.14 to i32
  %add5.15 = add nuw nsw i32 %mul4.15, %78
  %add6.15 = add nuw nsw i32 %add5.15, 1
  %idxprom7.15 = zext i32 %add6.15 to i64
  %arrayidx8.15 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.15
  %79 = load i32, i32* %arrayidx8.15, align 4
  %inc.15 = add nsw i32 %79, 1
  store i32 %inc.15, i32* %arrayidx8.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.15, 1
  %exitcond.15 = icmp ne i64 %indvars.iv.next.15, 4
  br i1 %exitcond.15, label %for.body3.15, label %for.inc10.15, !llvm.loop !9

for.inc10.15:                                     ; preds = %for.body3.15
  %indvars.iv.next5.15 = add nuw nsw i64 %indvars.iv.next5.14, 1
  %exitcond7.15 = icmp ne i64 %indvars.iv.next5.15, 131072
  br i1 %exitcond7.15, label %for.body, label %for.end12, !llvm.loop !10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update(i32* %b, i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc17
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5, %for.inc17 ]
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
  br i1 %exitcond, label %for.body3, label %for.inc17, !llvm.loop !12

for.inc17:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end19, !llvm.loop !13

for.end19:                                        ; preds = %for.inc17
  ret void
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
