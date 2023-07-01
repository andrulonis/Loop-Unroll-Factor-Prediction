; ModuleID = 'ss_sort_2_64.ll'
source_filename = "ss_sort_2_64.c"
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

for.body:                                         ; preds = %for.body.63, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next.63, %for.body.63 ]
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
  %arrayidx1.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx1.1, align 4
  %6 = shl nsw i64 %indvars.iv.next, 5
  %7 = add nsw i64 %6, -1
  %arrayidx4.1 = getelementptr inbounds i32, i32* %bucket, i64 %7
  %8 = load i32, i32* %arrayidx4.1, align 4
  %add.1 = add nsw i32 %5, %8
  %arrayidx6.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next
  store i32 %add.1, i32* %arrayidx6.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx1.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next
  %9 = load i32, i32* %arrayidx1.2, align 4
  %10 = shl nsw i64 %indvars.iv.next.1, 5
  %11 = add nsw i64 %10, -1
  %arrayidx4.2 = getelementptr inbounds i32, i32* %bucket, i64 %11
  %12 = load i32, i32* %arrayidx4.2, align 4
  %add.2 = add nsw i32 %9, %12
  %arrayidx6.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.1
  store i32 %add.2, i32* %arrayidx6.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx1.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.1
  %13 = load i32, i32* %arrayidx1.3, align 4
  %14 = shl nsw i64 %indvars.iv.next.2, 5
  %15 = add nsw i64 %14, -1
  %arrayidx4.3 = getelementptr inbounds i32, i32* %bucket, i64 %15
  %16 = load i32, i32* %arrayidx4.3, align 4
  %add.3 = add nsw i32 %13, %16
  %arrayidx6.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.2
  store i32 %add.3, i32* %arrayidx6.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx1.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.2
  %17 = load i32, i32* %arrayidx1.4, align 4
  %18 = shl nsw i64 %indvars.iv.next.3, 5
  %19 = add nsw i64 %18, -1
  %arrayidx4.4 = getelementptr inbounds i32, i32* %bucket, i64 %19
  %20 = load i32, i32* %arrayidx4.4, align 4
  %add.4 = add nsw i32 %17, %20
  %arrayidx6.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.3
  store i32 %add.4, i32* %arrayidx6.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx1.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.3
  %21 = load i32, i32* %arrayidx1.5, align 4
  %22 = shl nsw i64 %indvars.iv.next.4, 5
  %23 = add nsw i64 %22, -1
  %arrayidx4.5 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx4.5, align 4
  %add.5 = add nsw i32 %21, %24
  %arrayidx6.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.4
  store i32 %add.5, i32* %arrayidx6.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx1.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.4
  %25 = load i32, i32* %arrayidx1.6, align 4
  %26 = shl nsw i64 %indvars.iv.next.5, 5
  %27 = add nsw i64 %26, -1
  %arrayidx4.6 = getelementptr inbounds i32, i32* %bucket, i64 %27
  %28 = load i32, i32* %arrayidx4.6, align 4
  %add.6 = add nsw i32 %25, %28
  %arrayidx6.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.5
  store i32 %add.6, i32* %arrayidx6.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %arrayidx1.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.5
  %29 = load i32, i32* %arrayidx1.7, align 4
  %30 = shl nsw i64 %indvars.iv.next.6, 5
  %31 = add nsw i64 %30, -1
  %arrayidx4.7 = getelementptr inbounds i32, i32* %bucket, i64 %31
  %32 = load i32, i32* %arrayidx4.7, align 4
  %add.7 = add nsw i32 %29, %32
  %arrayidx6.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.6
  store i32 %add.7, i32* %arrayidx6.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %arrayidx1.8 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.6
  %33 = load i32, i32* %arrayidx1.8, align 4
  %34 = shl nsw i64 %indvars.iv.next.7, 5
  %35 = add nsw i64 %34, -1
  %arrayidx4.8 = getelementptr inbounds i32, i32* %bucket, i64 %35
  %36 = load i32, i32* %arrayidx4.8, align 4
  %add.8 = add nsw i32 %33, %36
  %arrayidx6.8 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.7
  store i32 %add.8, i32* %arrayidx6.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %arrayidx1.9 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.7
  %37 = load i32, i32* %arrayidx1.9, align 4
  %38 = shl nsw i64 %indvars.iv.next.8, 5
  %39 = add nsw i64 %38, -1
  %arrayidx4.9 = getelementptr inbounds i32, i32* %bucket, i64 %39
  %40 = load i32, i32* %arrayidx4.9, align 4
  %add.9 = add nsw i32 %37, %40
  %arrayidx6.9 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.8
  store i32 %add.9, i32* %arrayidx6.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %arrayidx1.10 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.8
  %41 = load i32, i32* %arrayidx1.10, align 4
  %42 = shl nsw i64 %indvars.iv.next.9, 5
  %43 = add nsw i64 %42, -1
  %arrayidx4.10 = getelementptr inbounds i32, i32* %bucket, i64 %43
  %44 = load i32, i32* %arrayidx4.10, align 4
  %add.10 = add nsw i32 %41, %44
  %arrayidx6.10 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.9
  store i32 %add.10, i32* %arrayidx6.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %arrayidx1.11 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.9
  %45 = load i32, i32* %arrayidx1.11, align 4
  %46 = shl nsw i64 %indvars.iv.next.10, 5
  %47 = add nsw i64 %46, -1
  %arrayidx4.11 = getelementptr inbounds i32, i32* %bucket, i64 %47
  %48 = load i32, i32* %arrayidx4.11, align 4
  %add.11 = add nsw i32 %45, %48
  %arrayidx6.11 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.10
  store i32 %add.11, i32* %arrayidx6.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %arrayidx1.12 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.10
  %49 = load i32, i32* %arrayidx1.12, align 4
  %50 = shl nsw i64 %indvars.iv.next.11, 5
  %51 = add nsw i64 %50, -1
  %arrayidx4.12 = getelementptr inbounds i32, i32* %bucket, i64 %51
  %52 = load i32, i32* %arrayidx4.12, align 4
  %add.12 = add nsw i32 %49, %52
  %arrayidx6.12 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.11
  store i32 %add.12, i32* %arrayidx6.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %arrayidx1.13 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.11
  %53 = load i32, i32* %arrayidx1.13, align 4
  %54 = shl nsw i64 %indvars.iv.next.12, 5
  %55 = add nsw i64 %54, -1
  %arrayidx4.13 = getelementptr inbounds i32, i32* %bucket, i64 %55
  %56 = load i32, i32* %arrayidx4.13, align 4
  %add.13 = add nsw i32 %53, %56
  %arrayidx6.13 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.12
  store i32 %add.13, i32* %arrayidx6.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %arrayidx1.14 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.12
  %57 = load i32, i32* %arrayidx1.14, align 4
  %58 = shl nsw i64 %indvars.iv.next.13, 5
  %59 = add nsw i64 %58, -1
  %arrayidx4.14 = getelementptr inbounds i32, i32* %bucket, i64 %59
  %60 = load i32, i32* %arrayidx4.14, align 4
  %add.14 = add nsw i32 %57, %60
  %arrayidx6.14 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.13
  store i32 %add.14, i32* %arrayidx6.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %arrayidx1.15 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.13
  %61 = load i32, i32* %arrayidx1.15, align 4
  %62 = shl nsw i64 %indvars.iv.next.14, 5
  %63 = add nsw i64 %62, -1
  %arrayidx4.15 = getelementptr inbounds i32, i32* %bucket, i64 %63
  %64 = load i32, i32* %arrayidx4.15, align 4
  %add.15 = add nsw i32 %61, %64
  %arrayidx6.15 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.14
  store i32 %add.15, i32* %arrayidx6.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %arrayidx1.16 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.14
  %65 = load i32, i32* %arrayidx1.16, align 4
  %66 = shl nsw i64 %indvars.iv.next.15, 5
  %67 = add nsw i64 %66, -1
  %arrayidx4.16 = getelementptr inbounds i32, i32* %bucket, i64 %67
  %68 = load i32, i32* %arrayidx4.16, align 4
  %add.16 = add nsw i32 %65, %68
  %arrayidx6.16 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.15
  store i32 %add.16, i32* %arrayidx6.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %arrayidx1.17 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.15
  %69 = load i32, i32* %arrayidx1.17, align 4
  %70 = shl nsw i64 %indvars.iv.next.16, 5
  %71 = add nsw i64 %70, -1
  %arrayidx4.17 = getelementptr inbounds i32, i32* %bucket, i64 %71
  %72 = load i32, i32* %arrayidx4.17, align 4
  %add.17 = add nsw i32 %69, %72
  %arrayidx6.17 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.16
  store i32 %add.17, i32* %arrayidx6.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %arrayidx1.18 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.16
  %73 = load i32, i32* %arrayidx1.18, align 4
  %74 = shl nsw i64 %indvars.iv.next.17, 5
  %75 = add nsw i64 %74, -1
  %arrayidx4.18 = getelementptr inbounds i32, i32* %bucket, i64 %75
  %76 = load i32, i32* %arrayidx4.18, align 4
  %add.18 = add nsw i32 %73, %76
  %arrayidx6.18 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.17
  store i32 %add.18, i32* %arrayidx6.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %arrayidx1.19 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.17
  %77 = load i32, i32* %arrayidx1.19, align 4
  %78 = shl nsw i64 %indvars.iv.next.18, 5
  %79 = add nsw i64 %78, -1
  %arrayidx4.19 = getelementptr inbounds i32, i32* %bucket, i64 %79
  %80 = load i32, i32* %arrayidx4.19, align 4
  %add.19 = add nsw i32 %77, %80
  %arrayidx6.19 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.18
  store i32 %add.19, i32* %arrayidx6.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %arrayidx1.20 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.18
  %81 = load i32, i32* %arrayidx1.20, align 4
  %82 = shl nsw i64 %indvars.iv.next.19, 5
  %83 = add nsw i64 %82, -1
  %arrayidx4.20 = getelementptr inbounds i32, i32* %bucket, i64 %83
  %84 = load i32, i32* %arrayidx4.20, align 4
  %add.20 = add nsw i32 %81, %84
  %arrayidx6.20 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.19
  store i32 %add.20, i32* %arrayidx6.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %arrayidx1.21 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.19
  %85 = load i32, i32* %arrayidx1.21, align 4
  %86 = shl nsw i64 %indvars.iv.next.20, 5
  %87 = add nsw i64 %86, -1
  %arrayidx4.21 = getelementptr inbounds i32, i32* %bucket, i64 %87
  %88 = load i32, i32* %arrayidx4.21, align 4
  %add.21 = add nsw i32 %85, %88
  %arrayidx6.21 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.20
  store i32 %add.21, i32* %arrayidx6.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %arrayidx1.22 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.20
  %89 = load i32, i32* %arrayidx1.22, align 4
  %90 = shl nsw i64 %indvars.iv.next.21, 5
  %91 = add nsw i64 %90, -1
  %arrayidx4.22 = getelementptr inbounds i32, i32* %bucket, i64 %91
  %92 = load i32, i32* %arrayidx4.22, align 4
  %add.22 = add nsw i32 %89, %92
  %arrayidx6.22 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.21
  store i32 %add.22, i32* %arrayidx6.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %arrayidx1.23 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.21
  %93 = load i32, i32* %arrayidx1.23, align 4
  %94 = shl nsw i64 %indvars.iv.next.22, 5
  %95 = add nsw i64 %94, -1
  %arrayidx4.23 = getelementptr inbounds i32, i32* %bucket, i64 %95
  %96 = load i32, i32* %arrayidx4.23, align 4
  %add.23 = add nsw i32 %93, %96
  %arrayidx6.23 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.22
  store i32 %add.23, i32* %arrayidx6.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %arrayidx1.24 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.22
  %97 = load i32, i32* %arrayidx1.24, align 4
  %98 = shl nsw i64 %indvars.iv.next.23, 5
  %99 = add nsw i64 %98, -1
  %arrayidx4.24 = getelementptr inbounds i32, i32* %bucket, i64 %99
  %100 = load i32, i32* %arrayidx4.24, align 4
  %add.24 = add nsw i32 %97, %100
  %arrayidx6.24 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.23
  store i32 %add.24, i32* %arrayidx6.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %arrayidx1.25 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.23
  %101 = load i32, i32* %arrayidx1.25, align 4
  %102 = shl nsw i64 %indvars.iv.next.24, 5
  %103 = add nsw i64 %102, -1
  %arrayidx4.25 = getelementptr inbounds i32, i32* %bucket, i64 %103
  %104 = load i32, i32* %arrayidx4.25, align 4
  %add.25 = add nsw i32 %101, %104
  %arrayidx6.25 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.24
  store i32 %add.25, i32* %arrayidx6.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %arrayidx1.26 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.24
  %105 = load i32, i32* %arrayidx1.26, align 4
  %106 = shl nsw i64 %indvars.iv.next.25, 5
  %107 = add nsw i64 %106, -1
  %arrayidx4.26 = getelementptr inbounds i32, i32* %bucket, i64 %107
  %108 = load i32, i32* %arrayidx4.26, align 4
  %add.26 = add nsw i32 %105, %108
  %arrayidx6.26 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.25
  store i32 %add.26, i32* %arrayidx6.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %arrayidx1.27 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.25
  %109 = load i32, i32* %arrayidx1.27, align 4
  %110 = shl nsw i64 %indvars.iv.next.26, 5
  %111 = add nsw i64 %110, -1
  %arrayidx4.27 = getelementptr inbounds i32, i32* %bucket, i64 %111
  %112 = load i32, i32* %arrayidx4.27, align 4
  %add.27 = add nsw i32 %109, %112
  %arrayidx6.27 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.26
  store i32 %add.27, i32* %arrayidx6.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %arrayidx1.28 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.26
  %113 = load i32, i32* %arrayidx1.28, align 4
  %114 = shl nsw i64 %indvars.iv.next.27, 5
  %115 = add nsw i64 %114, -1
  %arrayidx4.28 = getelementptr inbounds i32, i32* %bucket, i64 %115
  %116 = load i32, i32* %arrayidx4.28, align 4
  %add.28 = add nsw i32 %113, %116
  %arrayidx6.28 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.27
  store i32 %add.28, i32* %arrayidx6.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %arrayidx1.29 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.27
  %117 = load i32, i32* %arrayidx1.29, align 4
  %118 = shl nsw i64 %indvars.iv.next.28, 5
  %119 = add nsw i64 %118, -1
  %arrayidx4.29 = getelementptr inbounds i32, i32* %bucket, i64 %119
  %120 = load i32, i32* %arrayidx4.29, align 4
  %add.29 = add nsw i32 %117, %120
  %arrayidx6.29 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.28
  store i32 %add.29, i32* %arrayidx6.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %arrayidx1.30 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.28
  %121 = load i32, i32* %arrayidx1.30, align 4
  %122 = shl nsw i64 %indvars.iv.next.29, 5
  %123 = add nsw i64 %122, -1
  %arrayidx4.30 = getelementptr inbounds i32, i32* %bucket, i64 %123
  %124 = load i32, i32* %arrayidx4.30, align 4
  %add.30 = add nsw i32 %121, %124
  %arrayidx6.30 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.29
  store i32 %add.30, i32* %arrayidx6.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %arrayidx1.31 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.29
  %125 = load i32, i32* %arrayidx1.31, align 4
  %126 = shl nsw i64 %indvars.iv.next.30, 5
  %127 = add nsw i64 %126, -1
  %arrayidx4.31 = getelementptr inbounds i32, i32* %bucket, i64 %127
  %128 = load i32, i32* %arrayidx4.31, align 4
  %add.31 = add nsw i32 %125, %128
  %arrayidx6.31 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.30
  store i32 %add.31, i32* %arrayidx6.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %arrayidx1.32 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.30
  %129 = load i32, i32* %arrayidx1.32, align 4
  %130 = shl nsw i64 %indvars.iv.next.31, 5
  %131 = add nsw i64 %130, -1
  %arrayidx4.32 = getelementptr inbounds i32, i32* %bucket, i64 %131
  %132 = load i32, i32* %arrayidx4.32, align 4
  %add.32 = add nsw i32 %129, %132
  %arrayidx6.32 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.31
  store i32 %add.32, i32* %arrayidx6.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %arrayidx1.33 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.31
  %133 = load i32, i32* %arrayidx1.33, align 4
  %134 = shl nsw i64 %indvars.iv.next.32, 5
  %135 = add nsw i64 %134, -1
  %arrayidx4.33 = getelementptr inbounds i32, i32* %bucket, i64 %135
  %136 = load i32, i32* %arrayidx4.33, align 4
  %add.33 = add nsw i32 %133, %136
  %arrayidx6.33 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.32
  store i32 %add.33, i32* %arrayidx6.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %arrayidx1.34 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.32
  %137 = load i32, i32* %arrayidx1.34, align 4
  %138 = shl nsw i64 %indvars.iv.next.33, 5
  %139 = add nsw i64 %138, -1
  %arrayidx4.34 = getelementptr inbounds i32, i32* %bucket, i64 %139
  %140 = load i32, i32* %arrayidx4.34, align 4
  %add.34 = add nsw i32 %137, %140
  %arrayidx6.34 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.33
  store i32 %add.34, i32* %arrayidx6.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %arrayidx1.35 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.33
  %141 = load i32, i32* %arrayidx1.35, align 4
  %142 = shl nsw i64 %indvars.iv.next.34, 5
  %143 = add nsw i64 %142, -1
  %arrayidx4.35 = getelementptr inbounds i32, i32* %bucket, i64 %143
  %144 = load i32, i32* %arrayidx4.35, align 4
  %add.35 = add nsw i32 %141, %144
  %arrayidx6.35 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.34
  store i32 %add.35, i32* %arrayidx6.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %arrayidx1.36 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.34
  %145 = load i32, i32* %arrayidx1.36, align 4
  %146 = shl nsw i64 %indvars.iv.next.35, 5
  %147 = add nsw i64 %146, -1
  %arrayidx4.36 = getelementptr inbounds i32, i32* %bucket, i64 %147
  %148 = load i32, i32* %arrayidx4.36, align 4
  %add.36 = add nsw i32 %145, %148
  %arrayidx6.36 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.35
  store i32 %add.36, i32* %arrayidx6.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %arrayidx1.37 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.35
  %149 = load i32, i32* %arrayidx1.37, align 4
  %150 = shl nsw i64 %indvars.iv.next.36, 5
  %151 = add nsw i64 %150, -1
  %arrayidx4.37 = getelementptr inbounds i32, i32* %bucket, i64 %151
  %152 = load i32, i32* %arrayidx4.37, align 4
  %add.37 = add nsw i32 %149, %152
  %arrayidx6.37 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.36
  store i32 %add.37, i32* %arrayidx6.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %arrayidx1.38 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.36
  %153 = load i32, i32* %arrayidx1.38, align 4
  %154 = shl nsw i64 %indvars.iv.next.37, 5
  %155 = add nsw i64 %154, -1
  %arrayidx4.38 = getelementptr inbounds i32, i32* %bucket, i64 %155
  %156 = load i32, i32* %arrayidx4.38, align 4
  %add.38 = add nsw i32 %153, %156
  %arrayidx6.38 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.37
  store i32 %add.38, i32* %arrayidx6.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %arrayidx1.39 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.37
  %157 = load i32, i32* %arrayidx1.39, align 4
  %158 = shl nsw i64 %indvars.iv.next.38, 5
  %159 = add nsw i64 %158, -1
  %arrayidx4.39 = getelementptr inbounds i32, i32* %bucket, i64 %159
  %160 = load i32, i32* %arrayidx4.39, align 4
  %add.39 = add nsw i32 %157, %160
  %arrayidx6.39 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.38
  store i32 %add.39, i32* %arrayidx6.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %arrayidx1.40 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.38
  %161 = load i32, i32* %arrayidx1.40, align 4
  %162 = shl nsw i64 %indvars.iv.next.39, 5
  %163 = add nsw i64 %162, -1
  %arrayidx4.40 = getelementptr inbounds i32, i32* %bucket, i64 %163
  %164 = load i32, i32* %arrayidx4.40, align 4
  %add.40 = add nsw i32 %161, %164
  %arrayidx6.40 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.39
  store i32 %add.40, i32* %arrayidx6.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %arrayidx1.41 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.39
  %165 = load i32, i32* %arrayidx1.41, align 4
  %166 = shl nsw i64 %indvars.iv.next.40, 5
  %167 = add nsw i64 %166, -1
  %arrayidx4.41 = getelementptr inbounds i32, i32* %bucket, i64 %167
  %168 = load i32, i32* %arrayidx4.41, align 4
  %add.41 = add nsw i32 %165, %168
  %arrayidx6.41 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.40
  store i32 %add.41, i32* %arrayidx6.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %arrayidx1.42 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.40
  %169 = load i32, i32* %arrayidx1.42, align 4
  %170 = shl nsw i64 %indvars.iv.next.41, 5
  %171 = add nsw i64 %170, -1
  %arrayidx4.42 = getelementptr inbounds i32, i32* %bucket, i64 %171
  %172 = load i32, i32* %arrayidx4.42, align 4
  %add.42 = add nsw i32 %169, %172
  %arrayidx6.42 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.41
  store i32 %add.42, i32* %arrayidx6.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %arrayidx1.43 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.41
  %173 = load i32, i32* %arrayidx1.43, align 4
  %174 = shl nsw i64 %indvars.iv.next.42, 5
  %175 = add nsw i64 %174, -1
  %arrayidx4.43 = getelementptr inbounds i32, i32* %bucket, i64 %175
  %176 = load i32, i32* %arrayidx4.43, align 4
  %add.43 = add nsw i32 %173, %176
  %arrayidx6.43 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.42
  store i32 %add.43, i32* %arrayidx6.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %arrayidx1.44 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.42
  %177 = load i32, i32* %arrayidx1.44, align 4
  %178 = shl nsw i64 %indvars.iv.next.43, 5
  %179 = add nsw i64 %178, -1
  %arrayidx4.44 = getelementptr inbounds i32, i32* %bucket, i64 %179
  %180 = load i32, i32* %arrayidx4.44, align 4
  %add.44 = add nsw i32 %177, %180
  %arrayidx6.44 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.43
  store i32 %add.44, i32* %arrayidx6.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %arrayidx1.45 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.43
  %181 = load i32, i32* %arrayidx1.45, align 4
  %182 = shl nsw i64 %indvars.iv.next.44, 5
  %183 = add nsw i64 %182, -1
  %arrayidx4.45 = getelementptr inbounds i32, i32* %bucket, i64 %183
  %184 = load i32, i32* %arrayidx4.45, align 4
  %add.45 = add nsw i32 %181, %184
  %arrayidx6.45 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.44
  store i32 %add.45, i32* %arrayidx6.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %arrayidx1.46 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.44
  %185 = load i32, i32* %arrayidx1.46, align 4
  %186 = shl nsw i64 %indvars.iv.next.45, 5
  %187 = add nsw i64 %186, -1
  %arrayidx4.46 = getelementptr inbounds i32, i32* %bucket, i64 %187
  %188 = load i32, i32* %arrayidx4.46, align 4
  %add.46 = add nsw i32 %185, %188
  %arrayidx6.46 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.45
  store i32 %add.46, i32* %arrayidx6.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %arrayidx1.47 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.45
  %189 = load i32, i32* %arrayidx1.47, align 4
  %190 = shl nsw i64 %indvars.iv.next.46, 5
  %191 = add nsw i64 %190, -1
  %arrayidx4.47 = getelementptr inbounds i32, i32* %bucket, i64 %191
  %192 = load i32, i32* %arrayidx4.47, align 4
  %add.47 = add nsw i32 %189, %192
  %arrayidx6.47 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.46
  store i32 %add.47, i32* %arrayidx6.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %arrayidx1.48 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.46
  %193 = load i32, i32* %arrayidx1.48, align 4
  %194 = shl nsw i64 %indvars.iv.next.47, 5
  %195 = add nsw i64 %194, -1
  %arrayidx4.48 = getelementptr inbounds i32, i32* %bucket, i64 %195
  %196 = load i32, i32* %arrayidx4.48, align 4
  %add.48 = add nsw i32 %193, %196
  %arrayidx6.48 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.47
  store i32 %add.48, i32* %arrayidx6.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %arrayidx1.49 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.47
  %197 = load i32, i32* %arrayidx1.49, align 4
  %198 = shl nsw i64 %indvars.iv.next.48, 5
  %199 = add nsw i64 %198, -1
  %arrayidx4.49 = getelementptr inbounds i32, i32* %bucket, i64 %199
  %200 = load i32, i32* %arrayidx4.49, align 4
  %add.49 = add nsw i32 %197, %200
  %arrayidx6.49 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.48
  store i32 %add.49, i32* %arrayidx6.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %arrayidx1.50 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.48
  %201 = load i32, i32* %arrayidx1.50, align 4
  %202 = shl nsw i64 %indvars.iv.next.49, 5
  %203 = add nsw i64 %202, -1
  %arrayidx4.50 = getelementptr inbounds i32, i32* %bucket, i64 %203
  %204 = load i32, i32* %arrayidx4.50, align 4
  %add.50 = add nsw i32 %201, %204
  %arrayidx6.50 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.49
  store i32 %add.50, i32* %arrayidx6.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %arrayidx1.51 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.49
  %205 = load i32, i32* %arrayidx1.51, align 4
  %206 = shl nsw i64 %indvars.iv.next.50, 5
  %207 = add nsw i64 %206, -1
  %arrayidx4.51 = getelementptr inbounds i32, i32* %bucket, i64 %207
  %208 = load i32, i32* %arrayidx4.51, align 4
  %add.51 = add nsw i32 %205, %208
  %arrayidx6.51 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.50
  store i32 %add.51, i32* %arrayidx6.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %arrayidx1.52 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.50
  %209 = load i32, i32* %arrayidx1.52, align 4
  %210 = shl nsw i64 %indvars.iv.next.51, 5
  %211 = add nsw i64 %210, -1
  %arrayidx4.52 = getelementptr inbounds i32, i32* %bucket, i64 %211
  %212 = load i32, i32* %arrayidx4.52, align 4
  %add.52 = add nsw i32 %209, %212
  %arrayidx6.52 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.51
  store i32 %add.52, i32* %arrayidx6.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %arrayidx1.53 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.51
  %213 = load i32, i32* %arrayidx1.53, align 4
  %214 = shl nsw i64 %indvars.iv.next.52, 5
  %215 = add nsw i64 %214, -1
  %arrayidx4.53 = getelementptr inbounds i32, i32* %bucket, i64 %215
  %216 = load i32, i32* %arrayidx4.53, align 4
  %add.53 = add nsw i32 %213, %216
  %arrayidx6.53 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.52
  store i32 %add.53, i32* %arrayidx6.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %arrayidx1.54 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.52
  %217 = load i32, i32* %arrayidx1.54, align 4
  %218 = shl nsw i64 %indvars.iv.next.53, 5
  %219 = add nsw i64 %218, -1
  %arrayidx4.54 = getelementptr inbounds i32, i32* %bucket, i64 %219
  %220 = load i32, i32* %arrayidx4.54, align 4
  %add.54 = add nsw i32 %217, %220
  %arrayidx6.54 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.53
  store i32 %add.54, i32* %arrayidx6.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %arrayidx1.55 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.53
  %221 = load i32, i32* %arrayidx1.55, align 4
  %222 = shl nsw i64 %indvars.iv.next.54, 5
  %223 = add nsw i64 %222, -1
  %arrayidx4.55 = getelementptr inbounds i32, i32* %bucket, i64 %223
  %224 = load i32, i32* %arrayidx4.55, align 4
  %add.55 = add nsw i32 %221, %224
  %arrayidx6.55 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.54
  store i32 %add.55, i32* %arrayidx6.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %arrayidx1.56 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.54
  %225 = load i32, i32* %arrayidx1.56, align 4
  %226 = shl nsw i64 %indvars.iv.next.55, 5
  %227 = add nsw i64 %226, -1
  %arrayidx4.56 = getelementptr inbounds i32, i32* %bucket, i64 %227
  %228 = load i32, i32* %arrayidx4.56, align 4
  %add.56 = add nsw i32 %225, %228
  %arrayidx6.56 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.55
  store i32 %add.56, i32* %arrayidx6.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %arrayidx1.57 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.55
  %229 = load i32, i32* %arrayidx1.57, align 4
  %230 = shl nsw i64 %indvars.iv.next.56, 5
  %231 = add nsw i64 %230, -1
  %arrayidx4.57 = getelementptr inbounds i32, i32* %bucket, i64 %231
  %232 = load i32, i32* %arrayidx4.57, align 4
  %add.57 = add nsw i32 %229, %232
  %arrayidx6.57 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.56
  store i32 %add.57, i32* %arrayidx6.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %arrayidx1.58 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.56
  %233 = load i32, i32* %arrayidx1.58, align 4
  %234 = shl nsw i64 %indvars.iv.next.57, 5
  %235 = add nsw i64 %234, -1
  %arrayidx4.58 = getelementptr inbounds i32, i32* %bucket, i64 %235
  %236 = load i32, i32* %arrayidx4.58, align 4
  %add.58 = add nsw i32 %233, %236
  %arrayidx6.58 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.57
  store i32 %add.58, i32* %arrayidx6.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %arrayidx1.59 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.57
  %237 = load i32, i32* %arrayidx1.59, align 4
  %238 = shl nsw i64 %indvars.iv.next.58, 5
  %239 = add nsw i64 %238, -1
  %arrayidx4.59 = getelementptr inbounds i32, i32* %bucket, i64 %239
  %240 = load i32, i32* %arrayidx4.59, align 4
  %add.59 = add nsw i32 %237, %240
  %arrayidx6.59 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.58
  store i32 %add.59, i32* %arrayidx6.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %arrayidx1.60 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.58
  %241 = load i32, i32* %arrayidx1.60, align 4
  %242 = shl nsw i64 %indvars.iv.next.59, 5
  %243 = add nsw i64 %242, -1
  %arrayidx4.60 = getelementptr inbounds i32, i32* %bucket, i64 %243
  %244 = load i32, i32* %arrayidx4.60, align 4
  %add.60 = add nsw i32 %241, %244
  %arrayidx6.60 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.59
  store i32 %add.60, i32* %arrayidx6.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %arrayidx1.61 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.59
  %245 = load i32, i32* %arrayidx1.61, align 4
  %246 = shl nsw i64 %indvars.iv.next.60, 5
  %247 = add nsw i64 %246, -1
  %arrayidx4.61 = getelementptr inbounds i32, i32* %bucket, i64 %247
  %248 = load i32, i32* %arrayidx4.61, align 4
  %add.61 = add nsw i32 %245, %248
  %arrayidx6.61 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.60
  store i32 %add.61, i32* %arrayidx6.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %arrayidx1.62 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.60
  %249 = load i32, i32* %arrayidx1.62, align 4
  %250 = shl nsw i64 %indvars.iv.next.61, 5
  %251 = add nsw i64 %250, -1
  %arrayidx4.62 = getelementptr inbounds i32, i32* %bucket, i64 %251
  %252 = load i32, i32* %arrayidx4.62, align 4
  %add.62 = add nsw i32 %249, %252
  %arrayidx6.62 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.61
  store i32 %add.62, i32* %arrayidx6.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %exitcond.62 = icmp ne i64 %indvars.iv.next.62, 524288
  br i1 %exitcond.62, label %for.body.63, label %for.end, !llvm.loop !5

for.end:                                          ; preds = %for.body
  ret void

for.body.63:                                      ; preds = %for.body
  %arrayidx1.63 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.61
  %253 = load i32, i32* %arrayidx1.63, align 4
  %254 = shl nsw i64 %indvars.iv.next.62, 5
  %255 = add nsw i64 %254, -1
  %arrayidx4.63 = getelementptr inbounds i32, i32* %bucket, i64 %255
  %256 = load i32, i32* %arrayidx4.63, align 4
  %add.63 = add nsw i32 %253, %256
  %arrayidx6.63 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.62
  store i32 %add.63, i32* %arrayidx6.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  br label %for.body, !llvm.loop !7
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
!3 = !{!"llvm.loop.unroll.count", i32 1}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.count", i32 64}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
!15 = distinct !{!15, !3}
