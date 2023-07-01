; ModuleID = 'ss_sort_6_32.ll'
source_filename = "ss_sort_6_32.c"
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

for.body:                                         ; preds = %for.inc10.31, %entry
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5.31, %for.inc10.31 ]
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

for.end12:                                        ; preds = %for.inc10.31
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
  br label %for.body3.16

for.body3.16:                                     ; preds = %for.body3.16, %for.inc10.15
  %indvars.iv.16 = phi i64 [ 0, %for.inc10.15 ], [ %indvars.iv.next.16, %for.body3.16 ]
  %80 = shl nsw i64 %indvars.iv.next5.15, 7
  %81 = add nuw nsw i64 %80, %indvars.iv.16
  %arrayidx.16 = getelementptr inbounds i32, i32* %a, i64 %81
  %82 = load i32, i32* %arrayidx.16, align 4
  %shr.16 = ashr i32 %82, %exp
  %and.16 = shl i32 %shr.16, 17
  %mul4.16 = and i32 %and.16, 393216
  %83 = trunc i64 %indvars.iv.next5.15 to i32
  %add5.16 = add nuw nsw i32 %mul4.16, %83
  %add6.16 = add nuw nsw i32 %add5.16, 1
  %idxprom7.16 = zext i32 %add6.16 to i64
  %arrayidx8.16 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.16
  %84 = load i32, i32* %arrayidx8.16, align 4
  %inc.16 = add nsw i32 %84, 1
  store i32 %inc.16, i32* %arrayidx8.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.16, 1
  %exitcond.16 = icmp ne i64 %indvars.iv.next.16, 4
  br i1 %exitcond.16, label %for.body3.16, label %for.inc10.16, !llvm.loop !9

for.inc10.16:                                     ; preds = %for.body3.16
  %indvars.iv.next5.16 = add nuw nsw i64 %indvars.iv.next5.15, 1
  br label %for.body3.17

for.body3.17:                                     ; preds = %for.body3.17, %for.inc10.16
  %indvars.iv.17 = phi i64 [ 0, %for.inc10.16 ], [ %indvars.iv.next.17, %for.body3.17 ]
  %85 = shl nsw i64 %indvars.iv.next5.16, 7
  %86 = add nuw nsw i64 %85, %indvars.iv.17
  %arrayidx.17 = getelementptr inbounds i32, i32* %a, i64 %86
  %87 = load i32, i32* %arrayidx.17, align 4
  %shr.17 = ashr i32 %87, %exp
  %and.17 = shl i32 %shr.17, 17
  %mul4.17 = and i32 %and.17, 393216
  %88 = trunc i64 %indvars.iv.next5.16 to i32
  %add5.17 = add nuw nsw i32 %mul4.17, %88
  %add6.17 = add nuw nsw i32 %add5.17, 1
  %idxprom7.17 = zext i32 %add6.17 to i64
  %arrayidx8.17 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.17
  %89 = load i32, i32* %arrayidx8.17, align 4
  %inc.17 = add nsw i32 %89, 1
  store i32 %inc.17, i32* %arrayidx8.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.17, 1
  %exitcond.17 = icmp ne i64 %indvars.iv.next.17, 4
  br i1 %exitcond.17, label %for.body3.17, label %for.inc10.17, !llvm.loop !9

for.inc10.17:                                     ; preds = %for.body3.17
  %indvars.iv.next5.17 = add nuw nsw i64 %indvars.iv.next5.16, 1
  br label %for.body3.18

for.body3.18:                                     ; preds = %for.body3.18, %for.inc10.17
  %indvars.iv.18 = phi i64 [ 0, %for.inc10.17 ], [ %indvars.iv.next.18, %for.body3.18 ]
  %90 = shl nsw i64 %indvars.iv.next5.17, 7
  %91 = add nuw nsw i64 %90, %indvars.iv.18
  %arrayidx.18 = getelementptr inbounds i32, i32* %a, i64 %91
  %92 = load i32, i32* %arrayidx.18, align 4
  %shr.18 = ashr i32 %92, %exp
  %and.18 = shl i32 %shr.18, 17
  %mul4.18 = and i32 %and.18, 393216
  %93 = trunc i64 %indvars.iv.next5.17 to i32
  %add5.18 = add nuw nsw i32 %mul4.18, %93
  %add6.18 = add nuw nsw i32 %add5.18, 1
  %idxprom7.18 = zext i32 %add6.18 to i64
  %arrayidx8.18 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.18
  %94 = load i32, i32* %arrayidx8.18, align 4
  %inc.18 = add nsw i32 %94, 1
  store i32 %inc.18, i32* %arrayidx8.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.18, 1
  %exitcond.18 = icmp ne i64 %indvars.iv.next.18, 4
  br i1 %exitcond.18, label %for.body3.18, label %for.inc10.18, !llvm.loop !9

for.inc10.18:                                     ; preds = %for.body3.18
  %indvars.iv.next5.18 = add nuw nsw i64 %indvars.iv.next5.17, 1
  br label %for.body3.19

for.body3.19:                                     ; preds = %for.body3.19, %for.inc10.18
  %indvars.iv.19 = phi i64 [ 0, %for.inc10.18 ], [ %indvars.iv.next.19, %for.body3.19 ]
  %95 = shl nsw i64 %indvars.iv.next5.18, 7
  %96 = add nuw nsw i64 %95, %indvars.iv.19
  %arrayidx.19 = getelementptr inbounds i32, i32* %a, i64 %96
  %97 = load i32, i32* %arrayidx.19, align 4
  %shr.19 = ashr i32 %97, %exp
  %and.19 = shl i32 %shr.19, 17
  %mul4.19 = and i32 %and.19, 393216
  %98 = trunc i64 %indvars.iv.next5.18 to i32
  %add5.19 = add nuw nsw i32 %mul4.19, %98
  %add6.19 = add nuw nsw i32 %add5.19, 1
  %idxprom7.19 = zext i32 %add6.19 to i64
  %arrayidx8.19 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.19
  %99 = load i32, i32* %arrayidx8.19, align 4
  %inc.19 = add nsw i32 %99, 1
  store i32 %inc.19, i32* %arrayidx8.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.19, 1
  %exitcond.19 = icmp ne i64 %indvars.iv.next.19, 4
  br i1 %exitcond.19, label %for.body3.19, label %for.inc10.19, !llvm.loop !9

for.inc10.19:                                     ; preds = %for.body3.19
  %indvars.iv.next5.19 = add nuw nsw i64 %indvars.iv.next5.18, 1
  br label %for.body3.20

for.body3.20:                                     ; preds = %for.body3.20, %for.inc10.19
  %indvars.iv.20 = phi i64 [ 0, %for.inc10.19 ], [ %indvars.iv.next.20, %for.body3.20 ]
  %100 = shl nsw i64 %indvars.iv.next5.19, 7
  %101 = add nuw nsw i64 %100, %indvars.iv.20
  %arrayidx.20 = getelementptr inbounds i32, i32* %a, i64 %101
  %102 = load i32, i32* %arrayidx.20, align 4
  %shr.20 = ashr i32 %102, %exp
  %and.20 = shl i32 %shr.20, 17
  %mul4.20 = and i32 %and.20, 393216
  %103 = trunc i64 %indvars.iv.next5.19 to i32
  %add5.20 = add nuw nsw i32 %mul4.20, %103
  %add6.20 = add nuw nsw i32 %add5.20, 1
  %idxprom7.20 = zext i32 %add6.20 to i64
  %arrayidx8.20 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.20
  %104 = load i32, i32* %arrayidx8.20, align 4
  %inc.20 = add nsw i32 %104, 1
  store i32 %inc.20, i32* %arrayidx8.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.20, 1
  %exitcond.20 = icmp ne i64 %indvars.iv.next.20, 4
  br i1 %exitcond.20, label %for.body3.20, label %for.inc10.20, !llvm.loop !9

for.inc10.20:                                     ; preds = %for.body3.20
  %indvars.iv.next5.20 = add nuw nsw i64 %indvars.iv.next5.19, 1
  br label %for.body3.21

for.body3.21:                                     ; preds = %for.body3.21, %for.inc10.20
  %indvars.iv.21 = phi i64 [ 0, %for.inc10.20 ], [ %indvars.iv.next.21, %for.body3.21 ]
  %105 = shl nsw i64 %indvars.iv.next5.20, 7
  %106 = add nuw nsw i64 %105, %indvars.iv.21
  %arrayidx.21 = getelementptr inbounds i32, i32* %a, i64 %106
  %107 = load i32, i32* %arrayidx.21, align 4
  %shr.21 = ashr i32 %107, %exp
  %and.21 = shl i32 %shr.21, 17
  %mul4.21 = and i32 %and.21, 393216
  %108 = trunc i64 %indvars.iv.next5.20 to i32
  %add5.21 = add nuw nsw i32 %mul4.21, %108
  %add6.21 = add nuw nsw i32 %add5.21, 1
  %idxprom7.21 = zext i32 %add6.21 to i64
  %arrayidx8.21 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.21
  %109 = load i32, i32* %arrayidx8.21, align 4
  %inc.21 = add nsw i32 %109, 1
  store i32 %inc.21, i32* %arrayidx8.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.21, 1
  %exitcond.21 = icmp ne i64 %indvars.iv.next.21, 4
  br i1 %exitcond.21, label %for.body3.21, label %for.inc10.21, !llvm.loop !9

for.inc10.21:                                     ; preds = %for.body3.21
  %indvars.iv.next5.21 = add nuw nsw i64 %indvars.iv.next5.20, 1
  br label %for.body3.22

for.body3.22:                                     ; preds = %for.body3.22, %for.inc10.21
  %indvars.iv.22 = phi i64 [ 0, %for.inc10.21 ], [ %indvars.iv.next.22, %for.body3.22 ]
  %110 = shl nsw i64 %indvars.iv.next5.21, 7
  %111 = add nuw nsw i64 %110, %indvars.iv.22
  %arrayidx.22 = getelementptr inbounds i32, i32* %a, i64 %111
  %112 = load i32, i32* %arrayidx.22, align 4
  %shr.22 = ashr i32 %112, %exp
  %and.22 = shl i32 %shr.22, 17
  %mul4.22 = and i32 %and.22, 393216
  %113 = trunc i64 %indvars.iv.next5.21 to i32
  %add5.22 = add nuw nsw i32 %mul4.22, %113
  %add6.22 = add nuw nsw i32 %add5.22, 1
  %idxprom7.22 = zext i32 %add6.22 to i64
  %arrayidx8.22 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.22
  %114 = load i32, i32* %arrayidx8.22, align 4
  %inc.22 = add nsw i32 %114, 1
  store i32 %inc.22, i32* %arrayidx8.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.22, 1
  %exitcond.22 = icmp ne i64 %indvars.iv.next.22, 4
  br i1 %exitcond.22, label %for.body3.22, label %for.inc10.22, !llvm.loop !9

for.inc10.22:                                     ; preds = %for.body3.22
  %indvars.iv.next5.22 = add nuw nsw i64 %indvars.iv.next5.21, 1
  br label %for.body3.23

for.body3.23:                                     ; preds = %for.body3.23, %for.inc10.22
  %indvars.iv.23 = phi i64 [ 0, %for.inc10.22 ], [ %indvars.iv.next.23, %for.body3.23 ]
  %115 = shl nsw i64 %indvars.iv.next5.22, 7
  %116 = add nuw nsw i64 %115, %indvars.iv.23
  %arrayidx.23 = getelementptr inbounds i32, i32* %a, i64 %116
  %117 = load i32, i32* %arrayidx.23, align 4
  %shr.23 = ashr i32 %117, %exp
  %and.23 = shl i32 %shr.23, 17
  %mul4.23 = and i32 %and.23, 393216
  %118 = trunc i64 %indvars.iv.next5.22 to i32
  %add5.23 = add nuw nsw i32 %mul4.23, %118
  %add6.23 = add nuw nsw i32 %add5.23, 1
  %idxprom7.23 = zext i32 %add6.23 to i64
  %arrayidx8.23 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.23
  %119 = load i32, i32* %arrayidx8.23, align 4
  %inc.23 = add nsw i32 %119, 1
  store i32 %inc.23, i32* %arrayidx8.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.23, 1
  %exitcond.23 = icmp ne i64 %indvars.iv.next.23, 4
  br i1 %exitcond.23, label %for.body3.23, label %for.inc10.23, !llvm.loop !9

for.inc10.23:                                     ; preds = %for.body3.23
  %indvars.iv.next5.23 = add nuw nsw i64 %indvars.iv.next5.22, 1
  br label %for.body3.24

for.body3.24:                                     ; preds = %for.body3.24, %for.inc10.23
  %indvars.iv.24 = phi i64 [ 0, %for.inc10.23 ], [ %indvars.iv.next.24, %for.body3.24 ]
  %120 = shl nsw i64 %indvars.iv.next5.23, 7
  %121 = add nuw nsw i64 %120, %indvars.iv.24
  %arrayidx.24 = getelementptr inbounds i32, i32* %a, i64 %121
  %122 = load i32, i32* %arrayidx.24, align 4
  %shr.24 = ashr i32 %122, %exp
  %and.24 = shl i32 %shr.24, 17
  %mul4.24 = and i32 %and.24, 393216
  %123 = trunc i64 %indvars.iv.next5.23 to i32
  %add5.24 = add nuw nsw i32 %mul4.24, %123
  %add6.24 = add nuw nsw i32 %add5.24, 1
  %idxprom7.24 = zext i32 %add6.24 to i64
  %arrayidx8.24 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.24
  %124 = load i32, i32* %arrayidx8.24, align 4
  %inc.24 = add nsw i32 %124, 1
  store i32 %inc.24, i32* %arrayidx8.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.24, 1
  %exitcond.24 = icmp ne i64 %indvars.iv.next.24, 4
  br i1 %exitcond.24, label %for.body3.24, label %for.inc10.24, !llvm.loop !9

for.inc10.24:                                     ; preds = %for.body3.24
  %indvars.iv.next5.24 = add nuw nsw i64 %indvars.iv.next5.23, 1
  br label %for.body3.25

for.body3.25:                                     ; preds = %for.body3.25, %for.inc10.24
  %indvars.iv.25 = phi i64 [ 0, %for.inc10.24 ], [ %indvars.iv.next.25, %for.body3.25 ]
  %125 = shl nsw i64 %indvars.iv.next5.24, 7
  %126 = add nuw nsw i64 %125, %indvars.iv.25
  %arrayidx.25 = getelementptr inbounds i32, i32* %a, i64 %126
  %127 = load i32, i32* %arrayidx.25, align 4
  %shr.25 = ashr i32 %127, %exp
  %and.25 = shl i32 %shr.25, 17
  %mul4.25 = and i32 %and.25, 393216
  %128 = trunc i64 %indvars.iv.next5.24 to i32
  %add5.25 = add nuw nsw i32 %mul4.25, %128
  %add6.25 = add nuw nsw i32 %add5.25, 1
  %idxprom7.25 = zext i32 %add6.25 to i64
  %arrayidx8.25 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.25
  %129 = load i32, i32* %arrayidx8.25, align 4
  %inc.25 = add nsw i32 %129, 1
  store i32 %inc.25, i32* %arrayidx8.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.25, 1
  %exitcond.25 = icmp ne i64 %indvars.iv.next.25, 4
  br i1 %exitcond.25, label %for.body3.25, label %for.inc10.25, !llvm.loop !9

for.inc10.25:                                     ; preds = %for.body3.25
  %indvars.iv.next5.25 = add nuw nsw i64 %indvars.iv.next5.24, 1
  br label %for.body3.26

for.body3.26:                                     ; preds = %for.body3.26, %for.inc10.25
  %indvars.iv.26 = phi i64 [ 0, %for.inc10.25 ], [ %indvars.iv.next.26, %for.body3.26 ]
  %130 = shl nsw i64 %indvars.iv.next5.25, 7
  %131 = add nuw nsw i64 %130, %indvars.iv.26
  %arrayidx.26 = getelementptr inbounds i32, i32* %a, i64 %131
  %132 = load i32, i32* %arrayidx.26, align 4
  %shr.26 = ashr i32 %132, %exp
  %and.26 = shl i32 %shr.26, 17
  %mul4.26 = and i32 %and.26, 393216
  %133 = trunc i64 %indvars.iv.next5.25 to i32
  %add5.26 = add nuw nsw i32 %mul4.26, %133
  %add6.26 = add nuw nsw i32 %add5.26, 1
  %idxprom7.26 = zext i32 %add6.26 to i64
  %arrayidx8.26 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.26
  %134 = load i32, i32* %arrayidx8.26, align 4
  %inc.26 = add nsw i32 %134, 1
  store i32 %inc.26, i32* %arrayidx8.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.26, 1
  %exitcond.26 = icmp ne i64 %indvars.iv.next.26, 4
  br i1 %exitcond.26, label %for.body3.26, label %for.inc10.26, !llvm.loop !9

for.inc10.26:                                     ; preds = %for.body3.26
  %indvars.iv.next5.26 = add nuw nsw i64 %indvars.iv.next5.25, 1
  br label %for.body3.27

for.body3.27:                                     ; preds = %for.body3.27, %for.inc10.26
  %indvars.iv.27 = phi i64 [ 0, %for.inc10.26 ], [ %indvars.iv.next.27, %for.body3.27 ]
  %135 = shl nsw i64 %indvars.iv.next5.26, 7
  %136 = add nuw nsw i64 %135, %indvars.iv.27
  %arrayidx.27 = getelementptr inbounds i32, i32* %a, i64 %136
  %137 = load i32, i32* %arrayidx.27, align 4
  %shr.27 = ashr i32 %137, %exp
  %and.27 = shl i32 %shr.27, 17
  %mul4.27 = and i32 %and.27, 393216
  %138 = trunc i64 %indvars.iv.next5.26 to i32
  %add5.27 = add nuw nsw i32 %mul4.27, %138
  %add6.27 = add nuw nsw i32 %add5.27, 1
  %idxprom7.27 = zext i32 %add6.27 to i64
  %arrayidx8.27 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.27
  %139 = load i32, i32* %arrayidx8.27, align 4
  %inc.27 = add nsw i32 %139, 1
  store i32 %inc.27, i32* %arrayidx8.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.27, 1
  %exitcond.27 = icmp ne i64 %indvars.iv.next.27, 4
  br i1 %exitcond.27, label %for.body3.27, label %for.inc10.27, !llvm.loop !9

for.inc10.27:                                     ; preds = %for.body3.27
  %indvars.iv.next5.27 = add nuw nsw i64 %indvars.iv.next5.26, 1
  br label %for.body3.28

for.body3.28:                                     ; preds = %for.body3.28, %for.inc10.27
  %indvars.iv.28 = phi i64 [ 0, %for.inc10.27 ], [ %indvars.iv.next.28, %for.body3.28 ]
  %140 = shl nsw i64 %indvars.iv.next5.27, 7
  %141 = add nuw nsw i64 %140, %indvars.iv.28
  %arrayidx.28 = getelementptr inbounds i32, i32* %a, i64 %141
  %142 = load i32, i32* %arrayidx.28, align 4
  %shr.28 = ashr i32 %142, %exp
  %and.28 = shl i32 %shr.28, 17
  %mul4.28 = and i32 %and.28, 393216
  %143 = trunc i64 %indvars.iv.next5.27 to i32
  %add5.28 = add nuw nsw i32 %mul4.28, %143
  %add6.28 = add nuw nsw i32 %add5.28, 1
  %idxprom7.28 = zext i32 %add6.28 to i64
  %arrayidx8.28 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.28
  %144 = load i32, i32* %arrayidx8.28, align 4
  %inc.28 = add nsw i32 %144, 1
  store i32 %inc.28, i32* %arrayidx8.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.28, 1
  %exitcond.28 = icmp ne i64 %indvars.iv.next.28, 4
  br i1 %exitcond.28, label %for.body3.28, label %for.inc10.28, !llvm.loop !9

for.inc10.28:                                     ; preds = %for.body3.28
  %indvars.iv.next5.28 = add nuw nsw i64 %indvars.iv.next5.27, 1
  br label %for.body3.29

for.body3.29:                                     ; preds = %for.body3.29, %for.inc10.28
  %indvars.iv.29 = phi i64 [ 0, %for.inc10.28 ], [ %indvars.iv.next.29, %for.body3.29 ]
  %145 = shl nsw i64 %indvars.iv.next5.28, 7
  %146 = add nuw nsw i64 %145, %indvars.iv.29
  %arrayidx.29 = getelementptr inbounds i32, i32* %a, i64 %146
  %147 = load i32, i32* %arrayidx.29, align 4
  %shr.29 = ashr i32 %147, %exp
  %and.29 = shl i32 %shr.29, 17
  %mul4.29 = and i32 %and.29, 393216
  %148 = trunc i64 %indvars.iv.next5.28 to i32
  %add5.29 = add nuw nsw i32 %mul4.29, %148
  %add6.29 = add nuw nsw i32 %add5.29, 1
  %idxprom7.29 = zext i32 %add6.29 to i64
  %arrayidx8.29 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.29
  %149 = load i32, i32* %arrayidx8.29, align 4
  %inc.29 = add nsw i32 %149, 1
  store i32 %inc.29, i32* %arrayidx8.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.29, 1
  %exitcond.29 = icmp ne i64 %indvars.iv.next.29, 4
  br i1 %exitcond.29, label %for.body3.29, label %for.inc10.29, !llvm.loop !9

for.inc10.29:                                     ; preds = %for.body3.29
  %indvars.iv.next5.29 = add nuw nsw i64 %indvars.iv.next5.28, 1
  br label %for.body3.30

for.body3.30:                                     ; preds = %for.body3.30, %for.inc10.29
  %indvars.iv.30 = phi i64 [ 0, %for.inc10.29 ], [ %indvars.iv.next.30, %for.body3.30 ]
  %150 = shl nsw i64 %indvars.iv.next5.29, 7
  %151 = add nuw nsw i64 %150, %indvars.iv.30
  %arrayidx.30 = getelementptr inbounds i32, i32* %a, i64 %151
  %152 = load i32, i32* %arrayidx.30, align 4
  %shr.30 = ashr i32 %152, %exp
  %and.30 = shl i32 %shr.30, 17
  %mul4.30 = and i32 %and.30, 393216
  %153 = trunc i64 %indvars.iv.next5.29 to i32
  %add5.30 = add nuw nsw i32 %mul4.30, %153
  %add6.30 = add nuw nsw i32 %add5.30, 1
  %idxprom7.30 = zext i32 %add6.30 to i64
  %arrayidx8.30 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.30
  %154 = load i32, i32* %arrayidx8.30, align 4
  %inc.30 = add nsw i32 %154, 1
  store i32 %inc.30, i32* %arrayidx8.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.30, 1
  %exitcond.30 = icmp ne i64 %indvars.iv.next.30, 4
  br i1 %exitcond.30, label %for.body3.30, label %for.inc10.30, !llvm.loop !9

for.inc10.30:                                     ; preds = %for.body3.30
  %indvars.iv.next5.30 = add nuw nsw i64 %indvars.iv.next5.29, 1
  br label %for.body3.31

for.body3.31:                                     ; preds = %for.body3.31, %for.inc10.30
  %indvars.iv.31 = phi i64 [ 0, %for.inc10.30 ], [ %indvars.iv.next.31, %for.body3.31 ]
  %155 = shl nsw i64 %indvars.iv.next5.30, 7
  %156 = add nuw nsw i64 %155, %indvars.iv.31
  %arrayidx.31 = getelementptr inbounds i32, i32* %a, i64 %156
  %157 = load i32, i32* %arrayidx.31, align 4
  %shr.31 = ashr i32 %157, %exp
  %and.31 = shl i32 %shr.31, 17
  %mul4.31 = and i32 %and.31, 393216
  %158 = trunc i64 %indvars.iv.next5.30 to i32
  %add5.31 = add nuw nsw i32 %mul4.31, %158
  %add6.31 = add nuw nsw i32 %add5.31, 1
  %idxprom7.31 = zext i32 %add6.31 to i64
  %arrayidx8.31 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.31
  %159 = load i32, i32* %arrayidx8.31, align 4
  %inc.31 = add nsw i32 %159, 1
  store i32 %inc.31, i32* %arrayidx8.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.31, 1
  %exitcond.31 = icmp ne i64 %indvars.iv.next.31, 4
  br i1 %exitcond.31, label %for.body3.31, label %for.inc10.31, !llvm.loop !9

for.inc10.31:                                     ; preds = %for.body3.31
  %indvars.iv.next5.31 = add nuw nsw i64 %indvars.iv.next5.30, 1
  %exitcond7.31 = icmp ne i64 %indvars.iv.next5.31, 131072
  br i1 %exitcond7.31, label %for.body, label %for.end12, !llvm.loop !10
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
