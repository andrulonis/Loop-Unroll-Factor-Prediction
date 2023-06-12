; ModuleID = 'ss_sort_0_8.ll'
source_filename = "ss_sort_0_8.c"
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

for.body:                                         ; preds = %for.inc9.7, %entry
  %indvars.iv6 = phi i64 [ 0, %entry ], [ %indvars.iv.next7.7, %for.inc9.7 ]
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
  br label %for.body3.1

for.end11:                                        ; preds = %for.inc9.7
  ret void

for.body3.1:                                      ; preds = %for.body3.1, %for.inc9
  %indvars.iv.1 = phi i64 [ 1, %for.inc9 ], [ %indvars.iv.next.1, %for.body3.1 ]
  %7 = shl nsw i64 %indvars.iv.next7, 5
  %8 = add nuw nsw i64 %7, %indvars.iv.1
  %9 = add nsw i64 %8, -1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %9
  %10 = load i32, i32* %arrayidx.1, align 4
  %11 = shl nsw i64 %indvars.iv.next7, 5
  %12 = add nuw nsw i64 %11, %indvars.iv.1
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %12
  %13 = load i32, i32* %arrayidx7.1, align 4
  %add8.1 = add nsw i32 %13, %10
  store i32 %add8.1, i32* %arrayidx7.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 32
  br i1 %exitcond.1, label %for.body3.1, label %for.inc9.1, !llvm.loop !2

for.inc9.1:                                       ; preds = %for.body3.1
  %indvars.iv.next7.1 = add nuw nsw i64 %indvars.iv.next7, 1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.body3.2, %for.inc9.1
  %indvars.iv.2 = phi i64 [ 1, %for.inc9.1 ], [ %indvars.iv.next.2, %for.body3.2 ]
  %14 = shl nsw i64 %indvars.iv.next7.1, 5
  %15 = add nuw nsw i64 %14, %indvars.iv.2
  %16 = add nsw i64 %15, -1
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %16
  %17 = load i32, i32* %arrayidx.2, align 4
  %18 = shl nsw i64 %indvars.iv.next7.1, 5
  %19 = add nuw nsw i64 %18, %indvars.iv.2
  %arrayidx7.2 = getelementptr inbounds i32, i32* %bucket, i64 %19
  %20 = load i32, i32* %arrayidx7.2, align 4
  %add8.2 = add nsw i32 %20, %17
  store i32 %add8.2, i32* %arrayidx7.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, 32
  br i1 %exitcond.2, label %for.body3.2, label %for.inc9.2, !llvm.loop !2

for.inc9.2:                                       ; preds = %for.body3.2
  %indvars.iv.next7.2 = add nuw nsw i64 %indvars.iv.next7.1, 1
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.body3.3, %for.inc9.2
  %indvars.iv.3 = phi i64 [ 1, %for.inc9.2 ], [ %indvars.iv.next.3, %for.body3.3 ]
  %21 = shl nsw i64 %indvars.iv.next7.2, 5
  %22 = add nuw nsw i64 %21, %indvars.iv.3
  %23 = add nsw i64 %22, -1
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx.3, align 4
  %25 = shl nsw i64 %indvars.iv.next7.2, 5
  %26 = add nuw nsw i64 %25, %indvars.iv.3
  %arrayidx7.3 = getelementptr inbounds i32, i32* %bucket, i64 %26
  %27 = load i32, i32* %arrayidx7.3, align 4
  %add8.3 = add nsw i32 %27, %24
  store i32 %add8.3, i32* %arrayidx7.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, 32
  br i1 %exitcond.3, label %for.body3.3, label %for.inc9.3, !llvm.loop !2

for.inc9.3:                                       ; preds = %for.body3.3
  %indvars.iv.next7.3 = add nuw nsw i64 %indvars.iv.next7.2, 1
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.body3.4, %for.inc9.3
  %indvars.iv.4 = phi i64 [ 1, %for.inc9.3 ], [ %indvars.iv.next.4, %for.body3.4 ]
  %28 = shl nsw i64 %indvars.iv.next7.3, 5
  %29 = add nuw nsw i64 %28, %indvars.iv.4
  %30 = add nsw i64 %29, -1
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %30
  %31 = load i32, i32* %arrayidx.4, align 4
  %32 = shl nsw i64 %indvars.iv.next7.3, 5
  %33 = add nuw nsw i64 %32, %indvars.iv.4
  %arrayidx7.4 = getelementptr inbounds i32, i32* %bucket, i64 %33
  %34 = load i32, i32* %arrayidx7.4, align 4
  %add8.4 = add nsw i32 %34, %31
  store i32 %add8.4, i32* %arrayidx7.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4 = icmp ne i64 %indvars.iv.next.4, 32
  br i1 %exitcond.4, label %for.body3.4, label %for.inc9.4, !llvm.loop !2

for.inc9.4:                                       ; preds = %for.body3.4
  %indvars.iv.next7.4 = add nuw nsw i64 %indvars.iv.next7.3, 1
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.body3.5, %for.inc9.4
  %indvars.iv.5 = phi i64 [ 1, %for.inc9.4 ], [ %indvars.iv.next.5, %for.body3.5 ]
  %35 = shl nsw i64 %indvars.iv.next7.4, 5
  %36 = add nuw nsw i64 %35, %indvars.iv.5
  %37 = add nsw i64 %36, -1
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %37
  %38 = load i32, i32* %arrayidx.5, align 4
  %39 = shl nsw i64 %indvars.iv.next7.4, 5
  %40 = add nuw nsw i64 %39, %indvars.iv.5
  %arrayidx7.5 = getelementptr inbounds i32, i32* %bucket, i64 %40
  %41 = load i32, i32* %arrayidx7.5, align 4
  %add8.5 = add nsw i32 %41, %38
  store i32 %add8.5, i32* %arrayidx7.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5 = icmp ne i64 %indvars.iv.next.5, 32
  br i1 %exitcond.5, label %for.body3.5, label %for.inc9.5, !llvm.loop !2

for.inc9.5:                                       ; preds = %for.body3.5
  %indvars.iv.next7.5 = add nuw nsw i64 %indvars.iv.next7.4, 1
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.body3.6, %for.inc9.5
  %indvars.iv.6 = phi i64 [ 1, %for.inc9.5 ], [ %indvars.iv.next.6, %for.body3.6 ]
  %42 = shl nsw i64 %indvars.iv.next7.5, 5
  %43 = add nuw nsw i64 %42, %indvars.iv.6
  %44 = add nsw i64 %43, -1
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %44
  %45 = load i32, i32* %arrayidx.6, align 4
  %46 = shl nsw i64 %indvars.iv.next7.5, 5
  %47 = add nuw nsw i64 %46, %indvars.iv.6
  %arrayidx7.6 = getelementptr inbounds i32, i32* %bucket, i64 %47
  %48 = load i32, i32* %arrayidx7.6, align 4
  %add8.6 = add nsw i32 %48, %45
  store i32 %add8.6, i32* %arrayidx7.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6 = icmp ne i64 %indvars.iv.next.6, 32
  br i1 %exitcond.6, label %for.body3.6, label %for.inc9.6, !llvm.loop !2

for.inc9.6:                                       ; preds = %for.body3.6
  %indvars.iv.next7.6 = add nuw nsw i64 %indvars.iv.next7.5, 1
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.body3.7, %for.inc9.6
  %indvars.iv.7 = phi i64 [ 1, %for.inc9.6 ], [ %indvars.iv.next.7, %for.body3.7 ]
  %49 = shl nsw i64 %indvars.iv.next7.6, 5
  %50 = add nuw nsw i64 %49, %indvars.iv.7
  %51 = add nsw i64 %50, -1
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %51
  %52 = load i32, i32* %arrayidx.7, align 4
  %53 = shl nsw i64 %indvars.iv.next7.6, 5
  %54 = add nuw nsw i64 %53, %indvars.iv.7
  %arrayidx7.7 = getelementptr inbounds i32, i32* %bucket, i64 %54
  %55 = load i32, i32* %arrayidx7.7, align 4
  %add8.7 = add nsw i32 %55, %52
  store i32 %add8.7, i32* %arrayidx7.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7 = icmp ne i64 %indvars.iv.next.7, 32
  br i1 %exitcond.7, label %for.body3.7, label %for.inc9.7, !llvm.loop !2

for.inc9.7:                                       ; preds = %for.body3.7
  %indvars.iv.next7.7 = add nuw nsw i64 %indvars.iv.next7.6, 1
  %exitcond10.7 = icmp ne i64 %indvars.iv.next7.7, 524288
  br i1 %exitcond10.7, label %for.body, label %for.end11, !llvm.loop !4
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
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !6

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
  br i1 %exitcond, label %for.body3, label %for.inc11, !llvm.loop !7

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next6, 524288
  br i1 %exitcond10, label %for.body, label %for.end13, !llvm.loop !8

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
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !9

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
  br i1 %exitcond, label %for.body3, label %for.inc10, !llvm.loop !10

for.inc10:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end12, !llvm.loop !11

for.end12:                                        ; preds = %for.inc10
  ret void
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
