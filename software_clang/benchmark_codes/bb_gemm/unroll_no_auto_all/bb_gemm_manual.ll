; ModuleID = 'unroll_no_auto_all/bb_gemm_manual.ll'
source_filename = "bb_gemm_manual.c"
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
  %0 = add i32 %size, -1
  %xtraiter = and i32 %size, 63
  %1 = icmp ult i32 %0, 63
  br i1 %1, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub i32 %size, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.63, %for.body ]
  %niter = phi i32 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.63, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %niter.nsub = sub i32 %niter, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next
  %3 = load i32, i32* %arrayidx.1, align 4
  %call.1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3) #4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %niter.nsub.1 = sub i32 %niter.nsub, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.1
  %4 = load i32, i32* %arrayidx.2, align 4
  %call.2 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4) #4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %niter.nsub.2 = sub i32 %niter.nsub.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.2
  %5 = load i32, i32* %arrayidx.3, align 4
  %call.3 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5) #4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %niter.nsub.3 = sub i32 %niter.nsub.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.3
  %6 = load i32, i32* %arrayidx.4, align 4
  %call.4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6) #4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %niter.nsub.4 = sub i32 %niter.nsub.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.4
  %7 = load i32, i32* %arrayidx.5, align 4
  %call.5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7) #4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %niter.nsub.5 = sub i32 %niter.nsub.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.5
  %8 = load i32, i32* %arrayidx.6, align 4
  %call.6 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8) #4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %niter.nsub.6 = sub i32 %niter.nsub.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.6
  %9 = load i32, i32* %arrayidx.7, align 4
  %call.7 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9) #4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %niter.nsub.7 = sub i32 %niter.nsub.6, 1
  %arrayidx.8 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.7
  %10 = load i32, i32* %arrayidx.8, align 4
  %call.8 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10) #4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %niter.nsub.8 = sub i32 %niter.nsub.7, 1
  %arrayidx.9 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.8
  %11 = load i32, i32* %arrayidx.9, align 4
  %call.9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11) #4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %niter.nsub.9 = sub i32 %niter.nsub.8, 1
  %arrayidx.10 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.9
  %12 = load i32, i32* %arrayidx.10, align 4
  %call.10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12) #4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %niter.nsub.10 = sub i32 %niter.nsub.9, 1
  %arrayidx.11 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.10
  %13 = load i32, i32* %arrayidx.11, align 4
  %call.11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13) #4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %niter.nsub.11 = sub i32 %niter.nsub.10, 1
  %arrayidx.12 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.11
  %14 = load i32, i32* %arrayidx.12, align 4
  %call.12 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14) #4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %niter.nsub.12 = sub i32 %niter.nsub.11, 1
  %arrayidx.13 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.12
  %15 = load i32, i32* %arrayidx.13, align 4
  %call.13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15) #4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %niter.nsub.13 = sub i32 %niter.nsub.12, 1
  %arrayidx.14 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.13
  %16 = load i32, i32* %arrayidx.14, align 4
  %call.14 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16) #4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %niter.nsub.14 = sub i32 %niter.nsub.13, 1
  %arrayidx.15 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.14
  %17 = load i32, i32* %arrayidx.15, align 4
  %call.15 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17) #4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %niter.nsub.15 = sub i32 %niter.nsub.14, 1
  %arrayidx.16 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.15
  %18 = load i32, i32* %arrayidx.16, align 4
  %call.16 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18) #4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %niter.nsub.16 = sub i32 %niter.nsub.15, 1
  %arrayidx.17 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.16
  %19 = load i32, i32* %arrayidx.17, align 4
  %call.17 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19) #4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %niter.nsub.17 = sub i32 %niter.nsub.16, 1
  %arrayidx.18 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.17
  %20 = load i32, i32* %arrayidx.18, align 4
  %call.18 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20) #4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %niter.nsub.18 = sub i32 %niter.nsub.17, 1
  %arrayidx.19 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.18
  %21 = load i32, i32* %arrayidx.19, align 4
  %call.19 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21) #4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %niter.nsub.19 = sub i32 %niter.nsub.18, 1
  %arrayidx.20 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.19
  %22 = load i32, i32* %arrayidx.20, align 4
  %call.20 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22) #4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %niter.nsub.20 = sub i32 %niter.nsub.19, 1
  %arrayidx.21 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.20
  %23 = load i32, i32* %arrayidx.21, align 4
  %call.21 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23) #4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %niter.nsub.21 = sub i32 %niter.nsub.20, 1
  %arrayidx.22 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.21
  %24 = load i32, i32* %arrayidx.22, align 4
  %call.22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24) #4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %niter.nsub.22 = sub i32 %niter.nsub.21, 1
  %arrayidx.23 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.22
  %25 = load i32, i32* %arrayidx.23, align 4
  %call.23 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25) #4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %niter.nsub.23 = sub i32 %niter.nsub.22, 1
  %arrayidx.24 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.23
  %26 = load i32, i32* %arrayidx.24, align 4
  %call.24 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26) #4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %niter.nsub.24 = sub i32 %niter.nsub.23, 1
  %arrayidx.25 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.24
  %27 = load i32, i32* %arrayidx.25, align 4
  %call.25 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27) #4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %niter.nsub.25 = sub i32 %niter.nsub.24, 1
  %arrayidx.26 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.25
  %28 = load i32, i32* %arrayidx.26, align 4
  %call.26 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28) #4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %niter.nsub.26 = sub i32 %niter.nsub.25, 1
  %arrayidx.27 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.26
  %29 = load i32, i32* %arrayidx.27, align 4
  %call.27 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29) #4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %niter.nsub.27 = sub i32 %niter.nsub.26, 1
  %arrayidx.28 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.27
  %30 = load i32, i32* %arrayidx.28, align 4
  %call.28 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30) #4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %niter.nsub.28 = sub i32 %niter.nsub.27, 1
  %arrayidx.29 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.28
  %31 = load i32, i32* %arrayidx.29, align 4
  %call.29 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31) #4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %niter.nsub.29 = sub i32 %niter.nsub.28, 1
  %arrayidx.30 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.29
  %32 = load i32, i32* %arrayidx.30, align 4
  %call.30 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32) #4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %niter.nsub.30 = sub i32 %niter.nsub.29, 1
  %arrayidx.31 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.30
  %33 = load i32, i32* %arrayidx.31, align 4
  %call.31 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33) #4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %niter.nsub.31 = sub i32 %niter.nsub.30, 1
  %arrayidx.32 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.31
  %34 = load i32, i32* %arrayidx.32, align 4
  %call.32 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34) #4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %niter.nsub.32 = sub i32 %niter.nsub.31, 1
  %arrayidx.33 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.32
  %35 = load i32, i32* %arrayidx.33, align 4
  %call.33 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35) #4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %niter.nsub.33 = sub i32 %niter.nsub.32, 1
  %arrayidx.34 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.33
  %36 = load i32, i32* %arrayidx.34, align 4
  %call.34 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36) #4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %niter.nsub.34 = sub i32 %niter.nsub.33, 1
  %arrayidx.35 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.34
  %37 = load i32, i32* %arrayidx.35, align 4
  %call.35 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37) #4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %niter.nsub.35 = sub i32 %niter.nsub.34, 1
  %arrayidx.36 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.35
  %38 = load i32, i32* %arrayidx.36, align 4
  %call.36 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38) #4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %niter.nsub.36 = sub i32 %niter.nsub.35, 1
  %arrayidx.37 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.36
  %39 = load i32, i32* %arrayidx.37, align 4
  %call.37 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39) #4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %niter.nsub.37 = sub i32 %niter.nsub.36, 1
  %arrayidx.38 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.37
  %40 = load i32, i32* %arrayidx.38, align 4
  %call.38 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40) #4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %niter.nsub.38 = sub i32 %niter.nsub.37, 1
  %arrayidx.39 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.38
  %41 = load i32, i32* %arrayidx.39, align 4
  %call.39 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41) #4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %niter.nsub.39 = sub i32 %niter.nsub.38, 1
  %arrayidx.40 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.39
  %42 = load i32, i32* %arrayidx.40, align 4
  %call.40 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42) #4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %niter.nsub.40 = sub i32 %niter.nsub.39, 1
  %arrayidx.41 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.40
  %43 = load i32, i32* %arrayidx.41, align 4
  %call.41 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43) #4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %niter.nsub.41 = sub i32 %niter.nsub.40, 1
  %arrayidx.42 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.41
  %44 = load i32, i32* %arrayidx.42, align 4
  %call.42 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44) #4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %niter.nsub.42 = sub i32 %niter.nsub.41, 1
  %arrayidx.43 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.42
  %45 = load i32, i32* %arrayidx.43, align 4
  %call.43 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45) #4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %niter.nsub.43 = sub i32 %niter.nsub.42, 1
  %arrayidx.44 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.43
  %46 = load i32, i32* %arrayidx.44, align 4
  %call.44 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %46) #4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %niter.nsub.44 = sub i32 %niter.nsub.43, 1
  %arrayidx.45 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.44
  %47 = load i32, i32* %arrayidx.45, align 4
  %call.45 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47) #4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %niter.nsub.45 = sub i32 %niter.nsub.44, 1
  %arrayidx.46 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.45
  %48 = load i32, i32* %arrayidx.46, align 4
  %call.46 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %48) #4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %niter.nsub.46 = sub i32 %niter.nsub.45, 1
  %arrayidx.47 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.46
  %49 = load i32, i32* %arrayidx.47, align 4
  %call.47 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %49) #4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %niter.nsub.47 = sub i32 %niter.nsub.46, 1
  %arrayidx.48 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.47
  %50 = load i32, i32* %arrayidx.48, align 4
  %call.48 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50) #4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %niter.nsub.48 = sub i32 %niter.nsub.47, 1
  %arrayidx.49 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.48
  %51 = load i32, i32* %arrayidx.49, align 4
  %call.49 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51) #4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %niter.nsub.49 = sub i32 %niter.nsub.48, 1
  %arrayidx.50 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.49
  %52 = load i32, i32* %arrayidx.50, align 4
  %call.50 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52) #4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %niter.nsub.50 = sub i32 %niter.nsub.49, 1
  %arrayidx.51 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.50
  %53 = load i32, i32* %arrayidx.51, align 4
  %call.51 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53) #4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %niter.nsub.51 = sub i32 %niter.nsub.50, 1
  %arrayidx.52 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.51
  %54 = load i32, i32* %arrayidx.52, align 4
  %call.52 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54) #4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %niter.nsub.52 = sub i32 %niter.nsub.51, 1
  %arrayidx.53 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.52
  %55 = load i32, i32* %arrayidx.53, align 4
  %call.53 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55) #4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %niter.nsub.53 = sub i32 %niter.nsub.52, 1
  %arrayidx.54 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.53
  %56 = load i32, i32* %arrayidx.54, align 4
  %call.54 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %56) #4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %niter.nsub.54 = sub i32 %niter.nsub.53, 1
  %arrayidx.55 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.54
  %57 = load i32, i32* %arrayidx.55, align 4
  %call.55 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57) #4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %niter.nsub.55 = sub i32 %niter.nsub.54, 1
  %arrayidx.56 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.55
  %58 = load i32, i32* %arrayidx.56, align 4
  %call.56 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %58) #4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %niter.nsub.56 = sub i32 %niter.nsub.55, 1
  %arrayidx.57 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.56
  %59 = load i32, i32* %arrayidx.57, align 4
  %call.57 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59) #4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %niter.nsub.57 = sub i32 %niter.nsub.56, 1
  %arrayidx.58 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.57
  %60 = load i32, i32* %arrayidx.58, align 4
  %call.58 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60) #4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %niter.nsub.58 = sub i32 %niter.nsub.57, 1
  %arrayidx.59 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.58
  %61 = load i32, i32* %arrayidx.59, align 4
  %call.59 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61) #4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %niter.nsub.59 = sub i32 %niter.nsub.58, 1
  %arrayidx.60 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.59
  %62 = load i32, i32* %arrayidx.60, align 4
  %call.60 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %62) #4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %niter.nsub.60 = sub i32 %niter.nsub.59, 1
  %arrayidx.61 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.60
  %63 = load i32, i32* %arrayidx.61, align 4
  %call.61 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %63) #4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %niter.nsub.61 = sub i32 %niter.nsub.60, 1
  %arrayidx.62 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.61
  %64 = load i32, i32* %arrayidx.62, align 4
  %call.62 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %64) #4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %niter.nsub.62 = sub i32 %niter.nsub.61, 1
  %arrayidx.63 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.62
  %65 = load i32, i32* %arrayidx.63, align 4
  %call.63 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %65) #4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %niter.nsub.63 = sub i32 %niter.nsub.62, 1
  %niter.ncmp.63 = icmp ne i32 %niter.nsub.63, 0
  br i1 %niter.ncmp.63, label %for.body, label %for.end.loopexit.unr-lcssa.loopexit, !llvm.loop !7

for.end.loopexit.unr-lcssa.loopexit:              ; preds = %for.body
  %indvars.iv.unr.ph = phi i64 [ %indvars.iv.next.63, %for.body ]
  br label %for.end.loopexit.unr-lcssa

for.end.loopexit.unr-lcssa:                       ; preds = %for.end.loopexit.unr-lcssa.loopexit, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.unr.ph, %for.end.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.epil.preheader, label %for.end.loopexit

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.unr, %for.body.epil.preheader ], [ %indvars.iv.next.epil, %for.body.epil ]
  %epil.iter = phi i32 [ %xtraiter, %for.body.epil.preheader ], [ %epil.iter.sub, %for.body.epil ]
  %arrayidx.epil = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.epil
  %66 = load i32, i32* %arrayidx.epil, align 4
  %call.epil = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %66) #4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %exitcond.epil = icmp ne i64 %indvars.iv.next.epil, %wide.trip.count
  %epil.iter.sub = sub i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.body.epil, label %for.end.loopexit.epilog-lcssa, !llvm.loop !8

for.end.loopexit.epilog-lcssa:                    ; preds = %for.body.epil
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.end.loopexit.unr-lcssa, %for.end.loopexit.epilog-lcssa
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

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.63, %for.body ]
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
  %call3.1 = call i32 @rand() #4
  %conv.1 = sitofp i32 %call3.1 to double
  %div.1 = fdiv double %conv.1, 0x41DFFFFFFFC00000
  %mul.1 = fmul double %div.1, 1.280000e+02
  %add.1 = fadd double %mul.1, 0.000000e+00
  %conv6.1 = fptosi double %add.1 to i32
  %arrayidx.1 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  store i32 %conv6.1, i32* %arrayidx.1, align 4
  %call7.1 = call i32 @rand() #4
  %conv8.1 = sitofp i32 %call7.1 to double
  %div9.1 = fdiv double %conv8.1, 0x41DFFFFFFFC00000
  %mul12.1 = fmul double %div9.1, 1.280000e+02
  %add14.1 = fadd double %mul12.1, 0.000000e+00
  %conv15.1 = fptosi double %add14.1 to i32
  %arrayidx17.1 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next
  store i32 %conv15.1, i32* %arrayidx17.1, align 4
  %arrayidx19.1 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next
  store i32 0, i32* %arrayidx19.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %call3.2 = call i32 @rand() #4
  %conv.2 = sitofp i32 %call3.2 to double
  %div.2 = fdiv double %conv.2, 0x41DFFFFFFFC00000
  %mul.2 = fmul double %div.2, 1.280000e+02
  %add.2 = fadd double %mul.2, 0.000000e+00
  %conv6.2 = fptosi double %add.2 to i32
  %arrayidx.2 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.1
  store i32 %conv6.2, i32* %arrayidx.2, align 4
  %call7.2 = call i32 @rand() #4
  %conv8.2 = sitofp i32 %call7.2 to double
  %div9.2 = fdiv double %conv8.2, 0x41DFFFFFFFC00000
  %mul12.2 = fmul double %div9.2, 1.280000e+02
  %add14.2 = fadd double %mul12.2, 0.000000e+00
  %conv15.2 = fptosi double %add14.2 to i32
  %arrayidx17.2 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.1
  store i32 %conv15.2, i32* %arrayidx17.2, align 4
  %arrayidx19.2 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.1
  store i32 0, i32* %arrayidx19.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %call3.3 = call i32 @rand() #4
  %conv.3 = sitofp i32 %call3.3 to double
  %div.3 = fdiv double %conv.3, 0x41DFFFFFFFC00000
  %mul.3 = fmul double %div.3, 1.280000e+02
  %add.3 = fadd double %mul.3, 0.000000e+00
  %conv6.3 = fptosi double %add.3 to i32
  %arrayidx.3 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.2
  store i32 %conv6.3, i32* %arrayidx.3, align 4
  %call7.3 = call i32 @rand() #4
  %conv8.3 = sitofp i32 %call7.3 to double
  %div9.3 = fdiv double %conv8.3, 0x41DFFFFFFFC00000
  %mul12.3 = fmul double %div9.3, 1.280000e+02
  %add14.3 = fadd double %mul12.3, 0.000000e+00
  %conv15.3 = fptosi double %add14.3 to i32
  %arrayidx17.3 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.2
  store i32 %conv15.3, i32* %arrayidx17.3, align 4
  %arrayidx19.3 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.2
  store i32 0, i32* %arrayidx19.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %call3.4 = call i32 @rand() #4
  %conv.4 = sitofp i32 %call3.4 to double
  %div.4 = fdiv double %conv.4, 0x41DFFFFFFFC00000
  %mul.4 = fmul double %div.4, 1.280000e+02
  %add.4 = fadd double %mul.4, 0.000000e+00
  %conv6.4 = fptosi double %add.4 to i32
  %arrayidx.4 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.3
  store i32 %conv6.4, i32* %arrayidx.4, align 4
  %call7.4 = call i32 @rand() #4
  %conv8.4 = sitofp i32 %call7.4 to double
  %div9.4 = fdiv double %conv8.4, 0x41DFFFFFFFC00000
  %mul12.4 = fmul double %div9.4, 1.280000e+02
  %add14.4 = fadd double %mul12.4, 0.000000e+00
  %conv15.4 = fptosi double %add14.4 to i32
  %arrayidx17.4 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.3
  store i32 %conv15.4, i32* %arrayidx17.4, align 4
  %arrayidx19.4 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.3
  store i32 0, i32* %arrayidx19.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %call3.5 = call i32 @rand() #4
  %conv.5 = sitofp i32 %call3.5 to double
  %div.5 = fdiv double %conv.5, 0x41DFFFFFFFC00000
  %mul.5 = fmul double %div.5, 1.280000e+02
  %add.5 = fadd double %mul.5, 0.000000e+00
  %conv6.5 = fptosi double %add.5 to i32
  %arrayidx.5 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.4
  store i32 %conv6.5, i32* %arrayidx.5, align 4
  %call7.5 = call i32 @rand() #4
  %conv8.5 = sitofp i32 %call7.5 to double
  %div9.5 = fdiv double %conv8.5, 0x41DFFFFFFFC00000
  %mul12.5 = fmul double %div9.5, 1.280000e+02
  %add14.5 = fadd double %mul12.5, 0.000000e+00
  %conv15.5 = fptosi double %add14.5 to i32
  %arrayidx17.5 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.4
  store i32 %conv15.5, i32* %arrayidx17.5, align 4
  %arrayidx19.5 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.4
  store i32 0, i32* %arrayidx19.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %call3.6 = call i32 @rand() #4
  %conv.6 = sitofp i32 %call3.6 to double
  %div.6 = fdiv double %conv.6, 0x41DFFFFFFFC00000
  %mul.6 = fmul double %div.6, 1.280000e+02
  %add.6 = fadd double %mul.6, 0.000000e+00
  %conv6.6 = fptosi double %add.6 to i32
  %arrayidx.6 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.5
  store i32 %conv6.6, i32* %arrayidx.6, align 4
  %call7.6 = call i32 @rand() #4
  %conv8.6 = sitofp i32 %call7.6 to double
  %div9.6 = fdiv double %conv8.6, 0x41DFFFFFFFC00000
  %mul12.6 = fmul double %div9.6, 1.280000e+02
  %add14.6 = fadd double %mul12.6, 0.000000e+00
  %conv15.6 = fptosi double %add14.6 to i32
  %arrayidx17.6 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.5
  store i32 %conv15.6, i32* %arrayidx17.6, align 4
  %arrayidx19.6 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.5
  store i32 0, i32* %arrayidx19.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %call3.7 = call i32 @rand() #4
  %conv.7 = sitofp i32 %call3.7 to double
  %div.7 = fdiv double %conv.7, 0x41DFFFFFFFC00000
  %mul.7 = fmul double %div.7, 1.280000e+02
  %add.7 = fadd double %mul.7, 0.000000e+00
  %conv6.7 = fptosi double %add.7 to i32
  %arrayidx.7 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.6
  store i32 %conv6.7, i32* %arrayidx.7, align 4
  %call7.7 = call i32 @rand() #4
  %conv8.7 = sitofp i32 %call7.7 to double
  %div9.7 = fdiv double %conv8.7, 0x41DFFFFFFFC00000
  %mul12.7 = fmul double %div9.7, 1.280000e+02
  %add14.7 = fadd double %mul12.7, 0.000000e+00
  %conv15.7 = fptosi double %add14.7 to i32
  %arrayidx17.7 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.6
  store i32 %conv15.7, i32* %arrayidx17.7, align 4
  %arrayidx19.7 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.6
  store i32 0, i32* %arrayidx19.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %call3.8 = call i32 @rand() #4
  %conv.8 = sitofp i32 %call3.8 to double
  %div.8 = fdiv double %conv.8, 0x41DFFFFFFFC00000
  %mul.8 = fmul double %div.8, 1.280000e+02
  %add.8 = fadd double %mul.8, 0.000000e+00
  %conv6.8 = fptosi double %add.8 to i32
  %arrayidx.8 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.7
  store i32 %conv6.8, i32* %arrayidx.8, align 4
  %call7.8 = call i32 @rand() #4
  %conv8.8 = sitofp i32 %call7.8 to double
  %div9.8 = fdiv double %conv8.8, 0x41DFFFFFFFC00000
  %mul12.8 = fmul double %div9.8, 1.280000e+02
  %add14.8 = fadd double %mul12.8, 0.000000e+00
  %conv15.8 = fptosi double %add14.8 to i32
  %arrayidx17.8 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.7
  store i32 %conv15.8, i32* %arrayidx17.8, align 4
  %arrayidx19.8 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.7
  store i32 0, i32* %arrayidx19.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %call3.9 = call i32 @rand() #4
  %conv.9 = sitofp i32 %call3.9 to double
  %div.9 = fdiv double %conv.9, 0x41DFFFFFFFC00000
  %mul.9 = fmul double %div.9, 1.280000e+02
  %add.9 = fadd double %mul.9, 0.000000e+00
  %conv6.9 = fptosi double %add.9 to i32
  %arrayidx.9 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.8
  store i32 %conv6.9, i32* %arrayidx.9, align 4
  %call7.9 = call i32 @rand() #4
  %conv8.9 = sitofp i32 %call7.9 to double
  %div9.9 = fdiv double %conv8.9, 0x41DFFFFFFFC00000
  %mul12.9 = fmul double %div9.9, 1.280000e+02
  %add14.9 = fadd double %mul12.9, 0.000000e+00
  %conv15.9 = fptosi double %add14.9 to i32
  %arrayidx17.9 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.8
  store i32 %conv15.9, i32* %arrayidx17.9, align 4
  %arrayidx19.9 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.8
  store i32 0, i32* %arrayidx19.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %call3.10 = call i32 @rand() #4
  %conv.10 = sitofp i32 %call3.10 to double
  %div.10 = fdiv double %conv.10, 0x41DFFFFFFFC00000
  %mul.10 = fmul double %div.10, 1.280000e+02
  %add.10 = fadd double %mul.10, 0.000000e+00
  %conv6.10 = fptosi double %add.10 to i32
  %arrayidx.10 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.9
  store i32 %conv6.10, i32* %arrayidx.10, align 4
  %call7.10 = call i32 @rand() #4
  %conv8.10 = sitofp i32 %call7.10 to double
  %div9.10 = fdiv double %conv8.10, 0x41DFFFFFFFC00000
  %mul12.10 = fmul double %div9.10, 1.280000e+02
  %add14.10 = fadd double %mul12.10, 0.000000e+00
  %conv15.10 = fptosi double %add14.10 to i32
  %arrayidx17.10 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.9
  store i32 %conv15.10, i32* %arrayidx17.10, align 4
  %arrayidx19.10 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.9
  store i32 0, i32* %arrayidx19.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %call3.11 = call i32 @rand() #4
  %conv.11 = sitofp i32 %call3.11 to double
  %div.11 = fdiv double %conv.11, 0x41DFFFFFFFC00000
  %mul.11 = fmul double %div.11, 1.280000e+02
  %add.11 = fadd double %mul.11, 0.000000e+00
  %conv6.11 = fptosi double %add.11 to i32
  %arrayidx.11 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.10
  store i32 %conv6.11, i32* %arrayidx.11, align 4
  %call7.11 = call i32 @rand() #4
  %conv8.11 = sitofp i32 %call7.11 to double
  %div9.11 = fdiv double %conv8.11, 0x41DFFFFFFFC00000
  %mul12.11 = fmul double %div9.11, 1.280000e+02
  %add14.11 = fadd double %mul12.11, 0.000000e+00
  %conv15.11 = fptosi double %add14.11 to i32
  %arrayidx17.11 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.10
  store i32 %conv15.11, i32* %arrayidx17.11, align 4
  %arrayidx19.11 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.10
  store i32 0, i32* %arrayidx19.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %call3.12 = call i32 @rand() #4
  %conv.12 = sitofp i32 %call3.12 to double
  %div.12 = fdiv double %conv.12, 0x41DFFFFFFFC00000
  %mul.12 = fmul double %div.12, 1.280000e+02
  %add.12 = fadd double %mul.12, 0.000000e+00
  %conv6.12 = fptosi double %add.12 to i32
  %arrayidx.12 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.11
  store i32 %conv6.12, i32* %arrayidx.12, align 4
  %call7.12 = call i32 @rand() #4
  %conv8.12 = sitofp i32 %call7.12 to double
  %div9.12 = fdiv double %conv8.12, 0x41DFFFFFFFC00000
  %mul12.12 = fmul double %div9.12, 1.280000e+02
  %add14.12 = fadd double %mul12.12, 0.000000e+00
  %conv15.12 = fptosi double %add14.12 to i32
  %arrayidx17.12 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.11
  store i32 %conv15.12, i32* %arrayidx17.12, align 4
  %arrayidx19.12 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.11
  store i32 0, i32* %arrayidx19.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %call3.13 = call i32 @rand() #4
  %conv.13 = sitofp i32 %call3.13 to double
  %div.13 = fdiv double %conv.13, 0x41DFFFFFFFC00000
  %mul.13 = fmul double %div.13, 1.280000e+02
  %add.13 = fadd double %mul.13, 0.000000e+00
  %conv6.13 = fptosi double %add.13 to i32
  %arrayidx.13 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.12
  store i32 %conv6.13, i32* %arrayidx.13, align 4
  %call7.13 = call i32 @rand() #4
  %conv8.13 = sitofp i32 %call7.13 to double
  %div9.13 = fdiv double %conv8.13, 0x41DFFFFFFFC00000
  %mul12.13 = fmul double %div9.13, 1.280000e+02
  %add14.13 = fadd double %mul12.13, 0.000000e+00
  %conv15.13 = fptosi double %add14.13 to i32
  %arrayidx17.13 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.12
  store i32 %conv15.13, i32* %arrayidx17.13, align 4
  %arrayidx19.13 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.12
  store i32 0, i32* %arrayidx19.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %call3.14 = call i32 @rand() #4
  %conv.14 = sitofp i32 %call3.14 to double
  %div.14 = fdiv double %conv.14, 0x41DFFFFFFFC00000
  %mul.14 = fmul double %div.14, 1.280000e+02
  %add.14 = fadd double %mul.14, 0.000000e+00
  %conv6.14 = fptosi double %add.14 to i32
  %arrayidx.14 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.13
  store i32 %conv6.14, i32* %arrayidx.14, align 4
  %call7.14 = call i32 @rand() #4
  %conv8.14 = sitofp i32 %call7.14 to double
  %div9.14 = fdiv double %conv8.14, 0x41DFFFFFFFC00000
  %mul12.14 = fmul double %div9.14, 1.280000e+02
  %add14.14 = fadd double %mul12.14, 0.000000e+00
  %conv15.14 = fptosi double %add14.14 to i32
  %arrayidx17.14 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.13
  store i32 %conv15.14, i32* %arrayidx17.14, align 4
  %arrayidx19.14 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.13
  store i32 0, i32* %arrayidx19.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %call3.15 = call i32 @rand() #4
  %conv.15 = sitofp i32 %call3.15 to double
  %div.15 = fdiv double %conv.15, 0x41DFFFFFFFC00000
  %mul.15 = fmul double %div.15, 1.280000e+02
  %add.15 = fadd double %mul.15, 0.000000e+00
  %conv6.15 = fptosi double %add.15 to i32
  %arrayidx.15 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.14
  store i32 %conv6.15, i32* %arrayidx.15, align 4
  %call7.15 = call i32 @rand() #4
  %conv8.15 = sitofp i32 %call7.15 to double
  %div9.15 = fdiv double %conv8.15, 0x41DFFFFFFFC00000
  %mul12.15 = fmul double %div9.15, 1.280000e+02
  %add14.15 = fadd double %mul12.15, 0.000000e+00
  %conv15.15 = fptosi double %add14.15 to i32
  %arrayidx17.15 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.14
  store i32 %conv15.15, i32* %arrayidx17.15, align 4
  %arrayidx19.15 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.14
  store i32 0, i32* %arrayidx19.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %call3.16 = call i32 @rand() #4
  %conv.16 = sitofp i32 %call3.16 to double
  %div.16 = fdiv double %conv.16, 0x41DFFFFFFFC00000
  %mul.16 = fmul double %div.16, 1.280000e+02
  %add.16 = fadd double %mul.16, 0.000000e+00
  %conv6.16 = fptosi double %add.16 to i32
  %arrayidx.16 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.15
  store i32 %conv6.16, i32* %arrayidx.16, align 4
  %call7.16 = call i32 @rand() #4
  %conv8.16 = sitofp i32 %call7.16 to double
  %div9.16 = fdiv double %conv8.16, 0x41DFFFFFFFC00000
  %mul12.16 = fmul double %div9.16, 1.280000e+02
  %add14.16 = fadd double %mul12.16, 0.000000e+00
  %conv15.16 = fptosi double %add14.16 to i32
  %arrayidx17.16 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.15
  store i32 %conv15.16, i32* %arrayidx17.16, align 4
  %arrayidx19.16 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.15
  store i32 0, i32* %arrayidx19.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %call3.17 = call i32 @rand() #4
  %conv.17 = sitofp i32 %call3.17 to double
  %div.17 = fdiv double %conv.17, 0x41DFFFFFFFC00000
  %mul.17 = fmul double %div.17, 1.280000e+02
  %add.17 = fadd double %mul.17, 0.000000e+00
  %conv6.17 = fptosi double %add.17 to i32
  %arrayidx.17 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.16
  store i32 %conv6.17, i32* %arrayidx.17, align 4
  %call7.17 = call i32 @rand() #4
  %conv8.17 = sitofp i32 %call7.17 to double
  %div9.17 = fdiv double %conv8.17, 0x41DFFFFFFFC00000
  %mul12.17 = fmul double %div9.17, 1.280000e+02
  %add14.17 = fadd double %mul12.17, 0.000000e+00
  %conv15.17 = fptosi double %add14.17 to i32
  %arrayidx17.17 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.16
  store i32 %conv15.17, i32* %arrayidx17.17, align 4
  %arrayidx19.17 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.16
  store i32 0, i32* %arrayidx19.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %call3.18 = call i32 @rand() #4
  %conv.18 = sitofp i32 %call3.18 to double
  %div.18 = fdiv double %conv.18, 0x41DFFFFFFFC00000
  %mul.18 = fmul double %div.18, 1.280000e+02
  %add.18 = fadd double %mul.18, 0.000000e+00
  %conv6.18 = fptosi double %add.18 to i32
  %arrayidx.18 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.17
  store i32 %conv6.18, i32* %arrayidx.18, align 4
  %call7.18 = call i32 @rand() #4
  %conv8.18 = sitofp i32 %call7.18 to double
  %div9.18 = fdiv double %conv8.18, 0x41DFFFFFFFC00000
  %mul12.18 = fmul double %div9.18, 1.280000e+02
  %add14.18 = fadd double %mul12.18, 0.000000e+00
  %conv15.18 = fptosi double %add14.18 to i32
  %arrayidx17.18 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.17
  store i32 %conv15.18, i32* %arrayidx17.18, align 4
  %arrayidx19.18 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.17
  store i32 0, i32* %arrayidx19.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %call3.19 = call i32 @rand() #4
  %conv.19 = sitofp i32 %call3.19 to double
  %div.19 = fdiv double %conv.19, 0x41DFFFFFFFC00000
  %mul.19 = fmul double %div.19, 1.280000e+02
  %add.19 = fadd double %mul.19, 0.000000e+00
  %conv6.19 = fptosi double %add.19 to i32
  %arrayidx.19 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.18
  store i32 %conv6.19, i32* %arrayidx.19, align 4
  %call7.19 = call i32 @rand() #4
  %conv8.19 = sitofp i32 %call7.19 to double
  %div9.19 = fdiv double %conv8.19, 0x41DFFFFFFFC00000
  %mul12.19 = fmul double %div9.19, 1.280000e+02
  %add14.19 = fadd double %mul12.19, 0.000000e+00
  %conv15.19 = fptosi double %add14.19 to i32
  %arrayidx17.19 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.18
  store i32 %conv15.19, i32* %arrayidx17.19, align 4
  %arrayidx19.19 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.18
  store i32 0, i32* %arrayidx19.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %call3.20 = call i32 @rand() #4
  %conv.20 = sitofp i32 %call3.20 to double
  %div.20 = fdiv double %conv.20, 0x41DFFFFFFFC00000
  %mul.20 = fmul double %div.20, 1.280000e+02
  %add.20 = fadd double %mul.20, 0.000000e+00
  %conv6.20 = fptosi double %add.20 to i32
  %arrayidx.20 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.19
  store i32 %conv6.20, i32* %arrayidx.20, align 4
  %call7.20 = call i32 @rand() #4
  %conv8.20 = sitofp i32 %call7.20 to double
  %div9.20 = fdiv double %conv8.20, 0x41DFFFFFFFC00000
  %mul12.20 = fmul double %div9.20, 1.280000e+02
  %add14.20 = fadd double %mul12.20, 0.000000e+00
  %conv15.20 = fptosi double %add14.20 to i32
  %arrayidx17.20 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.19
  store i32 %conv15.20, i32* %arrayidx17.20, align 4
  %arrayidx19.20 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.19
  store i32 0, i32* %arrayidx19.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %call3.21 = call i32 @rand() #4
  %conv.21 = sitofp i32 %call3.21 to double
  %div.21 = fdiv double %conv.21, 0x41DFFFFFFFC00000
  %mul.21 = fmul double %div.21, 1.280000e+02
  %add.21 = fadd double %mul.21, 0.000000e+00
  %conv6.21 = fptosi double %add.21 to i32
  %arrayidx.21 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.20
  store i32 %conv6.21, i32* %arrayidx.21, align 4
  %call7.21 = call i32 @rand() #4
  %conv8.21 = sitofp i32 %call7.21 to double
  %div9.21 = fdiv double %conv8.21, 0x41DFFFFFFFC00000
  %mul12.21 = fmul double %div9.21, 1.280000e+02
  %add14.21 = fadd double %mul12.21, 0.000000e+00
  %conv15.21 = fptosi double %add14.21 to i32
  %arrayidx17.21 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.20
  store i32 %conv15.21, i32* %arrayidx17.21, align 4
  %arrayidx19.21 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.20
  store i32 0, i32* %arrayidx19.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %call3.22 = call i32 @rand() #4
  %conv.22 = sitofp i32 %call3.22 to double
  %div.22 = fdiv double %conv.22, 0x41DFFFFFFFC00000
  %mul.22 = fmul double %div.22, 1.280000e+02
  %add.22 = fadd double %mul.22, 0.000000e+00
  %conv6.22 = fptosi double %add.22 to i32
  %arrayidx.22 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.21
  store i32 %conv6.22, i32* %arrayidx.22, align 4
  %call7.22 = call i32 @rand() #4
  %conv8.22 = sitofp i32 %call7.22 to double
  %div9.22 = fdiv double %conv8.22, 0x41DFFFFFFFC00000
  %mul12.22 = fmul double %div9.22, 1.280000e+02
  %add14.22 = fadd double %mul12.22, 0.000000e+00
  %conv15.22 = fptosi double %add14.22 to i32
  %arrayidx17.22 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.21
  store i32 %conv15.22, i32* %arrayidx17.22, align 4
  %arrayidx19.22 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.21
  store i32 0, i32* %arrayidx19.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %call3.23 = call i32 @rand() #4
  %conv.23 = sitofp i32 %call3.23 to double
  %div.23 = fdiv double %conv.23, 0x41DFFFFFFFC00000
  %mul.23 = fmul double %div.23, 1.280000e+02
  %add.23 = fadd double %mul.23, 0.000000e+00
  %conv6.23 = fptosi double %add.23 to i32
  %arrayidx.23 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.22
  store i32 %conv6.23, i32* %arrayidx.23, align 4
  %call7.23 = call i32 @rand() #4
  %conv8.23 = sitofp i32 %call7.23 to double
  %div9.23 = fdiv double %conv8.23, 0x41DFFFFFFFC00000
  %mul12.23 = fmul double %div9.23, 1.280000e+02
  %add14.23 = fadd double %mul12.23, 0.000000e+00
  %conv15.23 = fptosi double %add14.23 to i32
  %arrayidx17.23 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.22
  store i32 %conv15.23, i32* %arrayidx17.23, align 4
  %arrayidx19.23 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.22
  store i32 0, i32* %arrayidx19.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %call3.24 = call i32 @rand() #4
  %conv.24 = sitofp i32 %call3.24 to double
  %div.24 = fdiv double %conv.24, 0x41DFFFFFFFC00000
  %mul.24 = fmul double %div.24, 1.280000e+02
  %add.24 = fadd double %mul.24, 0.000000e+00
  %conv6.24 = fptosi double %add.24 to i32
  %arrayidx.24 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.23
  store i32 %conv6.24, i32* %arrayidx.24, align 4
  %call7.24 = call i32 @rand() #4
  %conv8.24 = sitofp i32 %call7.24 to double
  %div9.24 = fdiv double %conv8.24, 0x41DFFFFFFFC00000
  %mul12.24 = fmul double %div9.24, 1.280000e+02
  %add14.24 = fadd double %mul12.24, 0.000000e+00
  %conv15.24 = fptosi double %add14.24 to i32
  %arrayidx17.24 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.23
  store i32 %conv15.24, i32* %arrayidx17.24, align 4
  %arrayidx19.24 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.23
  store i32 0, i32* %arrayidx19.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %call3.25 = call i32 @rand() #4
  %conv.25 = sitofp i32 %call3.25 to double
  %div.25 = fdiv double %conv.25, 0x41DFFFFFFFC00000
  %mul.25 = fmul double %div.25, 1.280000e+02
  %add.25 = fadd double %mul.25, 0.000000e+00
  %conv6.25 = fptosi double %add.25 to i32
  %arrayidx.25 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.24
  store i32 %conv6.25, i32* %arrayidx.25, align 4
  %call7.25 = call i32 @rand() #4
  %conv8.25 = sitofp i32 %call7.25 to double
  %div9.25 = fdiv double %conv8.25, 0x41DFFFFFFFC00000
  %mul12.25 = fmul double %div9.25, 1.280000e+02
  %add14.25 = fadd double %mul12.25, 0.000000e+00
  %conv15.25 = fptosi double %add14.25 to i32
  %arrayidx17.25 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.24
  store i32 %conv15.25, i32* %arrayidx17.25, align 4
  %arrayidx19.25 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.24
  store i32 0, i32* %arrayidx19.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %call3.26 = call i32 @rand() #4
  %conv.26 = sitofp i32 %call3.26 to double
  %div.26 = fdiv double %conv.26, 0x41DFFFFFFFC00000
  %mul.26 = fmul double %div.26, 1.280000e+02
  %add.26 = fadd double %mul.26, 0.000000e+00
  %conv6.26 = fptosi double %add.26 to i32
  %arrayidx.26 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.25
  store i32 %conv6.26, i32* %arrayidx.26, align 4
  %call7.26 = call i32 @rand() #4
  %conv8.26 = sitofp i32 %call7.26 to double
  %div9.26 = fdiv double %conv8.26, 0x41DFFFFFFFC00000
  %mul12.26 = fmul double %div9.26, 1.280000e+02
  %add14.26 = fadd double %mul12.26, 0.000000e+00
  %conv15.26 = fptosi double %add14.26 to i32
  %arrayidx17.26 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.25
  store i32 %conv15.26, i32* %arrayidx17.26, align 4
  %arrayidx19.26 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.25
  store i32 0, i32* %arrayidx19.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %call3.27 = call i32 @rand() #4
  %conv.27 = sitofp i32 %call3.27 to double
  %div.27 = fdiv double %conv.27, 0x41DFFFFFFFC00000
  %mul.27 = fmul double %div.27, 1.280000e+02
  %add.27 = fadd double %mul.27, 0.000000e+00
  %conv6.27 = fptosi double %add.27 to i32
  %arrayidx.27 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.26
  store i32 %conv6.27, i32* %arrayidx.27, align 4
  %call7.27 = call i32 @rand() #4
  %conv8.27 = sitofp i32 %call7.27 to double
  %div9.27 = fdiv double %conv8.27, 0x41DFFFFFFFC00000
  %mul12.27 = fmul double %div9.27, 1.280000e+02
  %add14.27 = fadd double %mul12.27, 0.000000e+00
  %conv15.27 = fptosi double %add14.27 to i32
  %arrayidx17.27 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.26
  store i32 %conv15.27, i32* %arrayidx17.27, align 4
  %arrayidx19.27 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.26
  store i32 0, i32* %arrayidx19.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %call3.28 = call i32 @rand() #4
  %conv.28 = sitofp i32 %call3.28 to double
  %div.28 = fdiv double %conv.28, 0x41DFFFFFFFC00000
  %mul.28 = fmul double %div.28, 1.280000e+02
  %add.28 = fadd double %mul.28, 0.000000e+00
  %conv6.28 = fptosi double %add.28 to i32
  %arrayidx.28 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.27
  store i32 %conv6.28, i32* %arrayidx.28, align 4
  %call7.28 = call i32 @rand() #4
  %conv8.28 = sitofp i32 %call7.28 to double
  %div9.28 = fdiv double %conv8.28, 0x41DFFFFFFFC00000
  %mul12.28 = fmul double %div9.28, 1.280000e+02
  %add14.28 = fadd double %mul12.28, 0.000000e+00
  %conv15.28 = fptosi double %add14.28 to i32
  %arrayidx17.28 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.27
  store i32 %conv15.28, i32* %arrayidx17.28, align 4
  %arrayidx19.28 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.27
  store i32 0, i32* %arrayidx19.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %call3.29 = call i32 @rand() #4
  %conv.29 = sitofp i32 %call3.29 to double
  %div.29 = fdiv double %conv.29, 0x41DFFFFFFFC00000
  %mul.29 = fmul double %div.29, 1.280000e+02
  %add.29 = fadd double %mul.29, 0.000000e+00
  %conv6.29 = fptosi double %add.29 to i32
  %arrayidx.29 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.28
  store i32 %conv6.29, i32* %arrayidx.29, align 4
  %call7.29 = call i32 @rand() #4
  %conv8.29 = sitofp i32 %call7.29 to double
  %div9.29 = fdiv double %conv8.29, 0x41DFFFFFFFC00000
  %mul12.29 = fmul double %div9.29, 1.280000e+02
  %add14.29 = fadd double %mul12.29, 0.000000e+00
  %conv15.29 = fptosi double %add14.29 to i32
  %arrayidx17.29 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.28
  store i32 %conv15.29, i32* %arrayidx17.29, align 4
  %arrayidx19.29 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.28
  store i32 0, i32* %arrayidx19.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %call3.30 = call i32 @rand() #4
  %conv.30 = sitofp i32 %call3.30 to double
  %div.30 = fdiv double %conv.30, 0x41DFFFFFFFC00000
  %mul.30 = fmul double %div.30, 1.280000e+02
  %add.30 = fadd double %mul.30, 0.000000e+00
  %conv6.30 = fptosi double %add.30 to i32
  %arrayidx.30 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.29
  store i32 %conv6.30, i32* %arrayidx.30, align 4
  %call7.30 = call i32 @rand() #4
  %conv8.30 = sitofp i32 %call7.30 to double
  %div9.30 = fdiv double %conv8.30, 0x41DFFFFFFFC00000
  %mul12.30 = fmul double %div9.30, 1.280000e+02
  %add14.30 = fadd double %mul12.30, 0.000000e+00
  %conv15.30 = fptosi double %add14.30 to i32
  %arrayidx17.30 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.29
  store i32 %conv15.30, i32* %arrayidx17.30, align 4
  %arrayidx19.30 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.29
  store i32 0, i32* %arrayidx19.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %call3.31 = call i32 @rand() #4
  %conv.31 = sitofp i32 %call3.31 to double
  %div.31 = fdiv double %conv.31, 0x41DFFFFFFFC00000
  %mul.31 = fmul double %div.31, 1.280000e+02
  %add.31 = fadd double %mul.31, 0.000000e+00
  %conv6.31 = fptosi double %add.31 to i32
  %arrayidx.31 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.30
  store i32 %conv6.31, i32* %arrayidx.31, align 4
  %call7.31 = call i32 @rand() #4
  %conv8.31 = sitofp i32 %call7.31 to double
  %div9.31 = fdiv double %conv8.31, 0x41DFFFFFFFC00000
  %mul12.31 = fmul double %div9.31, 1.280000e+02
  %add14.31 = fadd double %mul12.31, 0.000000e+00
  %conv15.31 = fptosi double %add14.31 to i32
  %arrayidx17.31 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.30
  store i32 %conv15.31, i32* %arrayidx17.31, align 4
  %arrayidx19.31 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.30
  store i32 0, i32* %arrayidx19.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %call3.32 = call i32 @rand() #4
  %conv.32 = sitofp i32 %call3.32 to double
  %div.32 = fdiv double %conv.32, 0x41DFFFFFFFC00000
  %mul.32 = fmul double %div.32, 1.280000e+02
  %add.32 = fadd double %mul.32, 0.000000e+00
  %conv6.32 = fptosi double %add.32 to i32
  %arrayidx.32 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.31
  store i32 %conv6.32, i32* %arrayidx.32, align 4
  %call7.32 = call i32 @rand() #4
  %conv8.32 = sitofp i32 %call7.32 to double
  %div9.32 = fdiv double %conv8.32, 0x41DFFFFFFFC00000
  %mul12.32 = fmul double %div9.32, 1.280000e+02
  %add14.32 = fadd double %mul12.32, 0.000000e+00
  %conv15.32 = fptosi double %add14.32 to i32
  %arrayidx17.32 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.31
  store i32 %conv15.32, i32* %arrayidx17.32, align 4
  %arrayidx19.32 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.31
  store i32 0, i32* %arrayidx19.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %call3.33 = call i32 @rand() #4
  %conv.33 = sitofp i32 %call3.33 to double
  %div.33 = fdiv double %conv.33, 0x41DFFFFFFFC00000
  %mul.33 = fmul double %div.33, 1.280000e+02
  %add.33 = fadd double %mul.33, 0.000000e+00
  %conv6.33 = fptosi double %add.33 to i32
  %arrayidx.33 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.32
  store i32 %conv6.33, i32* %arrayidx.33, align 4
  %call7.33 = call i32 @rand() #4
  %conv8.33 = sitofp i32 %call7.33 to double
  %div9.33 = fdiv double %conv8.33, 0x41DFFFFFFFC00000
  %mul12.33 = fmul double %div9.33, 1.280000e+02
  %add14.33 = fadd double %mul12.33, 0.000000e+00
  %conv15.33 = fptosi double %add14.33 to i32
  %arrayidx17.33 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.32
  store i32 %conv15.33, i32* %arrayidx17.33, align 4
  %arrayidx19.33 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.32
  store i32 0, i32* %arrayidx19.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %call3.34 = call i32 @rand() #4
  %conv.34 = sitofp i32 %call3.34 to double
  %div.34 = fdiv double %conv.34, 0x41DFFFFFFFC00000
  %mul.34 = fmul double %div.34, 1.280000e+02
  %add.34 = fadd double %mul.34, 0.000000e+00
  %conv6.34 = fptosi double %add.34 to i32
  %arrayidx.34 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.33
  store i32 %conv6.34, i32* %arrayidx.34, align 4
  %call7.34 = call i32 @rand() #4
  %conv8.34 = sitofp i32 %call7.34 to double
  %div9.34 = fdiv double %conv8.34, 0x41DFFFFFFFC00000
  %mul12.34 = fmul double %div9.34, 1.280000e+02
  %add14.34 = fadd double %mul12.34, 0.000000e+00
  %conv15.34 = fptosi double %add14.34 to i32
  %arrayidx17.34 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.33
  store i32 %conv15.34, i32* %arrayidx17.34, align 4
  %arrayidx19.34 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.33
  store i32 0, i32* %arrayidx19.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %call3.35 = call i32 @rand() #4
  %conv.35 = sitofp i32 %call3.35 to double
  %div.35 = fdiv double %conv.35, 0x41DFFFFFFFC00000
  %mul.35 = fmul double %div.35, 1.280000e+02
  %add.35 = fadd double %mul.35, 0.000000e+00
  %conv6.35 = fptosi double %add.35 to i32
  %arrayidx.35 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.34
  store i32 %conv6.35, i32* %arrayidx.35, align 4
  %call7.35 = call i32 @rand() #4
  %conv8.35 = sitofp i32 %call7.35 to double
  %div9.35 = fdiv double %conv8.35, 0x41DFFFFFFFC00000
  %mul12.35 = fmul double %div9.35, 1.280000e+02
  %add14.35 = fadd double %mul12.35, 0.000000e+00
  %conv15.35 = fptosi double %add14.35 to i32
  %arrayidx17.35 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.34
  store i32 %conv15.35, i32* %arrayidx17.35, align 4
  %arrayidx19.35 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.34
  store i32 0, i32* %arrayidx19.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %call3.36 = call i32 @rand() #4
  %conv.36 = sitofp i32 %call3.36 to double
  %div.36 = fdiv double %conv.36, 0x41DFFFFFFFC00000
  %mul.36 = fmul double %div.36, 1.280000e+02
  %add.36 = fadd double %mul.36, 0.000000e+00
  %conv6.36 = fptosi double %add.36 to i32
  %arrayidx.36 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.35
  store i32 %conv6.36, i32* %arrayidx.36, align 4
  %call7.36 = call i32 @rand() #4
  %conv8.36 = sitofp i32 %call7.36 to double
  %div9.36 = fdiv double %conv8.36, 0x41DFFFFFFFC00000
  %mul12.36 = fmul double %div9.36, 1.280000e+02
  %add14.36 = fadd double %mul12.36, 0.000000e+00
  %conv15.36 = fptosi double %add14.36 to i32
  %arrayidx17.36 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.35
  store i32 %conv15.36, i32* %arrayidx17.36, align 4
  %arrayidx19.36 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.35
  store i32 0, i32* %arrayidx19.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %call3.37 = call i32 @rand() #4
  %conv.37 = sitofp i32 %call3.37 to double
  %div.37 = fdiv double %conv.37, 0x41DFFFFFFFC00000
  %mul.37 = fmul double %div.37, 1.280000e+02
  %add.37 = fadd double %mul.37, 0.000000e+00
  %conv6.37 = fptosi double %add.37 to i32
  %arrayidx.37 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.36
  store i32 %conv6.37, i32* %arrayidx.37, align 4
  %call7.37 = call i32 @rand() #4
  %conv8.37 = sitofp i32 %call7.37 to double
  %div9.37 = fdiv double %conv8.37, 0x41DFFFFFFFC00000
  %mul12.37 = fmul double %div9.37, 1.280000e+02
  %add14.37 = fadd double %mul12.37, 0.000000e+00
  %conv15.37 = fptosi double %add14.37 to i32
  %arrayidx17.37 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.36
  store i32 %conv15.37, i32* %arrayidx17.37, align 4
  %arrayidx19.37 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.36
  store i32 0, i32* %arrayidx19.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %call3.38 = call i32 @rand() #4
  %conv.38 = sitofp i32 %call3.38 to double
  %div.38 = fdiv double %conv.38, 0x41DFFFFFFFC00000
  %mul.38 = fmul double %div.38, 1.280000e+02
  %add.38 = fadd double %mul.38, 0.000000e+00
  %conv6.38 = fptosi double %add.38 to i32
  %arrayidx.38 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.37
  store i32 %conv6.38, i32* %arrayidx.38, align 4
  %call7.38 = call i32 @rand() #4
  %conv8.38 = sitofp i32 %call7.38 to double
  %div9.38 = fdiv double %conv8.38, 0x41DFFFFFFFC00000
  %mul12.38 = fmul double %div9.38, 1.280000e+02
  %add14.38 = fadd double %mul12.38, 0.000000e+00
  %conv15.38 = fptosi double %add14.38 to i32
  %arrayidx17.38 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.37
  store i32 %conv15.38, i32* %arrayidx17.38, align 4
  %arrayidx19.38 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.37
  store i32 0, i32* %arrayidx19.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %call3.39 = call i32 @rand() #4
  %conv.39 = sitofp i32 %call3.39 to double
  %div.39 = fdiv double %conv.39, 0x41DFFFFFFFC00000
  %mul.39 = fmul double %div.39, 1.280000e+02
  %add.39 = fadd double %mul.39, 0.000000e+00
  %conv6.39 = fptosi double %add.39 to i32
  %arrayidx.39 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.38
  store i32 %conv6.39, i32* %arrayidx.39, align 4
  %call7.39 = call i32 @rand() #4
  %conv8.39 = sitofp i32 %call7.39 to double
  %div9.39 = fdiv double %conv8.39, 0x41DFFFFFFFC00000
  %mul12.39 = fmul double %div9.39, 1.280000e+02
  %add14.39 = fadd double %mul12.39, 0.000000e+00
  %conv15.39 = fptosi double %add14.39 to i32
  %arrayidx17.39 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.38
  store i32 %conv15.39, i32* %arrayidx17.39, align 4
  %arrayidx19.39 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.38
  store i32 0, i32* %arrayidx19.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %call3.40 = call i32 @rand() #4
  %conv.40 = sitofp i32 %call3.40 to double
  %div.40 = fdiv double %conv.40, 0x41DFFFFFFFC00000
  %mul.40 = fmul double %div.40, 1.280000e+02
  %add.40 = fadd double %mul.40, 0.000000e+00
  %conv6.40 = fptosi double %add.40 to i32
  %arrayidx.40 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.39
  store i32 %conv6.40, i32* %arrayidx.40, align 4
  %call7.40 = call i32 @rand() #4
  %conv8.40 = sitofp i32 %call7.40 to double
  %div9.40 = fdiv double %conv8.40, 0x41DFFFFFFFC00000
  %mul12.40 = fmul double %div9.40, 1.280000e+02
  %add14.40 = fadd double %mul12.40, 0.000000e+00
  %conv15.40 = fptosi double %add14.40 to i32
  %arrayidx17.40 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.39
  store i32 %conv15.40, i32* %arrayidx17.40, align 4
  %arrayidx19.40 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.39
  store i32 0, i32* %arrayidx19.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %call3.41 = call i32 @rand() #4
  %conv.41 = sitofp i32 %call3.41 to double
  %div.41 = fdiv double %conv.41, 0x41DFFFFFFFC00000
  %mul.41 = fmul double %div.41, 1.280000e+02
  %add.41 = fadd double %mul.41, 0.000000e+00
  %conv6.41 = fptosi double %add.41 to i32
  %arrayidx.41 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.40
  store i32 %conv6.41, i32* %arrayidx.41, align 4
  %call7.41 = call i32 @rand() #4
  %conv8.41 = sitofp i32 %call7.41 to double
  %div9.41 = fdiv double %conv8.41, 0x41DFFFFFFFC00000
  %mul12.41 = fmul double %div9.41, 1.280000e+02
  %add14.41 = fadd double %mul12.41, 0.000000e+00
  %conv15.41 = fptosi double %add14.41 to i32
  %arrayidx17.41 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.40
  store i32 %conv15.41, i32* %arrayidx17.41, align 4
  %arrayidx19.41 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.40
  store i32 0, i32* %arrayidx19.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %call3.42 = call i32 @rand() #4
  %conv.42 = sitofp i32 %call3.42 to double
  %div.42 = fdiv double %conv.42, 0x41DFFFFFFFC00000
  %mul.42 = fmul double %div.42, 1.280000e+02
  %add.42 = fadd double %mul.42, 0.000000e+00
  %conv6.42 = fptosi double %add.42 to i32
  %arrayidx.42 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.41
  store i32 %conv6.42, i32* %arrayidx.42, align 4
  %call7.42 = call i32 @rand() #4
  %conv8.42 = sitofp i32 %call7.42 to double
  %div9.42 = fdiv double %conv8.42, 0x41DFFFFFFFC00000
  %mul12.42 = fmul double %div9.42, 1.280000e+02
  %add14.42 = fadd double %mul12.42, 0.000000e+00
  %conv15.42 = fptosi double %add14.42 to i32
  %arrayidx17.42 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.41
  store i32 %conv15.42, i32* %arrayidx17.42, align 4
  %arrayidx19.42 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.41
  store i32 0, i32* %arrayidx19.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %call3.43 = call i32 @rand() #4
  %conv.43 = sitofp i32 %call3.43 to double
  %div.43 = fdiv double %conv.43, 0x41DFFFFFFFC00000
  %mul.43 = fmul double %div.43, 1.280000e+02
  %add.43 = fadd double %mul.43, 0.000000e+00
  %conv6.43 = fptosi double %add.43 to i32
  %arrayidx.43 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.42
  store i32 %conv6.43, i32* %arrayidx.43, align 4
  %call7.43 = call i32 @rand() #4
  %conv8.43 = sitofp i32 %call7.43 to double
  %div9.43 = fdiv double %conv8.43, 0x41DFFFFFFFC00000
  %mul12.43 = fmul double %div9.43, 1.280000e+02
  %add14.43 = fadd double %mul12.43, 0.000000e+00
  %conv15.43 = fptosi double %add14.43 to i32
  %arrayidx17.43 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.42
  store i32 %conv15.43, i32* %arrayidx17.43, align 4
  %arrayidx19.43 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.42
  store i32 0, i32* %arrayidx19.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %call3.44 = call i32 @rand() #4
  %conv.44 = sitofp i32 %call3.44 to double
  %div.44 = fdiv double %conv.44, 0x41DFFFFFFFC00000
  %mul.44 = fmul double %div.44, 1.280000e+02
  %add.44 = fadd double %mul.44, 0.000000e+00
  %conv6.44 = fptosi double %add.44 to i32
  %arrayidx.44 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.43
  store i32 %conv6.44, i32* %arrayidx.44, align 4
  %call7.44 = call i32 @rand() #4
  %conv8.44 = sitofp i32 %call7.44 to double
  %div9.44 = fdiv double %conv8.44, 0x41DFFFFFFFC00000
  %mul12.44 = fmul double %div9.44, 1.280000e+02
  %add14.44 = fadd double %mul12.44, 0.000000e+00
  %conv15.44 = fptosi double %add14.44 to i32
  %arrayidx17.44 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.43
  store i32 %conv15.44, i32* %arrayidx17.44, align 4
  %arrayidx19.44 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.43
  store i32 0, i32* %arrayidx19.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %call3.45 = call i32 @rand() #4
  %conv.45 = sitofp i32 %call3.45 to double
  %div.45 = fdiv double %conv.45, 0x41DFFFFFFFC00000
  %mul.45 = fmul double %div.45, 1.280000e+02
  %add.45 = fadd double %mul.45, 0.000000e+00
  %conv6.45 = fptosi double %add.45 to i32
  %arrayidx.45 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.44
  store i32 %conv6.45, i32* %arrayidx.45, align 4
  %call7.45 = call i32 @rand() #4
  %conv8.45 = sitofp i32 %call7.45 to double
  %div9.45 = fdiv double %conv8.45, 0x41DFFFFFFFC00000
  %mul12.45 = fmul double %div9.45, 1.280000e+02
  %add14.45 = fadd double %mul12.45, 0.000000e+00
  %conv15.45 = fptosi double %add14.45 to i32
  %arrayidx17.45 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.44
  store i32 %conv15.45, i32* %arrayidx17.45, align 4
  %arrayidx19.45 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.44
  store i32 0, i32* %arrayidx19.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %call3.46 = call i32 @rand() #4
  %conv.46 = sitofp i32 %call3.46 to double
  %div.46 = fdiv double %conv.46, 0x41DFFFFFFFC00000
  %mul.46 = fmul double %div.46, 1.280000e+02
  %add.46 = fadd double %mul.46, 0.000000e+00
  %conv6.46 = fptosi double %add.46 to i32
  %arrayidx.46 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.45
  store i32 %conv6.46, i32* %arrayidx.46, align 4
  %call7.46 = call i32 @rand() #4
  %conv8.46 = sitofp i32 %call7.46 to double
  %div9.46 = fdiv double %conv8.46, 0x41DFFFFFFFC00000
  %mul12.46 = fmul double %div9.46, 1.280000e+02
  %add14.46 = fadd double %mul12.46, 0.000000e+00
  %conv15.46 = fptosi double %add14.46 to i32
  %arrayidx17.46 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.45
  store i32 %conv15.46, i32* %arrayidx17.46, align 4
  %arrayidx19.46 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.45
  store i32 0, i32* %arrayidx19.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %call3.47 = call i32 @rand() #4
  %conv.47 = sitofp i32 %call3.47 to double
  %div.47 = fdiv double %conv.47, 0x41DFFFFFFFC00000
  %mul.47 = fmul double %div.47, 1.280000e+02
  %add.47 = fadd double %mul.47, 0.000000e+00
  %conv6.47 = fptosi double %add.47 to i32
  %arrayidx.47 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.46
  store i32 %conv6.47, i32* %arrayidx.47, align 4
  %call7.47 = call i32 @rand() #4
  %conv8.47 = sitofp i32 %call7.47 to double
  %div9.47 = fdiv double %conv8.47, 0x41DFFFFFFFC00000
  %mul12.47 = fmul double %div9.47, 1.280000e+02
  %add14.47 = fadd double %mul12.47, 0.000000e+00
  %conv15.47 = fptosi double %add14.47 to i32
  %arrayidx17.47 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.46
  store i32 %conv15.47, i32* %arrayidx17.47, align 4
  %arrayidx19.47 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.46
  store i32 0, i32* %arrayidx19.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %call3.48 = call i32 @rand() #4
  %conv.48 = sitofp i32 %call3.48 to double
  %div.48 = fdiv double %conv.48, 0x41DFFFFFFFC00000
  %mul.48 = fmul double %div.48, 1.280000e+02
  %add.48 = fadd double %mul.48, 0.000000e+00
  %conv6.48 = fptosi double %add.48 to i32
  %arrayidx.48 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.47
  store i32 %conv6.48, i32* %arrayidx.48, align 4
  %call7.48 = call i32 @rand() #4
  %conv8.48 = sitofp i32 %call7.48 to double
  %div9.48 = fdiv double %conv8.48, 0x41DFFFFFFFC00000
  %mul12.48 = fmul double %div9.48, 1.280000e+02
  %add14.48 = fadd double %mul12.48, 0.000000e+00
  %conv15.48 = fptosi double %add14.48 to i32
  %arrayidx17.48 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.47
  store i32 %conv15.48, i32* %arrayidx17.48, align 4
  %arrayidx19.48 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.47
  store i32 0, i32* %arrayidx19.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %call3.49 = call i32 @rand() #4
  %conv.49 = sitofp i32 %call3.49 to double
  %div.49 = fdiv double %conv.49, 0x41DFFFFFFFC00000
  %mul.49 = fmul double %div.49, 1.280000e+02
  %add.49 = fadd double %mul.49, 0.000000e+00
  %conv6.49 = fptosi double %add.49 to i32
  %arrayidx.49 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.48
  store i32 %conv6.49, i32* %arrayidx.49, align 4
  %call7.49 = call i32 @rand() #4
  %conv8.49 = sitofp i32 %call7.49 to double
  %div9.49 = fdiv double %conv8.49, 0x41DFFFFFFFC00000
  %mul12.49 = fmul double %div9.49, 1.280000e+02
  %add14.49 = fadd double %mul12.49, 0.000000e+00
  %conv15.49 = fptosi double %add14.49 to i32
  %arrayidx17.49 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.48
  store i32 %conv15.49, i32* %arrayidx17.49, align 4
  %arrayidx19.49 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.48
  store i32 0, i32* %arrayidx19.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %call3.50 = call i32 @rand() #4
  %conv.50 = sitofp i32 %call3.50 to double
  %div.50 = fdiv double %conv.50, 0x41DFFFFFFFC00000
  %mul.50 = fmul double %div.50, 1.280000e+02
  %add.50 = fadd double %mul.50, 0.000000e+00
  %conv6.50 = fptosi double %add.50 to i32
  %arrayidx.50 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.49
  store i32 %conv6.50, i32* %arrayidx.50, align 4
  %call7.50 = call i32 @rand() #4
  %conv8.50 = sitofp i32 %call7.50 to double
  %div9.50 = fdiv double %conv8.50, 0x41DFFFFFFFC00000
  %mul12.50 = fmul double %div9.50, 1.280000e+02
  %add14.50 = fadd double %mul12.50, 0.000000e+00
  %conv15.50 = fptosi double %add14.50 to i32
  %arrayidx17.50 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.49
  store i32 %conv15.50, i32* %arrayidx17.50, align 4
  %arrayidx19.50 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.49
  store i32 0, i32* %arrayidx19.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %call3.51 = call i32 @rand() #4
  %conv.51 = sitofp i32 %call3.51 to double
  %div.51 = fdiv double %conv.51, 0x41DFFFFFFFC00000
  %mul.51 = fmul double %div.51, 1.280000e+02
  %add.51 = fadd double %mul.51, 0.000000e+00
  %conv6.51 = fptosi double %add.51 to i32
  %arrayidx.51 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.50
  store i32 %conv6.51, i32* %arrayidx.51, align 4
  %call7.51 = call i32 @rand() #4
  %conv8.51 = sitofp i32 %call7.51 to double
  %div9.51 = fdiv double %conv8.51, 0x41DFFFFFFFC00000
  %mul12.51 = fmul double %div9.51, 1.280000e+02
  %add14.51 = fadd double %mul12.51, 0.000000e+00
  %conv15.51 = fptosi double %add14.51 to i32
  %arrayidx17.51 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.50
  store i32 %conv15.51, i32* %arrayidx17.51, align 4
  %arrayidx19.51 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.50
  store i32 0, i32* %arrayidx19.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %call3.52 = call i32 @rand() #4
  %conv.52 = sitofp i32 %call3.52 to double
  %div.52 = fdiv double %conv.52, 0x41DFFFFFFFC00000
  %mul.52 = fmul double %div.52, 1.280000e+02
  %add.52 = fadd double %mul.52, 0.000000e+00
  %conv6.52 = fptosi double %add.52 to i32
  %arrayidx.52 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.51
  store i32 %conv6.52, i32* %arrayidx.52, align 4
  %call7.52 = call i32 @rand() #4
  %conv8.52 = sitofp i32 %call7.52 to double
  %div9.52 = fdiv double %conv8.52, 0x41DFFFFFFFC00000
  %mul12.52 = fmul double %div9.52, 1.280000e+02
  %add14.52 = fadd double %mul12.52, 0.000000e+00
  %conv15.52 = fptosi double %add14.52 to i32
  %arrayidx17.52 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.51
  store i32 %conv15.52, i32* %arrayidx17.52, align 4
  %arrayidx19.52 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.51
  store i32 0, i32* %arrayidx19.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %call3.53 = call i32 @rand() #4
  %conv.53 = sitofp i32 %call3.53 to double
  %div.53 = fdiv double %conv.53, 0x41DFFFFFFFC00000
  %mul.53 = fmul double %div.53, 1.280000e+02
  %add.53 = fadd double %mul.53, 0.000000e+00
  %conv6.53 = fptosi double %add.53 to i32
  %arrayidx.53 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.52
  store i32 %conv6.53, i32* %arrayidx.53, align 4
  %call7.53 = call i32 @rand() #4
  %conv8.53 = sitofp i32 %call7.53 to double
  %div9.53 = fdiv double %conv8.53, 0x41DFFFFFFFC00000
  %mul12.53 = fmul double %div9.53, 1.280000e+02
  %add14.53 = fadd double %mul12.53, 0.000000e+00
  %conv15.53 = fptosi double %add14.53 to i32
  %arrayidx17.53 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.52
  store i32 %conv15.53, i32* %arrayidx17.53, align 4
  %arrayidx19.53 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.52
  store i32 0, i32* %arrayidx19.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %call3.54 = call i32 @rand() #4
  %conv.54 = sitofp i32 %call3.54 to double
  %div.54 = fdiv double %conv.54, 0x41DFFFFFFFC00000
  %mul.54 = fmul double %div.54, 1.280000e+02
  %add.54 = fadd double %mul.54, 0.000000e+00
  %conv6.54 = fptosi double %add.54 to i32
  %arrayidx.54 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.53
  store i32 %conv6.54, i32* %arrayidx.54, align 4
  %call7.54 = call i32 @rand() #4
  %conv8.54 = sitofp i32 %call7.54 to double
  %div9.54 = fdiv double %conv8.54, 0x41DFFFFFFFC00000
  %mul12.54 = fmul double %div9.54, 1.280000e+02
  %add14.54 = fadd double %mul12.54, 0.000000e+00
  %conv15.54 = fptosi double %add14.54 to i32
  %arrayidx17.54 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.53
  store i32 %conv15.54, i32* %arrayidx17.54, align 4
  %arrayidx19.54 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.53
  store i32 0, i32* %arrayidx19.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %call3.55 = call i32 @rand() #4
  %conv.55 = sitofp i32 %call3.55 to double
  %div.55 = fdiv double %conv.55, 0x41DFFFFFFFC00000
  %mul.55 = fmul double %div.55, 1.280000e+02
  %add.55 = fadd double %mul.55, 0.000000e+00
  %conv6.55 = fptosi double %add.55 to i32
  %arrayidx.55 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.54
  store i32 %conv6.55, i32* %arrayidx.55, align 4
  %call7.55 = call i32 @rand() #4
  %conv8.55 = sitofp i32 %call7.55 to double
  %div9.55 = fdiv double %conv8.55, 0x41DFFFFFFFC00000
  %mul12.55 = fmul double %div9.55, 1.280000e+02
  %add14.55 = fadd double %mul12.55, 0.000000e+00
  %conv15.55 = fptosi double %add14.55 to i32
  %arrayidx17.55 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.54
  store i32 %conv15.55, i32* %arrayidx17.55, align 4
  %arrayidx19.55 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.54
  store i32 0, i32* %arrayidx19.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %call3.56 = call i32 @rand() #4
  %conv.56 = sitofp i32 %call3.56 to double
  %div.56 = fdiv double %conv.56, 0x41DFFFFFFFC00000
  %mul.56 = fmul double %div.56, 1.280000e+02
  %add.56 = fadd double %mul.56, 0.000000e+00
  %conv6.56 = fptosi double %add.56 to i32
  %arrayidx.56 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.55
  store i32 %conv6.56, i32* %arrayidx.56, align 4
  %call7.56 = call i32 @rand() #4
  %conv8.56 = sitofp i32 %call7.56 to double
  %div9.56 = fdiv double %conv8.56, 0x41DFFFFFFFC00000
  %mul12.56 = fmul double %div9.56, 1.280000e+02
  %add14.56 = fadd double %mul12.56, 0.000000e+00
  %conv15.56 = fptosi double %add14.56 to i32
  %arrayidx17.56 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.55
  store i32 %conv15.56, i32* %arrayidx17.56, align 4
  %arrayidx19.56 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.55
  store i32 0, i32* %arrayidx19.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %call3.57 = call i32 @rand() #4
  %conv.57 = sitofp i32 %call3.57 to double
  %div.57 = fdiv double %conv.57, 0x41DFFFFFFFC00000
  %mul.57 = fmul double %div.57, 1.280000e+02
  %add.57 = fadd double %mul.57, 0.000000e+00
  %conv6.57 = fptosi double %add.57 to i32
  %arrayidx.57 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.56
  store i32 %conv6.57, i32* %arrayidx.57, align 4
  %call7.57 = call i32 @rand() #4
  %conv8.57 = sitofp i32 %call7.57 to double
  %div9.57 = fdiv double %conv8.57, 0x41DFFFFFFFC00000
  %mul12.57 = fmul double %div9.57, 1.280000e+02
  %add14.57 = fadd double %mul12.57, 0.000000e+00
  %conv15.57 = fptosi double %add14.57 to i32
  %arrayidx17.57 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.56
  store i32 %conv15.57, i32* %arrayidx17.57, align 4
  %arrayidx19.57 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.56
  store i32 0, i32* %arrayidx19.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %call3.58 = call i32 @rand() #4
  %conv.58 = sitofp i32 %call3.58 to double
  %div.58 = fdiv double %conv.58, 0x41DFFFFFFFC00000
  %mul.58 = fmul double %div.58, 1.280000e+02
  %add.58 = fadd double %mul.58, 0.000000e+00
  %conv6.58 = fptosi double %add.58 to i32
  %arrayidx.58 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.57
  store i32 %conv6.58, i32* %arrayidx.58, align 4
  %call7.58 = call i32 @rand() #4
  %conv8.58 = sitofp i32 %call7.58 to double
  %div9.58 = fdiv double %conv8.58, 0x41DFFFFFFFC00000
  %mul12.58 = fmul double %div9.58, 1.280000e+02
  %add14.58 = fadd double %mul12.58, 0.000000e+00
  %conv15.58 = fptosi double %add14.58 to i32
  %arrayidx17.58 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.57
  store i32 %conv15.58, i32* %arrayidx17.58, align 4
  %arrayidx19.58 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.57
  store i32 0, i32* %arrayidx19.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %call3.59 = call i32 @rand() #4
  %conv.59 = sitofp i32 %call3.59 to double
  %div.59 = fdiv double %conv.59, 0x41DFFFFFFFC00000
  %mul.59 = fmul double %div.59, 1.280000e+02
  %add.59 = fadd double %mul.59, 0.000000e+00
  %conv6.59 = fptosi double %add.59 to i32
  %arrayidx.59 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.58
  store i32 %conv6.59, i32* %arrayidx.59, align 4
  %call7.59 = call i32 @rand() #4
  %conv8.59 = sitofp i32 %call7.59 to double
  %div9.59 = fdiv double %conv8.59, 0x41DFFFFFFFC00000
  %mul12.59 = fmul double %div9.59, 1.280000e+02
  %add14.59 = fadd double %mul12.59, 0.000000e+00
  %conv15.59 = fptosi double %add14.59 to i32
  %arrayidx17.59 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.58
  store i32 %conv15.59, i32* %arrayidx17.59, align 4
  %arrayidx19.59 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.58
  store i32 0, i32* %arrayidx19.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %call3.60 = call i32 @rand() #4
  %conv.60 = sitofp i32 %call3.60 to double
  %div.60 = fdiv double %conv.60, 0x41DFFFFFFFC00000
  %mul.60 = fmul double %div.60, 1.280000e+02
  %add.60 = fadd double %mul.60, 0.000000e+00
  %conv6.60 = fptosi double %add.60 to i32
  %arrayidx.60 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.59
  store i32 %conv6.60, i32* %arrayidx.60, align 4
  %call7.60 = call i32 @rand() #4
  %conv8.60 = sitofp i32 %call7.60 to double
  %div9.60 = fdiv double %conv8.60, 0x41DFFFFFFFC00000
  %mul12.60 = fmul double %div9.60, 1.280000e+02
  %add14.60 = fadd double %mul12.60, 0.000000e+00
  %conv15.60 = fptosi double %add14.60 to i32
  %arrayidx17.60 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.59
  store i32 %conv15.60, i32* %arrayidx17.60, align 4
  %arrayidx19.60 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.59
  store i32 0, i32* %arrayidx19.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %call3.61 = call i32 @rand() #4
  %conv.61 = sitofp i32 %call3.61 to double
  %div.61 = fdiv double %conv.61, 0x41DFFFFFFFC00000
  %mul.61 = fmul double %div.61, 1.280000e+02
  %add.61 = fadd double %mul.61, 0.000000e+00
  %conv6.61 = fptosi double %add.61 to i32
  %arrayidx.61 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.60
  store i32 %conv6.61, i32* %arrayidx.61, align 4
  %call7.61 = call i32 @rand() #4
  %conv8.61 = sitofp i32 %call7.61 to double
  %div9.61 = fdiv double %conv8.61, 0x41DFFFFFFFC00000
  %mul12.61 = fmul double %div9.61, 1.280000e+02
  %add14.61 = fadd double %mul12.61, 0.000000e+00
  %conv15.61 = fptosi double %add14.61 to i32
  %arrayidx17.61 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.60
  store i32 %conv15.61, i32* %arrayidx17.61, align 4
  %arrayidx19.61 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.60
  store i32 0, i32* %arrayidx19.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %call3.62 = call i32 @rand() #4
  %conv.62 = sitofp i32 %call3.62 to double
  %div.62 = fdiv double %conv.62, 0x41DFFFFFFFC00000
  %mul.62 = fmul double %div.62, 1.280000e+02
  %add.62 = fadd double %mul.62, 0.000000e+00
  %conv6.62 = fptosi double %add.62 to i32
  %arrayidx.62 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.61
  store i32 %conv6.62, i32* %arrayidx.62, align 4
  %call7.62 = call i32 @rand() #4
  %conv8.62 = sitofp i32 %call7.62 to double
  %div9.62 = fdiv double %conv8.62, 0x41DFFFFFFFC00000
  %mul12.62 = fmul double %div9.62, 1.280000e+02
  %add14.62 = fadd double %mul12.62, 0.000000e+00
  %conv15.62 = fptosi double %add14.62 to i32
  %arrayidx17.62 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.61
  store i32 %conv15.62, i32* %arrayidx17.62, align 4
  %arrayidx19.62 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.61
  store i32 0, i32* %arrayidx19.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %call3.63 = call i32 @rand() #4
  %conv.63 = sitofp i32 %call3.63 to double
  %div.63 = fdiv double %conv.63, 0x41DFFFFFFFC00000
  %mul.63 = fmul double %div.63, 1.280000e+02
  %add.63 = fadd double %mul.63, 0.000000e+00
  %conv6.63 = fptosi double %add.63 to i32
  %arrayidx.63 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.62
  store i32 %conv6.63, i32* %arrayidx.63, align 4
  %call7.63 = call i32 @rand() #4
  %conv8.63 = sitofp i32 %call7.63 to double
  %div9.63 = fdiv double %conv8.63, 0x41DFFFFFFFC00000
  %mul12.63 = fmul double %div9.63, 1.280000e+02
  %add14.63 = fadd double %mul12.63, 0.000000e+00
  %conv15.63 = fptosi double %add14.63 to i32
  %arrayidx17.63 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next.62
  store i32 %conv15.63, i32* %arrayidx17.63, align 4
  %arrayidx19.63 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.62
  store i32 0, i32* %arrayidx19.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 1048576
  br i1 %exitcond.63, label %for.body, label %for.end, !llvm.loop !9

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
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
