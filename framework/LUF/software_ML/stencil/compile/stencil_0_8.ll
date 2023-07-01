; ModuleID = 'stencil_0_8.ll'
source_filename = "stencil_0_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d, %d, %d,%d\0A \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Success!!\0A\00", align 1
@str = private unnamed_addr constant [10 x i8] c"Success!!\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil(i32* %orig, i32* %sol, i32* %filter) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc78.7, %entry
  %indvars.iv12 = phi i64 [ 0, %entry ], [ %indvars.iv.next13.7, %for.inc78.7 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv12, 12
  %1 = add nuw nsw i64 %0, %indvars.iv
  %2 = load i32, i32* %filter, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %orig, i64 %1
  %3 = load i32, i32* %arrayidx5, align 4
  %mul6 = mul nsw i32 %2, %3
  %4 = add nuw nsw i64 %1, 1
  %arrayidx10 = getelementptr inbounds i32, i32* %filter, i64 1
  %5 = load i32, i32* %arrayidx10, align 4
  %arrayidx12 = getelementptr inbounds i32, i32* %orig, i64 %4
  %6 = load i32, i32* %arrayidx12, align 4
  %mul13 = mul nsw i32 %5, %6
  %add14 = add nsw i32 %mul6, %mul13
  %7 = add nuw nsw i64 %1, 2
  %arrayidx18 = getelementptr inbounds i32, i32* %filter, i64 2
  %8 = load i32, i32* %arrayidx18, align 4
  %arrayidx20 = getelementptr inbounds i32, i32* %orig, i64 %7
  %9 = load i32, i32* %arrayidx20, align 4
  %mul21 = mul nsw i32 %8, %9
  %add22 = add nsw i32 %add14, %mul21
  %10 = add nuw nsw i64 %1, 4096
  %arrayidx27 = getelementptr inbounds i32, i32* %filter, i64 3
  %11 = load i32, i32* %arrayidx27, align 4
  %arrayidx29 = getelementptr inbounds i32, i32* %orig, i64 %10
  %12 = load i32, i32* %arrayidx29, align 4
  %mul30 = mul nsw i32 %11, %12
  %add31 = add nsw i32 %add22, %mul30
  %13 = add nuw nsw i64 %1, 4097
  %arrayidx35 = getelementptr inbounds i32, i32* %filter, i64 4
  %14 = load i32, i32* %arrayidx35, align 4
  %arrayidx37 = getelementptr inbounds i32, i32* %orig, i64 %13
  %15 = load i32, i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %14, %15
  %add39 = add nsw i32 %add31, %mul38
  %16 = add nuw nsw i64 %1, 4098
  %arrayidx43 = getelementptr inbounds i32, i32* %filter, i64 5
  %17 = load i32, i32* %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds i32, i32* %orig, i64 %16
  %18 = load i32, i32* %arrayidx45, align 4
  %mul46 = mul nsw i32 %17, %18
  %add47 = add nsw i32 %add39, %mul46
  %19 = add nuw nsw i64 %1, 8192
  %arrayidx52 = getelementptr inbounds i32, i32* %filter, i64 6
  %20 = load i32, i32* %arrayidx52, align 4
  %arrayidx54 = getelementptr inbounds i32, i32* %orig, i64 %19
  %21 = load i32, i32* %arrayidx54, align 4
  %mul55 = mul nsw i32 %20, %21
  %add56 = add nsw i32 %add47, %mul55
  %22 = add nuw nsw i64 %1, 8193
  %arrayidx60 = getelementptr inbounds i32, i32* %filter, i64 7
  %23 = load i32, i32* %arrayidx60, align 4
  %arrayidx62 = getelementptr inbounds i32, i32* %orig, i64 %22
  %24 = load i32, i32* %arrayidx62, align 4
  %mul63 = mul nsw i32 %23, %24
  %add64 = add nsw i32 %add56, %mul63
  %25 = add nuw nsw i64 %1, 8194
  %arrayidx68 = getelementptr inbounds i32, i32* %filter, i64 8
  %26 = load i32, i32* %arrayidx68, align 4
  %arrayidx70 = getelementptr inbounds i32, i32* %orig, i64 %25
  %27 = load i32, i32* %arrayidx70, align 4
  %mul71 = mul nsw i32 %26, %27
  %add72 = add nsw i32 %add64, %mul71
  %arrayidx76 = getelementptr inbounds i32, i32* %sol, i64 %1
  store i32 %add72, i32* %arrayidx76, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4094
  br i1 %exitcond, label %for.body3, label %for.inc78, !llvm.loop !2

for.inc78:                                        ; preds = %for.body3
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.body3.1

for.end80:                                        ; preds = %for.inc78.5
  ret void

for.body3.1:                                      ; preds = %for.body3.1, %for.inc78
  %indvars.iv.1 = phi i64 [ 0, %for.inc78 ], [ %indvars.iv.next.1, %for.body3.1 ]
  %28 = shl nsw i64 %indvars.iv.next13, 12
  %29 = add nuw nsw i64 %28, %indvars.iv.1
  %30 = load i32, i32* %filter, align 4
  %arrayidx5.1 = getelementptr inbounds i32, i32* %orig, i64 %29
  %31 = load i32, i32* %arrayidx5.1, align 4
  %mul6.1 = mul nsw i32 %30, %31
  %32 = add nuw nsw i64 %29, 1
  %arrayidx10.1 = getelementptr inbounds i32, i32* %filter, i64 1
  %33 = load i32, i32* %arrayidx10.1, align 4
  %arrayidx12.1 = getelementptr inbounds i32, i32* %orig, i64 %32
  %34 = load i32, i32* %arrayidx12.1, align 4
  %mul13.1 = mul nsw i32 %33, %34
  %add14.1 = add nsw i32 %mul6.1, %mul13.1
  %35 = add nuw nsw i64 %29, 2
  %arrayidx18.1 = getelementptr inbounds i32, i32* %filter, i64 2
  %36 = load i32, i32* %arrayidx18.1, align 4
  %arrayidx20.1 = getelementptr inbounds i32, i32* %orig, i64 %35
  %37 = load i32, i32* %arrayidx20.1, align 4
  %mul21.1 = mul nsw i32 %36, %37
  %add22.1 = add nsw i32 %add14.1, %mul21.1
  %38 = add nuw nsw i64 %29, 4096
  %arrayidx27.1 = getelementptr inbounds i32, i32* %filter, i64 3
  %39 = load i32, i32* %arrayidx27.1, align 4
  %arrayidx29.1 = getelementptr inbounds i32, i32* %orig, i64 %38
  %40 = load i32, i32* %arrayidx29.1, align 4
  %mul30.1 = mul nsw i32 %39, %40
  %add31.1 = add nsw i32 %add22.1, %mul30.1
  %41 = add nuw nsw i64 %29, 4097
  %arrayidx35.1 = getelementptr inbounds i32, i32* %filter, i64 4
  %42 = load i32, i32* %arrayidx35.1, align 4
  %arrayidx37.1 = getelementptr inbounds i32, i32* %orig, i64 %41
  %43 = load i32, i32* %arrayidx37.1, align 4
  %mul38.1 = mul nsw i32 %42, %43
  %add39.1 = add nsw i32 %add31.1, %mul38.1
  %44 = add nuw nsw i64 %29, 4098
  %arrayidx43.1 = getelementptr inbounds i32, i32* %filter, i64 5
  %45 = load i32, i32* %arrayidx43.1, align 4
  %arrayidx45.1 = getelementptr inbounds i32, i32* %orig, i64 %44
  %46 = load i32, i32* %arrayidx45.1, align 4
  %mul46.1 = mul nsw i32 %45, %46
  %add47.1 = add nsw i32 %add39.1, %mul46.1
  %47 = add nuw nsw i64 %29, 8192
  %arrayidx52.1 = getelementptr inbounds i32, i32* %filter, i64 6
  %48 = load i32, i32* %arrayidx52.1, align 4
  %arrayidx54.1 = getelementptr inbounds i32, i32* %orig, i64 %47
  %49 = load i32, i32* %arrayidx54.1, align 4
  %mul55.1 = mul nsw i32 %48, %49
  %add56.1 = add nsw i32 %add47.1, %mul55.1
  %50 = add nuw nsw i64 %29, 8193
  %arrayidx60.1 = getelementptr inbounds i32, i32* %filter, i64 7
  %51 = load i32, i32* %arrayidx60.1, align 4
  %arrayidx62.1 = getelementptr inbounds i32, i32* %orig, i64 %50
  %52 = load i32, i32* %arrayidx62.1, align 4
  %mul63.1 = mul nsw i32 %51, %52
  %add64.1 = add nsw i32 %add56.1, %mul63.1
  %53 = add nuw nsw i64 %29, 8194
  %arrayidx68.1 = getelementptr inbounds i32, i32* %filter, i64 8
  %54 = load i32, i32* %arrayidx68.1, align 4
  %arrayidx70.1 = getelementptr inbounds i32, i32* %orig, i64 %53
  %55 = load i32, i32* %arrayidx70.1, align 4
  %mul71.1 = mul nsw i32 %54, %55
  %add72.1 = add nsw i32 %add64.1, %mul71.1
  %arrayidx76.1 = getelementptr inbounds i32, i32* %sol, i64 %29
  store i32 %add72.1, i32* %arrayidx76.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 4094
  br i1 %exitcond.1, label %for.body3.1, label %for.inc78.1, !llvm.loop !2

for.inc78.1:                                      ; preds = %for.body3.1
  %indvars.iv.next13.1 = add nuw nsw i64 %indvars.iv.next13, 1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.body3.2, %for.inc78.1
  %indvars.iv.2 = phi i64 [ 0, %for.inc78.1 ], [ %indvars.iv.next.2, %for.body3.2 ]
  %56 = shl nsw i64 %indvars.iv.next13.1, 12
  %57 = add nuw nsw i64 %56, %indvars.iv.2
  %58 = load i32, i32* %filter, align 4
  %arrayidx5.2 = getelementptr inbounds i32, i32* %orig, i64 %57
  %59 = load i32, i32* %arrayidx5.2, align 4
  %mul6.2 = mul nsw i32 %58, %59
  %60 = add nuw nsw i64 %57, 1
  %arrayidx10.2 = getelementptr inbounds i32, i32* %filter, i64 1
  %61 = load i32, i32* %arrayidx10.2, align 4
  %arrayidx12.2 = getelementptr inbounds i32, i32* %orig, i64 %60
  %62 = load i32, i32* %arrayidx12.2, align 4
  %mul13.2 = mul nsw i32 %61, %62
  %add14.2 = add nsw i32 %mul6.2, %mul13.2
  %63 = add nuw nsw i64 %57, 2
  %arrayidx18.2 = getelementptr inbounds i32, i32* %filter, i64 2
  %64 = load i32, i32* %arrayidx18.2, align 4
  %arrayidx20.2 = getelementptr inbounds i32, i32* %orig, i64 %63
  %65 = load i32, i32* %arrayidx20.2, align 4
  %mul21.2 = mul nsw i32 %64, %65
  %add22.2 = add nsw i32 %add14.2, %mul21.2
  %66 = add nuw nsw i64 %57, 4096
  %arrayidx27.2 = getelementptr inbounds i32, i32* %filter, i64 3
  %67 = load i32, i32* %arrayidx27.2, align 4
  %arrayidx29.2 = getelementptr inbounds i32, i32* %orig, i64 %66
  %68 = load i32, i32* %arrayidx29.2, align 4
  %mul30.2 = mul nsw i32 %67, %68
  %add31.2 = add nsw i32 %add22.2, %mul30.2
  %69 = add nuw nsw i64 %57, 4097
  %arrayidx35.2 = getelementptr inbounds i32, i32* %filter, i64 4
  %70 = load i32, i32* %arrayidx35.2, align 4
  %arrayidx37.2 = getelementptr inbounds i32, i32* %orig, i64 %69
  %71 = load i32, i32* %arrayidx37.2, align 4
  %mul38.2 = mul nsw i32 %70, %71
  %add39.2 = add nsw i32 %add31.2, %mul38.2
  %72 = add nuw nsw i64 %57, 4098
  %arrayidx43.2 = getelementptr inbounds i32, i32* %filter, i64 5
  %73 = load i32, i32* %arrayidx43.2, align 4
  %arrayidx45.2 = getelementptr inbounds i32, i32* %orig, i64 %72
  %74 = load i32, i32* %arrayidx45.2, align 4
  %mul46.2 = mul nsw i32 %73, %74
  %add47.2 = add nsw i32 %add39.2, %mul46.2
  %75 = add nuw nsw i64 %57, 8192
  %arrayidx52.2 = getelementptr inbounds i32, i32* %filter, i64 6
  %76 = load i32, i32* %arrayidx52.2, align 4
  %arrayidx54.2 = getelementptr inbounds i32, i32* %orig, i64 %75
  %77 = load i32, i32* %arrayidx54.2, align 4
  %mul55.2 = mul nsw i32 %76, %77
  %add56.2 = add nsw i32 %add47.2, %mul55.2
  %78 = add nuw nsw i64 %57, 8193
  %arrayidx60.2 = getelementptr inbounds i32, i32* %filter, i64 7
  %79 = load i32, i32* %arrayidx60.2, align 4
  %arrayidx62.2 = getelementptr inbounds i32, i32* %orig, i64 %78
  %80 = load i32, i32* %arrayidx62.2, align 4
  %mul63.2 = mul nsw i32 %79, %80
  %add64.2 = add nsw i32 %add56.2, %mul63.2
  %81 = add nuw nsw i64 %57, 8194
  %arrayidx68.2 = getelementptr inbounds i32, i32* %filter, i64 8
  %82 = load i32, i32* %arrayidx68.2, align 4
  %arrayidx70.2 = getelementptr inbounds i32, i32* %orig, i64 %81
  %83 = load i32, i32* %arrayidx70.2, align 4
  %mul71.2 = mul nsw i32 %82, %83
  %add72.2 = add nsw i32 %add64.2, %mul71.2
  %arrayidx76.2 = getelementptr inbounds i32, i32* %sol, i64 %57
  store i32 %add72.2, i32* %arrayidx76.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, 4094
  br i1 %exitcond.2, label %for.body3.2, label %for.inc78.2, !llvm.loop !2

for.inc78.2:                                      ; preds = %for.body3.2
  %indvars.iv.next13.2 = add nuw nsw i64 %indvars.iv.next13.1, 1
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.body3.3, %for.inc78.2
  %indvars.iv.3 = phi i64 [ 0, %for.inc78.2 ], [ %indvars.iv.next.3, %for.body3.3 ]
  %84 = shl nsw i64 %indvars.iv.next13.2, 12
  %85 = add nuw nsw i64 %84, %indvars.iv.3
  %86 = load i32, i32* %filter, align 4
  %arrayidx5.3 = getelementptr inbounds i32, i32* %orig, i64 %85
  %87 = load i32, i32* %arrayidx5.3, align 4
  %mul6.3 = mul nsw i32 %86, %87
  %88 = add nuw nsw i64 %85, 1
  %arrayidx10.3 = getelementptr inbounds i32, i32* %filter, i64 1
  %89 = load i32, i32* %arrayidx10.3, align 4
  %arrayidx12.3 = getelementptr inbounds i32, i32* %orig, i64 %88
  %90 = load i32, i32* %arrayidx12.3, align 4
  %mul13.3 = mul nsw i32 %89, %90
  %add14.3 = add nsw i32 %mul6.3, %mul13.3
  %91 = add nuw nsw i64 %85, 2
  %arrayidx18.3 = getelementptr inbounds i32, i32* %filter, i64 2
  %92 = load i32, i32* %arrayidx18.3, align 4
  %arrayidx20.3 = getelementptr inbounds i32, i32* %orig, i64 %91
  %93 = load i32, i32* %arrayidx20.3, align 4
  %mul21.3 = mul nsw i32 %92, %93
  %add22.3 = add nsw i32 %add14.3, %mul21.3
  %94 = add nuw nsw i64 %85, 4096
  %arrayidx27.3 = getelementptr inbounds i32, i32* %filter, i64 3
  %95 = load i32, i32* %arrayidx27.3, align 4
  %arrayidx29.3 = getelementptr inbounds i32, i32* %orig, i64 %94
  %96 = load i32, i32* %arrayidx29.3, align 4
  %mul30.3 = mul nsw i32 %95, %96
  %add31.3 = add nsw i32 %add22.3, %mul30.3
  %97 = add nuw nsw i64 %85, 4097
  %arrayidx35.3 = getelementptr inbounds i32, i32* %filter, i64 4
  %98 = load i32, i32* %arrayidx35.3, align 4
  %arrayidx37.3 = getelementptr inbounds i32, i32* %orig, i64 %97
  %99 = load i32, i32* %arrayidx37.3, align 4
  %mul38.3 = mul nsw i32 %98, %99
  %add39.3 = add nsw i32 %add31.3, %mul38.3
  %100 = add nuw nsw i64 %85, 4098
  %arrayidx43.3 = getelementptr inbounds i32, i32* %filter, i64 5
  %101 = load i32, i32* %arrayidx43.3, align 4
  %arrayidx45.3 = getelementptr inbounds i32, i32* %orig, i64 %100
  %102 = load i32, i32* %arrayidx45.3, align 4
  %mul46.3 = mul nsw i32 %101, %102
  %add47.3 = add nsw i32 %add39.3, %mul46.3
  %103 = add nuw nsw i64 %85, 8192
  %arrayidx52.3 = getelementptr inbounds i32, i32* %filter, i64 6
  %104 = load i32, i32* %arrayidx52.3, align 4
  %arrayidx54.3 = getelementptr inbounds i32, i32* %orig, i64 %103
  %105 = load i32, i32* %arrayidx54.3, align 4
  %mul55.3 = mul nsw i32 %104, %105
  %add56.3 = add nsw i32 %add47.3, %mul55.3
  %106 = add nuw nsw i64 %85, 8193
  %arrayidx60.3 = getelementptr inbounds i32, i32* %filter, i64 7
  %107 = load i32, i32* %arrayidx60.3, align 4
  %arrayidx62.3 = getelementptr inbounds i32, i32* %orig, i64 %106
  %108 = load i32, i32* %arrayidx62.3, align 4
  %mul63.3 = mul nsw i32 %107, %108
  %add64.3 = add nsw i32 %add56.3, %mul63.3
  %109 = add nuw nsw i64 %85, 8194
  %arrayidx68.3 = getelementptr inbounds i32, i32* %filter, i64 8
  %110 = load i32, i32* %arrayidx68.3, align 4
  %arrayidx70.3 = getelementptr inbounds i32, i32* %orig, i64 %109
  %111 = load i32, i32* %arrayidx70.3, align 4
  %mul71.3 = mul nsw i32 %110, %111
  %add72.3 = add nsw i32 %add64.3, %mul71.3
  %arrayidx76.3 = getelementptr inbounds i32, i32* %sol, i64 %85
  store i32 %add72.3, i32* %arrayidx76.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, 4094
  br i1 %exitcond.3, label %for.body3.3, label %for.inc78.3, !llvm.loop !2

for.inc78.3:                                      ; preds = %for.body3.3
  %indvars.iv.next13.3 = add nuw nsw i64 %indvars.iv.next13.2, 1
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.body3.4, %for.inc78.3
  %indvars.iv.4 = phi i64 [ 0, %for.inc78.3 ], [ %indvars.iv.next.4, %for.body3.4 ]
  %112 = shl nsw i64 %indvars.iv.next13.3, 12
  %113 = add nuw nsw i64 %112, %indvars.iv.4
  %114 = load i32, i32* %filter, align 4
  %arrayidx5.4 = getelementptr inbounds i32, i32* %orig, i64 %113
  %115 = load i32, i32* %arrayidx5.4, align 4
  %mul6.4 = mul nsw i32 %114, %115
  %116 = add nuw nsw i64 %113, 1
  %arrayidx10.4 = getelementptr inbounds i32, i32* %filter, i64 1
  %117 = load i32, i32* %arrayidx10.4, align 4
  %arrayidx12.4 = getelementptr inbounds i32, i32* %orig, i64 %116
  %118 = load i32, i32* %arrayidx12.4, align 4
  %mul13.4 = mul nsw i32 %117, %118
  %add14.4 = add nsw i32 %mul6.4, %mul13.4
  %119 = add nuw nsw i64 %113, 2
  %arrayidx18.4 = getelementptr inbounds i32, i32* %filter, i64 2
  %120 = load i32, i32* %arrayidx18.4, align 4
  %arrayidx20.4 = getelementptr inbounds i32, i32* %orig, i64 %119
  %121 = load i32, i32* %arrayidx20.4, align 4
  %mul21.4 = mul nsw i32 %120, %121
  %add22.4 = add nsw i32 %add14.4, %mul21.4
  %122 = add nuw nsw i64 %113, 4096
  %arrayidx27.4 = getelementptr inbounds i32, i32* %filter, i64 3
  %123 = load i32, i32* %arrayidx27.4, align 4
  %arrayidx29.4 = getelementptr inbounds i32, i32* %orig, i64 %122
  %124 = load i32, i32* %arrayidx29.4, align 4
  %mul30.4 = mul nsw i32 %123, %124
  %add31.4 = add nsw i32 %add22.4, %mul30.4
  %125 = add nuw nsw i64 %113, 4097
  %arrayidx35.4 = getelementptr inbounds i32, i32* %filter, i64 4
  %126 = load i32, i32* %arrayidx35.4, align 4
  %arrayidx37.4 = getelementptr inbounds i32, i32* %orig, i64 %125
  %127 = load i32, i32* %arrayidx37.4, align 4
  %mul38.4 = mul nsw i32 %126, %127
  %add39.4 = add nsw i32 %add31.4, %mul38.4
  %128 = add nuw nsw i64 %113, 4098
  %arrayidx43.4 = getelementptr inbounds i32, i32* %filter, i64 5
  %129 = load i32, i32* %arrayidx43.4, align 4
  %arrayidx45.4 = getelementptr inbounds i32, i32* %orig, i64 %128
  %130 = load i32, i32* %arrayidx45.4, align 4
  %mul46.4 = mul nsw i32 %129, %130
  %add47.4 = add nsw i32 %add39.4, %mul46.4
  %131 = add nuw nsw i64 %113, 8192
  %arrayidx52.4 = getelementptr inbounds i32, i32* %filter, i64 6
  %132 = load i32, i32* %arrayidx52.4, align 4
  %arrayidx54.4 = getelementptr inbounds i32, i32* %orig, i64 %131
  %133 = load i32, i32* %arrayidx54.4, align 4
  %mul55.4 = mul nsw i32 %132, %133
  %add56.4 = add nsw i32 %add47.4, %mul55.4
  %134 = add nuw nsw i64 %113, 8193
  %arrayidx60.4 = getelementptr inbounds i32, i32* %filter, i64 7
  %135 = load i32, i32* %arrayidx60.4, align 4
  %arrayidx62.4 = getelementptr inbounds i32, i32* %orig, i64 %134
  %136 = load i32, i32* %arrayidx62.4, align 4
  %mul63.4 = mul nsw i32 %135, %136
  %add64.4 = add nsw i32 %add56.4, %mul63.4
  %137 = add nuw nsw i64 %113, 8194
  %arrayidx68.4 = getelementptr inbounds i32, i32* %filter, i64 8
  %138 = load i32, i32* %arrayidx68.4, align 4
  %arrayidx70.4 = getelementptr inbounds i32, i32* %orig, i64 %137
  %139 = load i32, i32* %arrayidx70.4, align 4
  %mul71.4 = mul nsw i32 %138, %139
  %add72.4 = add nsw i32 %add64.4, %mul71.4
  %arrayidx76.4 = getelementptr inbounds i32, i32* %sol, i64 %113
  store i32 %add72.4, i32* %arrayidx76.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4 = icmp ne i64 %indvars.iv.next.4, 4094
  br i1 %exitcond.4, label %for.body3.4, label %for.inc78.4, !llvm.loop !2

for.inc78.4:                                      ; preds = %for.body3.4
  %indvars.iv.next13.4 = add nuw nsw i64 %indvars.iv.next13.3, 1
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.body3.5, %for.inc78.4
  %indvars.iv.5 = phi i64 [ 0, %for.inc78.4 ], [ %indvars.iv.next.5, %for.body3.5 ]
  %140 = shl nsw i64 %indvars.iv.next13.4, 12
  %141 = add nuw nsw i64 %140, %indvars.iv.5
  %142 = load i32, i32* %filter, align 4
  %arrayidx5.5 = getelementptr inbounds i32, i32* %orig, i64 %141
  %143 = load i32, i32* %arrayidx5.5, align 4
  %mul6.5 = mul nsw i32 %142, %143
  %144 = add nuw nsw i64 %141, 1
  %arrayidx10.5 = getelementptr inbounds i32, i32* %filter, i64 1
  %145 = load i32, i32* %arrayidx10.5, align 4
  %arrayidx12.5 = getelementptr inbounds i32, i32* %orig, i64 %144
  %146 = load i32, i32* %arrayidx12.5, align 4
  %mul13.5 = mul nsw i32 %145, %146
  %add14.5 = add nsw i32 %mul6.5, %mul13.5
  %147 = add nuw nsw i64 %141, 2
  %arrayidx18.5 = getelementptr inbounds i32, i32* %filter, i64 2
  %148 = load i32, i32* %arrayidx18.5, align 4
  %arrayidx20.5 = getelementptr inbounds i32, i32* %orig, i64 %147
  %149 = load i32, i32* %arrayidx20.5, align 4
  %mul21.5 = mul nsw i32 %148, %149
  %add22.5 = add nsw i32 %add14.5, %mul21.5
  %150 = add nuw nsw i64 %141, 4096
  %arrayidx27.5 = getelementptr inbounds i32, i32* %filter, i64 3
  %151 = load i32, i32* %arrayidx27.5, align 4
  %arrayidx29.5 = getelementptr inbounds i32, i32* %orig, i64 %150
  %152 = load i32, i32* %arrayidx29.5, align 4
  %mul30.5 = mul nsw i32 %151, %152
  %add31.5 = add nsw i32 %add22.5, %mul30.5
  %153 = add nuw nsw i64 %141, 4097
  %arrayidx35.5 = getelementptr inbounds i32, i32* %filter, i64 4
  %154 = load i32, i32* %arrayidx35.5, align 4
  %arrayidx37.5 = getelementptr inbounds i32, i32* %orig, i64 %153
  %155 = load i32, i32* %arrayidx37.5, align 4
  %mul38.5 = mul nsw i32 %154, %155
  %add39.5 = add nsw i32 %add31.5, %mul38.5
  %156 = add nuw nsw i64 %141, 4098
  %arrayidx43.5 = getelementptr inbounds i32, i32* %filter, i64 5
  %157 = load i32, i32* %arrayidx43.5, align 4
  %arrayidx45.5 = getelementptr inbounds i32, i32* %orig, i64 %156
  %158 = load i32, i32* %arrayidx45.5, align 4
  %mul46.5 = mul nsw i32 %157, %158
  %add47.5 = add nsw i32 %add39.5, %mul46.5
  %159 = add nuw nsw i64 %141, 8192
  %arrayidx52.5 = getelementptr inbounds i32, i32* %filter, i64 6
  %160 = load i32, i32* %arrayidx52.5, align 4
  %arrayidx54.5 = getelementptr inbounds i32, i32* %orig, i64 %159
  %161 = load i32, i32* %arrayidx54.5, align 4
  %mul55.5 = mul nsw i32 %160, %161
  %add56.5 = add nsw i32 %add47.5, %mul55.5
  %162 = add nuw nsw i64 %141, 8193
  %arrayidx60.5 = getelementptr inbounds i32, i32* %filter, i64 7
  %163 = load i32, i32* %arrayidx60.5, align 4
  %arrayidx62.5 = getelementptr inbounds i32, i32* %orig, i64 %162
  %164 = load i32, i32* %arrayidx62.5, align 4
  %mul63.5 = mul nsw i32 %163, %164
  %add64.5 = add nsw i32 %add56.5, %mul63.5
  %165 = add nuw nsw i64 %141, 8194
  %arrayidx68.5 = getelementptr inbounds i32, i32* %filter, i64 8
  %166 = load i32, i32* %arrayidx68.5, align 4
  %arrayidx70.5 = getelementptr inbounds i32, i32* %orig, i64 %165
  %167 = load i32, i32* %arrayidx70.5, align 4
  %mul71.5 = mul nsw i32 %166, %167
  %add72.5 = add nsw i32 %add64.5, %mul71.5
  %arrayidx76.5 = getelementptr inbounds i32, i32* %sol, i64 %141
  store i32 %add72.5, i32* %arrayidx76.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5 = icmp ne i64 %indvars.iv.next.5, 4094
  br i1 %exitcond.5, label %for.body3.5, label %for.inc78.5, !llvm.loop !2

for.inc78.5:                                      ; preds = %for.body3.5
  %indvars.iv.next13.5 = add nuw nsw i64 %indvars.iv.next13.4, 1
  %exitcond15.5 = icmp ne i64 %indvars.iv.next13.5, 4094
  br i1 %exitcond15.5, label %for.body.6, label %for.end80, !llvm.loop !4

for.body.6:                                       ; preds = %for.inc78.5
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.body3.6, %for.body.6
  %indvars.iv.6 = phi i64 [ 0, %for.body.6 ], [ %indvars.iv.next.6, %for.body3.6 ]
  %168 = shl nsw i64 %indvars.iv.next13.5, 12
  %169 = add nuw nsw i64 %168, %indvars.iv.6
  %170 = load i32, i32* %filter, align 4
  %arrayidx5.6 = getelementptr inbounds i32, i32* %orig, i64 %169
  %171 = load i32, i32* %arrayidx5.6, align 4
  %mul6.6 = mul nsw i32 %170, %171
  %172 = add nuw nsw i64 %169, 1
  %arrayidx10.6 = getelementptr inbounds i32, i32* %filter, i64 1
  %173 = load i32, i32* %arrayidx10.6, align 4
  %arrayidx12.6 = getelementptr inbounds i32, i32* %orig, i64 %172
  %174 = load i32, i32* %arrayidx12.6, align 4
  %mul13.6 = mul nsw i32 %173, %174
  %add14.6 = add nsw i32 %mul6.6, %mul13.6
  %175 = add nuw nsw i64 %169, 2
  %arrayidx18.6 = getelementptr inbounds i32, i32* %filter, i64 2
  %176 = load i32, i32* %arrayidx18.6, align 4
  %arrayidx20.6 = getelementptr inbounds i32, i32* %orig, i64 %175
  %177 = load i32, i32* %arrayidx20.6, align 4
  %mul21.6 = mul nsw i32 %176, %177
  %add22.6 = add nsw i32 %add14.6, %mul21.6
  %178 = add nuw nsw i64 %169, 4096
  %arrayidx27.6 = getelementptr inbounds i32, i32* %filter, i64 3
  %179 = load i32, i32* %arrayidx27.6, align 4
  %arrayidx29.6 = getelementptr inbounds i32, i32* %orig, i64 %178
  %180 = load i32, i32* %arrayidx29.6, align 4
  %mul30.6 = mul nsw i32 %179, %180
  %add31.6 = add nsw i32 %add22.6, %mul30.6
  %181 = add nuw nsw i64 %169, 4097
  %arrayidx35.6 = getelementptr inbounds i32, i32* %filter, i64 4
  %182 = load i32, i32* %arrayidx35.6, align 4
  %arrayidx37.6 = getelementptr inbounds i32, i32* %orig, i64 %181
  %183 = load i32, i32* %arrayidx37.6, align 4
  %mul38.6 = mul nsw i32 %182, %183
  %add39.6 = add nsw i32 %add31.6, %mul38.6
  %184 = add nuw nsw i64 %169, 4098
  %arrayidx43.6 = getelementptr inbounds i32, i32* %filter, i64 5
  %185 = load i32, i32* %arrayidx43.6, align 4
  %arrayidx45.6 = getelementptr inbounds i32, i32* %orig, i64 %184
  %186 = load i32, i32* %arrayidx45.6, align 4
  %mul46.6 = mul nsw i32 %185, %186
  %add47.6 = add nsw i32 %add39.6, %mul46.6
  %187 = add nuw nsw i64 %169, 8192
  %arrayidx52.6 = getelementptr inbounds i32, i32* %filter, i64 6
  %188 = load i32, i32* %arrayidx52.6, align 4
  %arrayidx54.6 = getelementptr inbounds i32, i32* %orig, i64 %187
  %189 = load i32, i32* %arrayidx54.6, align 4
  %mul55.6 = mul nsw i32 %188, %189
  %add56.6 = add nsw i32 %add47.6, %mul55.6
  %190 = add nuw nsw i64 %169, 8193
  %arrayidx60.6 = getelementptr inbounds i32, i32* %filter, i64 7
  %191 = load i32, i32* %arrayidx60.6, align 4
  %arrayidx62.6 = getelementptr inbounds i32, i32* %orig, i64 %190
  %192 = load i32, i32* %arrayidx62.6, align 4
  %mul63.6 = mul nsw i32 %191, %192
  %add64.6 = add nsw i32 %add56.6, %mul63.6
  %193 = add nuw nsw i64 %169, 8194
  %arrayidx68.6 = getelementptr inbounds i32, i32* %filter, i64 8
  %194 = load i32, i32* %arrayidx68.6, align 4
  %arrayidx70.6 = getelementptr inbounds i32, i32* %orig, i64 %193
  %195 = load i32, i32* %arrayidx70.6, align 4
  %mul71.6 = mul nsw i32 %194, %195
  %add72.6 = add nsw i32 %add64.6, %mul71.6
  %arrayidx76.6 = getelementptr inbounds i32, i32* %sol, i64 %169
  store i32 %add72.6, i32* %arrayidx76.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6 = icmp ne i64 %indvars.iv.next.6, 4094
  br i1 %exitcond.6, label %for.body3.6, label %for.inc78.6, !llvm.loop !2

for.inc78.6:                                      ; preds = %for.body3.6
  %indvars.iv.next13.6 = add nuw nsw i64 %indvars.iv.next13.5, 1
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.body3.7, %for.inc78.6
  %indvars.iv.7 = phi i64 [ 0, %for.inc78.6 ], [ %indvars.iv.next.7, %for.body3.7 ]
  %196 = shl nsw i64 %indvars.iv.next13.6, 12
  %197 = add nuw nsw i64 %196, %indvars.iv.7
  %198 = load i32, i32* %filter, align 4
  %arrayidx5.7 = getelementptr inbounds i32, i32* %orig, i64 %197
  %199 = load i32, i32* %arrayidx5.7, align 4
  %mul6.7 = mul nsw i32 %198, %199
  %200 = add nuw nsw i64 %197, 1
  %arrayidx10.7 = getelementptr inbounds i32, i32* %filter, i64 1
  %201 = load i32, i32* %arrayidx10.7, align 4
  %arrayidx12.7 = getelementptr inbounds i32, i32* %orig, i64 %200
  %202 = load i32, i32* %arrayidx12.7, align 4
  %mul13.7 = mul nsw i32 %201, %202
  %add14.7 = add nsw i32 %mul6.7, %mul13.7
  %203 = add nuw nsw i64 %197, 2
  %arrayidx18.7 = getelementptr inbounds i32, i32* %filter, i64 2
  %204 = load i32, i32* %arrayidx18.7, align 4
  %arrayidx20.7 = getelementptr inbounds i32, i32* %orig, i64 %203
  %205 = load i32, i32* %arrayidx20.7, align 4
  %mul21.7 = mul nsw i32 %204, %205
  %add22.7 = add nsw i32 %add14.7, %mul21.7
  %206 = add nuw nsw i64 %197, 4096
  %arrayidx27.7 = getelementptr inbounds i32, i32* %filter, i64 3
  %207 = load i32, i32* %arrayidx27.7, align 4
  %arrayidx29.7 = getelementptr inbounds i32, i32* %orig, i64 %206
  %208 = load i32, i32* %arrayidx29.7, align 4
  %mul30.7 = mul nsw i32 %207, %208
  %add31.7 = add nsw i32 %add22.7, %mul30.7
  %209 = add nuw nsw i64 %197, 4097
  %arrayidx35.7 = getelementptr inbounds i32, i32* %filter, i64 4
  %210 = load i32, i32* %arrayidx35.7, align 4
  %arrayidx37.7 = getelementptr inbounds i32, i32* %orig, i64 %209
  %211 = load i32, i32* %arrayidx37.7, align 4
  %mul38.7 = mul nsw i32 %210, %211
  %add39.7 = add nsw i32 %add31.7, %mul38.7
  %212 = add nuw nsw i64 %197, 4098
  %arrayidx43.7 = getelementptr inbounds i32, i32* %filter, i64 5
  %213 = load i32, i32* %arrayidx43.7, align 4
  %arrayidx45.7 = getelementptr inbounds i32, i32* %orig, i64 %212
  %214 = load i32, i32* %arrayidx45.7, align 4
  %mul46.7 = mul nsw i32 %213, %214
  %add47.7 = add nsw i32 %add39.7, %mul46.7
  %215 = add nuw nsw i64 %197, 8192
  %arrayidx52.7 = getelementptr inbounds i32, i32* %filter, i64 6
  %216 = load i32, i32* %arrayidx52.7, align 4
  %arrayidx54.7 = getelementptr inbounds i32, i32* %orig, i64 %215
  %217 = load i32, i32* %arrayidx54.7, align 4
  %mul55.7 = mul nsw i32 %216, %217
  %add56.7 = add nsw i32 %add47.7, %mul55.7
  %218 = add nuw nsw i64 %197, 8193
  %arrayidx60.7 = getelementptr inbounds i32, i32* %filter, i64 7
  %219 = load i32, i32* %arrayidx60.7, align 4
  %arrayidx62.7 = getelementptr inbounds i32, i32* %orig, i64 %218
  %220 = load i32, i32* %arrayidx62.7, align 4
  %mul63.7 = mul nsw i32 %219, %220
  %add64.7 = add nsw i32 %add56.7, %mul63.7
  %221 = add nuw nsw i64 %197, 8194
  %arrayidx68.7 = getelementptr inbounds i32, i32* %filter, i64 8
  %222 = load i32, i32* %arrayidx68.7, align 4
  %arrayidx70.7 = getelementptr inbounds i32, i32* %orig, i64 %221
  %223 = load i32, i32* %arrayidx70.7, align 4
  %mul71.7 = mul nsw i32 %222, %223
  %add72.7 = add nsw i32 %add64.7, %mul71.7
  %arrayidx76.7 = getelementptr inbounds i32, i32* %sol, i64 %197
  store i32 %add72.7, i32* %arrayidx76.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7 = icmp ne i64 %indvars.iv.next.7, 4094
  br i1 %exitcond.7, label %for.body3.7, label %for.inc78.7, !llvm.loop !2

for.inc78.7:                                      ; preds = %for.body3.7
  %indvars.iv.next13.7 = add nuw nsw i64 %indvars.iv.next13.6, 1
  br label %for.body, !llvm.loop !6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  call void @srand(i32 8650341) #4
  %call = call noalias dereferenceable_or_null(67108864) i8* @malloc(i64 67108864) #4
  %0 = bitcast i8* %call to i32*
  %call1 = call noalias dereferenceable_or_null(67108864) i8* @malloc(i64 67108864) #4
  %1 = bitcast i8* %call1 to i32*
  %call2 = call noalias dereferenceable_or_null(36) i8* @malloc(i64 36) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc17
  %indvars.iv46 = phi i64 [ 0, %entry ], [ %indvars.iv.next47, %for.inc17 ]
  br label %for.body5

for.body5:                                        ; preds = %for.body, %for.body5
  %indvars.iv41 = phi i64 [ 0, %for.body ], [ %indvars.iv.next42, %for.body5 ]
  %call6 = call i32 @rand() #4
  %conv = sitofp i32 %call6 to double
  %mul8 = fmul double %conv, 0x41DFFFFFFF800000
  %div = fdiv double %mul8, 0x41DFFFFFFFC00000
  %add = fadd double %div, 0.000000e+00
  %conv10 = fptosi double %add to i32
  %2 = shl nsw i64 %indvars.iv46, 12
  %3 = add nuw nsw i64 %2, %indvars.iv41
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %3
  store i32 %conv10, i32* %arrayidx, align 4
  %4 = shl nsw i64 %indvars.iv46, 12
  %5 = add nuw nsw i64 %4, %indvars.iv41
  %arrayidx16 = getelementptr inbounds i32, i32* %1, i64 %5
  store i32 0, i32* %arrayidx16, align 4
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond45 = icmp ne i64 %indvars.iv.next42, 4096
  br i1 %exitcond45, label %for.body5, label %for.inc17

for.inc17:                                        ; preds = %for.body5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50 = icmp ne i64 %indvars.iv.next47, 4096
  br i1 %exitcond50, label %for.body, label %for.body23.preheader

for.body23.preheader:                             ; preds = %for.inc17
  %6 = bitcast i8* %call2 to i32*
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader
  br label %for.body27

for.body27:                                       ; preds = %for.body23
  %call28 = call i32 @rand() #4
  %conv29 = sitofp i32 %call28 to double
  %mul33 = fmul double %conv29, 0x41DFFFFFFF800000
  %div34 = fdiv double %mul33, 0x41DFFFFFFFC00000
  %add36 = fadd double %div34, 0.000000e+00
  %conv37 = fptosi double %add36 to i32
  store i32 %conv37, i32* %6, align 4
  %call28.1 = call i32 @rand() #4
  %conv29.1 = sitofp i32 %call28.1 to double
  %mul33.1 = fmul double %conv29.1, 0x41DFFFFFFF800000
  %div34.1 = fdiv double %mul33.1, 0x41DFFFFFFFC00000
  %add36.1 = fadd double %div34.1, 0.000000e+00
  %conv37.1 = fptosi double %add36.1 to i32
  %arrayidx41.1 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 %conv37.1, i32* %arrayidx41.1, align 4
  %call28.2 = call i32 @rand() #4
  %conv29.2 = sitofp i32 %call28.2 to double
  %mul33.2 = fmul double %conv29.2, 0x41DFFFFFFF800000
  %div34.2 = fdiv double %mul33.2, 0x41DFFFFFFFC00000
  %add36.2 = fadd double %div34.2, 0.000000e+00
  %conv37.2 = fptosi double %add36.2 to i32
  %arrayidx41.2 = getelementptr inbounds i32, i32* %6, i64 2
  store i32 %conv37.2, i32* %arrayidx41.2, align 4
  br label %for.body27.1

for.body54:                                       ; preds = %for.body27.2, %for.body58
  %indvars.iv = phi i64 [ 0, %for.body27.2 ], [ %indvars.iv.next, %for.body58 ]
  br label %for.body58

for.body58:                                       ; preds = %for.body54
  %7 = shl nsw i64 %indvars.iv, 12
  %arrayidx62 = getelementptr inbounds i32, i32* %0, i64 %7
  %8 = load i32, i32* %arrayidx62, align 4
  %9 = shl nsw i64 %indvars.iv, 12
  %arrayidx66 = getelementptr inbounds i32, i32* %1, i64 %9
  %10 = load i32, i32* %arrayidx66, align 4
  %11 = trunc i64 %indvars.iv to i32
  %call67 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, i32 0, i32 %8, i32 %10) #4
  %12 = shl nsw i64 %indvars.iv, 12
  %13 = add nuw nsw i64 %12, 1
  %arrayidx62.1 = getelementptr inbounds i32, i32* %0, i64 %13
  %14 = load i32, i32* %arrayidx62.1, align 4
  %15 = shl nsw i64 %indvars.iv, 12
  %16 = add nuw nsw i64 %15, 1
  %arrayidx66.1 = getelementptr inbounds i32, i32* %1, i64 %16
  %17 = load i32, i32* %arrayidx66.1, align 4
  %18 = trunc i64 %indvars.iv to i32
  %call67.1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 1, i32 %14, i32 %17) #4
  %19 = shl nsw i64 %indvars.iv, 12
  %20 = add nuw nsw i64 %19, 2
  %arrayidx62.2 = getelementptr inbounds i32, i32* %0, i64 %20
  %21 = load i32, i32* %arrayidx62.2, align 4
  %22 = shl nsw i64 %indvars.iv, 12
  %23 = add nuw nsw i64 %22, 2
  %arrayidx66.2 = getelementptr inbounds i32, i32* %1, i64 %23
  %24 = load i32, i32* %arrayidx66.2, align 4
  %25 = trunc i64 %indvars.iv to i32
  %call67.2 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25, i32 2, i32 %21, i32 %24) #4
  %26 = shl nsw i64 %indvars.iv, 12
  %27 = add nuw nsw i64 %26, 3
  %arrayidx62.3 = getelementptr inbounds i32, i32* %0, i64 %27
  %28 = load i32, i32* %arrayidx62.3, align 4
  %29 = shl nsw i64 %indvars.iv, 12
  %30 = add nuw nsw i64 %29, 3
  %arrayidx66.3 = getelementptr inbounds i32, i32* %1, i64 %30
  %31 = load i32, i32* %arrayidx66.3, align 4
  %32 = trunc i64 %indvars.iv to i32
  %call67.3 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %32, i32 3, i32 %28, i32 %31) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body54, label %for.end73

for.end73:                                        ; preds = %for.body58
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  ret i32 0

for.body27.1:                                     ; preds = %for.body27
  %call28.127 = call i32 @rand() #4
  %conv29.128 = sitofp i32 %call28.127 to double
  %mul33.129 = fmul double %conv29.128, 0x41DFFFFFFF800000
  %div34.130 = fdiv double %mul33.129, 0x41DFFFFFFFC00000
  %add36.131 = fadd double %div34.130, 0.000000e+00
  %conv37.132 = fptosi double %add36.131 to i32
  %arrayidx41.133 = getelementptr inbounds i32, i32* %6, i64 3
  store i32 %conv37.132, i32* %arrayidx41.133, align 4
  %call28.1.1 = call i32 @rand() #4
  %conv29.1.1 = sitofp i32 %call28.1.1 to double
  %mul33.1.1 = fmul double %conv29.1.1, 0x41DFFFFFFF800000
  %div34.1.1 = fdiv double %mul33.1.1, 0x41DFFFFFFFC00000
  %add36.1.1 = fadd double %div34.1.1, 0.000000e+00
  %conv37.1.1 = fptosi double %add36.1.1 to i32
  %arrayidx41.1.1 = getelementptr inbounds i32, i32* %6, i64 4
  store i32 %conv37.1.1, i32* %arrayidx41.1.1, align 4
  %call28.2.1 = call i32 @rand() #4
  %conv29.2.1 = sitofp i32 %call28.2.1 to double
  %mul33.2.1 = fmul double %conv29.2.1, 0x41DFFFFFFF800000
  %div34.2.1 = fdiv double %mul33.2.1, 0x41DFFFFFFFC00000
  %add36.2.1 = fadd double %div34.2.1, 0.000000e+00
  %conv37.2.1 = fptosi double %add36.2.1 to i32
  %arrayidx41.2.1 = getelementptr inbounds i32, i32* %6, i64 5
  store i32 %conv37.2.1, i32* %arrayidx41.2.1, align 4
  br label %for.body27.2

for.body27.2:                                     ; preds = %for.body27.1
  %call28.234 = call i32 @rand() #4
  %conv29.235 = sitofp i32 %call28.234 to double
  %mul33.236 = fmul double %conv29.235, 0x41DFFFFFFF800000
  %div34.237 = fdiv double %mul33.236, 0x41DFFFFFFFC00000
  %add36.238 = fadd double %div34.237, 0.000000e+00
  %conv37.239 = fptosi double %add36.238 to i32
  %arrayidx41.240 = getelementptr inbounds i32, i32* %6, i64 6
  store i32 %conv37.239, i32* %arrayidx41.240, align 4
  %call28.1.2 = call i32 @rand() #4
  %conv29.1.2 = sitofp i32 %call28.1.2 to double
  %mul33.1.2 = fmul double %conv29.1.2, 0x41DFFFFFFF800000
  %div34.1.2 = fdiv double %mul33.1.2, 0x41DFFFFFFFC00000
  %add36.1.2 = fadd double %div34.1.2, 0.000000e+00
  %conv37.1.2 = fptosi double %add36.1.2 to i32
  %arrayidx41.1.2 = getelementptr inbounds i32, i32* %6, i64 7
  store i32 %conv37.1.2, i32* %arrayidx41.1.2, align 4
  %call28.2.2 = call i32 @rand() #4
  %conv29.2.2 = sitofp i32 %call28.2.2 to double
  %mul33.2.2 = fmul double %conv29.2.2, 0x41DFFFFFFF800000
  %div34.2.2 = fdiv double %mul33.2.2, 0x41DFFFFFFFC00000
  %add36.2.2 = fadd double %div34.2.2, 0.000000e+00
  %conv37.2.2 = fptosi double %add36.2.2 to i32
  %arrayidx41.2.2 = getelementptr inbounds i32, i32* %6, i64 8
  store i32 %conv37.2.2, i32* %arrayidx41.2.2, align 4
  call void @stencil(i32* %0, i32* %1, i32* %6)
  br label %for.body54
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.count", i32 1}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.count", i32 8}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
