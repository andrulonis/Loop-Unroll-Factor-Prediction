; ModuleID = 'ss_sort_5_64.ll'
source_filename = "ss_sort_5_64.c"
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

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.63, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv
  store i32 0, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next
  store i32 0, i32* %arrayidx.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.1
  store i32 0, i32* %arrayidx.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.2
  store i32 0, i32* %arrayidx.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.3
  store i32 0, i32* %arrayidx.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.4
  store i32 0, i32* %arrayidx.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.5
  store i32 0, i32* %arrayidx.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.6
  store i32 0, i32* %arrayidx.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.7
  store i32 0, i32* %arrayidx.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.8
  store i32 0, i32* %arrayidx.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.9
  store i32 0, i32* %arrayidx.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.10
  store i32 0, i32* %arrayidx.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.11
  store i32 0, i32* %arrayidx.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.12
  store i32 0, i32* %arrayidx.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.13
  store i32 0, i32* %arrayidx.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %arrayidx.15 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.14
  store i32 0, i32* %arrayidx.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %arrayidx.16 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.15
  store i32 0, i32* %arrayidx.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %arrayidx.17 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.16
  store i32 0, i32* %arrayidx.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %arrayidx.18 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.17
  store i32 0, i32* %arrayidx.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %arrayidx.19 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.18
  store i32 0, i32* %arrayidx.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %arrayidx.20 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.19
  store i32 0, i32* %arrayidx.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %arrayidx.21 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.20
  store i32 0, i32* %arrayidx.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %arrayidx.22 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.21
  store i32 0, i32* %arrayidx.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %arrayidx.23 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.22
  store i32 0, i32* %arrayidx.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %arrayidx.24 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.23
  store i32 0, i32* %arrayidx.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %arrayidx.25 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.24
  store i32 0, i32* %arrayidx.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %arrayidx.26 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.25
  store i32 0, i32* %arrayidx.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %arrayidx.27 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.26
  store i32 0, i32* %arrayidx.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %arrayidx.28 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.27
  store i32 0, i32* %arrayidx.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %arrayidx.29 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.28
  store i32 0, i32* %arrayidx.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %arrayidx.30 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.29
  store i32 0, i32* %arrayidx.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %arrayidx.31 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.30
  store i32 0, i32* %arrayidx.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %arrayidx.32 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.31
  store i32 0, i32* %arrayidx.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %arrayidx.33 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.32
  store i32 0, i32* %arrayidx.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %arrayidx.34 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.33
  store i32 0, i32* %arrayidx.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %arrayidx.35 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.34
  store i32 0, i32* %arrayidx.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %arrayidx.36 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.35
  store i32 0, i32* %arrayidx.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %arrayidx.37 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.36
  store i32 0, i32* %arrayidx.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %arrayidx.38 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.37
  store i32 0, i32* %arrayidx.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %arrayidx.39 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.38
  store i32 0, i32* %arrayidx.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %arrayidx.40 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.39
  store i32 0, i32* %arrayidx.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %arrayidx.41 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.40
  store i32 0, i32* %arrayidx.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %arrayidx.42 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.41
  store i32 0, i32* %arrayidx.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %arrayidx.43 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.42
  store i32 0, i32* %arrayidx.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %arrayidx.44 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.43
  store i32 0, i32* %arrayidx.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %arrayidx.45 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.44
  store i32 0, i32* %arrayidx.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %arrayidx.46 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.45
  store i32 0, i32* %arrayidx.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %arrayidx.47 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.46
  store i32 0, i32* %arrayidx.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %arrayidx.48 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.47
  store i32 0, i32* %arrayidx.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %arrayidx.49 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.48
  store i32 0, i32* %arrayidx.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %arrayidx.50 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.49
  store i32 0, i32* %arrayidx.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %arrayidx.51 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.50
  store i32 0, i32* %arrayidx.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %arrayidx.52 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.51
  store i32 0, i32* %arrayidx.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %arrayidx.53 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.52
  store i32 0, i32* %arrayidx.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %arrayidx.54 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.53
  store i32 0, i32* %arrayidx.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %arrayidx.55 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.54
  store i32 0, i32* %arrayidx.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %arrayidx.56 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.55
  store i32 0, i32* %arrayidx.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %arrayidx.57 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.56
  store i32 0, i32* %arrayidx.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %arrayidx.58 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.57
  store i32 0, i32* %arrayidx.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %arrayidx.59 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.58
  store i32 0, i32* %arrayidx.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %arrayidx.60 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.59
  store i32 0, i32* %arrayidx.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %arrayidx.61 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.60
  store i32 0, i32* %arrayidx.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %arrayidx.62 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.61
  store i32 0, i32* %arrayidx.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %arrayidx.63 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.62
  store i32 0, i32* %arrayidx.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 16777216
  br i1 %exitcond.63, label %for.body, label %for.end, !llvm.loop !8

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
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
