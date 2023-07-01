; ModuleID = 'ss_sort_4_32.ll'
source_filename = "ss_sort_4_32.c"
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

for.body:                                         ; preds = %entry, %for.body3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body3 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %0 = shl nsw i64 %indvars.iv, 5
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %1, %2
  %3 = shl nsw i64 %indvars.iv, 5
  %arrayidx10 = getelementptr inbounds i32, i32* %bucket, i64 %3
  store i32 %add6, i32* %arrayidx10, align 4
  %4 = shl nsw i64 %indvars.iv, 5
  %5 = add nuw nsw i64 %4, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %5
  %6 = load i32, i32* %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %7 = load i32, i32* %arrayidx5.1, align 4
  %add6.1 = add nsw i32 %6, %7
  %8 = shl nsw i64 %indvars.iv, 5
  %9 = add nuw nsw i64 %8, 1
  %arrayidx10.1 = getelementptr inbounds i32, i32* %bucket, i64 %9
  store i32 %add6.1, i32* %arrayidx10.1, align 4
  %10 = shl nsw i64 %indvars.iv, 5
  %11 = add nuw nsw i64 %10, 2
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %11
  %12 = load i32, i32* %arrayidx.2, align 4
  %arrayidx5.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %13 = load i32, i32* %arrayidx5.2, align 4
  %add6.2 = add nsw i32 %12, %13
  %14 = shl nsw i64 %indvars.iv, 5
  %15 = add nuw nsw i64 %14, 2
  %arrayidx10.2 = getelementptr inbounds i32, i32* %bucket, i64 %15
  store i32 %add6.2, i32* %arrayidx10.2, align 4
  %16 = shl nsw i64 %indvars.iv, 5
  %17 = add nuw nsw i64 %16, 3
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %17
  %18 = load i32, i32* %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %19 = load i32, i32* %arrayidx5.3, align 4
  %add6.3 = add nsw i32 %18, %19
  %20 = shl nsw i64 %indvars.iv, 5
  %21 = add nuw nsw i64 %20, 3
  %arrayidx10.3 = getelementptr inbounds i32, i32* %bucket, i64 %21
  store i32 %add6.3, i32* %arrayidx10.3, align 4
  %22 = shl nsw i64 %indvars.iv, 5
  %23 = add nuw nsw i64 %22, 4
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx.4, align 4
  %arrayidx5.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %25 = load i32, i32* %arrayidx5.4, align 4
  %add6.4 = add nsw i32 %24, %25
  %26 = shl nsw i64 %indvars.iv, 5
  %27 = add nuw nsw i64 %26, 4
  %arrayidx10.4 = getelementptr inbounds i32, i32* %bucket, i64 %27
  store i32 %add6.4, i32* %arrayidx10.4, align 4
  %28 = shl nsw i64 %indvars.iv, 5
  %29 = add nuw nsw i64 %28, 5
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %29
  %30 = load i32, i32* %arrayidx.5, align 4
  %arrayidx5.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %31 = load i32, i32* %arrayidx5.5, align 4
  %add6.5 = add nsw i32 %30, %31
  %32 = shl nsw i64 %indvars.iv, 5
  %33 = add nuw nsw i64 %32, 5
  %arrayidx10.5 = getelementptr inbounds i32, i32* %bucket, i64 %33
  store i32 %add6.5, i32* %arrayidx10.5, align 4
  %34 = shl nsw i64 %indvars.iv, 5
  %35 = add nuw nsw i64 %34, 6
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %35
  %36 = load i32, i32* %arrayidx.6, align 4
  %arrayidx5.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %37 = load i32, i32* %arrayidx5.6, align 4
  %add6.6 = add nsw i32 %36, %37
  %38 = shl nsw i64 %indvars.iv, 5
  %39 = add nuw nsw i64 %38, 6
  %arrayidx10.6 = getelementptr inbounds i32, i32* %bucket, i64 %39
  store i32 %add6.6, i32* %arrayidx10.6, align 4
  %40 = shl nsw i64 %indvars.iv, 5
  %41 = add nuw nsw i64 %40, 7
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %41
  %42 = load i32, i32* %arrayidx.7, align 4
  %arrayidx5.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %43 = load i32, i32* %arrayidx5.7, align 4
  %add6.7 = add nsw i32 %42, %43
  %44 = shl nsw i64 %indvars.iv, 5
  %45 = add nuw nsw i64 %44, 7
  %arrayidx10.7 = getelementptr inbounds i32, i32* %bucket, i64 %45
  store i32 %add6.7, i32* %arrayidx10.7, align 4
  %46 = shl nsw i64 %indvars.iv, 5
  %47 = add nuw nsw i64 %46, 8
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %47
  %48 = load i32, i32* %arrayidx.8, align 4
  %arrayidx5.8 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %49 = load i32, i32* %arrayidx5.8, align 4
  %add6.8 = add nsw i32 %48, %49
  %50 = shl nsw i64 %indvars.iv, 5
  %51 = add nuw nsw i64 %50, 8
  %arrayidx10.8 = getelementptr inbounds i32, i32* %bucket, i64 %51
  store i32 %add6.8, i32* %arrayidx10.8, align 4
  %52 = shl nsw i64 %indvars.iv, 5
  %53 = add nuw nsw i64 %52, 9
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %53
  %54 = load i32, i32* %arrayidx.9, align 4
  %arrayidx5.9 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %55 = load i32, i32* %arrayidx5.9, align 4
  %add6.9 = add nsw i32 %54, %55
  %56 = shl nsw i64 %indvars.iv, 5
  %57 = add nuw nsw i64 %56, 9
  %arrayidx10.9 = getelementptr inbounds i32, i32* %bucket, i64 %57
  store i32 %add6.9, i32* %arrayidx10.9, align 4
  %58 = shl nsw i64 %indvars.iv, 5
  %59 = add nuw nsw i64 %58, 10
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %59
  %60 = load i32, i32* %arrayidx.10, align 4
  %arrayidx5.10 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %61 = load i32, i32* %arrayidx5.10, align 4
  %add6.10 = add nsw i32 %60, %61
  %62 = shl nsw i64 %indvars.iv, 5
  %63 = add nuw nsw i64 %62, 10
  %arrayidx10.10 = getelementptr inbounds i32, i32* %bucket, i64 %63
  store i32 %add6.10, i32* %arrayidx10.10, align 4
  %64 = shl nsw i64 %indvars.iv, 5
  %65 = add nuw nsw i64 %64, 11
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %65
  %66 = load i32, i32* %arrayidx.11, align 4
  %arrayidx5.11 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %67 = load i32, i32* %arrayidx5.11, align 4
  %add6.11 = add nsw i32 %66, %67
  %68 = shl nsw i64 %indvars.iv, 5
  %69 = add nuw nsw i64 %68, 11
  %arrayidx10.11 = getelementptr inbounds i32, i32* %bucket, i64 %69
  store i32 %add6.11, i32* %arrayidx10.11, align 4
  %70 = shl nsw i64 %indvars.iv, 5
  %71 = add nuw nsw i64 %70, 12
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %71
  %72 = load i32, i32* %arrayidx.12, align 4
  %arrayidx5.12 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %73 = load i32, i32* %arrayidx5.12, align 4
  %add6.12 = add nsw i32 %72, %73
  %74 = shl nsw i64 %indvars.iv, 5
  %75 = add nuw nsw i64 %74, 12
  %arrayidx10.12 = getelementptr inbounds i32, i32* %bucket, i64 %75
  store i32 %add6.12, i32* %arrayidx10.12, align 4
  %76 = shl nsw i64 %indvars.iv, 5
  %77 = add nuw nsw i64 %76, 13
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %77
  %78 = load i32, i32* %arrayidx.13, align 4
  %arrayidx5.13 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %79 = load i32, i32* %arrayidx5.13, align 4
  %add6.13 = add nsw i32 %78, %79
  %80 = shl nsw i64 %indvars.iv, 5
  %81 = add nuw nsw i64 %80, 13
  %arrayidx10.13 = getelementptr inbounds i32, i32* %bucket, i64 %81
  store i32 %add6.13, i32* %arrayidx10.13, align 4
  %82 = shl nsw i64 %indvars.iv, 5
  %83 = add nuw nsw i64 %82, 14
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %83
  %84 = load i32, i32* %arrayidx.14, align 4
  %arrayidx5.14 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %85 = load i32, i32* %arrayidx5.14, align 4
  %add6.14 = add nsw i32 %84, %85
  %86 = shl nsw i64 %indvars.iv, 5
  %87 = add nuw nsw i64 %86, 14
  %arrayidx10.14 = getelementptr inbounds i32, i32* %bucket, i64 %87
  store i32 %add6.14, i32* %arrayidx10.14, align 4
  %88 = shl nsw i64 %indvars.iv, 5
  %89 = add nuw nsw i64 %88, 15
  %arrayidx.15 = getelementptr inbounds i32, i32* %bucket, i64 %89
  %90 = load i32, i32* %arrayidx.15, align 4
  %arrayidx5.15 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %91 = load i32, i32* %arrayidx5.15, align 4
  %add6.15 = add nsw i32 %90, %91
  %92 = shl nsw i64 %indvars.iv, 5
  %93 = add nuw nsw i64 %92, 15
  %arrayidx10.15 = getelementptr inbounds i32, i32* %bucket, i64 %93
  store i32 %add6.15, i32* %arrayidx10.15, align 4
  %94 = shl nsw i64 %indvars.iv, 5
  %95 = add nuw nsw i64 %94, 16
  %arrayidx.16 = getelementptr inbounds i32, i32* %bucket, i64 %95
  %96 = load i32, i32* %arrayidx.16, align 4
  %arrayidx5.16 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %97 = load i32, i32* %arrayidx5.16, align 4
  %add6.16 = add nsw i32 %96, %97
  %98 = shl nsw i64 %indvars.iv, 5
  %99 = add nuw nsw i64 %98, 16
  %arrayidx10.16 = getelementptr inbounds i32, i32* %bucket, i64 %99
  store i32 %add6.16, i32* %arrayidx10.16, align 4
  %100 = shl nsw i64 %indvars.iv, 5
  %101 = add nuw nsw i64 %100, 17
  %arrayidx.17 = getelementptr inbounds i32, i32* %bucket, i64 %101
  %102 = load i32, i32* %arrayidx.17, align 4
  %arrayidx5.17 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %103 = load i32, i32* %arrayidx5.17, align 4
  %add6.17 = add nsw i32 %102, %103
  %104 = shl nsw i64 %indvars.iv, 5
  %105 = add nuw nsw i64 %104, 17
  %arrayidx10.17 = getelementptr inbounds i32, i32* %bucket, i64 %105
  store i32 %add6.17, i32* %arrayidx10.17, align 4
  %106 = shl nsw i64 %indvars.iv, 5
  %107 = add nuw nsw i64 %106, 18
  %arrayidx.18 = getelementptr inbounds i32, i32* %bucket, i64 %107
  %108 = load i32, i32* %arrayidx.18, align 4
  %arrayidx5.18 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %109 = load i32, i32* %arrayidx5.18, align 4
  %add6.18 = add nsw i32 %108, %109
  %110 = shl nsw i64 %indvars.iv, 5
  %111 = add nuw nsw i64 %110, 18
  %arrayidx10.18 = getelementptr inbounds i32, i32* %bucket, i64 %111
  store i32 %add6.18, i32* %arrayidx10.18, align 4
  %112 = shl nsw i64 %indvars.iv, 5
  %113 = add nuw nsw i64 %112, 19
  %arrayidx.19 = getelementptr inbounds i32, i32* %bucket, i64 %113
  %114 = load i32, i32* %arrayidx.19, align 4
  %arrayidx5.19 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %115 = load i32, i32* %arrayidx5.19, align 4
  %add6.19 = add nsw i32 %114, %115
  %116 = shl nsw i64 %indvars.iv, 5
  %117 = add nuw nsw i64 %116, 19
  %arrayidx10.19 = getelementptr inbounds i32, i32* %bucket, i64 %117
  store i32 %add6.19, i32* %arrayidx10.19, align 4
  %118 = shl nsw i64 %indvars.iv, 5
  %119 = add nuw nsw i64 %118, 20
  %arrayidx.20 = getelementptr inbounds i32, i32* %bucket, i64 %119
  %120 = load i32, i32* %arrayidx.20, align 4
  %arrayidx5.20 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %121 = load i32, i32* %arrayidx5.20, align 4
  %add6.20 = add nsw i32 %120, %121
  %122 = shl nsw i64 %indvars.iv, 5
  %123 = add nuw nsw i64 %122, 20
  %arrayidx10.20 = getelementptr inbounds i32, i32* %bucket, i64 %123
  store i32 %add6.20, i32* %arrayidx10.20, align 4
  %124 = shl nsw i64 %indvars.iv, 5
  %125 = add nuw nsw i64 %124, 21
  %arrayidx.21 = getelementptr inbounds i32, i32* %bucket, i64 %125
  %126 = load i32, i32* %arrayidx.21, align 4
  %arrayidx5.21 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %127 = load i32, i32* %arrayidx5.21, align 4
  %add6.21 = add nsw i32 %126, %127
  %128 = shl nsw i64 %indvars.iv, 5
  %129 = add nuw nsw i64 %128, 21
  %arrayidx10.21 = getelementptr inbounds i32, i32* %bucket, i64 %129
  store i32 %add6.21, i32* %arrayidx10.21, align 4
  %130 = shl nsw i64 %indvars.iv, 5
  %131 = add nuw nsw i64 %130, 22
  %arrayidx.22 = getelementptr inbounds i32, i32* %bucket, i64 %131
  %132 = load i32, i32* %arrayidx.22, align 4
  %arrayidx5.22 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %133 = load i32, i32* %arrayidx5.22, align 4
  %add6.22 = add nsw i32 %132, %133
  %134 = shl nsw i64 %indvars.iv, 5
  %135 = add nuw nsw i64 %134, 22
  %arrayidx10.22 = getelementptr inbounds i32, i32* %bucket, i64 %135
  store i32 %add6.22, i32* %arrayidx10.22, align 4
  %136 = shl nsw i64 %indvars.iv, 5
  %137 = add nuw nsw i64 %136, 23
  %arrayidx.23 = getelementptr inbounds i32, i32* %bucket, i64 %137
  %138 = load i32, i32* %arrayidx.23, align 4
  %arrayidx5.23 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %139 = load i32, i32* %arrayidx5.23, align 4
  %add6.23 = add nsw i32 %138, %139
  %140 = shl nsw i64 %indvars.iv, 5
  %141 = add nuw nsw i64 %140, 23
  %arrayidx10.23 = getelementptr inbounds i32, i32* %bucket, i64 %141
  store i32 %add6.23, i32* %arrayidx10.23, align 4
  %142 = shl nsw i64 %indvars.iv, 5
  %143 = add nuw nsw i64 %142, 24
  %arrayidx.24 = getelementptr inbounds i32, i32* %bucket, i64 %143
  %144 = load i32, i32* %arrayidx.24, align 4
  %arrayidx5.24 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %145 = load i32, i32* %arrayidx5.24, align 4
  %add6.24 = add nsw i32 %144, %145
  %146 = shl nsw i64 %indvars.iv, 5
  %147 = add nuw nsw i64 %146, 24
  %arrayidx10.24 = getelementptr inbounds i32, i32* %bucket, i64 %147
  store i32 %add6.24, i32* %arrayidx10.24, align 4
  %148 = shl nsw i64 %indvars.iv, 5
  %149 = add nuw nsw i64 %148, 25
  %arrayidx.25 = getelementptr inbounds i32, i32* %bucket, i64 %149
  %150 = load i32, i32* %arrayidx.25, align 4
  %arrayidx5.25 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %151 = load i32, i32* %arrayidx5.25, align 4
  %add6.25 = add nsw i32 %150, %151
  %152 = shl nsw i64 %indvars.iv, 5
  %153 = add nuw nsw i64 %152, 25
  %arrayidx10.25 = getelementptr inbounds i32, i32* %bucket, i64 %153
  store i32 %add6.25, i32* %arrayidx10.25, align 4
  %154 = shl nsw i64 %indvars.iv, 5
  %155 = add nuw nsw i64 %154, 26
  %arrayidx.26 = getelementptr inbounds i32, i32* %bucket, i64 %155
  %156 = load i32, i32* %arrayidx.26, align 4
  %arrayidx5.26 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %157 = load i32, i32* %arrayidx5.26, align 4
  %add6.26 = add nsw i32 %156, %157
  %158 = shl nsw i64 %indvars.iv, 5
  %159 = add nuw nsw i64 %158, 26
  %arrayidx10.26 = getelementptr inbounds i32, i32* %bucket, i64 %159
  store i32 %add6.26, i32* %arrayidx10.26, align 4
  %160 = shl nsw i64 %indvars.iv, 5
  %161 = add nuw nsw i64 %160, 27
  %arrayidx.27 = getelementptr inbounds i32, i32* %bucket, i64 %161
  %162 = load i32, i32* %arrayidx.27, align 4
  %arrayidx5.27 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %163 = load i32, i32* %arrayidx5.27, align 4
  %add6.27 = add nsw i32 %162, %163
  %164 = shl nsw i64 %indvars.iv, 5
  %165 = add nuw nsw i64 %164, 27
  %arrayidx10.27 = getelementptr inbounds i32, i32* %bucket, i64 %165
  store i32 %add6.27, i32* %arrayidx10.27, align 4
  %166 = shl nsw i64 %indvars.iv, 5
  %167 = add nuw nsw i64 %166, 28
  %arrayidx.28 = getelementptr inbounds i32, i32* %bucket, i64 %167
  %168 = load i32, i32* %arrayidx.28, align 4
  %arrayidx5.28 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %169 = load i32, i32* %arrayidx5.28, align 4
  %add6.28 = add nsw i32 %168, %169
  %170 = shl nsw i64 %indvars.iv, 5
  %171 = add nuw nsw i64 %170, 28
  %arrayidx10.28 = getelementptr inbounds i32, i32* %bucket, i64 %171
  store i32 %add6.28, i32* %arrayidx10.28, align 4
  %172 = shl nsw i64 %indvars.iv, 5
  %173 = add nuw nsw i64 %172, 29
  %arrayidx.29 = getelementptr inbounds i32, i32* %bucket, i64 %173
  %174 = load i32, i32* %arrayidx.29, align 4
  %arrayidx5.29 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %175 = load i32, i32* %arrayidx5.29, align 4
  %add6.29 = add nsw i32 %174, %175
  %176 = shl nsw i64 %indvars.iv, 5
  %177 = add nuw nsw i64 %176, 29
  %arrayidx10.29 = getelementptr inbounds i32, i32* %bucket, i64 %177
  store i32 %add6.29, i32* %arrayidx10.29, align 4
  %178 = shl nsw i64 %indvars.iv, 5
  %179 = add nuw nsw i64 %178, 30
  %arrayidx.30 = getelementptr inbounds i32, i32* %bucket, i64 %179
  %180 = load i32, i32* %arrayidx.30, align 4
  %arrayidx5.30 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %181 = load i32, i32* %arrayidx5.30, align 4
  %add6.30 = add nsw i32 %180, %181
  %182 = shl nsw i64 %indvars.iv, 5
  %183 = add nuw nsw i64 %182, 30
  %arrayidx10.30 = getelementptr inbounds i32, i32* %bucket, i64 %183
  store i32 %add6.30, i32* %arrayidx10.30, align 4
  %184 = shl nsw i64 %indvars.iv, 5
  %185 = add nuw nsw i64 %184, 31
  %arrayidx.31 = getelementptr inbounds i32, i32* %bucket, i64 %185
  %186 = load i32, i32* %arrayidx.31, align 4
  %arrayidx5.31 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %187 = load i32, i32* %arrayidx5.31, align 4
  %add6.31 = add nsw i32 %186, %187
  %188 = shl nsw i64 %indvars.iv, 5
  %189 = add nuw nsw i64 %188, 31
  %arrayidx10.31 = getelementptr inbounds i32, i32* %bucket, i64 %189
  store i32 %add6.31, i32* %arrayidx10.31, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 524288
  br i1 %exitcond, label %for.body, label %for.end13, !llvm.loop !6

for.end13:                                        ; preds = %for.body3
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
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !7

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
  br i1 %exitcond, label %for.body3, label %for.inc10, !llvm.loop !8

for.inc10:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end12, !llvm.loop !9

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
  br i1 %exitcond, label %for.body3, label %for.inc17, !llvm.loop !10

for.inc17:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end19, !llvm.loop !11

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
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
