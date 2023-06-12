; ModuleID = 'unroll_no_auto_all/triad.ll'
source_filename = "triad.c"
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
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.15, %for.body ]
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
  %exitcond.15 = icmp ne i64 %indvars.iv.next.15, 2048
  br i1 %exitcond.15, label %for.body, label %for.end, !llvm.loop !2

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
  %indvars.iv3 = phi i64 [ 0, %entry ], [ %indvars.iv.next4.15, %for.body ]
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
  %exitcond.155 = icmp ne i64 %indvars.iv.next4.15, 2048
  br i1 %exitcond.155, label %for.body, label %for.end, !llvm.loop !4

for.end:                                          ; preds = %for.body
  call void @triad(i32* %0, i32* %1, i32* %2, i32 3)
  %call14 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %for.body18

for.body18:                                       ; preds = %for.body18, %for.end
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next.15, %for.body18 ]
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
  %exitcond.15 = icmp ne i64 %indvars.iv.next.15, 2048
  br i1 %exitcond.15, label %for.body18, label %for.end24, !llvm.loop !5

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
