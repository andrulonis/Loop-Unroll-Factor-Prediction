; ModuleID = 'ss_sort_1_16.ll'
source_filename = "ss_sort_1_16.c"
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

for.body3:                                        ; preds = %for.body3.15, %for.body
  %indvars.iv = phi i64 [ 1, %for.body ], [ %indvars.iv.next.15, %for.body3.15 ]
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
  %7 = shl nsw i64 %indvars.iv6, 5
  %8 = add nuw nsw i64 %7, %indvars.iv.next
  %9 = add nsw i64 %8, -1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %9
  %10 = load i32, i32* %arrayidx.1, align 4
  %11 = shl nsw i64 %indvars.iv6, 5
  %12 = add nuw nsw i64 %11, %indvars.iv.next
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %12
  %13 = load i32, i32* %arrayidx7.1, align 4
  %add8.1 = add nsw i32 %13, %10
  store i32 %add8.1, i32* %arrayidx7.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %14 = shl nsw i64 %indvars.iv6, 5
  %15 = add nuw nsw i64 %14, %indvars.iv.next.1
  %16 = add nsw i64 %15, -1
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %16
  %17 = load i32, i32* %arrayidx.2, align 4
  %18 = shl nsw i64 %indvars.iv6, 5
  %19 = add nuw nsw i64 %18, %indvars.iv.next.1
  %arrayidx7.2 = getelementptr inbounds i32, i32* %bucket, i64 %19
  %20 = load i32, i32* %arrayidx7.2, align 4
  %add8.2 = add nsw i32 %20, %17
  store i32 %add8.2, i32* %arrayidx7.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %21 = shl nsw i64 %indvars.iv6, 5
  %22 = add nuw nsw i64 %21, %indvars.iv.next.2
  %23 = add nsw i64 %22, -1
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx.3, align 4
  %25 = shl nsw i64 %indvars.iv6, 5
  %26 = add nuw nsw i64 %25, %indvars.iv.next.2
  %arrayidx7.3 = getelementptr inbounds i32, i32* %bucket, i64 %26
  %27 = load i32, i32* %arrayidx7.3, align 4
  %add8.3 = add nsw i32 %27, %24
  store i32 %add8.3, i32* %arrayidx7.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %28 = shl nsw i64 %indvars.iv6, 5
  %29 = add nuw nsw i64 %28, %indvars.iv.next.3
  %30 = add nsw i64 %29, -1
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %30
  %31 = load i32, i32* %arrayidx.4, align 4
  %32 = shl nsw i64 %indvars.iv6, 5
  %33 = add nuw nsw i64 %32, %indvars.iv.next.3
  %arrayidx7.4 = getelementptr inbounds i32, i32* %bucket, i64 %33
  %34 = load i32, i32* %arrayidx7.4, align 4
  %add8.4 = add nsw i32 %34, %31
  store i32 %add8.4, i32* %arrayidx7.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %35 = shl nsw i64 %indvars.iv6, 5
  %36 = add nuw nsw i64 %35, %indvars.iv.next.4
  %37 = add nsw i64 %36, -1
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %37
  %38 = load i32, i32* %arrayidx.5, align 4
  %39 = shl nsw i64 %indvars.iv6, 5
  %40 = add nuw nsw i64 %39, %indvars.iv.next.4
  %arrayidx7.5 = getelementptr inbounds i32, i32* %bucket, i64 %40
  %41 = load i32, i32* %arrayidx7.5, align 4
  %add8.5 = add nsw i32 %41, %38
  store i32 %add8.5, i32* %arrayidx7.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %42 = shl nsw i64 %indvars.iv6, 5
  %43 = add nuw nsw i64 %42, %indvars.iv.next.5
  %44 = add nsw i64 %43, -1
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %44
  %45 = load i32, i32* %arrayidx.6, align 4
  %46 = shl nsw i64 %indvars.iv6, 5
  %47 = add nuw nsw i64 %46, %indvars.iv.next.5
  %arrayidx7.6 = getelementptr inbounds i32, i32* %bucket, i64 %47
  %48 = load i32, i32* %arrayidx7.6, align 4
  %add8.6 = add nsw i32 %48, %45
  store i32 %add8.6, i32* %arrayidx7.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %49 = shl nsw i64 %indvars.iv6, 5
  %50 = add nuw nsw i64 %49, %indvars.iv.next.6
  %51 = add nsw i64 %50, -1
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %51
  %52 = load i32, i32* %arrayidx.7, align 4
  %53 = shl nsw i64 %indvars.iv6, 5
  %54 = add nuw nsw i64 %53, %indvars.iv.next.6
  %arrayidx7.7 = getelementptr inbounds i32, i32* %bucket, i64 %54
  %55 = load i32, i32* %arrayidx7.7, align 4
  %add8.7 = add nsw i32 %55, %52
  store i32 %add8.7, i32* %arrayidx7.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %56 = shl nsw i64 %indvars.iv6, 5
  %57 = add nuw nsw i64 %56, %indvars.iv.next.7
  %58 = add nsw i64 %57, -1
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %58
  %59 = load i32, i32* %arrayidx.8, align 4
  %60 = shl nsw i64 %indvars.iv6, 5
  %61 = add nuw nsw i64 %60, %indvars.iv.next.7
  %arrayidx7.8 = getelementptr inbounds i32, i32* %bucket, i64 %61
  %62 = load i32, i32* %arrayidx7.8, align 4
  %add8.8 = add nsw i32 %62, %59
  store i32 %add8.8, i32* %arrayidx7.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %63 = shl nsw i64 %indvars.iv6, 5
  %64 = add nuw nsw i64 %63, %indvars.iv.next.8
  %65 = add nsw i64 %64, -1
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %65
  %66 = load i32, i32* %arrayidx.9, align 4
  %67 = shl nsw i64 %indvars.iv6, 5
  %68 = add nuw nsw i64 %67, %indvars.iv.next.8
  %arrayidx7.9 = getelementptr inbounds i32, i32* %bucket, i64 %68
  %69 = load i32, i32* %arrayidx7.9, align 4
  %add8.9 = add nsw i32 %69, %66
  store i32 %add8.9, i32* %arrayidx7.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %70 = shl nsw i64 %indvars.iv6, 5
  %71 = add nuw nsw i64 %70, %indvars.iv.next.9
  %72 = add nsw i64 %71, -1
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %72
  %73 = load i32, i32* %arrayidx.10, align 4
  %74 = shl nsw i64 %indvars.iv6, 5
  %75 = add nuw nsw i64 %74, %indvars.iv.next.9
  %arrayidx7.10 = getelementptr inbounds i32, i32* %bucket, i64 %75
  %76 = load i32, i32* %arrayidx7.10, align 4
  %add8.10 = add nsw i32 %76, %73
  store i32 %add8.10, i32* %arrayidx7.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %77 = shl nsw i64 %indvars.iv6, 5
  %78 = add nuw nsw i64 %77, %indvars.iv.next.10
  %79 = add nsw i64 %78, -1
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %79
  %80 = load i32, i32* %arrayidx.11, align 4
  %81 = shl nsw i64 %indvars.iv6, 5
  %82 = add nuw nsw i64 %81, %indvars.iv.next.10
  %arrayidx7.11 = getelementptr inbounds i32, i32* %bucket, i64 %82
  %83 = load i32, i32* %arrayidx7.11, align 4
  %add8.11 = add nsw i32 %83, %80
  store i32 %add8.11, i32* %arrayidx7.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %84 = shl nsw i64 %indvars.iv6, 5
  %85 = add nuw nsw i64 %84, %indvars.iv.next.11
  %86 = add nsw i64 %85, -1
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %86
  %87 = load i32, i32* %arrayidx.12, align 4
  %88 = shl nsw i64 %indvars.iv6, 5
  %89 = add nuw nsw i64 %88, %indvars.iv.next.11
  %arrayidx7.12 = getelementptr inbounds i32, i32* %bucket, i64 %89
  %90 = load i32, i32* %arrayidx7.12, align 4
  %add8.12 = add nsw i32 %90, %87
  store i32 %add8.12, i32* %arrayidx7.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %91 = shl nsw i64 %indvars.iv6, 5
  %92 = add nuw nsw i64 %91, %indvars.iv.next.12
  %93 = add nsw i64 %92, -1
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %93
  %94 = load i32, i32* %arrayidx.13, align 4
  %95 = shl nsw i64 %indvars.iv6, 5
  %96 = add nuw nsw i64 %95, %indvars.iv.next.12
  %arrayidx7.13 = getelementptr inbounds i32, i32* %bucket, i64 %96
  %97 = load i32, i32* %arrayidx7.13, align 4
  %add8.13 = add nsw i32 %97, %94
  store i32 %add8.13, i32* %arrayidx7.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %98 = shl nsw i64 %indvars.iv6, 5
  %99 = add nuw nsw i64 %98, %indvars.iv.next.13
  %100 = add nsw i64 %99, -1
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %100
  %101 = load i32, i32* %arrayidx.14, align 4
  %102 = shl nsw i64 %indvars.iv6, 5
  %103 = add nuw nsw i64 %102, %indvars.iv.next.13
  %arrayidx7.14 = getelementptr inbounds i32, i32* %bucket, i64 %103
  %104 = load i32, i32* %arrayidx7.14, align 4
  %add8.14 = add nsw i32 %104, %101
  store i32 %add8.14, i32* %arrayidx7.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %exitcond.14 = icmp ne i64 %indvars.iv.next.14, 32
  br i1 %exitcond.14, label %for.body3.15, label %for.inc9, !llvm.loop !2

for.inc9:                                         ; preds = %for.body3
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next7, 524288
  br i1 %exitcond, label %for.body, label %for.end11, !llvm.loop !4

for.end11:                                        ; preds = %for.inc9
  ret void

for.body3.15:                                     ; preds = %for.body3
  %105 = shl nsw i64 %indvars.iv6, 5
  %106 = add nuw nsw i64 %105, %indvars.iv.next.14
  %107 = add nsw i64 %106, -1
  %arrayidx.15 = getelementptr inbounds i32, i32* %bucket, i64 %107
  %108 = load i32, i32* %arrayidx.15, align 4
  %109 = shl nsw i64 %indvars.iv6, 5
  %110 = add nuw nsw i64 %109, %indvars.iv.next.14
  %arrayidx7.15 = getelementptr inbounds i32, i32* %bucket, i64 %110
  %111 = load i32, i32* %arrayidx7.15, align 4
  %add8.15 = add nsw i32 %111, %108
  store i32 %add8.15, i32* %arrayidx7.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  br label %for.body3, !llvm.loop !6
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
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !8

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
  br i1 %exitcond, label %for.body3, label %for.inc11, !llvm.loop !9

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next6, 524288
  br i1 %exitcond10, label %for.body, label %for.end13, !llvm.loop !10

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
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !11

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
  br i1 %exitcond, label %for.body3, label %for.inc10, !llvm.loop !12

for.inc10:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end12, !llvm.loop !13

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
  br i1 %exitcond, label %for.body3, label %for.inc17, !llvm.loop !14

for.inc17:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end19, !llvm.loop !15

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
!3 = !{!"llvm.loop.unroll.count", i32 16}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.count", i32 1}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
