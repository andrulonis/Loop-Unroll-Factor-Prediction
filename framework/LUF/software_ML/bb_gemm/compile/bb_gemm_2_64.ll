; ModuleID = 'bb_gemm_2_64.ll'
source_filename = "bb_gemm_2_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bb_gemm(i32* %x, i32* %y, i32* %z) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc20
  %indvars.iv73 = phi i64 [ 0, %entry ], [ %indvars.iv.next74, %for.inc20 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.inc17
  %indvars.iv6 = phi i64 [ 0, %for.body ], [ %indvars.iv.next7, %for.inc17 ]
  %0 = shl nsw i64 %indvars.iv73, 10
  %1 = add nuw nsw i64 %0, %indvars.iv6
  %arrayidx = getelementptr inbounds i32, i32* %x, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next.63, %for.body6 ]
  %3 = shl nsw i64 %indvars.iv6, 10
  %4 = add nuw nsw i64 %3, %indvars.iv
  %arrayidx10 = getelementptr inbounds i32, i32* %y, i64 %4
  %5 = load i32, i32* %arrayidx10, align 4
  %mul11 = mul nsw i32 %2, %5
  %6 = shl nsw i64 %indvars.iv73, 10
  %7 = add nuw nsw i64 %6, %indvars.iv
  %arrayidx15 = getelementptr inbounds i32, i32* %z, i64 %7
  %8 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %8, %mul11
  store i32 %add16, i32* %arrayidx15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = shl nsw i64 %indvars.iv6, 10
  %10 = add nuw nsw i64 %9, %indvars.iv.next
  %arrayidx10.1 = getelementptr inbounds i32, i32* %y, i64 %10
  %11 = load i32, i32* %arrayidx10.1, align 4
  %mul11.1 = mul nsw i32 %2, %11
  %12 = shl nsw i64 %indvars.iv73, 10
  %13 = add nuw nsw i64 %12, %indvars.iv.next
  %arrayidx15.1 = getelementptr inbounds i32, i32* %z, i64 %13
  %14 = load i32, i32* %arrayidx15.1, align 4
  %add16.1 = add nsw i32 %14, %mul11.1
  store i32 %add16.1, i32* %arrayidx15.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %15 = shl nsw i64 %indvars.iv6, 10
  %16 = add nuw nsw i64 %15, %indvars.iv.next.1
  %arrayidx10.2 = getelementptr inbounds i32, i32* %y, i64 %16
  %17 = load i32, i32* %arrayidx10.2, align 4
  %mul11.2 = mul nsw i32 %2, %17
  %18 = shl nsw i64 %indvars.iv73, 10
  %19 = add nuw nsw i64 %18, %indvars.iv.next.1
  %arrayidx15.2 = getelementptr inbounds i32, i32* %z, i64 %19
  %20 = load i32, i32* %arrayidx15.2, align 4
  %add16.2 = add nsw i32 %20, %mul11.2
  store i32 %add16.2, i32* %arrayidx15.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %21 = shl nsw i64 %indvars.iv6, 10
  %22 = add nuw nsw i64 %21, %indvars.iv.next.2
  %arrayidx10.3 = getelementptr inbounds i32, i32* %y, i64 %22
  %23 = load i32, i32* %arrayidx10.3, align 4
  %mul11.3 = mul nsw i32 %2, %23
  %24 = shl nsw i64 %indvars.iv73, 10
  %25 = add nuw nsw i64 %24, %indvars.iv.next.2
  %arrayidx15.3 = getelementptr inbounds i32, i32* %z, i64 %25
  %26 = load i32, i32* %arrayidx15.3, align 4
  %add16.3 = add nsw i32 %26, %mul11.3
  store i32 %add16.3, i32* %arrayidx15.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %27 = shl nsw i64 %indvars.iv6, 10
  %28 = add nuw nsw i64 %27, %indvars.iv.next.3
  %arrayidx10.4 = getelementptr inbounds i32, i32* %y, i64 %28
  %29 = load i32, i32* %arrayidx10.4, align 4
  %mul11.4 = mul nsw i32 %2, %29
  %30 = shl nsw i64 %indvars.iv73, 10
  %31 = add nuw nsw i64 %30, %indvars.iv.next.3
  %arrayidx15.4 = getelementptr inbounds i32, i32* %z, i64 %31
  %32 = load i32, i32* %arrayidx15.4, align 4
  %add16.4 = add nsw i32 %32, %mul11.4
  store i32 %add16.4, i32* %arrayidx15.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %33 = shl nsw i64 %indvars.iv6, 10
  %34 = add nuw nsw i64 %33, %indvars.iv.next.4
  %arrayidx10.5 = getelementptr inbounds i32, i32* %y, i64 %34
  %35 = load i32, i32* %arrayidx10.5, align 4
  %mul11.5 = mul nsw i32 %2, %35
  %36 = shl nsw i64 %indvars.iv73, 10
  %37 = add nuw nsw i64 %36, %indvars.iv.next.4
  %arrayidx15.5 = getelementptr inbounds i32, i32* %z, i64 %37
  %38 = load i32, i32* %arrayidx15.5, align 4
  %add16.5 = add nsw i32 %38, %mul11.5
  store i32 %add16.5, i32* %arrayidx15.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %39 = shl nsw i64 %indvars.iv6, 10
  %40 = add nuw nsw i64 %39, %indvars.iv.next.5
  %arrayidx10.6 = getelementptr inbounds i32, i32* %y, i64 %40
  %41 = load i32, i32* %arrayidx10.6, align 4
  %mul11.6 = mul nsw i32 %2, %41
  %42 = shl nsw i64 %indvars.iv73, 10
  %43 = add nuw nsw i64 %42, %indvars.iv.next.5
  %arrayidx15.6 = getelementptr inbounds i32, i32* %z, i64 %43
  %44 = load i32, i32* %arrayidx15.6, align 4
  %add16.6 = add nsw i32 %44, %mul11.6
  store i32 %add16.6, i32* %arrayidx15.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %45 = shl nsw i64 %indvars.iv6, 10
  %46 = add nuw nsw i64 %45, %indvars.iv.next.6
  %arrayidx10.7 = getelementptr inbounds i32, i32* %y, i64 %46
  %47 = load i32, i32* %arrayidx10.7, align 4
  %mul11.7 = mul nsw i32 %2, %47
  %48 = shl nsw i64 %indvars.iv73, 10
  %49 = add nuw nsw i64 %48, %indvars.iv.next.6
  %arrayidx15.7 = getelementptr inbounds i32, i32* %z, i64 %49
  %50 = load i32, i32* %arrayidx15.7, align 4
  %add16.7 = add nsw i32 %50, %mul11.7
  store i32 %add16.7, i32* %arrayidx15.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %51 = shl nsw i64 %indvars.iv6, 10
  %52 = add nuw nsw i64 %51, %indvars.iv.next.7
  %arrayidx10.8 = getelementptr inbounds i32, i32* %y, i64 %52
  %53 = load i32, i32* %arrayidx10.8, align 4
  %mul11.8 = mul nsw i32 %2, %53
  %54 = shl nsw i64 %indvars.iv73, 10
  %55 = add nuw nsw i64 %54, %indvars.iv.next.7
  %arrayidx15.8 = getelementptr inbounds i32, i32* %z, i64 %55
  %56 = load i32, i32* %arrayidx15.8, align 4
  %add16.8 = add nsw i32 %56, %mul11.8
  store i32 %add16.8, i32* %arrayidx15.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %57 = shl nsw i64 %indvars.iv6, 10
  %58 = add nuw nsw i64 %57, %indvars.iv.next.8
  %arrayidx10.9 = getelementptr inbounds i32, i32* %y, i64 %58
  %59 = load i32, i32* %arrayidx10.9, align 4
  %mul11.9 = mul nsw i32 %2, %59
  %60 = shl nsw i64 %indvars.iv73, 10
  %61 = add nuw nsw i64 %60, %indvars.iv.next.8
  %arrayidx15.9 = getelementptr inbounds i32, i32* %z, i64 %61
  %62 = load i32, i32* %arrayidx15.9, align 4
  %add16.9 = add nsw i32 %62, %mul11.9
  store i32 %add16.9, i32* %arrayidx15.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %63 = shl nsw i64 %indvars.iv6, 10
  %64 = add nuw nsw i64 %63, %indvars.iv.next.9
  %arrayidx10.10 = getelementptr inbounds i32, i32* %y, i64 %64
  %65 = load i32, i32* %arrayidx10.10, align 4
  %mul11.10 = mul nsw i32 %2, %65
  %66 = shl nsw i64 %indvars.iv73, 10
  %67 = add nuw nsw i64 %66, %indvars.iv.next.9
  %arrayidx15.10 = getelementptr inbounds i32, i32* %z, i64 %67
  %68 = load i32, i32* %arrayidx15.10, align 4
  %add16.10 = add nsw i32 %68, %mul11.10
  store i32 %add16.10, i32* %arrayidx15.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %69 = shl nsw i64 %indvars.iv6, 10
  %70 = add nuw nsw i64 %69, %indvars.iv.next.10
  %arrayidx10.11 = getelementptr inbounds i32, i32* %y, i64 %70
  %71 = load i32, i32* %arrayidx10.11, align 4
  %mul11.11 = mul nsw i32 %2, %71
  %72 = shl nsw i64 %indvars.iv73, 10
  %73 = add nuw nsw i64 %72, %indvars.iv.next.10
  %arrayidx15.11 = getelementptr inbounds i32, i32* %z, i64 %73
  %74 = load i32, i32* %arrayidx15.11, align 4
  %add16.11 = add nsw i32 %74, %mul11.11
  store i32 %add16.11, i32* %arrayidx15.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %75 = shl nsw i64 %indvars.iv6, 10
  %76 = add nuw nsw i64 %75, %indvars.iv.next.11
  %arrayidx10.12 = getelementptr inbounds i32, i32* %y, i64 %76
  %77 = load i32, i32* %arrayidx10.12, align 4
  %mul11.12 = mul nsw i32 %2, %77
  %78 = shl nsw i64 %indvars.iv73, 10
  %79 = add nuw nsw i64 %78, %indvars.iv.next.11
  %arrayidx15.12 = getelementptr inbounds i32, i32* %z, i64 %79
  %80 = load i32, i32* %arrayidx15.12, align 4
  %add16.12 = add nsw i32 %80, %mul11.12
  store i32 %add16.12, i32* %arrayidx15.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %81 = shl nsw i64 %indvars.iv6, 10
  %82 = add nuw nsw i64 %81, %indvars.iv.next.12
  %arrayidx10.13 = getelementptr inbounds i32, i32* %y, i64 %82
  %83 = load i32, i32* %arrayidx10.13, align 4
  %mul11.13 = mul nsw i32 %2, %83
  %84 = shl nsw i64 %indvars.iv73, 10
  %85 = add nuw nsw i64 %84, %indvars.iv.next.12
  %arrayidx15.13 = getelementptr inbounds i32, i32* %z, i64 %85
  %86 = load i32, i32* %arrayidx15.13, align 4
  %add16.13 = add nsw i32 %86, %mul11.13
  store i32 %add16.13, i32* %arrayidx15.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %87 = shl nsw i64 %indvars.iv6, 10
  %88 = add nuw nsw i64 %87, %indvars.iv.next.13
  %arrayidx10.14 = getelementptr inbounds i32, i32* %y, i64 %88
  %89 = load i32, i32* %arrayidx10.14, align 4
  %mul11.14 = mul nsw i32 %2, %89
  %90 = shl nsw i64 %indvars.iv73, 10
  %91 = add nuw nsw i64 %90, %indvars.iv.next.13
  %arrayidx15.14 = getelementptr inbounds i32, i32* %z, i64 %91
  %92 = load i32, i32* %arrayidx15.14, align 4
  %add16.14 = add nsw i32 %92, %mul11.14
  store i32 %add16.14, i32* %arrayidx15.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %93 = shl nsw i64 %indvars.iv6, 10
  %94 = add nuw nsw i64 %93, %indvars.iv.next.14
  %arrayidx10.15 = getelementptr inbounds i32, i32* %y, i64 %94
  %95 = load i32, i32* %arrayidx10.15, align 4
  %mul11.15 = mul nsw i32 %2, %95
  %96 = shl nsw i64 %indvars.iv73, 10
  %97 = add nuw nsw i64 %96, %indvars.iv.next.14
  %arrayidx15.15 = getelementptr inbounds i32, i32* %z, i64 %97
  %98 = load i32, i32* %arrayidx15.15, align 4
  %add16.15 = add nsw i32 %98, %mul11.15
  store i32 %add16.15, i32* %arrayidx15.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %99 = shl nsw i64 %indvars.iv6, 10
  %100 = add nuw nsw i64 %99, %indvars.iv.next.15
  %arrayidx10.16 = getelementptr inbounds i32, i32* %y, i64 %100
  %101 = load i32, i32* %arrayidx10.16, align 4
  %mul11.16 = mul nsw i32 %2, %101
  %102 = shl nsw i64 %indvars.iv73, 10
  %103 = add nuw nsw i64 %102, %indvars.iv.next.15
  %arrayidx15.16 = getelementptr inbounds i32, i32* %z, i64 %103
  %104 = load i32, i32* %arrayidx15.16, align 4
  %add16.16 = add nsw i32 %104, %mul11.16
  store i32 %add16.16, i32* %arrayidx15.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %105 = shl nsw i64 %indvars.iv6, 10
  %106 = add nuw nsw i64 %105, %indvars.iv.next.16
  %arrayidx10.17 = getelementptr inbounds i32, i32* %y, i64 %106
  %107 = load i32, i32* %arrayidx10.17, align 4
  %mul11.17 = mul nsw i32 %2, %107
  %108 = shl nsw i64 %indvars.iv73, 10
  %109 = add nuw nsw i64 %108, %indvars.iv.next.16
  %arrayidx15.17 = getelementptr inbounds i32, i32* %z, i64 %109
  %110 = load i32, i32* %arrayidx15.17, align 4
  %add16.17 = add nsw i32 %110, %mul11.17
  store i32 %add16.17, i32* %arrayidx15.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %111 = shl nsw i64 %indvars.iv6, 10
  %112 = add nuw nsw i64 %111, %indvars.iv.next.17
  %arrayidx10.18 = getelementptr inbounds i32, i32* %y, i64 %112
  %113 = load i32, i32* %arrayidx10.18, align 4
  %mul11.18 = mul nsw i32 %2, %113
  %114 = shl nsw i64 %indvars.iv73, 10
  %115 = add nuw nsw i64 %114, %indvars.iv.next.17
  %arrayidx15.18 = getelementptr inbounds i32, i32* %z, i64 %115
  %116 = load i32, i32* %arrayidx15.18, align 4
  %add16.18 = add nsw i32 %116, %mul11.18
  store i32 %add16.18, i32* %arrayidx15.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %117 = shl nsw i64 %indvars.iv6, 10
  %118 = add nuw nsw i64 %117, %indvars.iv.next.18
  %arrayidx10.19 = getelementptr inbounds i32, i32* %y, i64 %118
  %119 = load i32, i32* %arrayidx10.19, align 4
  %mul11.19 = mul nsw i32 %2, %119
  %120 = shl nsw i64 %indvars.iv73, 10
  %121 = add nuw nsw i64 %120, %indvars.iv.next.18
  %arrayidx15.19 = getelementptr inbounds i32, i32* %z, i64 %121
  %122 = load i32, i32* %arrayidx15.19, align 4
  %add16.19 = add nsw i32 %122, %mul11.19
  store i32 %add16.19, i32* %arrayidx15.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %123 = shl nsw i64 %indvars.iv6, 10
  %124 = add nuw nsw i64 %123, %indvars.iv.next.19
  %arrayidx10.20 = getelementptr inbounds i32, i32* %y, i64 %124
  %125 = load i32, i32* %arrayidx10.20, align 4
  %mul11.20 = mul nsw i32 %2, %125
  %126 = shl nsw i64 %indvars.iv73, 10
  %127 = add nuw nsw i64 %126, %indvars.iv.next.19
  %arrayidx15.20 = getelementptr inbounds i32, i32* %z, i64 %127
  %128 = load i32, i32* %arrayidx15.20, align 4
  %add16.20 = add nsw i32 %128, %mul11.20
  store i32 %add16.20, i32* %arrayidx15.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %129 = shl nsw i64 %indvars.iv6, 10
  %130 = add nuw nsw i64 %129, %indvars.iv.next.20
  %arrayidx10.21 = getelementptr inbounds i32, i32* %y, i64 %130
  %131 = load i32, i32* %arrayidx10.21, align 4
  %mul11.21 = mul nsw i32 %2, %131
  %132 = shl nsw i64 %indvars.iv73, 10
  %133 = add nuw nsw i64 %132, %indvars.iv.next.20
  %arrayidx15.21 = getelementptr inbounds i32, i32* %z, i64 %133
  %134 = load i32, i32* %arrayidx15.21, align 4
  %add16.21 = add nsw i32 %134, %mul11.21
  store i32 %add16.21, i32* %arrayidx15.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %135 = shl nsw i64 %indvars.iv6, 10
  %136 = add nuw nsw i64 %135, %indvars.iv.next.21
  %arrayidx10.22 = getelementptr inbounds i32, i32* %y, i64 %136
  %137 = load i32, i32* %arrayidx10.22, align 4
  %mul11.22 = mul nsw i32 %2, %137
  %138 = shl nsw i64 %indvars.iv73, 10
  %139 = add nuw nsw i64 %138, %indvars.iv.next.21
  %arrayidx15.22 = getelementptr inbounds i32, i32* %z, i64 %139
  %140 = load i32, i32* %arrayidx15.22, align 4
  %add16.22 = add nsw i32 %140, %mul11.22
  store i32 %add16.22, i32* %arrayidx15.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %141 = shl nsw i64 %indvars.iv6, 10
  %142 = add nuw nsw i64 %141, %indvars.iv.next.22
  %arrayidx10.23 = getelementptr inbounds i32, i32* %y, i64 %142
  %143 = load i32, i32* %arrayidx10.23, align 4
  %mul11.23 = mul nsw i32 %2, %143
  %144 = shl nsw i64 %indvars.iv73, 10
  %145 = add nuw nsw i64 %144, %indvars.iv.next.22
  %arrayidx15.23 = getelementptr inbounds i32, i32* %z, i64 %145
  %146 = load i32, i32* %arrayidx15.23, align 4
  %add16.23 = add nsw i32 %146, %mul11.23
  store i32 %add16.23, i32* %arrayidx15.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %147 = shl nsw i64 %indvars.iv6, 10
  %148 = add nuw nsw i64 %147, %indvars.iv.next.23
  %arrayidx10.24 = getelementptr inbounds i32, i32* %y, i64 %148
  %149 = load i32, i32* %arrayidx10.24, align 4
  %mul11.24 = mul nsw i32 %2, %149
  %150 = shl nsw i64 %indvars.iv73, 10
  %151 = add nuw nsw i64 %150, %indvars.iv.next.23
  %arrayidx15.24 = getelementptr inbounds i32, i32* %z, i64 %151
  %152 = load i32, i32* %arrayidx15.24, align 4
  %add16.24 = add nsw i32 %152, %mul11.24
  store i32 %add16.24, i32* %arrayidx15.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %153 = shl nsw i64 %indvars.iv6, 10
  %154 = add nuw nsw i64 %153, %indvars.iv.next.24
  %arrayidx10.25 = getelementptr inbounds i32, i32* %y, i64 %154
  %155 = load i32, i32* %arrayidx10.25, align 4
  %mul11.25 = mul nsw i32 %2, %155
  %156 = shl nsw i64 %indvars.iv73, 10
  %157 = add nuw nsw i64 %156, %indvars.iv.next.24
  %arrayidx15.25 = getelementptr inbounds i32, i32* %z, i64 %157
  %158 = load i32, i32* %arrayidx15.25, align 4
  %add16.25 = add nsw i32 %158, %mul11.25
  store i32 %add16.25, i32* %arrayidx15.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %159 = shl nsw i64 %indvars.iv6, 10
  %160 = add nuw nsw i64 %159, %indvars.iv.next.25
  %arrayidx10.26 = getelementptr inbounds i32, i32* %y, i64 %160
  %161 = load i32, i32* %arrayidx10.26, align 4
  %mul11.26 = mul nsw i32 %2, %161
  %162 = shl nsw i64 %indvars.iv73, 10
  %163 = add nuw nsw i64 %162, %indvars.iv.next.25
  %arrayidx15.26 = getelementptr inbounds i32, i32* %z, i64 %163
  %164 = load i32, i32* %arrayidx15.26, align 4
  %add16.26 = add nsw i32 %164, %mul11.26
  store i32 %add16.26, i32* %arrayidx15.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %165 = shl nsw i64 %indvars.iv6, 10
  %166 = add nuw nsw i64 %165, %indvars.iv.next.26
  %arrayidx10.27 = getelementptr inbounds i32, i32* %y, i64 %166
  %167 = load i32, i32* %arrayidx10.27, align 4
  %mul11.27 = mul nsw i32 %2, %167
  %168 = shl nsw i64 %indvars.iv73, 10
  %169 = add nuw nsw i64 %168, %indvars.iv.next.26
  %arrayidx15.27 = getelementptr inbounds i32, i32* %z, i64 %169
  %170 = load i32, i32* %arrayidx15.27, align 4
  %add16.27 = add nsw i32 %170, %mul11.27
  store i32 %add16.27, i32* %arrayidx15.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %171 = shl nsw i64 %indvars.iv6, 10
  %172 = add nuw nsw i64 %171, %indvars.iv.next.27
  %arrayidx10.28 = getelementptr inbounds i32, i32* %y, i64 %172
  %173 = load i32, i32* %arrayidx10.28, align 4
  %mul11.28 = mul nsw i32 %2, %173
  %174 = shl nsw i64 %indvars.iv73, 10
  %175 = add nuw nsw i64 %174, %indvars.iv.next.27
  %arrayidx15.28 = getelementptr inbounds i32, i32* %z, i64 %175
  %176 = load i32, i32* %arrayidx15.28, align 4
  %add16.28 = add nsw i32 %176, %mul11.28
  store i32 %add16.28, i32* %arrayidx15.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %177 = shl nsw i64 %indvars.iv6, 10
  %178 = add nuw nsw i64 %177, %indvars.iv.next.28
  %arrayidx10.29 = getelementptr inbounds i32, i32* %y, i64 %178
  %179 = load i32, i32* %arrayidx10.29, align 4
  %mul11.29 = mul nsw i32 %2, %179
  %180 = shl nsw i64 %indvars.iv73, 10
  %181 = add nuw nsw i64 %180, %indvars.iv.next.28
  %arrayidx15.29 = getelementptr inbounds i32, i32* %z, i64 %181
  %182 = load i32, i32* %arrayidx15.29, align 4
  %add16.29 = add nsw i32 %182, %mul11.29
  store i32 %add16.29, i32* %arrayidx15.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %183 = shl nsw i64 %indvars.iv6, 10
  %184 = add nuw nsw i64 %183, %indvars.iv.next.29
  %arrayidx10.30 = getelementptr inbounds i32, i32* %y, i64 %184
  %185 = load i32, i32* %arrayidx10.30, align 4
  %mul11.30 = mul nsw i32 %2, %185
  %186 = shl nsw i64 %indvars.iv73, 10
  %187 = add nuw nsw i64 %186, %indvars.iv.next.29
  %arrayidx15.30 = getelementptr inbounds i32, i32* %z, i64 %187
  %188 = load i32, i32* %arrayidx15.30, align 4
  %add16.30 = add nsw i32 %188, %mul11.30
  store i32 %add16.30, i32* %arrayidx15.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %189 = shl nsw i64 %indvars.iv6, 10
  %190 = add nuw nsw i64 %189, %indvars.iv.next.30
  %arrayidx10.31 = getelementptr inbounds i32, i32* %y, i64 %190
  %191 = load i32, i32* %arrayidx10.31, align 4
  %mul11.31 = mul nsw i32 %2, %191
  %192 = shl nsw i64 %indvars.iv73, 10
  %193 = add nuw nsw i64 %192, %indvars.iv.next.30
  %arrayidx15.31 = getelementptr inbounds i32, i32* %z, i64 %193
  %194 = load i32, i32* %arrayidx15.31, align 4
  %add16.31 = add nsw i32 %194, %mul11.31
  store i32 %add16.31, i32* %arrayidx15.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %195 = shl nsw i64 %indvars.iv6, 10
  %196 = add nuw nsw i64 %195, %indvars.iv.next.31
  %arrayidx10.32 = getelementptr inbounds i32, i32* %y, i64 %196
  %197 = load i32, i32* %arrayidx10.32, align 4
  %mul11.32 = mul nsw i32 %2, %197
  %198 = shl nsw i64 %indvars.iv73, 10
  %199 = add nuw nsw i64 %198, %indvars.iv.next.31
  %arrayidx15.32 = getelementptr inbounds i32, i32* %z, i64 %199
  %200 = load i32, i32* %arrayidx15.32, align 4
  %add16.32 = add nsw i32 %200, %mul11.32
  store i32 %add16.32, i32* %arrayidx15.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %201 = shl nsw i64 %indvars.iv6, 10
  %202 = add nuw nsw i64 %201, %indvars.iv.next.32
  %arrayidx10.33 = getelementptr inbounds i32, i32* %y, i64 %202
  %203 = load i32, i32* %arrayidx10.33, align 4
  %mul11.33 = mul nsw i32 %2, %203
  %204 = shl nsw i64 %indvars.iv73, 10
  %205 = add nuw nsw i64 %204, %indvars.iv.next.32
  %arrayidx15.33 = getelementptr inbounds i32, i32* %z, i64 %205
  %206 = load i32, i32* %arrayidx15.33, align 4
  %add16.33 = add nsw i32 %206, %mul11.33
  store i32 %add16.33, i32* %arrayidx15.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %207 = shl nsw i64 %indvars.iv6, 10
  %208 = add nuw nsw i64 %207, %indvars.iv.next.33
  %arrayidx10.34 = getelementptr inbounds i32, i32* %y, i64 %208
  %209 = load i32, i32* %arrayidx10.34, align 4
  %mul11.34 = mul nsw i32 %2, %209
  %210 = shl nsw i64 %indvars.iv73, 10
  %211 = add nuw nsw i64 %210, %indvars.iv.next.33
  %arrayidx15.34 = getelementptr inbounds i32, i32* %z, i64 %211
  %212 = load i32, i32* %arrayidx15.34, align 4
  %add16.34 = add nsw i32 %212, %mul11.34
  store i32 %add16.34, i32* %arrayidx15.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %213 = shl nsw i64 %indvars.iv6, 10
  %214 = add nuw nsw i64 %213, %indvars.iv.next.34
  %arrayidx10.35 = getelementptr inbounds i32, i32* %y, i64 %214
  %215 = load i32, i32* %arrayidx10.35, align 4
  %mul11.35 = mul nsw i32 %2, %215
  %216 = shl nsw i64 %indvars.iv73, 10
  %217 = add nuw nsw i64 %216, %indvars.iv.next.34
  %arrayidx15.35 = getelementptr inbounds i32, i32* %z, i64 %217
  %218 = load i32, i32* %arrayidx15.35, align 4
  %add16.35 = add nsw i32 %218, %mul11.35
  store i32 %add16.35, i32* %arrayidx15.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %219 = shl nsw i64 %indvars.iv6, 10
  %220 = add nuw nsw i64 %219, %indvars.iv.next.35
  %arrayidx10.36 = getelementptr inbounds i32, i32* %y, i64 %220
  %221 = load i32, i32* %arrayidx10.36, align 4
  %mul11.36 = mul nsw i32 %2, %221
  %222 = shl nsw i64 %indvars.iv73, 10
  %223 = add nuw nsw i64 %222, %indvars.iv.next.35
  %arrayidx15.36 = getelementptr inbounds i32, i32* %z, i64 %223
  %224 = load i32, i32* %arrayidx15.36, align 4
  %add16.36 = add nsw i32 %224, %mul11.36
  store i32 %add16.36, i32* %arrayidx15.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %225 = shl nsw i64 %indvars.iv6, 10
  %226 = add nuw nsw i64 %225, %indvars.iv.next.36
  %arrayidx10.37 = getelementptr inbounds i32, i32* %y, i64 %226
  %227 = load i32, i32* %arrayidx10.37, align 4
  %mul11.37 = mul nsw i32 %2, %227
  %228 = shl nsw i64 %indvars.iv73, 10
  %229 = add nuw nsw i64 %228, %indvars.iv.next.36
  %arrayidx15.37 = getelementptr inbounds i32, i32* %z, i64 %229
  %230 = load i32, i32* %arrayidx15.37, align 4
  %add16.37 = add nsw i32 %230, %mul11.37
  store i32 %add16.37, i32* %arrayidx15.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %231 = shl nsw i64 %indvars.iv6, 10
  %232 = add nuw nsw i64 %231, %indvars.iv.next.37
  %arrayidx10.38 = getelementptr inbounds i32, i32* %y, i64 %232
  %233 = load i32, i32* %arrayidx10.38, align 4
  %mul11.38 = mul nsw i32 %2, %233
  %234 = shl nsw i64 %indvars.iv73, 10
  %235 = add nuw nsw i64 %234, %indvars.iv.next.37
  %arrayidx15.38 = getelementptr inbounds i32, i32* %z, i64 %235
  %236 = load i32, i32* %arrayidx15.38, align 4
  %add16.38 = add nsw i32 %236, %mul11.38
  store i32 %add16.38, i32* %arrayidx15.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %237 = shl nsw i64 %indvars.iv6, 10
  %238 = add nuw nsw i64 %237, %indvars.iv.next.38
  %arrayidx10.39 = getelementptr inbounds i32, i32* %y, i64 %238
  %239 = load i32, i32* %arrayidx10.39, align 4
  %mul11.39 = mul nsw i32 %2, %239
  %240 = shl nsw i64 %indvars.iv73, 10
  %241 = add nuw nsw i64 %240, %indvars.iv.next.38
  %arrayidx15.39 = getelementptr inbounds i32, i32* %z, i64 %241
  %242 = load i32, i32* %arrayidx15.39, align 4
  %add16.39 = add nsw i32 %242, %mul11.39
  store i32 %add16.39, i32* %arrayidx15.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %243 = shl nsw i64 %indvars.iv6, 10
  %244 = add nuw nsw i64 %243, %indvars.iv.next.39
  %arrayidx10.40 = getelementptr inbounds i32, i32* %y, i64 %244
  %245 = load i32, i32* %arrayidx10.40, align 4
  %mul11.40 = mul nsw i32 %2, %245
  %246 = shl nsw i64 %indvars.iv73, 10
  %247 = add nuw nsw i64 %246, %indvars.iv.next.39
  %arrayidx15.40 = getelementptr inbounds i32, i32* %z, i64 %247
  %248 = load i32, i32* %arrayidx15.40, align 4
  %add16.40 = add nsw i32 %248, %mul11.40
  store i32 %add16.40, i32* %arrayidx15.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %249 = shl nsw i64 %indvars.iv6, 10
  %250 = add nuw nsw i64 %249, %indvars.iv.next.40
  %arrayidx10.41 = getelementptr inbounds i32, i32* %y, i64 %250
  %251 = load i32, i32* %arrayidx10.41, align 4
  %mul11.41 = mul nsw i32 %2, %251
  %252 = shl nsw i64 %indvars.iv73, 10
  %253 = add nuw nsw i64 %252, %indvars.iv.next.40
  %arrayidx15.41 = getelementptr inbounds i32, i32* %z, i64 %253
  %254 = load i32, i32* %arrayidx15.41, align 4
  %add16.41 = add nsw i32 %254, %mul11.41
  store i32 %add16.41, i32* %arrayidx15.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %255 = shl nsw i64 %indvars.iv6, 10
  %256 = add nuw nsw i64 %255, %indvars.iv.next.41
  %arrayidx10.42 = getelementptr inbounds i32, i32* %y, i64 %256
  %257 = load i32, i32* %arrayidx10.42, align 4
  %mul11.42 = mul nsw i32 %2, %257
  %258 = shl nsw i64 %indvars.iv73, 10
  %259 = add nuw nsw i64 %258, %indvars.iv.next.41
  %arrayidx15.42 = getelementptr inbounds i32, i32* %z, i64 %259
  %260 = load i32, i32* %arrayidx15.42, align 4
  %add16.42 = add nsw i32 %260, %mul11.42
  store i32 %add16.42, i32* %arrayidx15.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %261 = shl nsw i64 %indvars.iv6, 10
  %262 = add nuw nsw i64 %261, %indvars.iv.next.42
  %arrayidx10.43 = getelementptr inbounds i32, i32* %y, i64 %262
  %263 = load i32, i32* %arrayidx10.43, align 4
  %mul11.43 = mul nsw i32 %2, %263
  %264 = shl nsw i64 %indvars.iv73, 10
  %265 = add nuw nsw i64 %264, %indvars.iv.next.42
  %arrayidx15.43 = getelementptr inbounds i32, i32* %z, i64 %265
  %266 = load i32, i32* %arrayidx15.43, align 4
  %add16.43 = add nsw i32 %266, %mul11.43
  store i32 %add16.43, i32* %arrayidx15.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %267 = shl nsw i64 %indvars.iv6, 10
  %268 = add nuw nsw i64 %267, %indvars.iv.next.43
  %arrayidx10.44 = getelementptr inbounds i32, i32* %y, i64 %268
  %269 = load i32, i32* %arrayidx10.44, align 4
  %mul11.44 = mul nsw i32 %2, %269
  %270 = shl nsw i64 %indvars.iv73, 10
  %271 = add nuw nsw i64 %270, %indvars.iv.next.43
  %arrayidx15.44 = getelementptr inbounds i32, i32* %z, i64 %271
  %272 = load i32, i32* %arrayidx15.44, align 4
  %add16.44 = add nsw i32 %272, %mul11.44
  store i32 %add16.44, i32* %arrayidx15.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %273 = shl nsw i64 %indvars.iv6, 10
  %274 = add nuw nsw i64 %273, %indvars.iv.next.44
  %arrayidx10.45 = getelementptr inbounds i32, i32* %y, i64 %274
  %275 = load i32, i32* %arrayidx10.45, align 4
  %mul11.45 = mul nsw i32 %2, %275
  %276 = shl nsw i64 %indvars.iv73, 10
  %277 = add nuw nsw i64 %276, %indvars.iv.next.44
  %arrayidx15.45 = getelementptr inbounds i32, i32* %z, i64 %277
  %278 = load i32, i32* %arrayidx15.45, align 4
  %add16.45 = add nsw i32 %278, %mul11.45
  store i32 %add16.45, i32* %arrayidx15.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %279 = shl nsw i64 %indvars.iv6, 10
  %280 = add nuw nsw i64 %279, %indvars.iv.next.45
  %arrayidx10.46 = getelementptr inbounds i32, i32* %y, i64 %280
  %281 = load i32, i32* %arrayidx10.46, align 4
  %mul11.46 = mul nsw i32 %2, %281
  %282 = shl nsw i64 %indvars.iv73, 10
  %283 = add nuw nsw i64 %282, %indvars.iv.next.45
  %arrayidx15.46 = getelementptr inbounds i32, i32* %z, i64 %283
  %284 = load i32, i32* %arrayidx15.46, align 4
  %add16.46 = add nsw i32 %284, %mul11.46
  store i32 %add16.46, i32* %arrayidx15.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %285 = shl nsw i64 %indvars.iv6, 10
  %286 = add nuw nsw i64 %285, %indvars.iv.next.46
  %arrayidx10.47 = getelementptr inbounds i32, i32* %y, i64 %286
  %287 = load i32, i32* %arrayidx10.47, align 4
  %mul11.47 = mul nsw i32 %2, %287
  %288 = shl nsw i64 %indvars.iv73, 10
  %289 = add nuw nsw i64 %288, %indvars.iv.next.46
  %arrayidx15.47 = getelementptr inbounds i32, i32* %z, i64 %289
  %290 = load i32, i32* %arrayidx15.47, align 4
  %add16.47 = add nsw i32 %290, %mul11.47
  store i32 %add16.47, i32* %arrayidx15.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %291 = shl nsw i64 %indvars.iv6, 10
  %292 = add nuw nsw i64 %291, %indvars.iv.next.47
  %arrayidx10.48 = getelementptr inbounds i32, i32* %y, i64 %292
  %293 = load i32, i32* %arrayidx10.48, align 4
  %mul11.48 = mul nsw i32 %2, %293
  %294 = shl nsw i64 %indvars.iv73, 10
  %295 = add nuw nsw i64 %294, %indvars.iv.next.47
  %arrayidx15.48 = getelementptr inbounds i32, i32* %z, i64 %295
  %296 = load i32, i32* %arrayidx15.48, align 4
  %add16.48 = add nsw i32 %296, %mul11.48
  store i32 %add16.48, i32* %arrayidx15.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %297 = shl nsw i64 %indvars.iv6, 10
  %298 = add nuw nsw i64 %297, %indvars.iv.next.48
  %arrayidx10.49 = getelementptr inbounds i32, i32* %y, i64 %298
  %299 = load i32, i32* %arrayidx10.49, align 4
  %mul11.49 = mul nsw i32 %2, %299
  %300 = shl nsw i64 %indvars.iv73, 10
  %301 = add nuw nsw i64 %300, %indvars.iv.next.48
  %arrayidx15.49 = getelementptr inbounds i32, i32* %z, i64 %301
  %302 = load i32, i32* %arrayidx15.49, align 4
  %add16.49 = add nsw i32 %302, %mul11.49
  store i32 %add16.49, i32* %arrayidx15.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %303 = shl nsw i64 %indvars.iv6, 10
  %304 = add nuw nsw i64 %303, %indvars.iv.next.49
  %arrayidx10.50 = getelementptr inbounds i32, i32* %y, i64 %304
  %305 = load i32, i32* %arrayidx10.50, align 4
  %mul11.50 = mul nsw i32 %2, %305
  %306 = shl nsw i64 %indvars.iv73, 10
  %307 = add nuw nsw i64 %306, %indvars.iv.next.49
  %arrayidx15.50 = getelementptr inbounds i32, i32* %z, i64 %307
  %308 = load i32, i32* %arrayidx15.50, align 4
  %add16.50 = add nsw i32 %308, %mul11.50
  store i32 %add16.50, i32* %arrayidx15.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %309 = shl nsw i64 %indvars.iv6, 10
  %310 = add nuw nsw i64 %309, %indvars.iv.next.50
  %arrayidx10.51 = getelementptr inbounds i32, i32* %y, i64 %310
  %311 = load i32, i32* %arrayidx10.51, align 4
  %mul11.51 = mul nsw i32 %2, %311
  %312 = shl nsw i64 %indvars.iv73, 10
  %313 = add nuw nsw i64 %312, %indvars.iv.next.50
  %arrayidx15.51 = getelementptr inbounds i32, i32* %z, i64 %313
  %314 = load i32, i32* %arrayidx15.51, align 4
  %add16.51 = add nsw i32 %314, %mul11.51
  store i32 %add16.51, i32* %arrayidx15.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %315 = shl nsw i64 %indvars.iv6, 10
  %316 = add nuw nsw i64 %315, %indvars.iv.next.51
  %arrayidx10.52 = getelementptr inbounds i32, i32* %y, i64 %316
  %317 = load i32, i32* %arrayidx10.52, align 4
  %mul11.52 = mul nsw i32 %2, %317
  %318 = shl nsw i64 %indvars.iv73, 10
  %319 = add nuw nsw i64 %318, %indvars.iv.next.51
  %arrayidx15.52 = getelementptr inbounds i32, i32* %z, i64 %319
  %320 = load i32, i32* %arrayidx15.52, align 4
  %add16.52 = add nsw i32 %320, %mul11.52
  store i32 %add16.52, i32* %arrayidx15.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %321 = shl nsw i64 %indvars.iv6, 10
  %322 = add nuw nsw i64 %321, %indvars.iv.next.52
  %arrayidx10.53 = getelementptr inbounds i32, i32* %y, i64 %322
  %323 = load i32, i32* %arrayidx10.53, align 4
  %mul11.53 = mul nsw i32 %2, %323
  %324 = shl nsw i64 %indvars.iv73, 10
  %325 = add nuw nsw i64 %324, %indvars.iv.next.52
  %arrayidx15.53 = getelementptr inbounds i32, i32* %z, i64 %325
  %326 = load i32, i32* %arrayidx15.53, align 4
  %add16.53 = add nsw i32 %326, %mul11.53
  store i32 %add16.53, i32* %arrayidx15.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %327 = shl nsw i64 %indvars.iv6, 10
  %328 = add nuw nsw i64 %327, %indvars.iv.next.53
  %arrayidx10.54 = getelementptr inbounds i32, i32* %y, i64 %328
  %329 = load i32, i32* %arrayidx10.54, align 4
  %mul11.54 = mul nsw i32 %2, %329
  %330 = shl nsw i64 %indvars.iv73, 10
  %331 = add nuw nsw i64 %330, %indvars.iv.next.53
  %arrayidx15.54 = getelementptr inbounds i32, i32* %z, i64 %331
  %332 = load i32, i32* %arrayidx15.54, align 4
  %add16.54 = add nsw i32 %332, %mul11.54
  store i32 %add16.54, i32* %arrayidx15.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %333 = shl nsw i64 %indvars.iv6, 10
  %334 = add nuw nsw i64 %333, %indvars.iv.next.54
  %arrayidx10.55 = getelementptr inbounds i32, i32* %y, i64 %334
  %335 = load i32, i32* %arrayidx10.55, align 4
  %mul11.55 = mul nsw i32 %2, %335
  %336 = shl nsw i64 %indvars.iv73, 10
  %337 = add nuw nsw i64 %336, %indvars.iv.next.54
  %arrayidx15.55 = getelementptr inbounds i32, i32* %z, i64 %337
  %338 = load i32, i32* %arrayidx15.55, align 4
  %add16.55 = add nsw i32 %338, %mul11.55
  store i32 %add16.55, i32* %arrayidx15.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %339 = shl nsw i64 %indvars.iv6, 10
  %340 = add nuw nsw i64 %339, %indvars.iv.next.55
  %arrayidx10.56 = getelementptr inbounds i32, i32* %y, i64 %340
  %341 = load i32, i32* %arrayidx10.56, align 4
  %mul11.56 = mul nsw i32 %2, %341
  %342 = shl nsw i64 %indvars.iv73, 10
  %343 = add nuw nsw i64 %342, %indvars.iv.next.55
  %arrayidx15.56 = getelementptr inbounds i32, i32* %z, i64 %343
  %344 = load i32, i32* %arrayidx15.56, align 4
  %add16.56 = add nsw i32 %344, %mul11.56
  store i32 %add16.56, i32* %arrayidx15.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %345 = shl nsw i64 %indvars.iv6, 10
  %346 = add nuw nsw i64 %345, %indvars.iv.next.56
  %arrayidx10.57 = getelementptr inbounds i32, i32* %y, i64 %346
  %347 = load i32, i32* %arrayidx10.57, align 4
  %mul11.57 = mul nsw i32 %2, %347
  %348 = shl nsw i64 %indvars.iv73, 10
  %349 = add nuw nsw i64 %348, %indvars.iv.next.56
  %arrayidx15.57 = getelementptr inbounds i32, i32* %z, i64 %349
  %350 = load i32, i32* %arrayidx15.57, align 4
  %add16.57 = add nsw i32 %350, %mul11.57
  store i32 %add16.57, i32* %arrayidx15.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %351 = shl nsw i64 %indvars.iv6, 10
  %352 = add nuw nsw i64 %351, %indvars.iv.next.57
  %arrayidx10.58 = getelementptr inbounds i32, i32* %y, i64 %352
  %353 = load i32, i32* %arrayidx10.58, align 4
  %mul11.58 = mul nsw i32 %2, %353
  %354 = shl nsw i64 %indvars.iv73, 10
  %355 = add nuw nsw i64 %354, %indvars.iv.next.57
  %arrayidx15.58 = getelementptr inbounds i32, i32* %z, i64 %355
  %356 = load i32, i32* %arrayidx15.58, align 4
  %add16.58 = add nsw i32 %356, %mul11.58
  store i32 %add16.58, i32* %arrayidx15.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %357 = shl nsw i64 %indvars.iv6, 10
  %358 = add nuw nsw i64 %357, %indvars.iv.next.58
  %arrayidx10.59 = getelementptr inbounds i32, i32* %y, i64 %358
  %359 = load i32, i32* %arrayidx10.59, align 4
  %mul11.59 = mul nsw i32 %2, %359
  %360 = shl nsw i64 %indvars.iv73, 10
  %361 = add nuw nsw i64 %360, %indvars.iv.next.58
  %arrayidx15.59 = getelementptr inbounds i32, i32* %z, i64 %361
  %362 = load i32, i32* %arrayidx15.59, align 4
  %add16.59 = add nsw i32 %362, %mul11.59
  store i32 %add16.59, i32* %arrayidx15.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %363 = shl nsw i64 %indvars.iv6, 10
  %364 = add nuw nsw i64 %363, %indvars.iv.next.59
  %arrayidx10.60 = getelementptr inbounds i32, i32* %y, i64 %364
  %365 = load i32, i32* %arrayidx10.60, align 4
  %mul11.60 = mul nsw i32 %2, %365
  %366 = shl nsw i64 %indvars.iv73, 10
  %367 = add nuw nsw i64 %366, %indvars.iv.next.59
  %arrayidx15.60 = getelementptr inbounds i32, i32* %z, i64 %367
  %368 = load i32, i32* %arrayidx15.60, align 4
  %add16.60 = add nsw i32 %368, %mul11.60
  store i32 %add16.60, i32* %arrayidx15.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %369 = shl nsw i64 %indvars.iv6, 10
  %370 = add nuw nsw i64 %369, %indvars.iv.next.60
  %arrayidx10.61 = getelementptr inbounds i32, i32* %y, i64 %370
  %371 = load i32, i32* %arrayidx10.61, align 4
  %mul11.61 = mul nsw i32 %2, %371
  %372 = shl nsw i64 %indvars.iv73, 10
  %373 = add nuw nsw i64 %372, %indvars.iv.next.60
  %arrayidx15.61 = getelementptr inbounds i32, i32* %z, i64 %373
  %374 = load i32, i32* %arrayidx15.61, align 4
  %add16.61 = add nsw i32 %374, %mul11.61
  store i32 %add16.61, i32* %arrayidx15.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %375 = shl nsw i64 %indvars.iv6, 10
  %376 = add nuw nsw i64 %375, %indvars.iv.next.61
  %arrayidx10.62 = getelementptr inbounds i32, i32* %y, i64 %376
  %377 = load i32, i32* %arrayidx10.62, align 4
  %mul11.62 = mul nsw i32 %2, %377
  %378 = shl nsw i64 %indvars.iv73, 10
  %379 = add nuw nsw i64 %378, %indvars.iv.next.61
  %arrayidx15.62 = getelementptr inbounds i32, i32* %z, i64 %379
  %380 = load i32, i32* %arrayidx15.62, align 4
  %add16.62 = add nsw i32 %380, %mul11.62
  store i32 %add16.62, i32* %arrayidx15.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %381 = shl nsw i64 %indvars.iv6, 10
  %382 = add nuw nsw i64 %381, %indvars.iv.next.62
  %arrayidx10.63 = getelementptr inbounds i32, i32* %y, i64 %382
  %383 = load i32, i32* %arrayidx10.63, align 4
  %mul11.63 = mul nsw i32 %2, %383
  %384 = shl nsw i64 %indvars.iv73, 10
  %385 = add nuw nsw i64 %384, %indvars.iv.next.62
  %arrayidx15.63 = getelementptr inbounds i32, i32* %z, i64 %385
  %386 = load i32, i32* %arrayidx15.63, align 4
  %add16.63 = add nsw i32 %386, %mul11.63
  store i32 %add16.63, i32* %arrayidx15.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 256
  br i1 %exitcond.63, label %for.body6, label %for.inc17, !llvm.loop !2

for.inc17:                                        ; preds = %for.body6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next7, 256
  br i1 %exitcond, label %for.body3, label %for.inc20, !llvm.loop !4

for.inc20:                                        ; preds = %for.inc17
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %exitcond140 = icmp ne i64 %indvars.iv.next74, 1024
  br i1 %exitcond140, label %for.body, label %for.end22, !llvm.loop !6

for.end22:                                        ; preds = %for.inc20
  ret void
}

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
  %call = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0) #4
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
define dso_local i32 @main() #0 {
entry:
  %call = call noalias dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #4
  %0 = bitcast i8* %call to i32*
  %call1 = call noalias dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #4
  %1 = bitcast i8* %call1 to i32*
  %call2 = call noalias dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #4
  %2 = bitcast i8* %call2 to i32*
  call void @srand(i32 8650341) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %call3 = call i32 @rand() #4
  %conv = sitofp i32 %call3 to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  %mul = fmul double %div, 1.280000e+02
  %add = fadd double %mul, 0.000000e+00
  %conv6 = fptosi double %add to i32
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %conv6, i32* %arrayidx, align 4
  %call7 = call i32 @rand() #4
  %conv8 = sitofp i32 %call7 to double
  %div9 = fdiv double %conv8, 0x41DFFFFFFFC00000
  %mul12 = fmul double %div9, 1.280000e+02
  %add14 = fadd double %mul12, 0.000000e+00
  %conv15 = fptosi double %add14 to i32
  %arrayidx17 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  store i32 %conv15, i32* %arrayidx17, align 4
  %arrayidx19 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv
  store i32 0, i32* %arrayidx19, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 1048576
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  call void @bb_gemm(i32* %0, i32* %1, i32* %2)
  call void @print(i32* %2, i32 1048576)
  %putchar = call i32 @putchar(i32 10)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.count", i32 1}
!6 = distinct !{!6, !5}
