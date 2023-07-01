; ModuleID = 'unroll_no_auto_all/reduction_manual.ll'
source_filename = "reduction_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"sum: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @reduction(i32* %in) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.63, %for.body ]
  %sum.02 = phi i32 [ 0, %entry ], [ %add.63, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %in, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %sum.02, %0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next
  %1 = load i32, i32* %arrayidx.1, align 4
  %add.1 = add nsw i32 %add, %1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.1
  %2 = load i32, i32* %arrayidx.2, align 4
  %add.2 = add nsw i32 %add.1, %2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.2
  %3 = load i32, i32* %arrayidx.3, align 4
  %add.3 = add nsw i32 %add.2, %3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.3
  %4 = load i32, i32* %arrayidx.4, align 4
  %add.4 = add nsw i32 %add.3, %4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.4
  %5 = load i32, i32* %arrayidx.5, align 4
  %add.5 = add nsw i32 %add.4, %5
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.5
  %6 = load i32, i32* %arrayidx.6, align 4
  %add.6 = add nsw i32 %add.5, %6
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.6
  %7 = load i32, i32* %arrayidx.7, align 4
  %add.7 = add nsw i32 %add.6, %7
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %arrayidx.8 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.7
  %8 = load i32, i32* %arrayidx.8, align 4
  %add.8 = add nsw i32 %add.7, %8
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %arrayidx.9 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.8
  %9 = load i32, i32* %arrayidx.9, align 4
  %add.9 = add nsw i32 %add.8, %9
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %arrayidx.10 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.9
  %10 = load i32, i32* %arrayidx.10, align 4
  %add.10 = add nsw i32 %add.9, %10
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %arrayidx.11 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.10
  %11 = load i32, i32* %arrayidx.11, align 4
  %add.11 = add nsw i32 %add.10, %11
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %arrayidx.12 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.11
  %12 = load i32, i32* %arrayidx.12, align 4
  %add.12 = add nsw i32 %add.11, %12
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %arrayidx.13 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.12
  %13 = load i32, i32* %arrayidx.13, align 4
  %add.13 = add nsw i32 %add.12, %13
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %arrayidx.14 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.13
  %14 = load i32, i32* %arrayidx.14, align 4
  %add.14 = add nsw i32 %add.13, %14
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %arrayidx.15 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.14
  %15 = load i32, i32* %arrayidx.15, align 4
  %add.15 = add nsw i32 %add.14, %15
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %arrayidx.16 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.15
  %16 = load i32, i32* %arrayidx.16, align 4
  %add.16 = add nsw i32 %add.15, %16
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %arrayidx.17 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.16
  %17 = load i32, i32* %arrayidx.17, align 4
  %add.17 = add nsw i32 %add.16, %17
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %arrayidx.18 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.17
  %18 = load i32, i32* %arrayidx.18, align 4
  %add.18 = add nsw i32 %add.17, %18
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %arrayidx.19 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.18
  %19 = load i32, i32* %arrayidx.19, align 4
  %add.19 = add nsw i32 %add.18, %19
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %arrayidx.20 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.19
  %20 = load i32, i32* %arrayidx.20, align 4
  %add.20 = add nsw i32 %add.19, %20
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %arrayidx.21 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.20
  %21 = load i32, i32* %arrayidx.21, align 4
  %add.21 = add nsw i32 %add.20, %21
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %arrayidx.22 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.21
  %22 = load i32, i32* %arrayidx.22, align 4
  %add.22 = add nsw i32 %add.21, %22
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %arrayidx.23 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.22
  %23 = load i32, i32* %arrayidx.23, align 4
  %add.23 = add nsw i32 %add.22, %23
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %arrayidx.24 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.23
  %24 = load i32, i32* %arrayidx.24, align 4
  %add.24 = add nsw i32 %add.23, %24
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %arrayidx.25 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.24
  %25 = load i32, i32* %arrayidx.25, align 4
  %add.25 = add nsw i32 %add.24, %25
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %arrayidx.26 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.25
  %26 = load i32, i32* %arrayidx.26, align 4
  %add.26 = add nsw i32 %add.25, %26
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %arrayidx.27 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.26
  %27 = load i32, i32* %arrayidx.27, align 4
  %add.27 = add nsw i32 %add.26, %27
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %arrayidx.28 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.27
  %28 = load i32, i32* %arrayidx.28, align 4
  %add.28 = add nsw i32 %add.27, %28
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %arrayidx.29 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.28
  %29 = load i32, i32* %arrayidx.29, align 4
  %add.29 = add nsw i32 %add.28, %29
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %arrayidx.30 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.29
  %30 = load i32, i32* %arrayidx.30, align 4
  %add.30 = add nsw i32 %add.29, %30
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %arrayidx.31 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.30
  %31 = load i32, i32* %arrayidx.31, align 4
  %add.31 = add nsw i32 %add.30, %31
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %arrayidx.32 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.31
  %32 = load i32, i32* %arrayidx.32, align 4
  %add.32 = add nsw i32 %add.31, %32
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %arrayidx.33 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.32
  %33 = load i32, i32* %arrayidx.33, align 4
  %add.33 = add nsw i32 %add.32, %33
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %arrayidx.34 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.33
  %34 = load i32, i32* %arrayidx.34, align 4
  %add.34 = add nsw i32 %add.33, %34
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %arrayidx.35 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.34
  %35 = load i32, i32* %arrayidx.35, align 4
  %add.35 = add nsw i32 %add.34, %35
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %arrayidx.36 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.35
  %36 = load i32, i32* %arrayidx.36, align 4
  %add.36 = add nsw i32 %add.35, %36
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %arrayidx.37 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.36
  %37 = load i32, i32* %arrayidx.37, align 4
  %add.37 = add nsw i32 %add.36, %37
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %arrayidx.38 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.37
  %38 = load i32, i32* %arrayidx.38, align 4
  %add.38 = add nsw i32 %add.37, %38
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %arrayidx.39 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.38
  %39 = load i32, i32* %arrayidx.39, align 4
  %add.39 = add nsw i32 %add.38, %39
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %arrayidx.40 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.39
  %40 = load i32, i32* %arrayidx.40, align 4
  %add.40 = add nsw i32 %add.39, %40
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %arrayidx.41 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.40
  %41 = load i32, i32* %arrayidx.41, align 4
  %add.41 = add nsw i32 %add.40, %41
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %arrayidx.42 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.41
  %42 = load i32, i32* %arrayidx.42, align 4
  %add.42 = add nsw i32 %add.41, %42
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %arrayidx.43 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.42
  %43 = load i32, i32* %arrayidx.43, align 4
  %add.43 = add nsw i32 %add.42, %43
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %arrayidx.44 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.43
  %44 = load i32, i32* %arrayidx.44, align 4
  %add.44 = add nsw i32 %add.43, %44
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %arrayidx.45 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.44
  %45 = load i32, i32* %arrayidx.45, align 4
  %add.45 = add nsw i32 %add.44, %45
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %arrayidx.46 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.45
  %46 = load i32, i32* %arrayidx.46, align 4
  %add.46 = add nsw i32 %add.45, %46
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %arrayidx.47 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.46
  %47 = load i32, i32* %arrayidx.47, align 4
  %add.47 = add nsw i32 %add.46, %47
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %arrayidx.48 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.47
  %48 = load i32, i32* %arrayidx.48, align 4
  %add.48 = add nsw i32 %add.47, %48
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %arrayidx.49 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.48
  %49 = load i32, i32* %arrayidx.49, align 4
  %add.49 = add nsw i32 %add.48, %49
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %arrayidx.50 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.49
  %50 = load i32, i32* %arrayidx.50, align 4
  %add.50 = add nsw i32 %add.49, %50
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %arrayidx.51 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.50
  %51 = load i32, i32* %arrayidx.51, align 4
  %add.51 = add nsw i32 %add.50, %51
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %arrayidx.52 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.51
  %52 = load i32, i32* %arrayidx.52, align 4
  %add.52 = add nsw i32 %add.51, %52
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %arrayidx.53 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.52
  %53 = load i32, i32* %arrayidx.53, align 4
  %add.53 = add nsw i32 %add.52, %53
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %arrayidx.54 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.53
  %54 = load i32, i32* %arrayidx.54, align 4
  %add.54 = add nsw i32 %add.53, %54
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %arrayidx.55 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.54
  %55 = load i32, i32* %arrayidx.55, align 4
  %add.55 = add nsw i32 %add.54, %55
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %arrayidx.56 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.55
  %56 = load i32, i32* %arrayidx.56, align 4
  %add.56 = add nsw i32 %add.55, %56
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %arrayidx.57 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.56
  %57 = load i32, i32* %arrayidx.57, align 4
  %add.57 = add nsw i32 %add.56, %57
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %arrayidx.58 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.57
  %58 = load i32, i32* %arrayidx.58, align 4
  %add.58 = add nsw i32 %add.57, %58
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %arrayidx.59 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.58
  %59 = load i32, i32* %arrayidx.59, align 4
  %add.59 = add nsw i32 %add.58, %59
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %arrayidx.60 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.59
  %60 = load i32, i32* %arrayidx.60, align 4
  %add.60 = add nsw i32 %add.59, %60
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %arrayidx.61 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.60
  %61 = load i32, i32* %arrayidx.61, align 4
  %add.61 = add nsw i32 %add.60, %61
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %arrayidx.62 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.61
  %62 = load i32, i32* %arrayidx.62, align 4
  %add.62 = add nsw i32 %add.61, %62
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %arrayidx.63 = getelementptr inbounds i32, i32* %in, i64 %indvars.iv.next.62
  %63 = load i32, i32* %arrayidx.63, align 4
  %add.63 = add nsw i32 %add.62, %63
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 4096
  br i1 %exitcond.63, label %for.body, label %for.end, !llvm.loop !2

for.end:                                          ; preds = %for.body
  %add.lcssa = phi i32 [ %add.63, %for.body ]
  ret i32 %add.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call noalias dereferenceable_or_null(16384) i8* @malloc(i64 16384) #3
  %0 = bitcast i8* %call to i32*
  call void @srand(i32 8650341) #3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.63, %for.body ]
  %call1 = call i32 @rand() #3
  %conv2 = sitofp i32 %call1 to double
  %mul4 = fmul double %conv2, 0x41DFFFFFFF800000
  %div = fdiv double %mul4, 0x41DFFFFFFFC00000
  %add = fadd double %div, 0.000000e+00
  %conv5 = fptosi double %add to i32
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %conv5, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call1.1 = call i32 @rand() #3
  %conv2.1 = sitofp i32 %call1.1 to double
  %mul4.1 = fmul double %conv2.1, 0x41DFFFFFFF800000
  %div.1 = fdiv double %mul4.1, 0x41DFFFFFFFC00000
  %add.1 = fadd double %div.1, 0.000000e+00
  %conv5.1 = fptosi double %add.1 to i32
  %arrayidx.1 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  store i32 %conv5.1, i32* %arrayidx.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %call1.2 = call i32 @rand() #3
  %conv2.2 = sitofp i32 %call1.2 to double
  %mul4.2 = fmul double %conv2.2, 0x41DFFFFFFF800000
  %div.2 = fdiv double %mul4.2, 0x41DFFFFFFFC00000
  %add.2 = fadd double %div.2, 0.000000e+00
  %conv5.2 = fptosi double %add.2 to i32
  %arrayidx.2 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.1
  store i32 %conv5.2, i32* %arrayidx.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %call1.3 = call i32 @rand() #3
  %conv2.3 = sitofp i32 %call1.3 to double
  %mul4.3 = fmul double %conv2.3, 0x41DFFFFFFF800000
  %div.3 = fdiv double %mul4.3, 0x41DFFFFFFFC00000
  %add.3 = fadd double %div.3, 0.000000e+00
  %conv5.3 = fptosi double %add.3 to i32
  %arrayidx.3 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.2
  store i32 %conv5.3, i32* %arrayidx.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %call1.4 = call i32 @rand() #3
  %conv2.4 = sitofp i32 %call1.4 to double
  %mul4.4 = fmul double %conv2.4, 0x41DFFFFFFF800000
  %div.4 = fdiv double %mul4.4, 0x41DFFFFFFFC00000
  %add.4 = fadd double %div.4, 0.000000e+00
  %conv5.4 = fptosi double %add.4 to i32
  %arrayidx.4 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.3
  store i32 %conv5.4, i32* %arrayidx.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %call1.5 = call i32 @rand() #3
  %conv2.5 = sitofp i32 %call1.5 to double
  %mul4.5 = fmul double %conv2.5, 0x41DFFFFFFF800000
  %div.5 = fdiv double %mul4.5, 0x41DFFFFFFFC00000
  %add.5 = fadd double %div.5, 0.000000e+00
  %conv5.5 = fptosi double %add.5 to i32
  %arrayidx.5 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.4
  store i32 %conv5.5, i32* %arrayidx.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %call1.6 = call i32 @rand() #3
  %conv2.6 = sitofp i32 %call1.6 to double
  %mul4.6 = fmul double %conv2.6, 0x41DFFFFFFF800000
  %div.6 = fdiv double %mul4.6, 0x41DFFFFFFFC00000
  %add.6 = fadd double %div.6, 0.000000e+00
  %conv5.6 = fptosi double %add.6 to i32
  %arrayidx.6 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.5
  store i32 %conv5.6, i32* %arrayidx.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %call1.7 = call i32 @rand() #3
  %conv2.7 = sitofp i32 %call1.7 to double
  %mul4.7 = fmul double %conv2.7, 0x41DFFFFFFF800000
  %div.7 = fdiv double %mul4.7, 0x41DFFFFFFFC00000
  %add.7 = fadd double %div.7, 0.000000e+00
  %conv5.7 = fptosi double %add.7 to i32
  %arrayidx.7 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.6
  store i32 %conv5.7, i32* %arrayidx.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %call1.8 = call i32 @rand() #3
  %conv2.8 = sitofp i32 %call1.8 to double
  %mul4.8 = fmul double %conv2.8, 0x41DFFFFFFF800000
  %div.8 = fdiv double %mul4.8, 0x41DFFFFFFFC00000
  %add.8 = fadd double %div.8, 0.000000e+00
  %conv5.8 = fptosi double %add.8 to i32
  %arrayidx.8 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.7
  store i32 %conv5.8, i32* %arrayidx.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %call1.9 = call i32 @rand() #3
  %conv2.9 = sitofp i32 %call1.9 to double
  %mul4.9 = fmul double %conv2.9, 0x41DFFFFFFF800000
  %div.9 = fdiv double %mul4.9, 0x41DFFFFFFFC00000
  %add.9 = fadd double %div.9, 0.000000e+00
  %conv5.9 = fptosi double %add.9 to i32
  %arrayidx.9 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.8
  store i32 %conv5.9, i32* %arrayidx.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %call1.10 = call i32 @rand() #3
  %conv2.10 = sitofp i32 %call1.10 to double
  %mul4.10 = fmul double %conv2.10, 0x41DFFFFFFF800000
  %div.10 = fdiv double %mul4.10, 0x41DFFFFFFFC00000
  %add.10 = fadd double %div.10, 0.000000e+00
  %conv5.10 = fptosi double %add.10 to i32
  %arrayidx.10 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.9
  store i32 %conv5.10, i32* %arrayidx.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %call1.11 = call i32 @rand() #3
  %conv2.11 = sitofp i32 %call1.11 to double
  %mul4.11 = fmul double %conv2.11, 0x41DFFFFFFF800000
  %div.11 = fdiv double %mul4.11, 0x41DFFFFFFFC00000
  %add.11 = fadd double %div.11, 0.000000e+00
  %conv5.11 = fptosi double %add.11 to i32
  %arrayidx.11 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.10
  store i32 %conv5.11, i32* %arrayidx.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %call1.12 = call i32 @rand() #3
  %conv2.12 = sitofp i32 %call1.12 to double
  %mul4.12 = fmul double %conv2.12, 0x41DFFFFFFF800000
  %div.12 = fdiv double %mul4.12, 0x41DFFFFFFFC00000
  %add.12 = fadd double %div.12, 0.000000e+00
  %conv5.12 = fptosi double %add.12 to i32
  %arrayidx.12 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.11
  store i32 %conv5.12, i32* %arrayidx.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %call1.13 = call i32 @rand() #3
  %conv2.13 = sitofp i32 %call1.13 to double
  %mul4.13 = fmul double %conv2.13, 0x41DFFFFFFF800000
  %div.13 = fdiv double %mul4.13, 0x41DFFFFFFFC00000
  %add.13 = fadd double %div.13, 0.000000e+00
  %conv5.13 = fptosi double %add.13 to i32
  %arrayidx.13 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.12
  store i32 %conv5.13, i32* %arrayidx.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %call1.14 = call i32 @rand() #3
  %conv2.14 = sitofp i32 %call1.14 to double
  %mul4.14 = fmul double %conv2.14, 0x41DFFFFFFF800000
  %div.14 = fdiv double %mul4.14, 0x41DFFFFFFFC00000
  %add.14 = fadd double %div.14, 0.000000e+00
  %conv5.14 = fptosi double %add.14 to i32
  %arrayidx.14 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.13
  store i32 %conv5.14, i32* %arrayidx.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %call1.15 = call i32 @rand() #3
  %conv2.15 = sitofp i32 %call1.15 to double
  %mul4.15 = fmul double %conv2.15, 0x41DFFFFFFF800000
  %div.15 = fdiv double %mul4.15, 0x41DFFFFFFFC00000
  %add.15 = fadd double %div.15, 0.000000e+00
  %conv5.15 = fptosi double %add.15 to i32
  %arrayidx.15 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.14
  store i32 %conv5.15, i32* %arrayidx.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %call1.16 = call i32 @rand() #3
  %conv2.16 = sitofp i32 %call1.16 to double
  %mul4.16 = fmul double %conv2.16, 0x41DFFFFFFF800000
  %div.16 = fdiv double %mul4.16, 0x41DFFFFFFFC00000
  %add.16 = fadd double %div.16, 0.000000e+00
  %conv5.16 = fptosi double %add.16 to i32
  %arrayidx.16 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.15
  store i32 %conv5.16, i32* %arrayidx.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %call1.17 = call i32 @rand() #3
  %conv2.17 = sitofp i32 %call1.17 to double
  %mul4.17 = fmul double %conv2.17, 0x41DFFFFFFF800000
  %div.17 = fdiv double %mul4.17, 0x41DFFFFFFFC00000
  %add.17 = fadd double %div.17, 0.000000e+00
  %conv5.17 = fptosi double %add.17 to i32
  %arrayidx.17 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.16
  store i32 %conv5.17, i32* %arrayidx.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %call1.18 = call i32 @rand() #3
  %conv2.18 = sitofp i32 %call1.18 to double
  %mul4.18 = fmul double %conv2.18, 0x41DFFFFFFF800000
  %div.18 = fdiv double %mul4.18, 0x41DFFFFFFFC00000
  %add.18 = fadd double %div.18, 0.000000e+00
  %conv5.18 = fptosi double %add.18 to i32
  %arrayidx.18 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.17
  store i32 %conv5.18, i32* %arrayidx.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %call1.19 = call i32 @rand() #3
  %conv2.19 = sitofp i32 %call1.19 to double
  %mul4.19 = fmul double %conv2.19, 0x41DFFFFFFF800000
  %div.19 = fdiv double %mul4.19, 0x41DFFFFFFFC00000
  %add.19 = fadd double %div.19, 0.000000e+00
  %conv5.19 = fptosi double %add.19 to i32
  %arrayidx.19 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.18
  store i32 %conv5.19, i32* %arrayidx.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %call1.20 = call i32 @rand() #3
  %conv2.20 = sitofp i32 %call1.20 to double
  %mul4.20 = fmul double %conv2.20, 0x41DFFFFFFF800000
  %div.20 = fdiv double %mul4.20, 0x41DFFFFFFFC00000
  %add.20 = fadd double %div.20, 0.000000e+00
  %conv5.20 = fptosi double %add.20 to i32
  %arrayidx.20 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.19
  store i32 %conv5.20, i32* %arrayidx.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %call1.21 = call i32 @rand() #3
  %conv2.21 = sitofp i32 %call1.21 to double
  %mul4.21 = fmul double %conv2.21, 0x41DFFFFFFF800000
  %div.21 = fdiv double %mul4.21, 0x41DFFFFFFFC00000
  %add.21 = fadd double %div.21, 0.000000e+00
  %conv5.21 = fptosi double %add.21 to i32
  %arrayidx.21 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.20
  store i32 %conv5.21, i32* %arrayidx.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %call1.22 = call i32 @rand() #3
  %conv2.22 = sitofp i32 %call1.22 to double
  %mul4.22 = fmul double %conv2.22, 0x41DFFFFFFF800000
  %div.22 = fdiv double %mul4.22, 0x41DFFFFFFFC00000
  %add.22 = fadd double %div.22, 0.000000e+00
  %conv5.22 = fptosi double %add.22 to i32
  %arrayidx.22 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.21
  store i32 %conv5.22, i32* %arrayidx.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %call1.23 = call i32 @rand() #3
  %conv2.23 = sitofp i32 %call1.23 to double
  %mul4.23 = fmul double %conv2.23, 0x41DFFFFFFF800000
  %div.23 = fdiv double %mul4.23, 0x41DFFFFFFFC00000
  %add.23 = fadd double %div.23, 0.000000e+00
  %conv5.23 = fptosi double %add.23 to i32
  %arrayidx.23 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.22
  store i32 %conv5.23, i32* %arrayidx.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %call1.24 = call i32 @rand() #3
  %conv2.24 = sitofp i32 %call1.24 to double
  %mul4.24 = fmul double %conv2.24, 0x41DFFFFFFF800000
  %div.24 = fdiv double %mul4.24, 0x41DFFFFFFFC00000
  %add.24 = fadd double %div.24, 0.000000e+00
  %conv5.24 = fptosi double %add.24 to i32
  %arrayidx.24 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.23
  store i32 %conv5.24, i32* %arrayidx.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %call1.25 = call i32 @rand() #3
  %conv2.25 = sitofp i32 %call1.25 to double
  %mul4.25 = fmul double %conv2.25, 0x41DFFFFFFF800000
  %div.25 = fdiv double %mul4.25, 0x41DFFFFFFFC00000
  %add.25 = fadd double %div.25, 0.000000e+00
  %conv5.25 = fptosi double %add.25 to i32
  %arrayidx.25 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.24
  store i32 %conv5.25, i32* %arrayidx.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %call1.26 = call i32 @rand() #3
  %conv2.26 = sitofp i32 %call1.26 to double
  %mul4.26 = fmul double %conv2.26, 0x41DFFFFFFF800000
  %div.26 = fdiv double %mul4.26, 0x41DFFFFFFFC00000
  %add.26 = fadd double %div.26, 0.000000e+00
  %conv5.26 = fptosi double %add.26 to i32
  %arrayidx.26 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.25
  store i32 %conv5.26, i32* %arrayidx.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %call1.27 = call i32 @rand() #3
  %conv2.27 = sitofp i32 %call1.27 to double
  %mul4.27 = fmul double %conv2.27, 0x41DFFFFFFF800000
  %div.27 = fdiv double %mul4.27, 0x41DFFFFFFFC00000
  %add.27 = fadd double %div.27, 0.000000e+00
  %conv5.27 = fptosi double %add.27 to i32
  %arrayidx.27 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.26
  store i32 %conv5.27, i32* %arrayidx.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %call1.28 = call i32 @rand() #3
  %conv2.28 = sitofp i32 %call1.28 to double
  %mul4.28 = fmul double %conv2.28, 0x41DFFFFFFF800000
  %div.28 = fdiv double %mul4.28, 0x41DFFFFFFFC00000
  %add.28 = fadd double %div.28, 0.000000e+00
  %conv5.28 = fptosi double %add.28 to i32
  %arrayidx.28 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.27
  store i32 %conv5.28, i32* %arrayidx.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %call1.29 = call i32 @rand() #3
  %conv2.29 = sitofp i32 %call1.29 to double
  %mul4.29 = fmul double %conv2.29, 0x41DFFFFFFF800000
  %div.29 = fdiv double %mul4.29, 0x41DFFFFFFFC00000
  %add.29 = fadd double %div.29, 0.000000e+00
  %conv5.29 = fptosi double %add.29 to i32
  %arrayidx.29 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.28
  store i32 %conv5.29, i32* %arrayidx.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %call1.30 = call i32 @rand() #3
  %conv2.30 = sitofp i32 %call1.30 to double
  %mul4.30 = fmul double %conv2.30, 0x41DFFFFFFF800000
  %div.30 = fdiv double %mul4.30, 0x41DFFFFFFFC00000
  %add.30 = fadd double %div.30, 0.000000e+00
  %conv5.30 = fptosi double %add.30 to i32
  %arrayidx.30 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.29
  store i32 %conv5.30, i32* %arrayidx.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %call1.31 = call i32 @rand() #3
  %conv2.31 = sitofp i32 %call1.31 to double
  %mul4.31 = fmul double %conv2.31, 0x41DFFFFFFF800000
  %div.31 = fdiv double %mul4.31, 0x41DFFFFFFFC00000
  %add.31 = fadd double %div.31, 0.000000e+00
  %conv5.31 = fptosi double %add.31 to i32
  %arrayidx.31 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.30
  store i32 %conv5.31, i32* %arrayidx.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %call1.32 = call i32 @rand() #3
  %conv2.32 = sitofp i32 %call1.32 to double
  %mul4.32 = fmul double %conv2.32, 0x41DFFFFFFF800000
  %div.32 = fdiv double %mul4.32, 0x41DFFFFFFFC00000
  %add.32 = fadd double %div.32, 0.000000e+00
  %conv5.32 = fptosi double %add.32 to i32
  %arrayidx.32 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.31
  store i32 %conv5.32, i32* %arrayidx.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %call1.33 = call i32 @rand() #3
  %conv2.33 = sitofp i32 %call1.33 to double
  %mul4.33 = fmul double %conv2.33, 0x41DFFFFFFF800000
  %div.33 = fdiv double %mul4.33, 0x41DFFFFFFFC00000
  %add.33 = fadd double %div.33, 0.000000e+00
  %conv5.33 = fptosi double %add.33 to i32
  %arrayidx.33 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.32
  store i32 %conv5.33, i32* %arrayidx.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %call1.34 = call i32 @rand() #3
  %conv2.34 = sitofp i32 %call1.34 to double
  %mul4.34 = fmul double %conv2.34, 0x41DFFFFFFF800000
  %div.34 = fdiv double %mul4.34, 0x41DFFFFFFFC00000
  %add.34 = fadd double %div.34, 0.000000e+00
  %conv5.34 = fptosi double %add.34 to i32
  %arrayidx.34 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.33
  store i32 %conv5.34, i32* %arrayidx.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %call1.35 = call i32 @rand() #3
  %conv2.35 = sitofp i32 %call1.35 to double
  %mul4.35 = fmul double %conv2.35, 0x41DFFFFFFF800000
  %div.35 = fdiv double %mul4.35, 0x41DFFFFFFFC00000
  %add.35 = fadd double %div.35, 0.000000e+00
  %conv5.35 = fptosi double %add.35 to i32
  %arrayidx.35 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.34
  store i32 %conv5.35, i32* %arrayidx.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %call1.36 = call i32 @rand() #3
  %conv2.36 = sitofp i32 %call1.36 to double
  %mul4.36 = fmul double %conv2.36, 0x41DFFFFFFF800000
  %div.36 = fdiv double %mul4.36, 0x41DFFFFFFFC00000
  %add.36 = fadd double %div.36, 0.000000e+00
  %conv5.36 = fptosi double %add.36 to i32
  %arrayidx.36 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.35
  store i32 %conv5.36, i32* %arrayidx.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %call1.37 = call i32 @rand() #3
  %conv2.37 = sitofp i32 %call1.37 to double
  %mul4.37 = fmul double %conv2.37, 0x41DFFFFFFF800000
  %div.37 = fdiv double %mul4.37, 0x41DFFFFFFFC00000
  %add.37 = fadd double %div.37, 0.000000e+00
  %conv5.37 = fptosi double %add.37 to i32
  %arrayidx.37 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.36
  store i32 %conv5.37, i32* %arrayidx.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %call1.38 = call i32 @rand() #3
  %conv2.38 = sitofp i32 %call1.38 to double
  %mul4.38 = fmul double %conv2.38, 0x41DFFFFFFF800000
  %div.38 = fdiv double %mul4.38, 0x41DFFFFFFFC00000
  %add.38 = fadd double %div.38, 0.000000e+00
  %conv5.38 = fptosi double %add.38 to i32
  %arrayidx.38 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.37
  store i32 %conv5.38, i32* %arrayidx.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %call1.39 = call i32 @rand() #3
  %conv2.39 = sitofp i32 %call1.39 to double
  %mul4.39 = fmul double %conv2.39, 0x41DFFFFFFF800000
  %div.39 = fdiv double %mul4.39, 0x41DFFFFFFFC00000
  %add.39 = fadd double %div.39, 0.000000e+00
  %conv5.39 = fptosi double %add.39 to i32
  %arrayidx.39 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.38
  store i32 %conv5.39, i32* %arrayidx.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %call1.40 = call i32 @rand() #3
  %conv2.40 = sitofp i32 %call1.40 to double
  %mul4.40 = fmul double %conv2.40, 0x41DFFFFFFF800000
  %div.40 = fdiv double %mul4.40, 0x41DFFFFFFFC00000
  %add.40 = fadd double %div.40, 0.000000e+00
  %conv5.40 = fptosi double %add.40 to i32
  %arrayidx.40 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.39
  store i32 %conv5.40, i32* %arrayidx.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %call1.41 = call i32 @rand() #3
  %conv2.41 = sitofp i32 %call1.41 to double
  %mul4.41 = fmul double %conv2.41, 0x41DFFFFFFF800000
  %div.41 = fdiv double %mul4.41, 0x41DFFFFFFFC00000
  %add.41 = fadd double %div.41, 0.000000e+00
  %conv5.41 = fptosi double %add.41 to i32
  %arrayidx.41 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.40
  store i32 %conv5.41, i32* %arrayidx.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %call1.42 = call i32 @rand() #3
  %conv2.42 = sitofp i32 %call1.42 to double
  %mul4.42 = fmul double %conv2.42, 0x41DFFFFFFF800000
  %div.42 = fdiv double %mul4.42, 0x41DFFFFFFFC00000
  %add.42 = fadd double %div.42, 0.000000e+00
  %conv5.42 = fptosi double %add.42 to i32
  %arrayidx.42 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.41
  store i32 %conv5.42, i32* %arrayidx.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %call1.43 = call i32 @rand() #3
  %conv2.43 = sitofp i32 %call1.43 to double
  %mul4.43 = fmul double %conv2.43, 0x41DFFFFFFF800000
  %div.43 = fdiv double %mul4.43, 0x41DFFFFFFFC00000
  %add.43 = fadd double %div.43, 0.000000e+00
  %conv5.43 = fptosi double %add.43 to i32
  %arrayidx.43 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.42
  store i32 %conv5.43, i32* %arrayidx.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %call1.44 = call i32 @rand() #3
  %conv2.44 = sitofp i32 %call1.44 to double
  %mul4.44 = fmul double %conv2.44, 0x41DFFFFFFF800000
  %div.44 = fdiv double %mul4.44, 0x41DFFFFFFFC00000
  %add.44 = fadd double %div.44, 0.000000e+00
  %conv5.44 = fptosi double %add.44 to i32
  %arrayidx.44 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.43
  store i32 %conv5.44, i32* %arrayidx.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %call1.45 = call i32 @rand() #3
  %conv2.45 = sitofp i32 %call1.45 to double
  %mul4.45 = fmul double %conv2.45, 0x41DFFFFFFF800000
  %div.45 = fdiv double %mul4.45, 0x41DFFFFFFFC00000
  %add.45 = fadd double %div.45, 0.000000e+00
  %conv5.45 = fptosi double %add.45 to i32
  %arrayidx.45 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.44
  store i32 %conv5.45, i32* %arrayidx.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %call1.46 = call i32 @rand() #3
  %conv2.46 = sitofp i32 %call1.46 to double
  %mul4.46 = fmul double %conv2.46, 0x41DFFFFFFF800000
  %div.46 = fdiv double %mul4.46, 0x41DFFFFFFFC00000
  %add.46 = fadd double %div.46, 0.000000e+00
  %conv5.46 = fptosi double %add.46 to i32
  %arrayidx.46 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.45
  store i32 %conv5.46, i32* %arrayidx.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %call1.47 = call i32 @rand() #3
  %conv2.47 = sitofp i32 %call1.47 to double
  %mul4.47 = fmul double %conv2.47, 0x41DFFFFFFF800000
  %div.47 = fdiv double %mul4.47, 0x41DFFFFFFFC00000
  %add.47 = fadd double %div.47, 0.000000e+00
  %conv5.47 = fptosi double %add.47 to i32
  %arrayidx.47 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.46
  store i32 %conv5.47, i32* %arrayidx.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %call1.48 = call i32 @rand() #3
  %conv2.48 = sitofp i32 %call1.48 to double
  %mul4.48 = fmul double %conv2.48, 0x41DFFFFFFF800000
  %div.48 = fdiv double %mul4.48, 0x41DFFFFFFFC00000
  %add.48 = fadd double %div.48, 0.000000e+00
  %conv5.48 = fptosi double %add.48 to i32
  %arrayidx.48 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.47
  store i32 %conv5.48, i32* %arrayidx.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %call1.49 = call i32 @rand() #3
  %conv2.49 = sitofp i32 %call1.49 to double
  %mul4.49 = fmul double %conv2.49, 0x41DFFFFFFF800000
  %div.49 = fdiv double %mul4.49, 0x41DFFFFFFFC00000
  %add.49 = fadd double %div.49, 0.000000e+00
  %conv5.49 = fptosi double %add.49 to i32
  %arrayidx.49 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.48
  store i32 %conv5.49, i32* %arrayidx.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %call1.50 = call i32 @rand() #3
  %conv2.50 = sitofp i32 %call1.50 to double
  %mul4.50 = fmul double %conv2.50, 0x41DFFFFFFF800000
  %div.50 = fdiv double %mul4.50, 0x41DFFFFFFFC00000
  %add.50 = fadd double %div.50, 0.000000e+00
  %conv5.50 = fptosi double %add.50 to i32
  %arrayidx.50 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.49
  store i32 %conv5.50, i32* %arrayidx.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %call1.51 = call i32 @rand() #3
  %conv2.51 = sitofp i32 %call1.51 to double
  %mul4.51 = fmul double %conv2.51, 0x41DFFFFFFF800000
  %div.51 = fdiv double %mul4.51, 0x41DFFFFFFFC00000
  %add.51 = fadd double %div.51, 0.000000e+00
  %conv5.51 = fptosi double %add.51 to i32
  %arrayidx.51 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.50
  store i32 %conv5.51, i32* %arrayidx.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %call1.52 = call i32 @rand() #3
  %conv2.52 = sitofp i32 %call1.52 to double
  %mul4.52 = fmul double %conv2.52, 0x41DFFFFFFF800000
  %div.52 = fdiv double %mul4.52, 0x41DFFFFFFFC00000
  %add.52 = fadd double %div.52, 0.000000e+00
  %conv5.52 = fptosi double %add.52 to i32
  %arrayidx.52 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.51
  store i32 %conv5.52, i32* %arrayidx.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %call1.53 = call i32 @rand() #3
  %conv2.53 = sitofp i32 %call1.53 to double
  %mul4.53 = fmul double %conv2.53, 0x41DFFFFFFF800000
  %div.53 = fdiv double %mul4.53, 0x41DFFFFFFFC00000
  %add.53 = fadd double %div.53, 0.000000e+00
  %conv5.53 = fptosi double %add.53 to i32
  %arrayidx.53 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.52
  store i32 %conv5.53, i32* %arrayidx.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %call1.54 = call i32 @rand() #3
  %conv2.54 = sitofp i32 %call1.54 to double
  %mul4.54 = fmul double %conv2.54, 0x41DFFFFFFF800000
  %div.54 = fdiv double %mul4.54, 0x41DFFFFFFFC00000
  %add.54 = fadd double %div.54, 0.000000e+00
  %conv5.54 = fptosi double %add.54 to i32
  %arrayidx.54 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.53
  store i32 %conv5.54, i32* %arrayidx.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %call1.55 = call i32 @rand() #3
  %conv2.55 = sitofp i32 %call1.55 to double
  %mul4.55 = fmul double %conv2.55, 0x41DFFFFFFF800000
  %div.55 = fdiv double %mul4.55, 0x41DFFFFFFFC00000
  %add.55 = fadd double %div.55, 0.000000e+00
  %conv5.55 = fptosi double %add.55 to i32
  %arrayidx.55 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.54
  store i32 %conv5.55, i32* %arrayidx.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %call1.56 = call i32 @rand() #3
  %conv2.56 = sitofp i32 %call1.56 to double
  %mul4.56 = fmul double %conv2.56, 0x41DFFFFFFF800000
  %div.56 = fdiv double %mul4.56, 0x41DFFFFFFFC00000
  %add.56 = fadd double %div.56, 0.000000e+00
  %conv5.56 = fptosi double %add.56 to i32
  %arrayidx.56 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.55
  store i32 %conv5.56, i32* %arrayidx.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %call1.57 = call i32 @rand() #3
  %conv2.57 = sitofp i32 %call1.57 to double
  %mul4.57 = fmul double %conv2.57, 0x41DFFFFFFF800000
  %div.57 = fdiv double %mul4.57, 0x41DFFFFFFFC00000
  %add.57 = fadd double %div.57, 0.000000e+00
  %conv5.57 = fptosi double %add.57 to i32
  %arrayidx.57 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.56
  store i32 %conv5.57, i32* %arrayidx.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %call1.58 = call i32 @rand() #3
  %conv2.58 = sitofp i32 %call1.58 to double
  %mul4.58 = fmul double %conv2.58, 0x41DFFFFFFF800000
  %div.58 = fdiv double %mul4.58, 0x41DFFFFFFFC00000
  %add.58 = fadd double %div.58, 0.000000e+00
  %conv5.58 = fptosi double %add.58 to i32
  %arrayidx.58 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.57
  store i32 %conv5.58, i32* %arrayidx.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %call1.59 = call i32 @rand() #3
  %conv2.59 = sitofp i32 %call1.59 to double
  %mul4.59 = fmul double %conv2.59, 0x41DFFFFFFF800000
  %div.59 = fdiv double %mul4.59, 0x41DFFFFFFFC00000
  %add.59 = fadd double %div.59, 0.000000e+00
  %conv5.59 = fptosi double %add.59 to i32
  %arrayidx.59 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.58
  store i32 %conv5.59, i32* %arrayidx.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %call1.60 = call i32 @rand() #3
  %conv2.60 = sitofp i32 %call1.60 to double
  %mul4.60 = fmul double %conv2.60, 0x41DFFFFFFF800000
  %div.60 = fdiv double %mul4.60, 0x41DFFFFFFFC00000
  %add.60 = fadd double %div.60, 0.000000e+00
  %conv5.60 = fptosi double %add.60 to i32
  %arrayidx.60 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.59
  store i32 %conv5.60, i32* %arrayidx.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %call1.61 = call i32 @rand() #3
  %conv2.61 = sitofp i32 %call1.61 to double
  %mul4.61 = fmul double %conv2.61, 0x41DFFFFFFF800000
  %div.61 = fdiv double %mul4.61, 0x41DFFFFFFFC00000
  %add.61 = fadd double %div.61, 0.000000e+00
  %conv5.61 = fptosi double %add.61 to i32
  %arrayidx.61 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.60
  store i32 %conv5.61, i32* %arrayidx.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %call1.62 = call i32 @rand() #3
  %conv2.62 = sitofp i32 %call1.62 to double
  %mul4.62 = fmul double %conv2.62, 0x41DFFFFFFF800000
  %div.62 = fdiv double %mul4.62, 0x41DFFFFFFFC00000
  %add.62 = fadd double %div.62, 0.000000e+00
  %conv5.62 = fptosi double %add.62 to i32
  %arrayidx.62 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.61
  store i32 %conv5.62, i32* %arrayidx.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %call1.63 = call i32 @rand() #3
  %conv2.63 = sitofp i32 %call1.63 to double
  %mul4.63 = fmul double %conv2.63, 0x41DFFFFFFF800000
  %div.63 = fdiv double %mul4.63, 0x41DFFFFFFFC00000
  %add.63 = fadd double %div.63, 0.000000e+00
  %conv5.63 = fptosi double %add.63 to i32
  %arrayidx.63 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.62
  store i32 %conv5.63, i32* %arrayidx.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 4096
  br i1 %exitcond.63, label %for.body, label %for.end, !llvm.loop !4

for.end:                                          ; preds = %for.body
  %call7 = call i32 @reduction(i32* %0)
  %call8 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %call7) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}
!4 = distinct !{!4, !3}
