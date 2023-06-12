; ModuleID = 'unroll_no_auto_all/ss_sort.ll'
source_filename = "ss_sort.c"
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

for.body:                                         ; preds = %for.body.1, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body.1 ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body.1, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body.1, %for.body
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret void

for.body.1:                                       ; preds = %for.body
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next
  %1 = load i32, i32* %arrayidx.1, align 4
  %call.1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1) #3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1, label %for.body, label %for.end.loopexit, !llvm.loop !2
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @local_scan(i32* %bucket) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc9.1, %entry
  %indvars.iv6 = phi i64 [ 0, %entry ], [ %indvars.iv.next7.1, %for.inc9.1 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3.1, %for.body
  %indvars.iv = phi i64 [ 1, %for.body ], [ %indvars.iv.next.1, %for.body3.1 ]
  %0 = shl nsw i64 %indvars.iv6, 4
  %1 = add nuw nsw i64 %0, %indvars.iv
  %2 = add nsw i64 %1, -1
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %2
  %3 = load i32, i32* %arrayidx, align 4
  %4 = shl nsw i64 %indvars.iv6, 4
  %5 = add nuw nsw i64 %4, %indvars.iv
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %5
  %6 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %6, %3
  store i32 %add8, i32* %arrayidx7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 16
  br i1 %exitcond, label %for.body3.1, label %for.inc9

for.inc9:                                         ; preds = %for.body3
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.body3.117

for.end11:                                        ; preds = %for.inc9.1
  ret void

for.body3.1:                                      ; preds = %for.body3
  %7 = shl nsw i64 %indvars.iv6, 4
  %8 = add nuw nsw i64 %7, %indvars.iv.next
  %9 = add nsw i64 %8, -1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %9
  %10 = load i32, i32* %arrayidx.1, align 4
  %11 = shl nsw i64 %indvars.iv6, 4
  %12 = add nuw nsw i64 %11, %indvars.iv.next
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %12
  %13 = load i32, i32* %arrayidx7.1, align 4
  %add8.1 = add nsw i32 %13, %10
  store i32 %add8.1, i32* %arrayidx7.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  br label %for.body3, !llvm.loop !4

for.body3.117:                                    ; preds = %for.body3.1.1, %for.inc9
  %indvars.iv.1 = phi i64 [ 1, %for.inc9 ], [ %indvars.iv.next.1.1, %for.body3.1.1 ]
  %14 = shl nsw i64 %indvars.iv.next7, 4
  %15 = add nuw nsw i64 %14, %indvars.iv.1
  %16 = add nsw i64 %15, -1
  %arrayidx.113 = getelementptr inbounds i32, i32* %bucket, i64 %16
  %17 = load i32, i32* %arrayidx.113, align 4
  %18 = shl nsw i64 %indvars.iv.next7, 4
  %19 = add nuw nsw i64 %18, %indvars.iv.1
  %arrayidx7.114 = getelementptr inbounds i32, i32* %bucket, i64 %19
  %20 = load i32, i32* %arrayidx7.114, align 4
  %add8.115 = add nsw i32 %20, %17
  store i32 %add8.115, i32* %arrayidx7.114, align 4
  %indvars.iv.next.116 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.116, 16
  br i1 %exitcond.1, label %for.body3.1.1, label %for.inc9.1

for.inc9.1:                                       ; preds = %for.body3.117
  %indvars.iv.next7.1 = add nuw nsw i64 %indvars.iv.next7, 1
  %exitcond12.1 = icmp ne i64 %indvars.iv.next7.1, 128
  br i1 %exitcond12.1, label %for.body, label %for.end11, !llvm.loop !5

for.body3.1.1:                                    ; preds = %for.body3.117
  %21 = shl nsw i64 %indvars.iv.next7, 4
  %22 = add nuw nsw i64 %21, %indvars.iv.next.116
  %23 = add nsw i64 %22, -1
  %arrayidx.1.1 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx.1.1, align 4
  %25 = shl nsw i64 %indvars.iv.next7, 4
  %26 = add nuw nsw i64 %25, %indvars.iv.next.116
  %arrayidx7.1.1 = getelementptr inbounds i32, i32* %bucket, i64 %26
  %27 = load i32, i32* %arrayidx7.1.1, align 4
  %add8.1.1 = add nsw i32 %27, %24
  store i32 %add8.1.1, i32* %arrayidx7.1.1, align 4
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.next.116, 1
  br label %for.body3.117, !llvm.loop !4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sum_scan(i32* %sum, i32* %bucket) #0 {
entry:
  store i32 0, i32* %sum, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.1, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next.1, %for.body.1 ]
  %0 = add nsw i64 %indvars.iv, -1
  %arrayidx1 = getelementptr inbounds i32, i32* %sum, i64 %0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = shl nsw i64 %indvars.iv, 4
  %3 = add nsw i64 %2, -1
  %arrayidx4 = getelementptr inbounds i32, i32* %bucket, i64 %3
  %4 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %1, %4
  %arrayidx6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  store i32 %add, i32* %arrayidx6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 128
  br i1 %exitcond, label %for.body.1, label %for.end

for.end:                                          ; preds = %for.body
  ret void

for.body.1:                                       ; preds = %for.body
  %arrayidx1.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx1.1, align 4
  %6 = shl nsw i64 %indvars.iv.next, 4
  %7 = add nsw i64 %6, -1
  %arrayidx4.1 = getelementptr inbounds i32, i32* %bucket, i64 %7
  %8 = load i32, i32* %arrayidx4.1, align 4
  %add.1 = add nsw i32 %5, %8
  %arrayidx6.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next
  store i32 %add.1, i32* %arrayidx6.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  br label %for.body, !llvm.loop !6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @last_step_scan(i32* %bucket, i32* %sum) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc11.1, %entry
  %indvars.iv5 = phi i64 [ 0, %entry ], [ %indvars.iv.next6.1, %for.inc11.1 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.1, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv5, 4
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv5
  %3 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %2, %3
  %4 = shl nsw i64 %indvars.iv5, 4
  %5 = add nuw nsw i64 %4, %indvars.iv
  %arrayidx10 = getelementptr inbounds i32, i32* %bucket, i64 %5
  store i32 %add6, i32* %arrayidx10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = shl nsw i64 %indvars.iv5, 4
  %7 = add nuw nsw i64 %6, %indvars.iv.next
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %7
  %8 = load i32, i32* %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv5
  %9 = load i32, i32* %arrayidx5.1, align 4
  %add6.1 = add nsw i32 %8, %9
  %10 = shl nsw i64 %indvars.iv5, 4
  %11 = add nuw nsw i64 %10, %indvars.iv.next
  %arrayidx10.1 = getelementptr inbounds i32, i32* %bucket, i64 %11
  store i32 %add6.1, i32* %arrayidx10.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 16
  br i1 %exitcond.1, label %for.body3, label %for.inc11, !llvm.loop !7

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.body3.1

for.end13:                                        ; preds = %for.inc11.1
  ret void

for.body3.1:                                      ; preds = %for.body3.1, %for.inc11
  %indvars.iv.1 = phi i64 [ 0, %for.inc11 ], [ %indvars.iv.next.1.1, %for.body3.1 ]
  %12 = shl nsw i64 %indvars.iv.next6, 4
  %13 = add nuw nsw i64 %12, %indvars.iv.1
  %arrayidx.112 = getelementptr inbounds i32, i32* %bucket, i64 %13
  %14 = load i32, i32* %arrayidx.112, align 4
  %arrayidx5.113 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next6
  %15 = load i32, i32* %arrayidx5.113, align 4
  %add6.114 = add nsw i32 %14, %15
  %16 = shl nsw i64 %indvars.iv.next6, 4
  %17 = add nuw nsw i64 %16, %indvars.iv.1
  %arrayidx10.115 = getelementptr inbounds i32, i32* %bucket, i64 %17
  store i32 %add6.114, i32* %arrayidx10.115, align 4
  %indvars.iv.next.116 = add nuw nsw i64 %indvars.iv.1, 1
  %18 = shl nsw i64 %indvars.iv.next6, 4
  %19 = add nuw nsw i64 %18, %indvars.iv.next.116
  %arrayidx.1.1 = getelementptr inbounds i32, i32* %bucket, i64 %19
  %20 = load i32, i32* %arrayidx.1.1, align 4
  %arrayidx5.1.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next6
  %21 = load i32, i32* %arrayidx5.1.1, align 4
  %add6.1.1 = add nsw i32 %20, %21
  %22 = shl nsw i64 %indvars.iv.next6, 4
  %23 = add nuw nsw i64 %22, %indvars.iv.next.116
  %arrayidx10.1.1 = getelementptr inbounds i32, i32* %bucket, i64 %23
  store i32 %add6.1.1, i32* %arrayidx10.1.1, align 4
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.next.116, 1
  %exitcond.1.1 = icmp ne i64 %indvars.iv.next.1.1, 16
  br i1 %exitcond.1.1, label %for.body3.1, label %for.inc11.1, !llvm.loop !7

for.inc11.1:                                      ; preds = %for.body3.1
  %indvars.iv.next6.1 = add nuw nsw i64 %indvars.iv.next6, 1
  %exitcond.117 = icmp ne i64 %indvars.iv.next6.1, 128
  br i1 %exitcond.117, label %for.body, label %for.end13, !llvm.loop !8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(i32* %bucket) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.1, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv
  store i32 0, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next
  store i32 0, i32* %arrayidx.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 2048
  br i1 %exitcond.1, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hist(i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc10.1, %entry
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5.1, %for.inc10.1 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.1, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv4, 2
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, %exp
  %and = shl i32 %shr, 9
  %mul4 = and i32 %and, 1536
  %3 = trunc i64 %indvars.iv4 to i32
  %add5 = add nuw nsw i32 %mul4, %3
  %add6 = add nuw nsw i32 %add5, 1
  %idxprom7 = zext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7
  %4 = load i32, i32* %arrayidx8, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %arrayidx8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = shl nsw i64 %indvars.iv4, 2
  %6 = add nuw nsw i64 %5, %indvars.iv.next
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %6
  %7 = load i32, i32* %arrayidx.1, align 4
  %shr.1 = ashr i32 %7, %exp
  %and.1 = shl i32 %shr.1, 9
  %mul4.1 = and i32 %and.1, 1536
  %8 = trunc i64 %indvars.iv4 to i32
  %add5.1 = add nuw nsw i32 %mul4.1, %8
  %add6.1 = add nuw nsw i32 %add5.1, 1
  %idxprom7.1 = zext i32 %add6.1 to i64
  %arrayidx8.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.1
  %9 = load i32, i32* %arrayidx8.1, align 4
  %inc.1 = add nsw i32 %9, 1
  store i32 %inc.1, i32* %arrayidx8.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 4
  br i1 %exitcond.1, label %for.body3, label %for.inc10, !llvm.loop !10

for.inc10:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.body3.1

for.end12:                                        ; preds = %for.inc10.1
  ret void

for.body3.1:                                      ; preds = %for.body3.1, %for.inc10
  %indvars.iv.1 = phi i64 [ 0, %for.inc10 ], [ %indvars.iv.next.1.1, %for.body3.1 ]
  %10 = shl nsw i64 %indvars.iv.next5, 2
  %11 = add nuw nsw i64 %10, %indvars.iv.1
  %arrayidx.18 = getelementptr inbounds i32, i32* %a, i64 %11
  %12 = load i32, i32* %arrayidx.18, align 4
  %shr.19 = ashr i32 %12, %exp
  %and.110 = shl i32 %shr.19, 9
  %mul4.111 = and i32 %and.110, 1536
  %13 = trunc i64 %indvars.iv.next5 to i32
  %add5.112 = add nuw nsw i32 %mul4.111, %13
  %add6.113 = add nuw nsw i32 %add5.112, 1
  %idxprom7.114 = zext i32 %add6.113 to i64
  %arrayidx8.115 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.114
  %14 = load i32, i32* %arrayidx8.115, align 4
  %inc.116 = add nsw i32 %14, 1
  store i32 %inc.116, i32* %arrayidx8.115, align 4
  %indvars.iv.next.117 = add nuw nsw i64 %indvars.iv.1, 1
  %15 = shl nsw i64 %indvars.iv.next5, 2
  %16 = add nuw nsw i64 %15, %indvars.iv.next.117
  %arrayidx.1.1 = getelementptr inbounds i32, i32* %a, i64 %16
  %17 = load i32, i32* %arrayidx.1.1, align 4
  %shr.1.1 = ashr i32 %17, %exp
  %and.1.1 = shl i32 %shr.1.1, 9
  %mul4.1.1 = and i32 %and.1.1, 1536
  %18 = trunc i64 %indvars.iv.next5 to i32
  %add5.1.1 = add nuw nsw i32 %mul4.1.1, %18
  %add6.1.1 = add nuw nsw i32 %add5.1.1, 1
  %idxprom7.1.1 = zext i32 %add6.1.1 to i64
  %arrayidx8.1.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.1.1
  %19 = load i32, i32* %arrayidx8.1.1, align 4
  %inc.1.1 = add nsw i32 %19, 1
  store i32 %inc.1.1, i32* %arrayidx8.1.1, align 4
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.next.117, 1
  %exitcond.1.1 = icmp ne i64 %indvars.iv.next.1.1, 4
  br i1 %exitcond.1.1, label %for.body3.1, label %for.inc10.1, !llvm.loop !10

for.inc10.1:                                      ; preds = %for.body3.1
  %indvars.iv.next5.1 = add nuw nsw i64 %indvars.iv.next5, 1
  %exitcond.118 = icmp ne i64 %indvars.iv.next5.1, 512
  br i1 %exitcond.118, label %for.body, label %for.end12, !llvm.loop !11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update(i32* %b, i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc17.1, %entry
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5.1, %for.inc17.1 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.1, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv4, 2
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, %exp
  %and = shl i32 %shr, 9
  %mul4 = and i32 %and, 1536
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
  %and12 = shl i32 %shr11, 9
  %mul13 = and i32 %and12, 1536
  %5 = trunc i64 %indvars.iv4 to i32
  %add14 = add nuw nsw i32 %mul13, %5
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15
  store i32 %add10, i32* %arrayidx16, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = shl nsw i64 %indvars.iv4, 2
  %7 = add nuw nsw i64 %6, %indvars.iv.next
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %7
  %8 = load i32, i32* %arrayidx.1, align 4
  %shr.1 = ashr i32 %8, %exp
  %and.1 = shl i32 %shr.1, 9
  %mul4.1 = and i32 %and.1, 1536
  %9 = trunc i64 %indvars.iv4 to i32
  %add5.1 = add nuw nsw i32 %mul4.1, %9
  %idxprom6.1 = zext i32 %add5.1 to i64
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.1
  %10 = load i32, i32* %arrayidx7.1, align 4
  %idxprom8.1 = sext i32 %10 to i64
  %arrayidx9.1 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.1
  store i32 %8, i32* %arrayidx9.1, align 4
  %add10.1 = add nsw i32 %10, 1
  %shr11.1 = ashr i32 %8, %exp
  %and12.1 = shl i32 %shr11.1, 9
  %mul13.1 = and i32 %and12.1, 1536
  %11 = trunc i64 %indvars.iv4 to i32
  %add14.1 = add nuw nsw i32 %mul13.1, %11
  %idxprom15.1 = zext i32 %add14.1 to i64
  %arrayidx16.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.1
  store i32 %add10.1, i32* %arrayidx16.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 4
  br i1 %exitcond.1, label %for.body3, label %for.inc17, !llvm.loop !12

for.inc17:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.body3.1

for.end19:                                        ; preds = %for.inc17.1
  ret void

for.body3.1:                                      ; preds = %for.body3.1, %for.inc17
  %indvars.iv.1 = phi i64 [ 0, %for.inc17 ], [ %indvars.iv.next.1.1, %for.body3.1 ]
  %12 = shl nsw i64 %indvars.iv.next5, 2
  %13 = add nuw nsw i64 %12, %indvars.iv.1
  %arrayidx.18 = getelementptr inbounds i32, i32* %a, i64 %13
  %14 = load i32, i32* %arrayidx.18, align 4
  %shr.19 = ashr i32 %14, %exp
  %and.110 = shl i32 %shr.19, 9
  %mul4.111 = and i32 %and.110, 1536
  %15 = trunc i64 %indvars.iv.next5 to i32
  %add5.112 = add nuw nsw i32 %mul4.111, %15
  %idxprom6.113 = zext i32 %add5.112 to i64
  %arrayidx7.114 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.113
  %16 = load i32, i32* %arrayidx7.114, align 4
  %idxprom8.115 = sext i32 %16 to i64
  %arrayidx9.116 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.115
  store i32 %14, i32* %arrayidx9.116, align 4
  %add10.117 = add nsw i32 %16, 1
  %shr11.118 = ashr i32 %14, %exp
  %and12.119 = shl i32 %shr11.118, 9
  %mul13.120 = and i32 %and12.119, 1536
  %17 = trunc i64 %indvars.iv.next5 to i32
  %add14.121 = add nuw nsw i32 %mul13.120, %17
  %idxprom15.122 = zext i32 %add14.121 to i64
  %arrayidx16.123 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.122
  store i32 %add10.117, i32* %arrayidx16.123, align 4
  %indvars.iv.next.124 = add nuw nsw i64 %indvars.iv.1, 1
  %18 = shl nsw i64 %indvars.iv.next5, 2
  %19 = add nuw nsw i64 %18, %indvars.iv.next.124
  %arrayidx.1.1 = getelementptr inbounds i32, i32* %a, i64 %19
  %20 = load i32, i32* %arrayidx.1.1, align 4
  %shr.1.1 = ashr i32 %20, %exp
  %and.1.1 = shl i32 %shr.1.1, 9
  %mul4.1.1 = and i32 %and.1.1, 1536
  %21 = trunc i64 %indvars.iv.next5 to i32
  %add5.1.1 = add nuw nsw i32 %mul4.1.1, %21
  %idxprom6.1.1 = zext i32 %add5.1.1 to i64
  %arrayidx7.1.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.1.1
  %22 = load i32, i32* %arrayidx7.1.1, align 4
  %idxprom8.1.1 = sext i32 %22 to i64
  %arrayidx9.1.1 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.1.1
  store i32 %20, i32* %arrayidx9.1.1, align 4
  %add10.1.1 = add nsw i32 %22, 1
  %shr11.1.1 = ashr i32 %20, %exp
  %and12.1.1 = shl i32 %shr11.1.1, 9
  %mul13.1.1 = and i32 %and12.1.1, 1536
  %23 = trunc i64 %indvars.iv.next5 to i32
  %add14.1.1 = add nuw nsw i32 %mul13.1.1, %23
  %idxprom15.1.1 = zext i32 %add14.1.1 to i64
  %arrayidx16.1.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.1.1
  store i32 %add10.1.1, i32* %arrayidx16.1.1, align 4
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.next.124, 1
  %exitcond.1.1 = icmp ne i64 %indvars.iv.next.1.1, 4
  br i1 %exitcond.1.1, label %for.body3.1, label %for.inc17.1, !llvm.loop !12

for.inc17.1:                                      ; preds = %for.body3.1
  %indvars.iv.next5.1 = add nuw nsw i64 %indvars.iv.next5, 1
  %exitcond.125 = icmp ne i64 %indvars.iv.next5.1, 512
  br i1 %exitcond.125, label %for.body, label %for.end19, !llvm.loop !13
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
  %call = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #3
  %call1 = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #3
  %call2 = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #3
  %0 = bitcast i8* %call2 to i32*
  %call3 = call noalias dereferenceable_or_null(512) i8* @malloc(i64 512) #3
  call void @srand(i32 8650341) #3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.1, %for.body ]
  %call4 = call i32 @rand() #3
  %conv = sitofp i32 %call4 to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  %mul = fmul double %div, 2.550000e+02
  %add = fadd double %mul, 0.000000e+00
  %conv7 = fptosi double %add to i32
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %conv7, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call4.1 = call i32 @rand() #3
  %conv.1 = sitofp i32 %call4.1 to double
  %div.1 = fdiv double %conv.1, 0x41DFFFFFFFC00000
  %mul.1 = fmul double %div.1, 2.550000e+02
  %add.1 = fadd double %mul.1, 0.000000e+00
  %conv7.1 = fptosi double %add.1 to i32
  %arrayidx.1 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  store i32 %conv7.1, i32* %arrayidx.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 2048
  br i1 %exitcond.1, label %for.body, label %for.end, !llvm.loop !14

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
