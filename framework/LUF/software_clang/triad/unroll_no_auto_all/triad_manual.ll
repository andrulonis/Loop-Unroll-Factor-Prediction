; ModuleID = 'unroll_no_auto_all/triad_manual.ll'
source_filename = "triad_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [12 x i8] c"output.data\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @triad(i32* %a, i32* %b, i32* %c, i32 %s) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.63, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %mul = mul nsw i32 %1, %s
  %add = add nsw i32 %0, %mul
  %arrayidx4 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv
  store i32 %add, i32* %arrayidx4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next
  %2 = load i32, i32* %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next
  %3 = load i32, i32* %arrayidx2.1, align 4
  %mul.1 = mul nsw i32 %3, %s
  %add.1 = add nsw i32 %2, %mul.1
  %arrayidx4.1 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next
  store i32 %add.1, i32* %arrayidx4.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.1
  %4 = load i32, i32* %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.1
  %5 = load i32, i32* %arrayidx2.2, align 4
  %mul.2 = mul nsw i32 %5, %s
  %add.2 = add nsw i32 %4, %mul.2
  %arrayidx4.2 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.1
  store i32 %add.2, i32* %arrayidx4.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.2
  %6 = load i32, i32* %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.2
  %7 = load i32, i32* %arrayidx2.3, align 4
  %mul.3 = mul nsw i32 %7, %s
  %add.3 = add nsw i32 %6, %mul.3
  %arrayidx4.3 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.2
  store i32 %add.3, i32* %arrayidx4.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.3
  %8 = load i32, i32* %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.3
  %9 = load i32, i32* %arrayidx2.4, align 4
  %mul.4 = mul nsw i32 %9, %s
  %add.4 = add nsw i32 %8, %mul.4
  %arrayidx4.4 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.3
  store i32 %add.4, i32* %arrayidx4.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.4
  %10 = load i32, i32* %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.4
  %11 = load i32, i32* %arrayidx2.5, align 4
  %mul.5 = mul nsw i32 %11, %s
  %add.5 = add nsw i32 %10, %mul.5
  %arrayidx4.5 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.4
  store i32 %add.5, i32* %arrayidx4.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.5
  %12 = load i32, i32* %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.5
  %13 = load i32, i32* %arrayidx2.6, align 4
  %mul.6 = mul nsw i32 %13, %s
  %add.6 = add nsw i32 %12, %mul.6
  %arrayidx4.6 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.5
  store i32 %add.6, i32* %arrayidx4.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.6
  %14 = load i32, i32* %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.6
  %15 = load i32, i32* %arrayidx2.7, align 4
  %mul.7 = mul nsw i32 %15, %s
  %add.7 = add nsw i32 %14, %mul.7
  %arrayidx4.7 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.6
  store i32 %add.7, i32* %arrayidx4.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %arrayidx.8 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.7
  %16 = load i32, i32* %arrayidx.8, align 4
  %arrayidx2.8 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.7
  %17 = load i32, i32* %arrayidx2.8, align 4
  %mul.8 = mul nsw i32 %17, %s
  %add.8 = add nsw i32 %16, %mul.8
  %arrayidx4.8 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.7
  store i32 %add.8, i32* %arrayidx4.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %arrayidx.9 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.8
  %18 = load i32, i32* %arrayidx.9, align 4
  %arrayidx2.9 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.8
  %19 = load i32, i32* %arrayidx2.9, align 4
  %mul.9 = mul nsw i32 %19, %s
  %add.9 = add nsw i32 %18, %mul.9
  %arrayidx4.9 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.8
  store i32 %add.9, i32* %arrayidx4.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %arrayidx.10 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.9
  %20 = load i32, i32* %arrayidx.10, align 4
  %arrayidx2.10 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.9
  %21 = load i32, i32* %arrayidx2.10, align 4
  %mul.10 = mul nsw i32 %21, %s
  %add.10 = add nsw i32 %20, %mul.10
  %arrayidx4.10 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.9
  store i32 %add.10, i32* %arrayidx4.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %arrayidx.11 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.10
  %22 = load i32, i32* %arrayidx.11, align 4
  %arrayidx2.11 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.10
  %23 = load i32, i32* %arrayidx2.11, align 4
  %mul.11 = mul nsw i32 %23, %s
  %add.11 = add nsw i32 %22, %mul.11
  %arrayidx4.11 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.10
  store i32 %add.11, i32* %arrayidx4.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %arrayidx.12 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.11
  %24 = load i32, i32* %arrayidx.12, align 4
  %arrayidx2.12 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.11
  %25 = load i32, i32* %arrayidx2.12, align 4
  %mul.12 = mul nsw i32 %25, %s
  %add.12 = add nsw i32 %24, %mul.12
  %arrayidx4.12 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.11
  store i32 %add.12, i32* %arrayidx4.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %arrayidx.13 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.12
  %26 = load i32, i32* %arrayidx.13, align 4
  %arrayidx2.13 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.12
  %27 = load i32, i32* %arrayidx2.13, align 4
  %mul.13 = mul nsw i32 %27, %s
  %add.13 = add nsw i32 %26, %mul.13
  %arrayidx4.13 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.12
  store i32 %add.13, i32* %arrayidx4.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %arrayidx.14 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.13
  %28 = load i32, i32* %arrayidx.14, align 4
  %arrayidx2.14 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.13
  %29 = load i32, i32* %arrayidx2.14, align 4
  %mul.14 = mul nsw i32 %29, %s
  %add.14 = add nsw i32 %28, %mul.14
  %arrayidx4.14 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.13
  store i32 %add.14, i32* %arrayidx4.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %arrayidx.15 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.14
  %30 = load i32, i32* %arrayidx.15, align 4
  %arrayidx2.15 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.14
  %31 = load i32, i32* %arrayidx2.15, align 4
  %mul.15 = mul nsw i32 %31, %s
  %add.15 = add nsw i32 %30, %mul.15
  %arrayidx4.15 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.14
  store i32 %add.15, i32* %arrayidx4.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %arrayidx.16 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.15
  %32 = load i32, i32* %arrayidx.16, align 4
  %arrayidx2.16 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.15
  %33 = load i32, i32* %arrayidx2.16, align 4
  %mul.16 = mul nsw i32 %33, %s
  %add.16 = add nsw i32 %32, %mul.16
  %arrayidx4.16 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.15
  store i32 %add.16, i32* %arrayidx4.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %arrayidx.17 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.16
  %34 = load i32, i32* %arrayidx.17, align 4
  %arrayidx2.17 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.16
  %35 = load i32, i32* %arrayidx2.17, align 4
  %mul.17 = mul nsw i32 %35, %s
  %add.17 = add nsw i32 %34, %mul.17
  %arrayidx4.17 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.16
  store i32 %add.17, i32* %arrayidx4.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %arrayidx.18 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.17
  %36 = load i32, i32* %arrayidx.18, align 4
  %arrayidx2.18 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.17
  %37 = load i32, i32* %arrayidx2.18, align 4
  %mul.18 = mul nsw i32 %37, %s
  %add.18 = add nsw i32 %36, %mul.18
  %arrayidx4.18 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.17
  store i32 %add.18, i32* %arrayidx4.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %arrayidx.19 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.18
  %38 = load i32, i32* %arrayidx.19, align 4
  %arrayidx2.19 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.18
  %39 = load i32, i32* %arrayidx2.19, align 4
  %mul.19 = mul nsw i32 %39, %s
  %add.19 = add nsw i32 %38, %mul.19
  %arrayidx4.19 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.18
  store i32 %add.19, i32* %arrayidx4.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %arrayidx.20 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.19
  %40 = load i32, i32* %arrayidx.20, align 4
  %arrayidx2.20 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.19
  %41 = load i32, i32* %arrayidx2.20, align 4
  %mul.20 = mul nsw i32 %41, %s
  %add.20 = add nsw i32 %40, %mul.20
  %arrayidx4.20 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.19
  store i32 %add.20, i32* %arrayidx4.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %arrayidx.21 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.20
  %42 = load i32, i32* %arrayidx.21, align 4
  %arrayidx2.21 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.20
  %43 = load i32, i32* %arrayidx2.21, align 4
  %mul.21 = mul nsw i32 %43, %s
  %add.21 = add nsw i32 %42, %mul.21
  %arrayidx4.21 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.20
  store i32 %add.21, i32* %arrayidx4.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %arrayidx.22 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.21
  %44 = load i32, i32* %arrayidx.22, align 4
  %arrayidx2.22 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.21
  %45 = load i32, i32* %arrayidx2.22, align 4
  %mul.22 = mul nsw i32 %45, %s
  %add.22 = add nsw i32 %44, %mul.22
  %arrayidx4.22 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.21
  store i32 %add.22, i32* %arrayidx4.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %arrayidx.23 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.22
  %46 = load i32, i32* %arrayidx.23, align 4
  %arrayidx2.23 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.22
  %47 = load i32, i32* %arrayidx2.23, align 4
  %mul.23 = mul nsw i32 %47, %s
  %add.23 = add nsw i32 %46, %mul.23
  %arrayidx4.23 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.22
  store i32 %add.23, i32* %arrayidx4.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %arrayidx.24 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.23
  %48 = load i32, i32* %arrayidx.24, align 4
  %arrayidx2.24 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.23
  %49 = load i32, i32* %arrayidx2.24, align 4
  %mul.24 = mul nsw i32 %49, %s
  %add.24 = add nsw i32 %48, %mul.24
  %arrayidx4.24 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.23
  store i32 %add.24, i32* %arrayidx4.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %arrayidx.25 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.24
  %50 = load i32, i32* %arrayidx.25, align 4
  %arrayidx2.25 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.24
  %51 = load i32, i32* %arrayidx2.25, align 4
  %mul.25 = mul nsw i32 %51, %s
  %add.25 = add nsw i32 %50, %mul.25
  %arrayidx4.25 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.24
  store i32 %add.25, i32* %arrayidx4.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %arrayidx.26 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.25
  %52 = load i32, i32* %arrayidx.26, align 4
  %arrayidx2.26 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.25
  %53 = load i32, i32* %arrayidx2.26, align 4
  %mul.26 = mul nsw i32 %53, %s
  %add.26 = add nsw i32 %52, %mul.26
  %arrayidx4.26 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.25
  store i32 %add.26, i32* %arrayidx4.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %arrayidx.27 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.26
  %54 = load i32, i32* %arrayidx.27, align 4
  %arrayidx2.27 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.26
  %55 = load i32, i32* %arrayidx2.27, align 4
  %mul.27 = mul nsw i32 %55, %s
  %add.27 = add nsw i32 %54, %mul.27
  %arrayidx4.27 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.26
  store i32 %add.27, i32* %arrayidx4.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %arrayidx.28 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.27
  %56 = load i32, i32* %arrayidx.28, align 4
  %arrayidx2.28 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.27
  %57 = load i32, i32* %arrayidx2.28, align 4
  %mul.28 = mul nsw i32 %57, %s
  %add.28 = add nsw i32 %56, %mul.28
  %arrayidx4.28 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.27
  store i32 %add.28, i32* %arrayidx4.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %arrayidx.29 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.28
  %58 = load i32, i32* %arrayidx.29, align 4
  %arrayidx2.29 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.28
  %59 = load i32, i32* %arrayidx2.29, align 4
  %mul.29 = mul nsw i32 %59, %s
  %add.29 = add nsw i32 %58, %mul.29
  %arrayidx4.29 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.28
  store i32 %add.29, i32* %arrayidx4.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %arrayidx.30 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.29
  %60 = load i32, i32* %arrayidx.30, align 4
  %arrayidx2.30 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.29
  %61 = load i32, i32* %arrayidx2.30, align 4
  %mul.30 = mul nsw i32 %61, %s
  %add.30 = add nsw i32 %60, %mul.30
  %arrayidx4.30 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.29
  store i32 %add.30, i32* %arrayidx4.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %arrayidx.31 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.30
  %62 = load i32, i32* %arrayidx.31, align 4
  %arrayidx2.31 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.30
  %63 = load i32, i32* %arrayidx2.31, align 4
  %mul.31 = mul nsw i32 %63, %s
  %add.31 = add nsw i32 %62, %mul.31
  %arrayidx4.31 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.30
  store i32 %add.31, i32* %arrayidx4.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %arrayidx.32 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.31
  %64 = load i32, i32* %arrayidx.32, align 4
  %arrayidx2.32 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.31
  %65 = load i32, i32* %arrayidx2.32, align 4
  %mul.32 = mul nsw i32 %65, %s
  %add.32 = add nsw i32 %64, %mul.32
  %arrayidx4.32 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.31
  store i32 %add.32, i32* %arrayidx4.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %arrayidx.33 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.32
  %66 = load i32, i32* %arrayidx.33, align 4
  %arrayidx2.33 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.32
  %67 = load i32, i32* %arrayidx2.33, align 4
  %mul.33 = mul nsw i32 %67, %s
  %add.33 = add nsw i32 %66, %mul.33
  %arrayidx4.33 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.32
  store i32 %add.33, i32* %arrayidx4.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %arrayidx.34 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.33
  %68 = load i32, i32* %arrayidx.34, align 4
  %arrayidx2.34 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.33
  %69 = load i32, i32* %arrayidx2.34, align 4
  %mul.34 = mul nsw i32 %69, %s
  %add.34 = add nsw i32 %68, %mul.34
  %arrayidx4.34 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.33
  store i32 %add.34, i32* %arrayidx4.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %arrayidx.35 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.34
  %70 = load i32, i32* %arrayidx.35, align 4
  %arrayidx2.35 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.34
  %71 = load i32, i32* %arrayidx2.35, align 4
  %mul.35 = mul nsw i32 %71, %s
  %add.35 = add nsw i32 %70, %mul.35
  %arrayidx4.35 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.34
  store i32 %add.35, i32* %arrayidx4.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %arrayidx.36 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.35
  %72 = load i32, i32* %arrayidx.36, align 4
  %arrayidx2.36 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.35
  %73 = load i32, i32* %arrayidx2.36, align 4
  %mul.36 = mul nsw i32 %73, %s
  %add.36 = add nsw i32 %72, %mul.36
  %arrayidx4.36 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.35
  store i32 %add.36, i32* %arrayidx4.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %arrayidx.37 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.36
  %74 = load i32, i32* %arrayidx.37, align 4
  %arrayidx2.37 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.36
  %75 = load i32, i32* %arrayidx2.37, align 4
  %mul.37 = mul nsw i32 %75, %s
  %add.37 = add nsw i32 %74, %mul.37
  %arrayidx4.37 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.36
  store i32 %add.37, i32* %arrayidx4.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %arrayidx.38 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.37
  %76 = load i32, i32* %arrayidx.38, align 4
  %arrayidx2.38 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.37
  %77 = load i32, i32* %arrayidx2.38, align 4
  %mul.38 = mul nsw i32 %77, %s
  %add.38 = add nsw i32 %76, %mul.38
  %arrayidx4.38 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.37
  store i32 %add.38, i32* %arrayidx4.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %arrayidx.39 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.38
  %78 = load i32, i32* %arrayidx.39, align 4
  %arrayidx2.39 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.38
  %79 = load i32, i32* %arrayidx2.39, align 4
  %mul.39 = mul nsw i32 %79, %s
  %add.39 = add nsw i32 %78, %mul.39
  %arrayidx4.39 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.38
  store i32 %add.39, i32* %arrayidx4.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %arrayidx.40 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.39
  %80 = load i32, i32* %arrayidx.40, align 4
  %arrayidx2.40 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.39
  %81 = load i32, i32* %arrayidx2.40, align 4
  %mul.40 = mul nsw i32 %81, %s
  %add.40 = add nsw i32 %80, %mul.40
  %arrayidx4.40 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.39
  store i32 %add.40, i32* %arrayidx4.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %arrayidx.41 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.40
  %82 = load i32, i32* %arrayidx.41, align 4
  %arrayidx2.41 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.40
  %83 = load i32, i32* %arrayidx2.41, align 4
  %mul.41 = mul nsw i32 %83, %s
  %add.41 = add nsw i32 %82, %mul.41
  %arrayidx4.41 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.40
  store i32 %add.41, i32* %arrayidx4.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %arrayidx.42 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.41
  %84 = load i32, i32* %arrayidx.42, align 4
  %arrayidx2.42 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.41
  %85 = load i32, i32* %arrayidx2.42, align 4
  %mul.42 = mul nsw i32 %85, %s
  %add.42 = add nsw i32 %84, %mul.42
  %arrayidx4.42 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.41
  store i32 %add.42, i32* %arrayidx4.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %arrayidx.43 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.42
  %86 = load i32, i32* %arrayidx.43, align 4
  %arrayidx2.43 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.42
  %87 = load i32, i32* %arrayidx2.43, align 4
  %mul.43 = mul nsw i32 %87, %s
  %add.43 = add nsw i32 %86, %mul.43
  %arrayidx4.43 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.42
  store i32 %add.43, i32* %arrayidx4.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %arrayidx.44 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.43
  %88 = load i32, i32* %arrayidx.44, align 4
  %arrayidx2.44 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.43
  %89 = load i32, i32* %arrayidx2.44, align 4
  %mul.44 = mul nsw i32 %89, %s
  %add.44 = add nsw i32 %88, %mul.44
  %arrayidx4.44 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.43
  store i32 %add.44, i32* %arrayidx4.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %arrayidx.45 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.44
  %90 = load i32, i32* %arrayidx.45, align 4
  %arrayidx2.45 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.44
  %91 = load i32, i32* %arrayidx2.45, align 4
  %mul.45 = mul nsw i32 %91, %s
  %add.45 = add nsw i32 %90, %mul.45
  %arrayidx4.45 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.44
  store i32 %add.45, i32* %arrayidx4.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %arrayidx.46 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.45
  %92 = load i32, i32* %arrayidx.46, align 4
  %arrayidx2.46 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.45
  %93 = load i32, i32* %arrayidx2.46, align 4
  %mul.46 = mul nsw i32 %93, %s
  %add.46 = add nsw i32 %92, %mul.46
  %arrayidx4.46 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.45
  store i32 %add.46, i32* %arrayidx4.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %arrayidx.47 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.46
  %94 = load i32, i32* %arrayidx.47, align 4
  %arrayidx2.47 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.46
  %95 = load i32, i32* %arrayidx2.47, align 4
  %mul.47 = mul nsw i32 %95, %s
  %add.47 = add nsw i32 %94, %mul.47
  %arrayidx4.47 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.46
  store i32 %add.47, i32* %arrayidx4.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %arrayidx.48 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.47
  %96 = load i32, i32* %arrayidx.48, align 4
  %arrayidx2.48 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.47
  %97 = load i32, i32* %arrayidx2.48, align 4
  %mul.48 = mul nsw i32 %97, %s
  %add.48 = add nsw i32 %96, %mul.48
  %arrayidx4.48 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.47
  store i32 %add.48, i32* %arrayidx4.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %arrayidx.49 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.48
  %98 = load i32, i32* %arrayidx.49, align 4
  %arrayidx2.49 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.48
  %99 = load i32, i32* %arrayidx2.49, align 4
  %mul.49 = mul nsw i32 %99, %s
  %add.49 = add nsw i32 %98, %mul.49
  %arrayidx4.49 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.48
  store i32 %add.49, i32* %arrayidx4.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %arrayidx.50 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.49
  %100 = load i32, i32* %arrayidx.50, align 4
  %arrayidx2.50 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.49
  %101 = load i32, i32* %arrayidx2.50, align 4
  %mul.50 = mul nsw i32 %101, %s
  %add.50 = add nsw i32 %100, %mul.50
  %arrayidx4.50 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.49
  store i32 %add.50, i32* %arrayidx4.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %arrayidx.51 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.50
  %102 = load i32, i32* %arrayidx.51, align 4
  %arrayidx2.51 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.50
  %103 = load i32, i32* %arrayidx2.51, align 4
  %mul.51 = mul nsw i32 %103, %s
  %add.51 = add nsw i32 %102, %mul.51
  %arrayidx4.51 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.50
  store i32 %add.51, i32* %arrayidx4.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %arrayidx.52 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.51
  %104 = load i32, i32* %arrayidx.52, align 4
  %arrayidx2.52 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.51
  %105 = load i32, i32* %arrayidx2.52, align 4
  %mul.52 = mul nsw i32 %105, %s
  %add.52 = add nsw i32 %104, %mul.52
  %arrayidx4.52 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.51
  store i32 %add.52, i32* %arrayidx4.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %arrayidx.53 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.52
  %106 = load i32, i32* %arrayidx.53, align 4
  %arrayidx2.53 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.52
  %107 = load i32, i32* %arrayidx2.53, align 4
  %mul.53 = mul nsw i32 %107, %s
  %add.53 = add nsw i32 %106, %mul.53
  %arrayidx4.53 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.52
  store i32 %add.53, i32* %arrayidx4.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %arrayidx.54 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.53
  %108 = load i32, i32* %arrayidx.54, align 4
  %arrayidx2.54 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.53
  %109 = load i32, i32* %arrayidx2.54, align 4
  %mul.54 = mul nsw i32 %109, %s
  %add.54 = add nsw i32 %108, %mul.54
  %arrayidx4.54 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.53
  store i32 %add.54, i32* %arrayidx4.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %arrayidx.55 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.54
  %110 = load i32, i32* %arrayidx.55, align 4
  %arrayidx2.55 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.54
  %111 = load i32, i32* %arrayidx2.55, align 4
  %mul.55 = mul nsw i32 %111, %s
  %add.55 = add nsw i32 %110, %mul.55
  %arrayidx4.55 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.54
  store i32 %add.55, i32* %arrayidx4.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %arrayidx.56 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.55
  %112 = load i32, i32* %arrayidx.56, align 4
  %arrayidx2.56 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.55
  %113 = load i32, i32* %arrayidx2.56, align 4
  %mul.56 = mul nsw i32 %113, %s
  %add.56 = add nsw i32 %112, %mul.56
  %arrayidx4.56 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.55
  store i32 %add.56, i32* %arrayidx4.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %arrayidx.57 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.56
  %114 = load i32, i32* %arrayidx.57, align 4
  %arrayidx2.57 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.56
  %115 = load i32, i32* %arrayidx2.57, align 4
  %mul.57 = mul nsw i32 %115, %s
  %add.57 = add nsw i32 %114, %mul.57
  %arrayidx4.57 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.56
  store i32 %add.57, i32* %arrayidx4.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %arrayidx.58 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.57
  %116 = load i32, i32* %arrayidx.58, align 4
  %arrayidx2.58 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.57
  %117 = load i32, i32* %arrayidx2.58, align 4
  %mul.58 = mul nsw i32 %117, %s
  %add.58 = add nsw i32 %116, %mul.58
  %arrayidx4.58 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.57
  store i32 %add.58, i32* %arrayidx4.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %arrayidx.59 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.58
  %118 = load i32, i32* %arrayidx.59, align 4
  %arrayidx2.59 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.58
  %119 = load i32, i32* %arrayidx2.59, align 4
  %mul.59 = mul nsw i32 %119, %s
  %add.59 = add nsw i32 %118, %mul.59
  %arrayidx4.59 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.58
  store i32 %add.59, i32* %arrayidx4.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %arrayidx.60 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.59
  %120 = load i32, i32* %arrayidx.60, align 4
  %arrayidx2.60 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.59
  %121 = load i32, i32* %arrayidx2.60, align 4
  %mul.60 = mul nsw i32 %121, %s
  %add.60 = add nsw i32 %120, %mul.60
  %arrayidx4.60 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.59
  store i32 %add.60, i32* %arrayidx4.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %arrayidx.61 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.60
  %122 = load i32, i32* %arrayidx.61, align 4
  %arrayidx2.61 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.60
  %123 = load i32, i32* %arrayidx2.61, align 4
  %mul.61 = mul nsw i32 %123, %s
  %add.61 = add nsw i32 %122, %mul.61
  %arrayidx4.61 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.60
  store i32 %add.61, i32* %arrayidx4.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %arrayidx.62 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.61
  %124 = load i32, i32* %arrayidx.62, align 4
  %arrayidx2.62 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.61
  %125 = load i32, i32* %arrayidx2.62, align 4
  %mul.62 = mul nsw i32 %125, %s
  %add.62 = add nsw i32 %124, %mul.62
  %arrayidx4.62 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.61
  store i32 %add.62, i32* %arrayidx4.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %arrayidx.63 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.62
  %126 = load i32, i32* %arrayidx.63, align 4
  %arrayidx2.63 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.62
  %127 = load i32, i32* %arrayidx2.63, align 4
  %mul.63 = mul nsw i32 %127, %s
  %add.63 = add nsw i32 %126, %mul.63
  %arrayidx4.63 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.62
  store i32 %add.63, i32* %arrayidx4.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 2048
  br i1 %exitcond.63, label %for.body, label %for.end, !llvm.loop !2

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #4
  %0 = bitcast i8* %call to i32*
  %call1 = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #4
  %1 = bitcast i8* %call1 to i32*
  %call2 = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #4
  %2 = bitcast i8* %call2 to i32*
  %call3 = call i64 @time(i64* null) #4
  %conv = trunc i64 %call3 to i32
  call void @srand(i32 %conv) #4
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv3 = phi i64 [ 0, %entry ], [ %indvars.iv.next4.63, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %indvars.iv3
  store i32 0, i32* %arrayidx, align 4
  %call5 = call i32 @rand() #4
  %arrayidx7 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv3
  store i32 %call5, i32* %arrayidx7, align 4
  %call8 = call i32 @rand() #4
  %arrayidx10 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv3
  store i32 %call8, i32* %arrayidx10, align 4
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4
  store i32 0, i32* %arrayidx.1, align 4
  %call5.1 = call i32 @rand() #4
  %arrayidx7.1 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4
  store i32 %call5.1, i32* %arrayidx7.1, align 4
  %call8.1 = call i32 @rand() #4
  %arrayidx10.1 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4
  store i32 %call8.1, i32* %arrayidx10.1, align 4
  %indvars.iv.next4.1 = add nuw nsw i64 %indvars.iv.next4, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.1
  store i32 0, i32* %arrayidx.2, align 4
  %call5.2 = call i32 @rand() #4
  %arrayidx7.2 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.1
  store i32 %call5.2, i32* %arrayidx7.2, align 4
  %call8.2 = call i32 @rand() #4
  %arrayidx10.2 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.1
  store i32 %call8.2, i32* %arrayidx10.2, align 4
  %indvars.iv.next4.2 = add nuw nsw i64 %indvars.iv.next4.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.2
  store i32 0, i32* %arrayidx.3, align 4
  %call5.3 = call i32 @rand() #4
  %arrayidx7.3 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.2
  store i32 %call5.3, i32* %arrayidx7.3, align 4
  %call8.3 = call i32 @rand() #4
  %arrayidx10.3 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.2
  store i32 %call8.3, i32* %arrayidx10.3, align 4
  %indvars.iv.next4.3 = add nuw nsw i64 %indvars.iv.next4.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.3
  store i32 0, i32* %arrayidx.4, align 4
  %call5.4 = call i32 @rand() #4
  %arrayidx7.4 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.3
  store i32 %call5.4, i32* %arrayidx7.4, align 4
  %call8.4 = call i32 @rand() #4
  %arrayidx10.4 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.3
  store i32 %call8.4, i32* %arrayidx10.4, align 4
  %indvars.iv.next4.4 = add nuw nsw i64 %indvars.iv.next4.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.4
  store i32 0, i32* %arrayidx.5, align 4
  %call5.5 = call i32 @rand() #4
  %arrayidx7.5 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.4
  store i32 %call5.5, i32* %arrayidx7.5, align 4
  %call8.5 = call i32 @rand() #4
  %arrayidx10.5 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.4
  store i32 %call8.5, i32* %arrayidx10.5, align 4
  %indvars.iv.next4.5 = add nuw nsw i64 %indvars.iv.next4.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.5
  store i32 0, i32* %arrayidx.6, align 4
  %call5.6 = call i32 @rand() #4
  %arrayidx7.6 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.5
  store i32 %call5.6, i32* %arrayidx7.6, align 4
  %call8.6 = call i32 @rand() #4
  %arrayidx10.6 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.5
  store i32 %call8.6, i32* %arrayidx10.6, align 4
  %indvars.iv.next4.6 = add nuw nsw i64 %indvars.iv.next4.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.6
  store i32 0, i32* %arrayidx.7, align 4
  %call5.7 = call i32 @rand() #4
  %arrayidx7.7 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.6
  store i32 %call5.7, i32* %arrayidx7.7, align 4
  %call8.7 = call i32 @rand() #4
  %arrayidx10.7 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.6
  store i32 %call8.7, i32* %arrayidx10.7, align 4
  %indvars.iv.next4.7 = add nuw nsw i64 %indvars.iv.next4.6, 1
  %arrayidx.8 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.7
  store i32 0, i32* %arrayidx.8, align 4
  %call5.8 = call i32 @rand() #4
  %arrayidx7.8 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.7
  store i32 %call5.8, i32* %arrayidx7.8, align 4
  %call8.8 = call i32 @rand() #4
  %arrayidx10.8 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.7
  store i32 %call8.8, i32* %arrayidx10.8, align 4
  %indvars.iv.next4.8 = add nuw nsw i64 %indvars.iv.next4.7, 1
  %arrayidx.9 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.8
  store i32 0, i32* %arrayidx.9, align 4
  %call5.9 = call i32 @rand() #4
  %arrayidx7.9 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.8
  store i32 %call5.9, i32* %arrayidx7.9, align 4
  %call8.9 = call i32 @rand() #4
  %arrayidx10.9 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.8
  store i32 %call8.9, i32* %arrayidx10.9, align 4
  %indvars.iv.next4.9 = add nuw nsw i64 %indvars.iv.next4.8, 1
  %arrayidx.10 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.9
  store i32 0, i32* %arrayidx.10, align 4
  %call5.10 = call i32 @rand() #4
  %arrayidx7.10 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.9
  store i32 %call5.10, i32* %arrayidx7.10, align 4
  %call8.10 = call i32 @rand() #4
  %arrayidx10.10 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.9
  store i32 %call8.10, i32* %arrayidx10.10, align 4
  %indvars.iv.next4.10 = add nuw nsw i64 %indvars.iv.next4.9, 1
  %arrayidx.11 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.10
  store i32 0, i32* %arrayidx.11, align 4
  %call5.11 = call i32 @rand() #4
  %arrayidx7.11 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.10
  store i32 %call5.11, i32* %arrayidx7.11, align 4
  %call8.11 = call i32 @rand() #4
  %arrayidx10.11 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.10
  store i32 %call8.11, i32* %arrayidx10.11, align 4
  %indvars.iv.next4.11 = add nuw nsw i64 %indvars.iv.next4.10, 1
  %arrayidx.12 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.11
  store i32 0, i32* %arrayidx.12, align 4
  %call5.12 = call i32 @rand() #4
  %arrayidx7.12 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.11
  store i32 %call5.12, i32* %arrayidx7.12, align 4
  %call8.12 = call i32 @rand() #4
  %arrayidx10.12 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.11
  store i32 %call8.12, i32* %arrayidx10.12, align 4
  %indvars.iv.next4.12 = add nuw nsw i64 %indvars.iv.next4.11, 1
  %arrayidx.13 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.12
  store i32 0, i32* %arrayidx.13, align 4
  %call5.13 = call i32 @rand() #4
  %arrayidx7.13 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.12
  store i32 %call5.13, i32* %arrayidx7.13, align 4
  %call8.13 = call i32 @rand() #4
  %arrayidx10.13 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.12
  store i32 %call8.13, i32* %arrayidx10.13, align 4
  %indvars.iv.next4.13 = add nuw nsw i64 %indvars.iv.next4.12, 1
  %arrayidx.14 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.13
  store i32 0, i32* %arrayidx.14, align 4
  %call5.14 = call i32 @rand() #4
  %arrayidx7.14 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.13
  store i32 %call5.14, i32* %arrayidx7.14, align 4
  %call8.14 = call i32 @rand() #4
  %arrayidx10.14 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.13
  store i32 %call8.14, i32* %arrayidx10.14, align 4
  %indvars.iv.next4.14 = add nuw nsw i64 %indvars.iv.next4.13, 1
  %arrayidx.15 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.14
  store i32 0, i32* %arrayidx.15, align 4
  %call5.15 = call i32 @rand() #4
  %arrayidx7.15 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.14
  store i32 %call5.15, i32* %arrayidx7.15, align 4
  %call8.15 = call i32 @rand() #4
  %arrayidx10.15 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.14
  store i32 %call8.15, i32* %arrayidx10.15, align 4
  %indvars.iv.next4.15 = add nuw nsw i64 %indvars.iv.next4.14, 1
  %arrayidx.16 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.15
  store i32 0, i32* %arrayidx.16, align 4
  %call5.16 = call i32 @rand() #4
  %arrayidx7.16 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.15
  store i32 %call5.16, i32* %arrayidx7.16, align 4
  %call8.16 = call i32 @rand() #4
  %arrayidx10.16 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.15
  store i32 %call8.16, i32* %arrayidx10.16, align 4
  %indvars.iv.next4.16 = add nuw nsw i64 %indvars.iv.next4.15, 1
  %arrayidx.17 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.16
  store i32 0, i32* %arrayidx.17, align 4
  %call5.17 = call i32 @rand() #4
  %arrayidx7.17 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.16
  store i32 %call5.17, i32* %arrayidx7.17, align 4
  %call8.17 = call i32 @rand() #4
  %arrayidx10.17 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.16
  store i32 %call8.17, i32* %arrayidx10.17, align 4
  %indvars.iv.next4.17 = add nuw nsw i64 %indvars.iv.next4.16, 1
  %arrayidx.18 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.17
  store i32 0, i32* %arrayidx.18, align 4
  %call5.18 = call i32 @rand() #4
  %arrayidx7.18 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.17
  store i32 %call5.18, i32* %arrayidx7.18, align 4
  %call8.18 = call i32 @rand() #4
  %arrayidx10.18 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.17
  store i32 %call8.18, i32* %arrayidx10.18, align 4
  %indvars.iv.next4.18 = add nuw nsw i64 %indvars.iv.next4.17, 1
  %arrayidx.19 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.18
  store i32 0, i32* %arrayidx.19, align 4
  %call5.19 = call i32 @rand() #4
  %arrayidx7.19 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.18
  store i32 %call5.19, i32* %arrayidx7.19, align 4
  %call8.19 = call i32 @rand() #4
  %arrayidx10.19 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.18
  store i32 %call8.19, i32* %arrayidx10.19, align 4
  %indvars.iv.next4.19 = add nuw nsw i64 %indvars.iv.next4.18, 1
  %arrayidx.20 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.19
  store i32 0, i32* %arrayidx.20, align 4
  %call5.20 = call i32 @rand() #4
  %arrayidx7.20 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.19
  store i32 %call5.20, i32* %arrayidx7.20, align 4
  %call8.20 = call i32 @rand() #4
  %arrayidx10.20 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.19
  store i32 %call8.20, i32* %arrayidx10.20, align 4
  %indvars.iv.next4.20 = add nuw nsw i64 %indvars.iv.next4.19, 1
  %arrayidx.21 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.20
  store i32 0, i32* %arrayidx.21, align 4
  %call5.21 = call i32 @rand() #4
  %arrayidx7.21 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.20
  store i32 %call5.21, i32* %arrayidx7.21, align 4
  %call8.21 = call i32 @rand() #4
  %arrayidx10.21 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.20
  store i32 %call8.21, i32* %arrayidx10.21, align 4
  %indvars.iv.next4.21 = add nuw nsw i64 %indvars.iv.next4.20, 1
  %arrayidx.22 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.21
  store i32 0, i32* %arrayidx.22, align 4
  %call5.22 = call i32 @rand() #4
  %arrayidx7.22 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.21
  store i32 %call5.22, i32* %arrayidx7.22, align 4
  %call8.22 = call i32 @rand() #4
  %arrayidx10.22 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.21
  store i32 %call8.22, i32* %arrayidx10.22, align 4
  %indvars.iv.next4.22 = add nuw nsw i64 %indvars.iv.next4.21, 1
  %arrayidx.23 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.22
  store i32 0, i32* %arrayidx.23, align 4
  %call5.23 = call i32 @rand() #4
  %arrayidx7.23 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.22
  store i32 %call5.23, i32* %arrayidx7.23, align 4
  %call8.23 = call i32 @rand() #4
  %arrayidx10.23 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.22
  store i32 %call8.23, i32* %arrayidx10.23, align 4
  %indvars.iv.next4.23 = add nuw nsw i64 %indvars.iv.next4.22, 1
  %arrayidx.24 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.23
  store i32 0, i32* %arrayidx.24, align 4
  %call5.24 = call i32 @rand() #4
  %arrayidx7.24 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.23
  store i32 %call5.24, i32* %arrayidx7.24, align 4
  %call8.24 = call i32 @rand() #4
  %arrayidx10.24 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.23
  store i32 %call8.24, i32* %arrayidx10.24, align 4
  %indvars.iv.next4.24 = add nuw nsw i64 %indvars.iv.next4.23, 1
  %arrayidx.25 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.24
  store i32 0, i32* %arrayidx.25, align 4
  %call5.25 = call i32 @rand() #4
  %arrayidx7.25 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.24
  store i32 %call5.25, i32* %arrayidx7.25, align 4
  %call8.25 = call i32 @rand() #4
  %arrayidx10.25 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.24
  store i32 %call8.25, i32* %arrayidx10.25, align 4
  %indvars.iv.next4.25 = add nuw nsw i64 %indvars.iv.next4.24, 1
  %arrayidx.26 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.25
  store i32 0, i32* %arrayidx.26, align 4
  %call5.26 = call i32 @rand() #4
  %arrayidx7.26 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.25
  store i32 %call5.26, i32* %arrayidx7.26, align 4
  %call8.26 = call i32 @rand() #4
  %arrayidx10.26 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.25
  store i32 %call8.26, i32* %arrayidx10.26, align 4
  %indvars.iv.next4.26 = add nuw nsw i64 %indvars.iv.next4.25, 1
  %arrayidx.27 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.26
  store i32 0, i32* %arrayidx.27, align 4
  %call5.27 = call i32 @rand() #4
  %arrayidx7.27 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.26
  store i32 %call5.27, i32* %arrayidx7.27, align 4
  %call8.27 = call i32 @rand() #4
  %arrayidx10.27 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.26
  store i32 %call8.27, i32* %arrayidx10.27, align 4
  %indvars.iv.next4.27 = add nuw nsw i64 %indvars.iv.next4.26, 1
  %arrayidx.28 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.27
  store i32 0, i32* %arrayidx.28, align 4
  %call5.28 = call i32 @rand() #4
  %arrayidx7.28 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.27
  store i32 %call5.28, i32* %arrayidx7.28, align 4
  %call8.28 = call i32 @rand() #4
  %arrayidx10.28 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.27
  store i32 %call8.28, i32* %arrayidx10.28, align 4
  %indvars.iv.next4.28 = add nuw nsw i64 %indvars.iv.next4.27, 1
  %arrayidx.29 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.28
  store i32 0, i32* %arrayidx.29, align 4
  %call5.29 = call i32 @rand() #4
  %arrayidx7.29 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.28
  store i32 %call5.29, i32* %arrayidx7.29, align 4
  %call8.29 = call i32 @rand() #4
  %arrayidx10.29 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.28
  store i32 %call8.29, i32* %arrayidx10.29, align 4
  %indvars.iv.next4.29 = add nuw nsw i64 %indvars.iv.next4.28, 1
  %arrayidx.30 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.29
  store i32 0, i32* %arrayidx.30, align 4
  %call5.30 = call i32 @rand() #4
  %arrayidx7.30 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.29
  store i32 %call5.30, i32* %arrayidx7.30, align 4
  %call8.30 = call i32 @rand() #4
  %arrayidx10.30 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.29
  store i32 %call8.30, i32* %arrayidx10.30, align 4
  %indvars.iv.next4.30 = add nuw nsw i64 %indvars.iv.next4.29, 1
  %arrayidx.31 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.30
  store i32 0, i32* %arrayidx.31, align 4
  %call5.31 = call i32 @rand() #4
  %arrayidx7.31 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.30
  store i32 %call5.31, i32* %arrayidx7.31, align 4
  %call8.31 = call i32 @rand() #4
  %arrayidx10.31 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.30
  store i32 %call8.31, i32* %arrayidx10.31, align 4
  %indvars.iv.next4.31 = add nuw nsw i64 %indvars.iv.next4.30, 1
  %arrayidx.32 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.31
  store i32 0, i32* %arrayidx.32, align 4
  %call5.32 = call i32 @rand() #4
  %arrayidx7.32 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.31
  store i32 %call5.32, i32* %arrayidx7.32, align 4
  %call8.32 = call i32 @rand() #4
  %arrayidx10.32 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.31
  store i32 %call8.32, i32* %arrayidx10.32, align 4
  %indvars.iv.next4.32 = add nuw nsw i64 %indvars.iv.next4.31, 1
  %arrayidx.33 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.32
  store i32 0, i32* %arrayidx.33, align 4
  %call5.33 = call i32 @rand() #4
  %arrayidx7.33 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.32
  store i32 %call5.33, i32* %arrayidx7.33, align 4
  %call8.33 = call i32 @rand() #4
  %arrayidx10.33 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.32
  store i32 %call8.33, i32* %arrayidx10.33, align 4
  %indvars.iv.next4.33 = add nuw nsw i64 %indvars.iv.next4.32, 1
  %arrayidx.34 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.33
  store i32 0, i32* %arrayidx.34, align 4
  %call5.34 = call i32 @rand() #4
  %arrayidx7.34 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.33
  store i32 %call5.34, i32* %arrayidx7.34, align 4
  %call8.34 = call i32 @rand() #4
  %arrayidx10.34 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.33
  store i32 %call8.34, i32* %arrayidx10.34, align 4
  %indvars.iv.next4.34 = add nuw nsw i64 %indvars.iv.next4.33, 1
  %arrayidx.35 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.34
  store i32 0, i32* %arrayidx.35, align 4
  %call5.35 = call i32 @rand() #4
  %arrayidx7.35 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.34
  store i32 %call5.35, i32* %arrayidx7.35, align 4
  %call8.35 = call i32 @rand() #4
  %arrayidx10.35 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.34
  store i32 %call8.35, i32* %arrayidx10.35, align 4
  %indvars.iv.next4.35 = add nuw nsw i64 %indvars.iv.next4.34, 1
  %arrayidx.36 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.35
  store i32 0, i32* %arrayidx.36, align 4
  %call5.36 = call i32 @rand() #4
  %arrayidx7.36 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.35
  store i32 %call5.36, i32* %arrayidx7.36, align 4
  %call8.36 = call i32 @rand() #4
  %arrayidx10.36 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.35
  store i32 %call8.36, i32* %arrayidx10.36, align 4
  %indvars.iv.next4.36 = add nuw nsw i64 %indvars.iv.next4.35, 1
  %arrayidx.37 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.36
  store i32 0, i32* %arrayidx.37, align 4
  %call5.37 = call i32 @rand() #4
  %arrayidx7.37 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.36
  store i32 %call5.37, i32* %arrayidx7.37, align 4
  %call8.37 = call i32 @rand() #4
  %arrayidx10.37 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.36
  store i32 %call8.37, i32* %arrayidx10.37, align 4
  %indvars.iv.next4.37 = add nuw nsw i64 %indvars.iv.next4.36, 1
  %arrayidx.38 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.37
  store i32 0, i32* %arrayidx.38, align 4
  %call5.38 = call i32 @rand() #4
  %arrayidx7.38 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.37
  store i32 %call5.38, i32* %arrayidx7.38, align 4
  %call8.38 = call i32 @rand() #4
  %arrayidx10.38 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.37
  store i32 %call8.38, i32* %arrayidx10.38, align 4
  %indvars.iv.next4.38 = add nuw nsw i64 %indvars.iv.next4.37, 1
  %arrayidx.39 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.38
  store i32 0, i32* %arrayidx.39, align 4
  %call5.39 = call i32 @rand() #4
  %arrayidx7.39 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.38
  store i32 %call5.39, i32* %arrayidx7.39, align 4
  %call8.39 = call i32 @rand() #4
  %arrayidx10.39 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.38
  store i32 %call8.39, i32* %arrayidx10.39, align 4
  %indvars.iv.next4.39 = add nuw nsw i64 %indvars.iv.next4.38, 1
  %arrayidx.40 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.39
  store i32 0, i32* %arrayidx.40, align 4
  %call5.40 = call i32 @rand() #4
  %arrayidx7.40 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.39
  store i32 %call5.40, i32* %arrayidx7.40, align 4
  %call8.40 = call i32 @rand() #4
  %arrayidx10.40 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.39
  store i32 %call8.40, i32* %arrayidx10.40, align 4
  %indvars.iv.next4.40 = add nuw nsw i64 %indvars.iv.next4.39, 1
  %arrayidx.41 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.40
  store i32 0, i32* %arrayidx.41, align 4
  %call5.41 = call i32 @rand() #4
  %arrayidx7.41 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.40
  store i32 %call5.41, i32* %arrayidx7.41, align 4
  %call8.41 = call i32 @rand() #4
  %arrayidx10.41 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.40
  store i32 %call8.41, i32* %arrayidx10.41, align 4
  %indvars.iv.next4.41 = add nuw nsw i64 %indvars.iv.next4.40, 1
  %arrayidx.42 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.41
  store i32 0, i32* %arrayidx.42, align 4
  %call5.42 = call i32 @rand() #4
  %arrayidx7.42 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.41
  store i32 %call5.42, i32* %arrayidx7.42, align 4
  %call8.42 = call i32 @rand() #4
  %arrayidx10.42 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.41
  store i32 %call8.42, i32* %arrayidx10.42, align 4
  %indvars.iv.next4.42 = add nuw nsw i64 %indvars.iv.next4.41, 1
  %arrayidx.43 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.42
  store i32 0, i32* %arrayidx.43, align 4
  %call5.43 = call i32 @rand() #4
  %arrayidx7.43 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.42
  store i32 %call5.43, i32* %arrayidx7.43, align 4
  %call8.43 = call i32 @rand() #4
  %arrayidx10.43 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.42
  store i32 %call8.43, i32* %arrayidx10.43, align 4
  %indvars.iv.next4.43 = add nuw nsw i64 %indvars.iv.next4.42, 1
  %arrayidx.44 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.43
  store i32 0, i32* %arrayidx.44, align 4
  %call5.44 = call i32 @rand() #4
  %arrayidx7.44 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.43
  store i32 %call5.44, i32* %arrayidx7.44, align 4
  %call8.44 = call i32 @rand() #4
  %arrayidx10.44 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.43
  store i32 %call8.44, i32* %arrayidx10.44, align 4
  %indvars.iv.next4.44 = add nuw nsw i64 %indvars.iv.next4.43, 1
  %arrayidx.45 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.44
  store i32 0, i32* %arrayidx.45, align 4
  %call5.45 = call i32 @rand() #4
  %arrayidx7.45 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.44
  store i32 %call5.45, i32* %arrayidx7.45, align 4
  %call8.45 = call i32 @rand() #4
  %arrayidx10.45 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.44
  store i32 %call8.45, i32* %arrayidx10.45, align 4
  %indvars.iv.next4.45 = add nuw nsw i64 %indvars.iv.next4.44, 1
  %arrayidx.46 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.45
  store i32 0, i32* %arrayidx.46, align 4
  %call5.46 = call i32 @rand() #4
  %arrayidx7.46 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.45
  store i32 %call5.46, i32* %arrayidx7.46, align 4
  %call8.46 = call i32 @rand() #4
  %arrayidx10.46 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.45
  store i32 %call8.46, i32* %arrayidx10.46, align 4
  %indvars.iv.next4.46 = add nuw nsw i64 %indvars.iv.next4.45, 1
  %arrayidx.47 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.46
  store i32 0, i32* %arrayidx.47, align 4
  %call5.47 = call i32 @rand() #4
  %arrayidx7.47 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.46
  store i32 %call5.47, i32* %arrayidx7.47, align 4
  %call8.47 = call i32 @rand() #4
  %arrayidx10.47 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.46
  store i32 %call8.47, i32* %arrayidx10.47, align 4
  %indvars.iv.next4.47 = add nuw nsw i64 %indvars.iv.next4.46, 1
  %arrayidx.48 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.47
  store i32 0, i32* %arrayidx.48, align 4
  %call5.48 = call i32 @rand() #4
  %arrayidx7.48 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.47
  store i32 %call5.48, i32* %arrayidx7.48, align 4
  %call8.48 = call i32 @rand() #4
  %arrayidx10.48 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.47
  store i32 %call8.48, i32* %arrayidx10.48, align 4
  %indvars.iv.next4.48 = add nuw nsw i64 %indvars.iv.next4.47, 1
  %arrayidx.49 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.48
  store i32 0, i32* %arrayidx.49, align 4
  %call5.49 = call i32 @rand() #4
  %arrayidx7.49 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.48
  store i32 %call5.49, i32* %arrayidx7.49, align 4
  %call8.49 = call i32 @rand() #4
  %arrayidx10.49 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.48
  store i32 %call8.49, i32* %arrayidx10.49, align 4
  %indvars.iv.next4.49 = add nuw nsw i64 %indvars.iv.next4.48, 1
  %arrayidx.50 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.49
  store i32 0, i32* %arrayidx.50, align 4
  %call5.50 = call i32 @rand() #4
  %arrayidx7.50 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.49
  store i32 %call5.50, i32* %arrayidx7.50, align 4
  %call8.50 = call i32 @rand() #4
  %arrayidx10.50 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.49
  store i32 %call8.50, i32* %arrayidx10.50, align 4
  %indvars.iv.next4.50 = add nuw nsw i64 %indvars.iv.next4.49, 1
  %arrayidx.51 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.50
  store i32 0, i32* %arrayidx.51, align 4
  %call5.51 = call i32 @rand() #4
  %arrayidx7.51 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.50
  store i32 %call5.51, i32* %arrayidx7.51, align 4
  %call8.51 = call i32 @rand() #4
  %arrayidx10.51 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.50
  store i32 %call8.51, i32* %arrayidx10.51, align 4
  %indvars.iv.next4.51 = add nuw nsw i64 %indvars.iv.next4.50, 1
  %arrayidx.52 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.51
  store i32 0, i32* %arrayidx.52, align 4
  %call5.52 = call i32 @rand() #4
  %arrayidx7.52 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.51
  store i32 %call5.52, i32* %arrayidx7.52, align 4
  %call8.52 = call i32 @rand() #4
  %arrayidx10.52 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.51
  store i32 %call8.52, i32* %arrayidx10.52, align 4
  %indvars.iv.next4.52 = add nuw nsw i64 %indvars.iv.next4.51, 1
  %arrayidx.53 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.52
  store i32 0, i32* %arrayidx.53, align 4
  %call5.53 = call i32 @rand() #4
  %arrayidx7.53 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.52
  store i32 %call5.53, i32* %arrayidx7.53, align 4
  %call8.53 = call i32 @rand() #4
  %arrayidx10.53 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.52
  store i32 %call8.53, i32* %arrayidx10.53, align 4
  %indvars.iv.next4.53 = add nuw nsw i64 %indvars.iv.next4.52, 1
  %arrayidx.54 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.53
  store i32 0, i32* %arrayidx.54, align 4
  %call5.54 = call i32 @rand() #4
  %arrayidx7.54 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.53
  store i32 %call5.54, i32* %arrayidx7.54, align 4
  %call8.54 = call i32 @rand() #4
  %arrayidx10.54 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.53
  store i32 %call8.54, i32* %arrayidx10.54, align 4
  %indvars.iv.next4.54 = add nuw nsw i64 %indvars.iv.next4.53, 1
  %arrayidx.55 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.54
  store i32 0, i32* %arrayidx.55, align 4
  %call5.55 = call i32 @rand() #4
  %arrayidx7.55 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.54
  store i32 %call5.55, i32* %arrayidx7.55, align 4
  %call8.55 = call i32 @rand() #4
  %arrayidx10.55 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.54
  store i32 %call8.55, i32* %arrayidx10.55, align 4
  %indvars.iv.next4.55 = add nuw nsw i64 %indvars.iv.next4.54, 1
  %arrayidx.56 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.55
  store i32 0, i32* %arrayidx.56, align 4
  %call5.56 = call i32 @rand() #4
  %arrayidx7.56 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.55
  store i32 %call5.56, i32* %arrayidx7.56, align 4
  %call8.56 = call i32 @rand() #4
  %arrayidx10.56 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.55
  store i32 %call8.56, i32* %arrayidx10.56, align 4
  %indvars.iv.next4.56 = add nuw nsw i64 %indvars.iv.next4.55, 1
  %arrayidx.57 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.56
  store i32 0, i32* %arrayidx.57, align 4
  %call5.57 = call i32 @rand() #4
  %arrayidx7.57 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.56
  store i32 %call5.57, i32* %arrayidx7.57, align 4
  %call8.57 = call i32 @rand() #4
  %arrayidx10.57 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.56
  store i32 %call8.57, i32* %arrayidx10.57, align 4
  %indvars.iv.next4.57 = add nuw nsw i64 %indvars.iv.next4.56, 1
  %arrayidx.58 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.57
  store i32 0, i32* %arrayidx.58, align 4
  %call5.58 = call i32 @rand() #4
  %arrayidx7.58 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.57
  store i32 %call5.58, i32* %arrayidx7.58, align 4
  %call8.58 = call i32 @rand() #4
  %arrayidx10.58 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.57
  store i32 %call8.58, i32* %arrayidx10.58, align 4
  %indvars.iv.next4.58 = add nuw nsw i64 %indvars.iv.next4.57, 1
  %arrayidx.59 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.58
  store i32 0, i32* %arrayidx.59, align 4
  %call5.59 = call i32 @rand() #4
  %arrayidx7.59 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.58
  store i32 %call5.59, i32* %arrayidx7.59, align 4
  %call8.59 = call i32 @rand() #4
  %arrayidx10.59 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.58
  store i32 %call8.59, i32* %arrayidx10.59, align 4
  %indvars.iv.next4.59 = add nuw nsw i64 %indvars.iv.next4.58, 1
  %arrayidx.60 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.59
  store i32 0, i32* %arrayidx.60, align 4
  %call5.60 = call i32 @rand() #4
  %arrayidx7.60 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.59
  store i32 %call5.60, i32* %arrayidx7.60, align 4
  %call8.60 = call i32 @rand() #4
  %arrayidx10.60 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.59
  store i32 %call8.60, i32* %arrayidx10.60, align 4
  %indvars.iv.next4.60 = add nuw nsw i64 %indvars.iv.next4.59, 1
  %arrayidx.61 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.60
  store i32 0, i32* %arrayidx.61, align 4
  %call5.61 = call i32 @rand() #4
  %arrayidx7.61 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.60
  store i32 %call5.61, i32* %arrayidx7.61, align 4
  %call8.61 = call i32 @rand() #4
  %arrayidx10.61 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.60
  store i32 %call8.61, i32* %arrayidx10.61, align 4
  %indvars.iv.next4.61 = add nuw nsw i64 %indvars.iv.next4.60, 1
  %arrayidx.62 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.61
  store i32 0, i32* %arrayidx.62, align 4
  %call5.62 = call i32 @rand() #4
  %arrayidx7.62 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.61
  store i32 %call5.62, i32* %arrayidx7.62, align 4
  %call8.62 = call i32 @rand() #4
  %arrayidx10.62 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.61
  store i32 %call8.62, i32* %arrayidx10.62, align 4
  %indvars.iv.next4.62 = add nuw nsw i64 %indvars.iv.next4.61, 1
  %arrayidx.63 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next4.62
  store i32 0, i32* %arrayidx.63, align 4
  %call5.63 = call i32 @rand() #4
  %arrayidx7.63 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next4.62
  store i32 %call5.63, i32* %arrayidx7.63, align 4
  %call8.63 = call i32 @rand() #4
  %arrayidx10.63 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv.next4.62
  store i32 %call8.63, i32* %arrayidx10.63, align 4
  %indvars.iv.next4.63 = add nuw nsw i64 %indvars.iv.next4.62, 1
  %exitcond.635 = icmp ne i64 %indvars.iv.next4.63, 2048
  br i1 %exitcond.635, label %for.body, label %for.end, !llvm.loop !4

for.end:                                          ; preds = %for.body
  call void @triad(i32* %0, i32* %1, i32* %2, i32 3)
  %call14 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %for.body18

for.body18:                                       ; preds = %for.body18, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next.63, %for.body18 ]
  %arrayidx20 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %3) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx20.1 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next
  %4 = load i32, i32* %arrayidx20.1, align 4
  %call21.1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %4) #4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx20.2 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.1
  %5 = load i32, i32* %arrayidx20.2, align 4
  %call21.2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %5) #4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx20.3 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.2
  %6 = load i32, i32* %arrayidx20.3, align 4
  %call21.3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %6) #4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx20.4 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.3
  %7 = load i32, i32* %arrayidx20.4, align 4
  %call21.4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %7) #4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx20.5 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.4
  %8 = load i32, i32* %arrayidx20.5, align 4
  %call21.5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %8) #4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx20.6 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.5
  %9 = load i32, i32* %arrayidx20.6, align 4
  %call21.6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %9) #4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %arrayidx20.7 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.6
  %10 = load i32, i32* %arrayidx20.7, align 4
  %call21.7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %10) #4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %arrayidx20.8 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.7
  %11 = load i32, i32* %arrayidx20.8, align 4
  %call21.8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %11) #4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %arrayidx20.9 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.8
  %12 = load i32, i32* %arrayidx20.9, align 4
  %call21.9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %12) #4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %arrayidx20.10 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.9
  %13 = load i32, i32* %arrayidx20.10, align 4
  %call21.10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %13) #4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %arrayidx20.11 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.10
  %14 = load i32, i32* %arrayidx20.11, align 4
  %call21.11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %14) #4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %arrayidx20.12 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.11
  %15 = load i32, i32* %arrayidx20.12, align 4
  %call21.12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %15) #4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %arrayidx20.13 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.12
  %16 = load i32, i32* %arrayidx20.13, align 4
  %call21.13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %16) #4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %arrayidx20.14 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.13
  %17 = load i32, i32* %arrayidx20.14, align 4
  %call21.14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %17) #4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %arrayidx20.15 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.14
  %18 = load i32, i32* %arrayidx20.15, align 4
  %call21.15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %18) #4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %arrayidx20.16 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.15
  %19 = load i32, i32* %arrayidx20.16, align 4
  %call21.16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %19) #4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %arrayidx20.17 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.16
  %20 = load i32, i32* %arrayidx20.17, align 4
  %call21.17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %20) #4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %arrayidx20.18 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.17
  %21 = load i32, i32* %arrayidx20.18, align 4
  %call21.18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %21) #4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %arrayidx20.19 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.18
  %22 = load i32, i32* %arrayidx20.19, align 4
  %call21.19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %22) #4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %arrayidx20.20 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.19
  %23 = load i32, i32* %arrayidx20.20, align 4
  %call21.20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %23) #4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %arrayidx20.21 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.20
  %24 = load i32, i32* %arrayidx20.21, align 4
  %call21.21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %24) #4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %arrayidx20.22 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.21
  %25 = load i32, i32* %arrayidx20.22, align 4
  %call21.22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %25) #4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %arrayidx20.23 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.22
  %26 = load i32, i32* %arrayidx20.23, align 4
  %call21.23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %26) #4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %arrayidx20.24 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.23
  %27 = load i32, i32* %arrayidx20.24, align 4
  %call21.24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %27) #4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %arrayidx20.25 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.24
  %28 = load i32, i32* %arrayidx20.25, align 4
  %call21.25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %28) #4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %arrayidx20.26 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.25
  %29 = load i32, i32* %arrayidx20.26, align 4
  %call21.26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %29) #4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %arrayidx20.27 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.26
  %30 = load i32, i32* %arrayidx20.27, align 4
  %call21.27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %30) #4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %arrayidx20.28 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.27
  %31 = load i32, i32* %arrayidx20.28, align 4
  %call21.28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %31) #4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %arrayidx20.29 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.28
  %32 = load i32, i32* %arrayidx20.29, align 4
  %call21.29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %32) #4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %arrayidx20.30 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.29
  %33 = load i32, i32* %arrayidx20.30, align 4
  %call21.30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %33) #4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %arrayidx20.31 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.30
  %34 = load i32, i32* %arrayidx20.31, align 4
  %call21.31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %34) #4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %arrayidx20.32 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.31
  %35 = load i32, i32* %arrayidx20.32, align 4
  %call21.32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %35) #4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %arrayidx20.33 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.32
  %36 = load i32, i32* %arrayidx20.33, align 4
  %call21.33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %36) #4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %arrayidx20.34 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.33
  %37 = load i32, i32* %arrayidx20.34, align 4
  %call21.34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %37) #4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %arrayidx20.35 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.34
  %38 = load i32, i32* %arrayidx20.35, align 4
  %call21.35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %38) #4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %arrayidx20.36 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.35
  %39 = load i32, i32* %arrayidx20.36, align 4
  %call21.36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %39) #4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %arrayidx20.37 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.36
  %40 = load i32, i32* %arrayidx20.37, align 4
  %call21.37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %40) #4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %arrayidx20.38 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.37
  %41 = load i32, i32* %arrayidx20.38, align 4
  %call21.38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %41) #4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %arrayidx20.39 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.38
  %42 = load i32, i32* %arrayidx20.39, align 4
  %call21.39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %42) #4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %arrayidx20.40 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.39
  %43 = load i32, i32* %arrayidx20.40, align 4
  %call21.40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %43) #4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %arrayidx20.41 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.40
  %44 = load i32, i32* %arrayidx20.41, align 4
  %call21.41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %44) #4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %arrayidx20.42 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.41
  %45 = load i32, i32* %arrayidx20.42, align 4
  %call21.42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %45) #4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %arrayidx20.43 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.42
  %46 = load i32, i32* %arrayidx20.43, align 4
  %call21.43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %46) #4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %arrayidx20.44 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.43
  %47 = load i32, i32* %arrayidx20.44, align 4
  %call21.44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %47) #4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %arrayidx20.45 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.44
  %48 = load i32, i32* %arrayidx20.45, align 4
  %call21.45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48) #4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %arrayidx20.46 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.45
  %49 = load i32, i32* %arrayidx20.46, align 4
  %call21.46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %49) #4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %arrayidx20.47 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.46
  %50 = load i32, i32* %arrayidx20.47, align 4
  %call21.47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %50) #4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %arrayidx20.48 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.47
  %51 = load i32, i32* %arrayidx20.48, align 4
  %call21.48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %51) #4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %arrayidx20.49 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.48
  %52 = load i32, i32* %arrayidx20.49, align 4
  %call21.49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %52) #4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %arrayidx20.50 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.49
  %53 = load i32, i32* %arrayidx20.50, align 4
  %call21.50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %53) #4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %arrayidx20.51 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.50
  %54 = load i32, i32* %arrayidx20.51, align 4
  %call21.51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %54) #4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %arrayidx20.52 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.51
  %55 = load i32, i32* %arrayidx20.52, align 4
  %call21.52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %55) #4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %arrayidx20.53 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.52
  %56 = load i32, i32* %arrayidx20.53, align 4
  %call21.53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %56) #4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %arrayidx20.54 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.53
  %57 = load i32, i32* %arrayidx20.54, align 4
  %call21.54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %57) #4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %arrayidx20.55 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.54
  %58 = load i32, i32* %arrayidx20.55, align 4
  %call21.55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %58) #4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %arrayidx20.56 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.55
  %59 = load i32, i32* %arrayidx20.56, align 4
  %call21.56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %59) #4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %arrayidx20.57 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.56
  %60 = load i32, i32* %arrayidx20.57, align 4
  %call21.57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %60) #4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %arrayidx20.58 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.57
  %61 = load i32, i32* %arrayidx20.58, align 4
  %call21.58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %61) #4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %arrayidx20.59 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.58
  %62 = load i32, i32* %arrayidx20.59, align 4
  %call21.59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %62) #4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %arrayidx20.60 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.59
  %63 = load i32, i32* %arrayidx20.60, align 4
  %call21.60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %63) #4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %arrayidx20.61 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.60
  %64 = load i32, i32* %arrayidx20.61, align 4
  %call21.61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %64) #4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %arrayidx20.62 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.61
  %65 = load i32, i32* %arrayidx20.62, align 4
  %call21.62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %65) #4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %arrayidx20.63 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv.next.62
  %66 = load i32, i32* %arrayidx20.63, align 4
  %call21.63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %66) #4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 2048
  br i1 %exitcond.63, label %for.body18, label %for.end24, !llvm.loop !5

for.end24:                                        ; preds = %for.body18
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %call14)
  %call26 = call i32 @fclose(%struct._IO_FILE* %call14) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

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
!3 = !{!"llvm.loop.unroll.disable"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
