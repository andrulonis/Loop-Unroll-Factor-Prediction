; ModuleID = 'bb_gemm_0_32.ll'
source_filename = "bb_gemm_0_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bb_gemm(i32* %x, i32* %y, i32* %z) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc20.31, %entry
  %indvars.iv11 = phi i64 [ 0, %entry ], [ %indvars.iv.next12.31, %for.inc20.31 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.inc17
  %indvars.iv6 = phi i64 [ 0, %for.body ], [ %indvars.iv.next7, %for.inc17 ]
  %0 = shl nsw i64 %indvars.iv11, 10
  %1 = add nuw nsw i64 %0, %indvars.iv6
  %arrayidx = getelementptr inbounds i32, i32* %x, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.body3, %for.body6
  %indvars.iv = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next, %for.body6 ]
  %3 = shl nsw i64 %indvars.iv6, 10
  %4 = add nuw nsw i64 %3, %indvars.iv
  %arrayidx10 = getelementptr inbounds i32, i32* %y, i64 %4
  %5 = load i32, i32* %arrayidx10, align 4
  %mul11 = mul nsw i32 %2, %5
  %6 = shl nsw i64 %indvars.iv11, 10
  %7 = add nuw nsw i64 %6, %indvars.iv
  %arrayidx15 = getelementptr inbounds i32, i32* %z, i64 %7
  %8 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %8, %mul11
  store i32 %add16, i32* %arrayidx15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 256
  br i1 %exitcond, label %for.body6, label %for.inc17, !llvm.loop !2

for.inc17:                                        ; preds = %for.body6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next7, 256
  br i1 %exitcond10, label %for.body3, label %for.inc20, !llvm.loop !4

for.inc20:                                        ; preds = %for.inc17
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.body3.1

for.end22:                                        ; preds = %for.inc20.31
  ret void

for.body3.1:                                      ; preds = %for.inc17.1, %for.inc20
  %indvars.iv6.1 = phi i64 [ 0, %for.inc20 ], [ %indvars.iv.next7.1, %for.inc17.1 ]
  %9 = shl nsw i64 %indvars.iv.next12, 10
  %10 = add nuw nsw i64 %9, %indvars.iv6.1
  %arrayidx.1 = getelementptr inbounds i32, i32* %x, i64 %10
  %11 = load i32, i32* %arrayidx.1, align 4
  br label %for.body6.1

for.body6.1:                                      ; preds = %for.body6.1, %for.body3.1
  %indvars.iv.1 = phi i64 [ 0, %for.body3.1 ], [ %indvars.iv.next.1, %for.body6.1 ]
  %12 = shl nsw i64 %indvars.iv6.1, 10
  %13 = add nuw nsw i64 %12, %indvars.iv.1
  %arrayidx10.1 = getelementptr inbounds i32, i32* %y, i64 %13
  %14 = load i32, i32* %arrayidx10.1, align 4
  %mul11.1 = mul nsw i32 %11, %14
  %15 = shl nsw i64 %indvars.iv.next12, 10
  %16 = add nuw nsw i64 %15, %indvars.iv.1
  %arrayidx15.1 = getelementptr inbounds i32, i32* %z, i64 %16
  %17 = load i32, i32* %arrayidx15.1, align 4
  %add16.1 = add nsw i32 %17, %mul11.1
  store i32 %add16.1, i32* %arrayidx15.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1 = icmp ne i64 %indvars.iv.next.1, 256
  br i1 %exitcond.1, label %for.body6.1, label %for.inc17.1, !llvm.loop !2

for.inc17.1:                                      ; preds = %for.body6.1
  %indvars.iv.next7.1 = add nuw nsw i64 %indvars.iv6.1, 1
  %exitcond10.1 = icmp ne i64 %indvars.iv.next7.1, 256
  br i1 %exitcond10.1, label %for.body3.1, label %for.inc20.1, !llvm.loop !4

for.inc20.1:                                      ; preds = %for.inc17.1
  %indvars.iv.next12.1 = add nuw nsw i64 %indvars.iv.next12, 1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc17.2, %for.inc20.1
  %indvars.iv6.2 = phi i64 [ 0, %for.inc20.1 ], [ %indvars.iv.next7.2, %for.inc17.2 ]
  %18 = shl nsw i64 %indvars.iv.next12.1, 10
  %19 = add nuw nsw i64 %18, %indvars.iv6.2
  %arrayidx.2 = getelementptr inbounds i32, i32* %x, i64 %19
  %20 = load i32, i32* %arrayidx.2, align 4
  br label %for.body6.2

for.body6.2:                                      ; preds = %for.body6.2, %for.body3.2
  %indvars.iv.2 = phi i64 [ 0, %for.body3.2 ], [ %indvars.iv.next.2, %for.body6.2 ]
  %21 = shl nsw i64 %indvars.iv6.2, 10
  %22 = add nuw nsw i64 %21, %indvars.iv.2
  %arrayidx10.2 = getelementptr inbounds i32, i32* %y, i64 %22
  %23 = load i32, i32* %arrayidx10.2, align 4
  %mul11.2 = mul nsw i32 %20, %23
  %24 = shl nsw i64 %indvars.iv.next12.1, 10
  %25 = add nuw nsw i64 %24, %indvars.iv.2
  %arrayidx15.2 = getelementptr inbounds i32, i32* %z, i64 %25
  %26 = load i32, i32* %arrayidx15.2, align 4
  %add16.2 = add nsw i32 %26, %mul11.2
  store i32 %add16.2, i32* %arrayidx15.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2 = icmp ne i64 %indvars.iv.next.2, 256
  br i1 %exitcond.2, label %for.body6.2, label %for.inc17.2, !llvm.loop !2

for.inc17.2:                                      ; preds = %for.body6.2
  %indvars.iv.next7.2 = add nuw nsw i64 %indvars.iv6.2, 1
  %exitcond10.2 = icmp ne i64 %indvars.iv.next7.2, 256
  br i1 %exitcond10.2, label %for.body3.2, label %for.inc20.2, !llvm.loop !4

for.inc20.2:                                      ; preds = %for.inc17.2
  %indvars.iv.next12.2 = add nuw nsw i64 %indvars.iv.next12.1, 1
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc17.3, %for.inc20.2
  %indvars.iv6.3 = phi i64 [ 0, %for.inc20.2 ], [ %indvars.iv.next7.3, %for.inc17.3 ]
  %27 = shl nsw i64 %indvars.iv.next12.2, 10
  %28 = add nuw nsw i64 %27, %indvars.iv6.3
  %arrayidx.3 = getelementptr inbounds i32, i32* %x, i64 %28
  %29 = load i32, i32* %arrayidx.3, align 4
  br label %for.body6.3

for.body6.3:                                      ; preds = %for.body6.3, %for.body3.3
  %indvars.iv.3 = phi i64 [ 0, %for.body3.3 ], [ %indvars.iv.next.3, %for.body6.3 ]
  %30 = shl nsw i64 %indvars.iv6.3, 10
  %31 = add nuw nsw i64 %30, %indvars.iv.3
  %arrayidx10.3 = getelementptr inbounds i32, i32* %y, i64 %31
  %32 = load i32, i32* %arrayidx10.3, align 4
  %mul11.3 = mul nsw i32 %29, %32
  %33 = shl nsw i64 %indvars.iv.next12.2, 10
  %34 = add nuw nsw i64 %33, %indvars.iv.3
  %arrayidx15.3 = getelementptr inbounds i32, i32* %z, i64 %34
  %35 = load i32, i32* %arrayidx15.3, align 4
  %add16.3 = add nsw i32 %35, %mul11.3
  store i32 %add16.3, i32* %arrayidx15.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3 = icmp ne i64 %indvars.iv.next.3, 256
  br i1 %exitcond.3, label %for.body6.3, label %for.inc17.3, !llvm.loop !2

for.inc17.3:                                      ; preds = %for.body6.3
  %indvars.iv.next7.3 = add nuw nsw i64 %indvars.iv6.3, 1
  %exitcond10.3 = icmp ne i64 %indvars.iv.next7.3, 256
  br i1 %exitcond10.3, label %for.body3.3, label %for.inc20.3, !llvm.loop !4

for.inc20.3:                                      ; preds = %for.inc17.3
  %indvars.iv.next12.3 = add nuw nsw i64 %indvars.iv.next12.2, 1
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc17.4, %for.inc20.3
  %indvars.iv6.4 = phi i64 [ 0, %for.inc20.3 ], [ %indvars.iv.next7.4, %for.inc17.4 ]
  %36 = shl nsw i64 %indvars.iv.next12.3, 10
  %37 = add nuw nsw i64 %36, %indvars.iv6.4
  %arrayidx.4 = getelementptr inbounds i32, i32* %x, i64 %37
  %38 = load i32, i32* %arrayidx.4, align 4
  br label %for.body6.4

for.body6.4:                                      ; preds = %for.body6.4, %for.body3.4
  %indvars.iv.4 = phi i64 [ 0, %for.body3.4 ], [ %indvars.iv.next.4, %for.body6.4 ]
  %39 = shl nsw i64 %indvars.iv6.4, 10
  %40 = add nuw nsw i64 %39, %indvars.iv.4
  %arrayidx10.4 = getelementptr inbounds i32, i32* %y, i64 %40
  %41 = load i32, i32* %arrayidx10.4, align 4
  %mul11.4 = mul nsw i32 %38, %41
  %42 = shl nsw i64 %indvars.iv.next12.3, 10
  %43 = add nuw nsw i64 %42, %indvars.iv.4
  %arrayidx15.4 = getelementptr inbounds i32, i32* %z, i64 %43
  %44 = load i32, i32* %arrayidx15.4, align 4
  %add16.4 = add nsw i32 %44, %mul11.4
  store i32 %add16.4, i32* %arrayidx15.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4 = icmp ne i64 %indvars.iv.next.4, 256
  br i1 %exitcond.4, label %for.body6.4, label %for.inc17.4, !llvm.loop !2

for.inc17.4:                                      ; preds = %for.body6.4
  %indvars.iv.next7.4 = add nuw nsw i64 %indvars.iv6.4, 1
  %exitcond10.4 = icmp ne i64 %indvars.iv.next7.4, 256
  br i1 %exitcond10.4, label %for.body3.4, label %for.inc20.4, !llvm.loop !4

for.inc20.4:                                      ; preds = %for.inc17.4
  %indvars.iv.next12.4 = add nuw nsw i64 %indvars.iv.next12.3, 1
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.inc17.5, %for.inc20.4
  %indvars.iv6.5 = phi i64 [ 0, %for.inc20.4 ], [ %indvars.iv.next7.5, %for.inc17.5 ]
  %45 = shl nsw i64 %indvars.iv.next12.4, 10
  %46 = add nuw nsw i64 %45, %indvars.iv6.5
  %arrayidx.5 = getelementptr inbounds i32, i32* %x, i64 %46
  %47 = load i32, i32* %arrayidx.5, align 4
  br label %for.body6.5

for.body6.5:                                      ; preds = %for.body6.5, %for.body3.5
  %indvars.iv.5 = phi i64 [ 0, %for.body3.5 ], [ %indvars.iv.next.5, %for.body6.5 ]
  %48 = shl nsw i64 %indvars.iv6.5, 10
  %49 = add nuw nsw i64 %48, %indvars.iv.5
  %arrayidx10.5 = getelementptr inbounds i32, i32* %y, i64 %49
  %50 = load i32, i32* %arrayidx10.5, align 4
  %mul11.5 = mul nsw i32 %47, %50
  %51 = shl nsw i64 %indvars.iv.next12.4, 10
  %52 = add nuw nsw i64 %51, %indvars.iv.5
  %arrayidx15.5 = getelementptr inbounds i32, i32* %z, i64 %52
  %53 = load i32, i32* %arrayidx15.5, align 4
  %add16.5 = add nsw i32 %53, %mul11.5
  store i32 %add16.5, i32* %arrayidx15.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5 = icmp ne i64 %indvars.iv.next.5, 256
  br i1 %exitcond.5, label %for.body6.5, label %for.inc17.5, !llvm.loop !2

for.inc17.5:                                      ; preds = %for.body6.5
  %indvars.iv.next7.5 = add nuw nsw i64 %indvars.iv6.5, 1
  %exitcond10.5 = icmp ne i64 %indvars.iv.next7.5, 256
  br i1 %exitcond10.5, label %for.body3.5, label %for.inc20.5, !llvm.loop !4

for.inc20.5:                                      ; preds = %for.inc17.5
  %indvars.iv.next12.5 = add nuw nsw i64 %indvars.iv.next12.4, 1
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.inc17.6, %for.inc20.5
  %indvars.iv6.6 = phi i64 [ 0, %for.inc20.5 ], [ %indvars.iv.next7.6, %for.inc17.6 ]
  %54 = shl nsw i64 %indvars.iv.next12.5, 10
  %55 = add nuw nsw i64 %54, %indvars.iv6.6
  %arrayidx.6 = getelementptr inbounds i32, i32* %x, i64 %55
  %56 = load i32, i32* %arrayidx.6, align 4
  br label %for.body6.6

for.body6.6:                                      ; preds = %for.body6.6, %for.body3.6
  %indvars.iv.6 = phi i64 [ 0, %for.body3.6 ], [ %indvars.iv.next.6, %for.body6.6 ]
  %57 = shl nsw i64 %indvars.iv6.6, 10
  %58 = add nuw nsw i64 %57, %indvars.iv.6
  %arrayidx10.6 = getelementptr inbounds i32, i32* %y, i64 %58
  %59 = load i32, i32* %arrayidx10.6, align 4
  %mul11.6 = mul nsw i32 %56, %59
  %60 = shl nsw i64 %indvars.iv.next12.5, 10
  %61 = add nuw nsw i64 %60, %indvars.iv.6
  %arrayidx15.6 = getelementptr inbounds i32, i32* %z, i64 %61
  %62 = load i32, i32* %arrayidx15.6, align 4
  %add16.6 = add nsw i32 %62, %mul11.6
  store i32 %add16.6, i32* %arrayidx15.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6 = icmp ne i64 %indvars.iv.next.6, 256
  br i1 %exitcond.6, label %for.body6.6, label %for.inc17.6, !llvm.loop !2

for.inc17.6:                                      ; preds = %for.body6.6
  %indvars.iv.next7.6 = add nuw nsw i64 %indvars.iv6.6, 1
  %exitcond10.6 = icmp ne i64 %indvars.iv.next7.6, 256
  br i1 %exitcond10.6, label %for.body3.6, label %for.inc20.6, !llvm.loop !4

for.inc20.6:                                      ; preds = %for.inc17.6
  %indvars.iv.next12.6 = add nuw nsw i64 %indvars.iv.next12.5, 1
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.inc17.7, %for.inc20.6
  %indvars.iv6.7 = phi i64 [ 0, %for.inc20.6 ], [ %indvars.iv.next7.7, %for.inc17.7 ]
  %63 = shl nsw i64 %indvars.iv.next12.6, 10
  %64 = add nuw nsw i64 %63, %indvars.iv6.7
  %arrayidx.7 = getelementptr inbounds i32, i32* %x, i64 %64
  %65 = load i32, i32* %arrayidx.7, align 4
  br label %for.body6.7

for.body6.7:                                      ; preds = %for.body6.7, %for.body3.7
  %indvars.iv.7 = phi i64 [ 0, %for.body3.7 ], [ %indvars.iv.next.7, %for.body6.7 ]
  %66 = shl nsw i64 %indvars.iv6.7, 10
  %67 = add nuw nsw i64 %66, %indvars.iv.7
  %arrayidx10.7 = getelementptr inbounds i32, i32* %y, i64 %67
  %68 = load i32, i32* %arrayidx10.7, align 4
  %mul11.7 = mul nsw i32 %65, %68
  %69 = shl nsw i64 %indvars.iv.next12.6, 10
  %70 = add nuw nsw i64 %69, %indvars.iv.7
  %arrayidx15.7 = getelementptr inbounds i32, i32* %z, i64 %70
  %71 = load i32, i32* %arrayidx15.7, align 4
  %add16.7 = add nsw i32 %71, %mul11.7
  store i32 %add16.7, i32* %arrayidx15.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7 = icmp ne i64 %indvars.iv.next.7, 256
  br i1 %exitcond.7, label %for.body6.7, label %for.inc17.7, !llvm.loop !2

for.inc17.7:                                      ; preds = %for.body6.7
  %indvars.iv.next7.7 = add nuw nsw i64 %indvars.iv6.7, 1
  %exitcond10.7 = icmp ne i64 %indvars.iv.next7.7, 256
  br i1 %exitcond10.7, label %for.body3.7, label %for.inc20.7, !llvm.loop !4

for.inc20.7:                                      ; preds = %for.inc17.7
  %indvars.iv.next12.7 = add nuw nsw i64 %indvars.iv.next12.6, 1
  br label %for.body3.8

for.body3.8:                                      ; preds = %for.inc17.8, %for.inc20.7
  %indvars.iv6.8 = phi i64 [ 0, %for.inc20.7 ], [ %indvars.iv.next7.8, %for.inc17.8 ]
  %72 = shl nsw i64 %indvars.iv.next12.7, 10
  %73 = add nuw nsw i64 %72, %indvars.iv6.8
  %arrayidx.8 = getelementptr inbounds i32, i32* %x, i64 %73
  %74 = load i32, i32* %arrayidx.8, align 4
  br label %for.body6.8

for.body6.8:                                      ; preds = %for.body6.8, %for.body3.8
  %indvars.iv.8 = phi i64 [ 0, %for.body3.8 ], [ %indvars.iv.next.8, %for.body6.8 ]
  %75 = shl nsw i64 %indvars.iv6.8, 10
  %76 = add nuw nsw i64 %75, %indvars.iv.8
  %arrayidx10.8 = getelementptr inbounds i32, i32* %y, i64 %76
  %77 = load i32, i32* %arrayidx10.8, align 4
  %mul11.8 = mul nsw i32 %74, %77
  %78 = shl nsw i64 %indvars.iv.next12.7, 10
  %79 = add nuw nsw i64 %78, %indvars.iv.8
  %arrayidx15.8 = getelementptr inbounds i32, i32* %z, i64 %79
  %80 = load i32, i32* %arrayidx15.8, align 4
  %add16.8 = add nsw i32 %80, %mul11.8
  store i32 %add16.8, i32* %arrayidx15.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1
  %exitcond.8 = icmp ne i64 %indvars.iv.next.8, 256
  br i1 %exitcond.8, label %for.body6.8, label %for.inc17.8, !llvm.loop !2

for.inc17.8:                                      ; preds = %for.body6.8
  %indvars.iv.next7.8 = add nuw nsw i64 %indvars.iv6.8, 1
  %exitcond10.8 = icmp ne i64 %indvars.iv.next7.8, 256
  br i1 %exitcond10.8, label %for.body3.8, label %for.inc20.8, !llvm.loop !4

for.inc20.8:                                      ; preds = %for.inc17.8
  %indvars.iv.next12.8 = add nuw nsw i64 %indvars.iv.next12.7, 1
  br label %for.body3.9

for.body3.9:                                      ; preds = %for.inc17.9, %for.inc20.8
  %indvars.iv6.9 = phi i64 [ 0, %for.inc20.8 ], [ %indvars.iv.next7.9, %for.inc17.9 ]
  %81 = shl nsw i64 %indvars.iv.next12.8, 10
  %82 = add nuw nsw i64 %81, %indvars.iv6.9
  %arrayidx.9 = getelementptr inbounds i32, i32* %x, i64 %82
  %83 = load i32, i32* %arrayidx.9, align 4
  br label %for.body6.9

for.body6.9:                                      ; preds = %for.body6.9, %for.body3.9
  %indvars.iv.9 = phi i64 [ 0, %for.body3.9 ], [ %indvars.iv.next.9, %for.body6.9 ]
  %84 = shl nsw i64 %indvars.iv6.9, 10
  %85 = add nuw nsw i64 %84, %indvars.iv.9
  %arrayidx10.9 = getelementptr inbounds i32, i32* %y, i64 %85
  %86 = load i32, i32* %arrayidx10.9, align 4
  %mul11.9 = mul nsw i32 %83, %86
  %87 = shl nsw i64 %indvars.iv.next12.8, 10
  %88 = add nuw nsw i64 %87, %indvars.iv.9
  %arrayidx15.9 = getelementptr inbounds i32, i32* %z, i64 %88
  %89 = load i32, i32* %arrayidx15.9, align 4
  %add16.9 = add nsw i32 %89, %mul11.9
  store i32 %add16.9, i32* %arrayidx15.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1
  %exitcond.9 = icmp ne i64 %indvars.iv.next.9, 256
  br i1 %exitcond.9, label %for.body6.9, label %for.inc17.9, !llvm.loop !2

for.inc17.9:                                      ; preds = %for.body6.9
  %indvars.iv.next7.9 = add nuw nsw i64 %indvars.iv6.9, 1
  %exitcond10.9 = icmp ne i64 %indvars.iv.next7.9, 256
  br i1 %exitcond10.9, label %for.body3.9, label %for.inc20.9, !llvm.loop !4

for.inc20.9:                                      ; preds = %for.inc17.9
  %indvars.iv.next12.9 = add nuw nsw i64 %indvars.iv.next12.8, 1
  br label %for.body3.10

for.body3.10:                                     ; preds = %for.inc17.10, %for.inc20.9
  %indvars.iv6.10 = phi i64 [ 0, %for.inc20.9 ], [ %indvars.iv.next7.10, %for.inc17.10 ]
  %90 = shl nsw i64 %indvars.iv.next12.9, 10
  %91 = add nuw nsw i64 %90, %indvars.iv6.10
  %arrayidx.10 = getelementptr inbounds i32, i32* %x, i64 %91
  %92 = load i32, i32* %arrayidx.10, align 4
  br label %for.body6.10

for.body6.10:                                     ; preds = %for.body6.10, %for.body3.10
  %indvars.iv.10 = phi i64 [ 0, %for.body3.10 ], [ %indvars.iv.next.10, %for.body6.10 ]
  %93 = shl nsw i64 %indvars.iv6.10, 10
  %94 = add nuw nsw i64 %93, %indvars.iv.10
  %arrayidx10.10 = getelementptr inbounds i32, i32* %y, i64 %94
  %95 = load i32, i32* %arrayidx10.10, align 4
  %mul11.10 = mul nsw i32 %92, %95
  %96 = shl nsw i64 %indvars.iv.next12.9, 10
  %97 = add nuw nsw i64 %96, %indvars.iv.10
  %arrayidx15.10 = getelementptr inbounds i32, i32* %z, i64 %97
  %98 = load i32, i32* %arrayidx15.10, align 4
  %add16.10 = add nsw i32 %98, %mul11.10
  store i32 %add16.10, i32* %arrayidx15.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.10, 1
  %exitcond.10 = icmp ne i64 %indvars.iv.next.10, 256
  br i1 %exitcond.10, label %for.body6.10, label %for.inc17.10, !llvm.loop !2

for.inc17.10:                                     ; preds = %for.body6.10
  %indvars.iv.next7.10 = add nuw nsw i64 %indvars.iv6.10, 1
  %exitcond10.10 = icmp ne i64 %indvars.iv.next7.10, 256
  br i1 %exitcond10.10, label %for.body3.10, label %for.inc20.10, !llvm.loop !4

for.inc20.10:                                     ; preds = %for.inc17.10
  %indvars.iv.next12.10 = add nuw nsw i64 %indvars.iv.next12.9, 1
  br label %for.body3.11

for.body3.11:                                     ; preds = %for.inc17.11, %for.inc20.10
  %indvars.iv6.11 = phi i64 [ 0, %for.inc20.10 ], [ %indvars.iv.next7.11, %for.inc17.11 ]
  %99 = shl nsw i64 %indvars.iv.next12.10, 10
  %100 = add nuw nsw i64 %99, %indvars.iv6.11
  %arrayidx.11 = getelementptr inbounds i32, i32* %x, i64 %100
  %101 = load i32, i32* %arrayidx.11, align 4
  br label %for.body6.11

for.body6.11:                                     ; preds = %for.body6.11, %for.body3.11
  %indvars.iv.11 = phi i64 [ 0, %for.body3.11 ], [ %indvars.iv.next.11, %for.body6.11 ]
  %102 = shl nsw i64 %indvars.iv6.11, 10
  %103 = add nuw nsw i64 %102, %indvars.iv.11
  %arrayidx10.11 = getelementptr inbounds i32, i32* %y, i64 %103
  %104 = load i32, i32* %arrayidx10.11, align 4
  %mul11.11 = mul nsw i32 %101, %104
  %105 = shl nsw i64 %indvars.iv.next12.10, 10
  %106 = add nuw nsw i64 %105, %indvars.iv.11
  %arrayidx15.11 = getelementptr inbounds i32, i32* %z, i64 %106
  %107 = load i32, i32* %arrayidx15.11, align 4
  %add16.11 = add nsw i32 %107, %mul11.11
  store i32 %add16.11, i32* %arrayidx15.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.11, 1
  %exitcond.11 = icmp ne i64 %indvars.iv.next.11, 256
  br i1 %exitcond.11, label %for.body6.11, label %for.inc17.11, !llvm.loop !2

for.inc17.11:                                     ; preds = %for.body6.11
  %indvars.iv.next7.11 = add nuw nsw i64 %indvars.iv6.11, 1
  %exitcond10.11 = icmp ne i64 %indvars.iv.next7.11, 256
  br i1 %exitcond10.11, label %for.body3.11, label %for.inc20.11, !llvm.loop !4

for.inc20.11:                                     ; preds = %for.inc17.11
  %indvars.iv.next12.11 = add nuw nsw i64 %indvars.iv.next12.10, 1
  br label %for.body3.12

for.body3.12:                                     ; preds = %for.inc17.12, %for.inc20.11
  %indvars.iv6.12 = phi i64 [ 0, %for.inc20.11 ], [ %indvars.iv.next7.12, %for.inc17.12 ]
  %108 = shl nsw i64 %indvars.iv.next12.11, 10
  %109 = add nuw nsw i64 %108, %indvars.iv6.12
  %arrayidx.12 = getelementptr inbounds i32, i32* %x, i64 %109
  %110 = load i32, i32* %arrayidx.12, align 4
  br label %for.body6.12

for.body6.12:                                     ; preds = %for.body6.12, %for.body3.12
  %indvars.iv.12 = phi i64 [ 0, %for.body3.12 ], [ %indvars.iv.next.12, %for.body6.12 ]
  %111 = shl nsw i64 %indvars.iv6.12, 10
  %112 = add nuw nsw i64 %111, %indvars.iv.12
  %arrayidx10.12 = getelementptr inbounds i32, i32* %y, i64 %112
  %113 = load i32, i32* %arrayidx10.12, align 4
  %mul11.12 = mul nsw i32 %110, %113
  %114 = shl nsw i64 %indvars.iv.next12.11, 10
  %115 = add nuw nsw i64 %114, %indvars.iv.12
  %arrayidx15.12 = getelementptr inbounds i32, i32* %z, i64 %115
  %116 = load i32, i32* %arrayidx15.12, align 4
  %add16.12 = add nsw i32 %116, %mul11.12
  store i32 %add16.12, i32* %arrayidx15.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.12, 1
  %exitcond.12 = icmp ne i64 %indvars.iv.next.12, 256
  br i1 %exitcond.12, label %for.body6.12, label %for.inc17.12, !llvm.loop !2

for.inc17.12:                                     ; preds = %for.body6.12
  %indvars.iv.next7.12 = add nuw nsw i64 %indvars.iv6.12, 1
  %exitcond10.12 = icmp ne i64 %indvars.iv.next7.12, 256
  br i1 %exitcond10.12, label %for.body3.12, label %for.inc20.12, !llvm.loop !4

for.inc20.12:                                     ; preds = %for.inc17.12
  %indvars.iv.next12.12 = add nuw nsw i64 %indvars.iv.next12.11, 1
  br label %for.body3.13

for.body3.13:                                     ; preds = %for.inc17.13, %for.inc20.12
  %indvars.iv6.13 = phi i64 [ 0, %for.inc20.12 ], [ %indvars.iv.next7.13, %for.inc17.13 ]
  %117 = shl nsw i64 %indvars.iv.next12.12, 10
  %118 = add nuw nsw i64 %117, %indvars.iv6.13
  %arrayidx.13 = getelementptr inbounds i32, i32* %x, i64 %118
  %119 = load i32, i32* %arrayidx.13, align 4
  br label %for.body6.13

for.body6.13:                                     ; preds = %for.body6.13, %for.body3.13
  %indvars.iv.13 = phi i64 [ 0, %for.body3.13 ], [ %indvars.iv.next.13, %for.body6.13 ]
  %120 = shl nsw i64 %indvars.iv6.13, 10
  %121 = add nuw nsw i64 %120, %indvars.iv.13
  %arrayidx10.13 = getelementptr inbounds i32, i32* %y, i64 %121
  %122 = load i32, i32* %arrayidx10.13, align 4
  %mul11.13 = mul nsw i32 %119, %122
  %123 = shl nsw i64 %indvars.iv.next12.12, 10
  %124 = add nuw nsw i64 %123, %indvars.iv.13
  %arrayidx15.13 = getelementptr inbounds i32, i32* %z, i64 %124
  %125 = load i32, i32* %arrayidx15.13, align 4
  %add16.13 = add nsw i32 %125, %mul11.13
  store i32 %add16.13, i32* %arrayidx15.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.13, 1
  %exitcond.13 = icmp ne i64 %indvars.iv.next.13, 256
  br i1 %exitcond.13, label %for.body6.13, label %for.inc17.13, !llvm.loop !2

for.inc17.13:                                     ; preds = %for.body6.13
  %indvars.iv.next7.13 = add nuw nsw i64 %indvars.iv6.13, 1
  %exitcond10.13 = icmp ne i64 %indvars.iv.next7.13, 256
  br i1 %exitcond10.13, label %for.body3.13, label %for.inc20.13, !llvm.loop !4

for.inc20.13:                                     ; preds = %for.inc17.13
  %indvars.iv.next12.13 = add nuw nsw i64 %indvars.iv.next12.12, 1
  br label %for.body3.14

for.body3.14:                                     ; preds = %for.inc17.14, %for.inc20.13
  %indvars.iv6.14 = phi i64 [ 0, %for.inc20.13 ], [ %indvars.iv.next7.14, %for.inc17.14 ]
  %126 = shl nsw i64 %indvars.iv.next12.13, 10
  %127 = add nuw nsw i64 %126, %indvars.iv6.14
  %arrayidx.14 = getelementptr inbounds i32, i32* %x, i64 %127
  %128 = load i32, i32* %arrayidx.14, align 4
  br label %for.body6.14

for.body6.14:                                     ; preds = %for.body6.14, %for.body3.14
  %indvars.iv.14 = phi i64 [ 0, %for.body3.14 ], [ %indvars.iv.next.14, %for.body6.14 ]
  %129 = shl nsw i64 %indvars.iv6.14, 10
  %130 = add nuw nsw i64 %129, %indvars.iv.14
  %arrayidx10.14 = getelementptr inbounds i32, i32* %y, i64 %130
  %131 = load i32, i32* %arrayidx10.14, align 4
  %mul11.14 = mul nsw i32 %128, %131
  %132 = shl nsw i64 %indvars.iv.next12.13, 10
  %133 = add nuw nsw i64 %132, %indvars.iv.14
  %arrayidx15.14 = getelementptr inbounds i32, i32* %z, i64 %133
  %134 = load i32, i32* %arrayidx15.14, align 4
  %add16.14 = add nsw i32 %134, %mul11.14
  store i32 %add16.14, i32* %arrayidx15.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.14, 1
  %exitcond.14 = icmp ne i64 %indvars.iv.next.14, 256
  br i1 %exitcond.14, label %for.body6.14, label %for.inc17.14, !llvm.loop !2

for.inc17.14:                                     ; preds = %for.body6.14
  %indvars.iv.next7.14 = add nuw nsw i64 %indvars.iv6.14, 1
  %exitcond10.14 = icmp ne i64 %indvars.iv.next7.14, 256
  br i1 %exitcond10.14, label %for.body3.14, label %for.inc20.14, !llvm.loop !4

for.inc20.14:                                     ; preds = %for.inc17.14
  %indvars.iv.next12.14 = add nuw nsw i64 %indvars.iv.next12.13, 1
  br label %for.body3.15

for.body3.15:                                     ; preds = %for.inc17.15, %for.inc20.14
  %indvars.iv6.15 = phi i64 [ 0, %for.inc20.14 ], [ %indvars.iv.next7.15, %for.inc17.15 ]
  %135 = shl nsw i64 %indvars.iv.next12.14, 10
  %136 = add nuw nsw i64 %135, %indvars.iv6.15
  %arrayidx.15 = getelementptr inbounds i32, i32* %x, i64 %136
  %137 = load i32, i32* %arrayidx.15, align 4
  br label %for.body6.15

for.body6.15:                                     ; preds = %for.body6.15, %for.body3.15
  %indvars.iv.15 = phi i64 [ 0, %for.body3.15 ], [ %indvars.iv.next.15, %for.body6.15 ]
  %138 = shl nsw i64 %indvars.iv6.15, 10
  %139 = add nuw nsw i64 %138, %indvars.iv.15
  %arrayidx10.15 = getelementptr inbounds i32, i32* %y, i64 %139
  %140 = load i32, i32* %arrayidx10.15, align 4
  %mul11.15 = mul nsw i32 %137, %140
  %141 = shl nsw i64 %indvars.iv.next12.14, 10
  %142 = add nuw nsw i64 %141, %indvars.iv.15
  %arrayidx15.15 = getelementptr inbounds i32, i32* %z, i64 %142
  %143 = load i32, i32* %arrayidx15.15, align 4
  %add16.15 = add nsw i32 %143, %mul11.15
  store i32 %add16.15, i32* %arrayidx15.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.15, 1
  %exitcond.15 = icmp ne i64 %indvars.iv.next.15, 256
  br i1 %exitcond.15, label %for.body6.15, label %for.inc17.15, !llvm.loop !2

for.inc17.15:                                     ; preds = %for.body6.15
  %indvars.iv.next7.15 = add nuw nsw i64 %indvars.iv6.15, 1
  %exitcond10.15 = icmp ne i64 %indvars.iv.next7.15, 256
  br i1 %exitcond10.15, label %for.body3.15, label %for.inc20.15, !llvm.loop !4

for.inc20.15:                                     ; preds = %for.inc17.15
  %indvars.iv.next12.15 = add nuw nsw i64 %indvars.iv.next12.14, 1
  br label %for.body3.16

for.body3.16:                                     ; preds = %for.inc17.16, %for.inc20.15
  %indvars.iv6.16 = phi i64 [ 0, %for.inc20.15 ], [ %indvars.iv.next7.16, %for.inc17.16 ]
  %144 = shl nsw i64 %indvars.iv.next12.15, 10
  %145 = add nuw nsw i64 %144, %indvars.iv6.16
  %arrayidx.16 = getelementptr inbounds i32, i32* %x, i64 %145
  %146 = load i32, i32* %arrayidx.16, align 4
  br label %for.body6.16

for.body6.16:                                     ; preds = %for.body6.16, %for.body3.16
  %indvars.iv.16 = phi i64 [ 0, %for.body3.16 ], [ %indvars.iv.next.16, %for.body6.16 ]
  %147 = shl nsw i64 %indvars.iv6.16, 10
  %148 = add nuw nsw i64 %147, %indvars.iv.16
  %arrayidx10.16 = getelementptr inbounds i32, i32* %y, i64 %148
  %149 = load i32, i32* %arrayidx10.16, align 4
  %mul11.16 = mul nsw i32 %146, %149
  %150 = shl nsw i64 %indvars.iv.next12.15, 10
  %151 = add nuw nsw i64 %150, %indvars.iv.16
  %arrayidx15.16 = getelementptr inbounds i32, i32* %z, i64 %151
  %152 = load i32, i32* %arrayidx15.16, align 4
  %add16.16 = add nsw i32 %152, %mul11.16
  store i32 %add16.16, i32* %arrayidx15.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.16, 1
  %exitcond.16 = icmp ne i64 %indvars.iv.next.16, 256
  br i1 %exitcond.16, label %for.body6.16, label %for.inc17.16, !llvm.loop !2

for.inc17.16:                                     ; preds = %for.body6.16
  %indvars.iv.next7.16 = add nuw nsw i64 %indvars.iv6.16, 1
  %exitcond10.16 = icmp ne i64 %indvars.iv.next7.16, 256
  br i1 %exitcond10.16, label %for.body3.16, label %for.inc20.16, !llvm.loop !4

for.inc20.16:                                     ; preds = %for.inc17.16
  %indvars.iv.next12.16 = add nuw nsw i64 %indvars.iv.next12.15, 1
  br label %for.body3.17

for.body3.17:                                     ; preds = %for.inc17.17, %for.inc20.16
  %indvars.iv6.17 = phi i64 [ 0, %for.inc20.16 ], [ %indvars.iv.next7.17, %for.inc17.17 ]
  %153 = shl nsw i64 %indvars.iv.next12.16, 10
  %154 = add nuw nsw i64 %153, %indvars.iv6.17
  %arrayidx.17 = getelementptr inbounds i32, i32* %x, i64 %154
  %155 = load i32, i32* %arrayidx.17, align 4
  br label %for.body6.17

for.body6.17:                                     ; preds = %for.body6.17, %for.body3.17
  %indvars.iv.17 = phi i64 [ 0, %for.body3.17 ], [ %indvars.iv.next.17, %for.body6.17 ]
  %156 = shl nsw i64 %indvars.iv6.17, 10
  %157 = add nuw nsw i64 %156, %indvars.iv.17
  %arrayidx10.17 = getelementptr inbounds i32, i32* %y, i64 %157
  %158 = load i32, i32* %arrayidx10.17, align 4
  %mul11.17 = mul nsw i32 %155, %158
  %159 = shl nsw i64 %indvars.iv.next12.16, 10
  %160 = add nuw nsw i64 %159, %indvars.iv.17
  %arrayidx15.17 = getelementptr inbounds i32, i32* %z, i64 %160
  %161 = load i32, i32* %arrayidx15.17, align 4
  %add16.17 = add nsw i32 %161, %mul11.17
  store i32 %add16.17, i32* %arrayidx15.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.17, 1
  %exitcond.17 = icmp ne i64 %indvars.iv.next.17, 256
  br i1 %exitcond.17, label %for.body6.17, label %for.inc17.17, !llvm.loop !2

for.inc17.17:                                     ; preds = %for.body6.17
  %indvars.iv.next7.17 = add nuw nsw i64 %indvars.iv6.17, 1
  %exitcond10.17 = icmp ne i64 %indvars.iv.next7.17, 256
  br i1 %exitcond10.17, label %for.body3.17, label %for.inc20.17, !llvm.loop !4

for.inc20.17:                                     ; preds = %for.inc17.17
  %indvars.iv.next12.17 = add nuw nsw i64 %indvars.iv.next12.16, 1
  br label %for.body3.18

for.body3.18:                                     ; preds = %for.inc17.18, %for.inc20.17
  %indvars.iv6.18 = phi i64 [ 0, %for.inc20.17 ], [ %indvars.iv.next7.18, %for.inc17.18 ]
  %162 = shl nsw i64 %indvars.iv.next12.17, 10
  %163 = add nuw nsw i64 %162, %indvars.iv6.18
  %arrayidx.18 = getelementptr inbounds i32, i32* %x, i64 %163
  %164 = load i32, i32* %arrayidx.18, align 4
  br label %for.body6.18

for.body6.18:                                     ; preds = %for.body6.18, %for.body3.18
  %indvars.iv.18 = phi i64 [ 0, %for.body3.18 ], [ %indvars.iv.next.18, %for.body6.18 ]
  %165 = shl nsw i64 %indvars.iv6.18, 10
  %166 = add nuw nsw i64 %165, %indvars.iv.18
  %arrayidx10.18 = getelementptr inbounds i32, i32* %y, i64 %166
  %167 = load i32, i32* %arrayidx10.18, align 4
  %mul11.18 = mul nsw i32 %164, %167
  %168 = shl nsw i64 %indvars.iv.next12.17, 10
  %169 = add nuw nsw i64 %168, %indvars.iv.18
  %arrayidx15.18 = getelementptr inbounds i32, i32* %z, i64 %169
  %170 = load i32, i32* %arrayidx15.18, align 4
  %add16.18 = add nsw i32 %170, %mul11.18
  store i32 %add16.18, i32* %arrayidx15.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.18, 1
  %exitcond.18 = icmp ne i64 %indvars.iv.next.18, 256
  br i1 %exitcond.18, label %for.body6.18, label %for.inc17.18, !llvm.loop !2

for.inc17.18:                                     ; preds = %for.body6.18
  %indvars.iv.next7.18 = add nuw nsw i64 %indvars.iv6.18, 1
  %exitcond10.18 = icmp ne i64 %indvars.iv.next7.18, 256
  br i1 %exitcond10.18, label %for.body3.18, label %for.inc20.18, !llvm.loop !4

for.inc20.18:                                     ; preds = %for.inc17.18
  %indvars.iv.next12.18 = add nuw nsw i64 %indvars.iv.next12.17, 1
  br label %for.body3.19

for.body3.19:                                     ; preds = %for.inc17.19, %for.inc20.18
  %indvars.iv6.19 = phi i64 [ 0, %for.inc20.18 ], [ %indvars.iv.next7.19, %for.inc17.19 ]
  %171 = shl nsw i64 %indvars.iv.next12.18, 10
  %172 = add nuw nsw i64 %171, %indvars.iv6.19
  %arrayidx.19 = getelementptr inbounds i32, i32* %x, i64 %172
  %173 = load i32, i32* %arrayidx.19, align 4
  br label %for.body6.19

for.body6.19:                                     ; preds = %for.body6.19, %for.body3.19
  %indvars.iv.19 = phi i64 [ 0, %for.body3.19 ], [ %indvars.iv.next.19, %for.body6.19 ]
  %174 = shl nsw i64 %indvars.iv6.19, 10
  %175 = add nuw nsw i64 %174, %indvars.iv.19
  %arrayidx10.19 = getelementptr inbounds i32, i32* %y, i64 %175
  %176 = load i32, i32* %arrayidx10.19, align 4
  %mul11.19 = mul nsw i32 %173, %176
  %177 = shl nsw i64 %indvars.iv.next12.18, 10
  %178 = add nuw nsw i64 %177, %indvars.iv.19
  %arrayidx15.19 = getelementptr inbounds i32, i32* %z, i64 %178
  %179 = load i32, i32* %arrayidx15.19, align 4
  %add16.19 = add nsw i32 %179, %mul11.19
  store i32 %add16.19, i32* %arrayidx15.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.19, 1
  %exitcond.19 = icmp ne i64 %indvars.iv.next.19, 256
  br i1 %exitcond.19, label %for.body6.19, label %for.inc17.19, !llvm.loop !2

for.inc17.19:                                     ; preds = %for.body6.19
  %indvars.iv.next7.19 = add nuw nsw i64 %indvars.iv6.19, 1
  %exitcond10.19 = icmp ne i64 %indvars.iv.next7.19, 256
  br i1 %exitcond10.19, label %for.body3.19, label %for.inc20.19, !llvm.loop !4

for.inc20.19:                                     ; preds = %for.inc17.19
  %indvars.iv.next12.19 = add nuw nsw i64 %indvars.iv.next12.18, 1
  br label %for.body3.20

for.body3.20:                                     ; preds = %for.inc17.20, %for.inc20.19
  %indvars.iv6.20 = phi i64 [ 0, %for.inc20.19 ], [ %indvars.iv.next7.20, %for.inc17.20 ]
  %180 = shl nsw i64 %indvars.iv.next12.19, 10
  %181 = add nuw nsw i64 %180, %indvars.iv6.20
  %arrayidx.20 = getelementptr inbounds i32, i32* %x, i64 %181
  %182 = load i32, i32* %arrayidx.20, align 4
  br label %for.body6.20

for.body6.20:                                     ; preds = %for.body6.20, %for.body3.20
  %indvars.iv.20 = phi i64 [ 0, %for.body3.20 ], [ %indvars.iv.next.20, %for.body6.20 ]
  %183 = shl nsw i64 %indvars.iv6.20, 10
  %184 = add nuw nsw i64 %183, %indvars.iv.20
  %arrayidx10.20 = getelementptr inbounds i32, i32* %y, i64 %184
  %185 = load i32, i32* %arrayidx10.20, align 4
  %mul11.20 = mul nsw i32 %182, %185
  %186 = shl nsw i64 %indvars.iv.next12.19, 10
  %187 = add nuw nsw i64 %186, %indvars.iv.20
  %arrayidx15.20 = getelementptr inbounds i32, i32* %z, i64 %187
  %188 = load i32, i32* %arrayidx15.20, align 4
  %add16.20 = add nsw i32 %188, %mul11.20
  store i32 %add16.20, i32* %arrayidx15.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.20, 1
  %exitcond.20 = icmp ne i64 %indvars.iv.next.20, 256
  br i1 %exitcond.20, label %for.body6.20, label %for.inc17.20, !llvm.loop !2

for.inc17.20:                                     ; preds = %for.body6.20
  %indvars.iv.next7.20 = add nuw nsw i64 %indvars.iv6.20, 1
  %exitcond10.20 = icmp ne i64 %indvars.iv.next7.20, 256
  br i1 %exitcond10.20, label %for.body3.20, label %for.inc20.20, !llvm.loop !4

for.inc20.20:                                     ; preds = %for.inc17.20
  %indvars.iv.next12.20 = add nuw nsw i64 %indvars.iv.next12.19, 1
  br label %for.body3.21

for.body3.21:                                     ; preds = %for.inc17.21, %for.inc20.20
  %indvars.iv6.21 = phi i64 [ 0, %for.inc20.20 ], [ %indvars.iv.next7.21, %for.inc17.21 ]
  %189 = shl nsw i64 %indvars.iv.next12.20, 10
  %190 = add nuw nsw i64 %189, %indvars.iv6.21
  %arrayidx.21 = getelementptr inbounds i32, i32* %x, i64 %190
  %191 = load i32, i32* %arrayidx.21, align 4
  br label %for.body6.21

for.body6.21:                                     ; preds = %for.body6.21, %for.body3.21
  %indvars.iv.21 = phi i64 [ 0, %for.body3.21 ], [ %indvars.iv.next.21, %for.body6.21 ]
  %192 = shl nsw i64 %indvars.iv6.21, 10
  %193 = add nuw nsw i64 %192, %indvars.iv.21
  %arrayidx10.21 = getelementptr inbounds i32, i32* %y, i64 %193
  %194 = load i32, i32* %arrayidx10.21, align 4
  %mul11.21 = mul nsw i32 %191, %194
  %195 = shl nsw i64 %indvars.iv.next12.20, 10
  %196 = add nuw nsw i64 %195, %indvars.iv.21
  %arrayidx15.21 = getelementptr inbounds i32, i32* %z, i64 %196
  %197 = load i32, i32* %arrayidx15.21, align 4
  %add16.21 = add nsw i32 %197, %mul11.21
  store i32 %add16.21, i32* %arrayidx15.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.21, 1
  %exitcond.21 = icmp ne i64 %indvars.iv.next.21, 256
  br i1 %exitcond.21, label %for.body6.21, label %for.inc17.21, !llvm.loop !2

for.inc17.21:                                     ; preds = %for.body6.21
  %indvars.iv.next7.21 = add nuw nsw i64 %indvars.iv6.21, 1
  %exitcond10.21 = icmp ne i64 %indvars.iv.next7.21, 256
  br i1 %exitcond10.21, label %for.body3.21, label %for.inc20.21, !llvm.loop !4

for.inc20.21:                                     ; preds = %for.inc17.21
  %indvars.iv.next12.21 = add nuw nsw i64 %indvars.iv.next12.20, 1
  br label %for.body3.22

for.body3.22:                                     ; preds = %for.inc17.22, %for.inc20.21
  %indvars.iv6.22 = phi i64 [ 0, %for.inc20.21 ], [ %indvars.iv.next7.22, %for.inc17.22 ]
  %198 = shl nsw i64 %indvars.iv.next12.21, 10
  %199 = add nuw nsw i64 %198, %indvars.iv6.22
  %arrayidx.22 = getelementptr inbounds i32, i32* %x, i64 %199
  %200 = load i32, i32* %arrayidx.22, align 4
  br label %for.body6.22

for.body6.22:                                     ; preds = %for.body6.22, %for.body3.22
  %indvars.iv.22 = phi i64 [ 0, %for.body3.22 ], [ %indvars.iv.next.22, %for.body6.22 ]
  %201 = shl nsw i64 %indvars.iv6.22, 10
  %202 = add nuw nsw i64 %201, %indvars.iv.22
  %arrayidx10.22 = getelementptr inbounds i32, i32* %y, i64 %202
  %203 = load i32, i32* %arrayidx10.22, align 4
  %mul11.22 = mul nsw i32 %200, %203
  %204 = shl nsw i64 %indvars.iv.next12.21, 10
  %205 = add nuw nsw i64 %204, %indvars.iv.22
  %arrayidx15.22 = getelementptr inbounds i32, i32* %z, i64 %205
  %206 = load i32, i32* %arrayidx15.22, align 4
  %add16.22 = add nsw i32 %206, %mul11.22
  store i32 %add16.22, i32* %arrayidx15.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.22, 1
  %exitcond.22 = icmp ne i64 %indvars.iv.next.22, 256
  br i1 %exitcond.22, label %for.body6.22, label %for.inc17.22, !llvm.loop !2

for.inc17.22:                                     ; preds = %for.body6.22
  %indvars.iv.next7.22 = add nuw nsw i64 %indvars.iv6.22, 1
  %exitcond10.22 = icmp ne i64 %indvars.iv.next7.22, 256
  br i1 %exitcond10.22, label %for.body3.22, label %for.inc20.22, !llvm.loop !4

for.inc20.22:                                     ; preds = %for.inc17.22
  %indvars.iv.next12.22 = add nuw nsw i64 %indvars.iv.next12.21, 1
  br label %for.body3.23

for.body3.23:                                     ; preds = %for.inc17.23, %for.inc20.22
  %indvars.iv6.23 = phi i64 [ 0, %for.inc20.22 ], [ %indvars.iv.next7.23, %for.inc17.23 ]
  %207 = shl nsw i64 %indvars.iv.next12.22, 10
  %208 = add nuw nsw i64 %207, %indvars.iv6.23
  %arrayidx.23 = getelementptr inbounds i32, i32* %x, i64 %208
  %209 = load i32, i32* %arrayidx.23, align 4
  br label %for.body6.23

for.body6.23:                                     ; preds = %for.body6.23, %for.body3.23
  %indvars.iv.23 = phi i64 [ 0, %for.body3.23 ], [ %indvars.iv.next.23, %for.body6.23 ]
  %210 = shl nsw i64 %indvars.iv6.23, 10
  %211 = add nuw nsw i64 %210, %indvars.iv.23
  %arrayidx10.23 = getelementptr inbounds i32, i32* %y, i64 %211
  %212 = load i32, i32* %arrayidx10.23, align 4
  %mul11.23 = mul nsw i32 %209, %212
  %213 = shl nsw i64 %indvars.iv.next12.22, 10
  %214 = add nuw nsw i64 %213, %indvars.iv.23
  %arrayidx15.23 = getelementptr inbounds i32, i32* %z, i64 %214
  %215 = load i32, i32* %arrayidx15.23, align 4
  %add16.23 = add nsw i32 %215, %mul11.23
  store i32 %add16.23, i32* %arrayidx15.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.23, 1
  %exitcond.23 = icmp ne i64 %indvars.iv.next.23, 256
  br i1 %exitcond.23, label %for.body6.23, label %for.inc17.23, !llvm.loop !2

for.inc17.23:                                     ; preds = %for.body6.23
  %indvars.iv.next7.23 = add nuw nsw i64 %indvars.iv6.23, 1
  %exitcond10.23 = icmp ne i64 %indvars.iv.next7.23, 256
  br i1 %exitcond10.23, label %for.body3.23, label %for.inc20.23, !llvm.loop !4

for.inc20.23:                                     ; preds = %for.inc17.23
  %indvars.iv.next12.23 = add nuw nsw i64 %indvars.iv.next12.22, 1
  br label %for.body3.24

for.body3.24:                                     ; preds = %for.inc17.24, %for.inc20.23
  %indvars.iv6.24 = phi i64 [ 0, %for.inc20.23 ], [ %indvars.iv.next7.24, %for.inc17.24 ]
  %216 = shl nsw i64 %indvars.iv.next12.23, 10
  %217 = add nuw nsw i64 %216, %indvars.iv6.24
  %arrayidx.24 = getelementptr inbounds i32, i32* %x, i64 %217
  %218 = load i32, i32* %arrayidx.24, align 4
  br label %for.body6.24

for.body6.24:                                     ; preds = %for.body6.24, %for.body3.24
  %indvars.iv.24 = phi i64 [ 0, %for.body3.24 ], [ %indvars.iv.next.24, %for.body6.24 ]
  %219 = shl nsw i64 %indvars.iv6.24, 10
  %220 = add nuw nsw i64 %219, %indvars.iv.24
  %arrayidx10.24 = getelementptr inbounds i32, i32* %y, i64 %220
  %221 = load i32, i32* %arrayidx10.24, align 4
  %mul11.24 = mul nsw i32 %218, %221
  %222 = shl nsw i64 %indvars.iv.next12.23, 10
  %223 = add nuw nsw i64 %222, %indvars.iv.24
  %arrayidx15.24 = getelementptr inbounds i32, i32* %z, i64 %223
  %224 = load i32, i32* %arrayidx15.24, align 4
  %add16.24 = add nsw i32 %224, %mul11.24
  store i32 %add16.24, i32* %arrayidx15.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.24, 1
  %exitcond.24 = icmp ne i64 %indvars.iv.next.24, 256
  br i1 %exitcond.24, label %for.body6.24, label %for.inc17.24, !llvm.loop !2

for.inc17.24:                                     ; preds = %for.body6.24
  %indvars.iv.next7.24 = add nuw nsw i64 %indvars.iv6.24, 1
  %exitcond10.24 = icmp ne i64 %indvars.iv.next7.24, 256
  br i1 %exitcond10.24, label %for.body3.24, label %for.inc20.24, !llvm.loop !4

for.inc20.24:                                     ; preds = %for.inc17.24
  %indvars.iv.next12.24 = add nuw nsw i64 %indvars.iv.next12.23, 1
  br label %for.body3.25

for.body3.25:                                     ; preds = %for.inc17.25, %for.inc20.24
  %indvars.iv6.25 = phi i64 [ 0, %for.inc20.24 ], [ %indvars.iv.next7.25, %for.inc17.25 ]
  %225 = shl nsw i64 %indvars.iv.next12.24, 10
  %226 = add nuw nsw i64 %225, %indvars.iv6.25
  %arrayidx.25 = getelementptr inbounds i32, i32* %x, i64 %226
  %227 = load i32, i32* %arrayidx.25, align 4
  br label %for.body6.25

for.body6.25:                                     ; preds = %for.body6.25, %for.body3.25
  %indvars.iv.25 = phi i64 [ 0, %for.body3.25 ], [ %indvars.iv.next.25, %for.body6.25 ]
  %228 = shl nsw i64 %indvars.iv6.25, 10
  %229 = add nuw nsw i64 %228, %indvars.iv.25
  %arrayidx10.25 = getelementptr inbounds i32, i32* %y, i64 %229
  %230 = load i32, i32* %arrayidx10.25, align 4
  %mul11.25 = mul nsw i32 %227, %230
  %231 = shl nsw i64 %indvars.iv.next12.24, 10
  %232 = add nuw nsw i64 %231, %indvars.iv.25
  %arrayidx15.25 = getelementptr inbounds i32, i32* %z, i64 %232
  %233 = load i32, i32* %arrayidx15.25, align 4
  %add16.25 = add nsw i32 %233, %mul11.25
  store i32 %add16.25, i32* %arrayidx15.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.25, 1
  %exitcond.25 = icmp ne i64 %indvars.iv.next.25, 256
  br i1 %exitcond.25, label %for.body6.25, label %for.inc17.25, !llvm.loop !2

for.inc17.25:                                     ; preds = %for.body6.25
  %indvars.iv.next7.25 = add nuw nsw i64 %indvars.iv6.25, 1
  %exitcond10.25 = icmp ne i64 %indvars.iv.next7.25, 256
  br i1 %exitcond10.25, label %for.body3.25, label %for.inc20.25, !llvm.loop !4

for.inc20.25:                                     ; preds = %for.inc17.25
  %indvars.iv.next12.25 = add nuw nsw i64 %indvars.iv.next12.24, 1
  br label %for.body3.26

for.body3.26:                                     ; preds = %for.inc17.26, %for.inc20.25
  %indvars.iv6.26 = phi i64 [ 0, %for.inc20.25 ], [ %indvars.iv.next7.26, %for.inc17.26 ]
  %234 = shl nsw i64 %indvars.iv.next12.25, 10
  %235 = add nuw nsw i64 %234, %indvars.iv6.26
  %arrayidx.26 = getelementptr inbounds i32, i32* %x, i64 %235
  %236 = load i32, i32* %arrayidx.26, align 4
  br label %for.body6.26

for.body6.26:                                     ; preds = %for.body6.26, %for.body3.26
  %indvars.iv.26 = phi i64 [ 0, %for.body3.26 ], [ %indvars.iv.next.26, %for.body6.26 ]
  %237 = shl nsw i64 %indvars.iv6.26, 10
  %238 = add nuw nsw i64 %237, %indvars.iv.26
  %arrayidx10.26 = getelementptr inbounds i32, i32* %y, i64 %238
  %239 = load i32, i32* %arrayidx10.26, align 4
  %mul11.26 = mul nsw i32 %236, %239
  %240 = shl nsw i64 %indvars.iv.next12.25, 10
  %241 = add nuw nsw i64 %240, %indvars.iv.26
  %arrayidx15.26 = getelementptr inbounds i32, i32* %z, i64 %241
  %242 = load i32, i32* %arrayidx15.26, align 4
  %add16.26 = add nsw i32 %242, %mul11.26
  store i32 %add16.26, i32* %arrayidx15.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.26, 1
  %exitcond.26 = icmp ne i64 %indvars.iv.next.26, 256
  br i1 %exitcond.26, label %for.body6.26, label %for.inc17.26, !llvm.loop !2

for.inc17.26:                                     ; preds = %for.body6.26
  %indvars.iv.next7.26 = add nuw nsw i64 %indvars.iv6.26, 1
  %exitcond10.26 = icmp ne i64 %indvars.iv.next7.26, 256
  br i1 %exitcond10.26, label %for.body3.26, label %for.inc20.26, !llvm.loop !4

for.inc20.26:                                     ; preds = %for.inc17.26
  %indvars.iv.next12.26 = add nuw nsw i64 %indvars.iv.next12.25, 1
  br label %for.body3.27

for.body3.27:                                     ; preds = %for.inc17.27, %for.inc20.26
  %indvars.iv6.27 = phi i64 [ 0, %for.inc20.26 ], [ %indvars.iv.next7.27, %for.inc17.27 ]
  %243 = shl nsw i64 %indvars.iv.next12.26, 10
  %244 = add nuw nsw i64 %243, %indvars.iv6.27
  %arrayidx.27 = getelementptr inbounds i32, i32* %x, i64 %244
  %245 = load i32, i32* %arrayidx.27, align 4
  br label %for.body6.27

for.body6.27:                                     ; preds = %for.body6.27, %for.body3.27
  %indvars.iv.27 = phi i64 [ 0, %for.body3.27 ], [ %indvars.iv.next.27, %for.body6.27 ]
  %246 = shl nsw i64 %indvars.iv6.27, 10
  %247 = add nuw nsw i64 %246, %indvars.iv.27
  %arrayidx10.27 = getelementptr inbounds i32, i32* %y, i64 %247
  %248 = load i32, i32* %arrayidx10.27, align 4
  %mul11.27 = mul nsw i32 %245, %248
  %249 = shl nsw i64 %indvars.iv.next12.26, 10
  %250 = add nuw nsw i64 %249, %indvars.iv.27
  %arrayidx15.27 = getelementptr inbounds i32, i32* %z, i64 %250
  %251 = load i32, i32* %arrayidx15.27, align 4
  %add16.27 = add nsw i32 %251, %mul11.27
  store i32 %add16.27, i32* %arrayidx15.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.27, 1
  %exitcond.27 = icmp ne i64 %indvars.iv.next.27, 256
  br i1 %exitcond.27, label %for.body6.27, label %for.inc17.27, !llvm.loop !2

for.inc17.27:                                     ; preds = %for.body6.27
  %indvars.iv.next7.27 = add nuw nsw i64 %indvars.iv6.27, 1
  %exitcond10.27 = icmp ne i64 %indvars.iv.next7.27, 256
  br i1 %exitcond10.27, label %for.body3.27, label %for.inc20.27, !llvm.loop !4

for.inc20.27:                                     ; preds = %for.inc17.27
  %indvars.iv.next12.27 = add nuw nsw i64 %indvars.iv.next12.26, 1
  br label %for.body3.28

for.body3.28:                                     ; preds = %for.inc17.28, %for.inc20.27
  %indvars.iv6.28 = phi i64 [ 0, %for.inc20.27 ], [ %indvars.iv.next7.28, %for.inc17.28 ]
  %252 = shl nsw i64 %indvars.iv.next12.27, 10
  %253 = add nuw nsw i64 %252, %indvars.iv6.28
  %arrayidx.28 = getelementptr inbounds i32, i32* %x, i64 %253
  %254 = load i32, i32* %arrayidx.28, align 4
  br label %for.body6.28

for.body6.28:                                     ; preds = %for.body6.28, %for.body3.28
  %indvars.iv.28 = phi i64 [ 0, %for.body3.28 ], [ %indvars.iv.next.28, %for.body6.28 ]
  %255 = shl nsw i64 %indvars.iv6.28, 10
  %256 = add nuw nsw i64 %255, %indvars.iv.28
  %arrayidx10.28 = getelementptr inbounds i32, i32* %y, i64 %256
  %257 = load i32, i32* %arrayidx10.28, align 4
  %mul11.28 = mul nsw i32 %254, %257
  %258 = shl nsw i64 %indvars.iv.next12.27, 10
  %259 = add nuw nsw i64 %258, %indvars.iv.28
  %arrayidx15.28 = getelementptr inbounds i32, i32* %z, i64 %259
  %260 = load i32, i32* %arrayidx15.28, align 4
  %add16.28 = add nsw i32 %260, %mul11.28
  store i32 %add16.28, i32* %arrayidx15.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.28, 1
  %exitcond.28 = icmp ne i64 %indvars.iv.next.28, 256
  br i1 %exitcond.28, label %for.body6.28, label %for.inc17.28, !llvm.loop !2

for.inc17.28:                                     ; preds = %for.body6.28
  %indvars.iv.next7.28 = add nuw nsw i64 %indvars.iv6.28, 1
  %exitcond10.28 = icmp ne i64 %indvars.iv.next7.28, 256
  br i1 %exitcond10.28, label %for.body3.28, label %for.inc20.28, !llvm.loop !4

for.inc20.28:                                     ; preds = %for.inc17.28
  %indvars.iv.next12.28 = add nuw nsw i64 %indvars.iv.next12.27, 1
  br label %for.body3.29

for.body3.29:                                     ; preds = %for.inc17.29, %for.inc20.28
  %indvars.iv6.29 = phi i64 [ 0, %for.inc20.28 ], [ %indvars.iv.next7.29, %for.inc17.29 ]
  %261 = shl nsw i64 %indvars.iv.next12.28, 10
  %262 = add nuw nsw i64 %261, %indvars.iv6.29
  %arrayidx.29 = getelementptr inbounds i32, i32* %x, i64 %262
  %263 = load i32, i32* %arrayidx.29, align 4
  br label %for.body6.29

for.body6.29:                                     ; preds = %for.body6.29, %for.body3.29
  %indvars.iv.29 = phi i64 [ 0, %for.body3.29 ], [ %indvars.iv.next.29, %for.body6.29 ]
  %264 = shl nsw i64 %indvars.iv6.29, 10
  %265 = add nuw nsw i64 %264, %indvars.iv.29
  %arrayidx10.29 = getelementptr inbounds i32, i32* %y, i64 %265
  %266 = load i32, i32* %arrayidx10.29, align 4
  %mul11.29 = mul nsw i32 %263, %266
  %267 = shl nsw i64 %indvars.iv.next12.28, 10
  %268 = add nuw nsw i64 %267, %indvars.iv.29
  %arrayidx15.29 = getelementptr inbounds i32, i32* %z, i64 %268
  %269 = load i32, i32* %arrayidx15.29, align 4
  %add16.29 = add nsw i32 %269, %mul11.29
  store i32 %add16.29, i32* %arrayidx15.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.29, 1
  %exitcond.29 = icmp ne i64 %indvars.iv.next.29, 256
  br i1 %exitcond.29, label %for.body6.29, label %for.inc17.29, !llvm.loop !2

for.inc17.29:                                     ; preds = %for.body6.29
  %indvars.iv.next7.29 = add nuw nsw i64 %indvars.iv6.29, 1
  %exitcond10.29 = icmp ne i64 %indvars.iv.next7.29, 256
  br i1 %exitcond10.29, label %for.body3.29, label %for.inc20.29, !llvm.loop !4

for.inc20.29:                                     ; preds = %for.inc17.29
  %indvars.iv.next12.29 = add nuw nsw i64 %indvars.iv.next12.28, 1
  br label %for.body3.30

for.body3.30:                                     ; preds = %for.inc17.30, %for.inc20.29
  %indvars.iv6.30 = phi i64 [ 0, %for.inc20.29 ], [ %indvars.iv.next7.30, %for.inc17.30 ]
  %270 = shl nsw i64 %indvars.iv.next12.29, 10
  %271 = add nuw nsw i64 %270, %indvars.iv6.30
  %arrayidx.30 = getelementptr inbounds i32, i32* %x, i64 %271
  %272 = load i32, i32* %arrayidx.30, align 4
  br label %for.body6.30

for.body6.30:                                     ; preds = %for.body6.30, %for.body3.30
  %indvars.iv.30 = phi i64 [ 0, %for.body3.30 ], [ %indvars.iv.next.30, %for.body6.30 ]
  %273 = shl nsw i64 %indvars.iv6.30, 10
  %274 = add nuw nsw i64 %273, %indvars.iv.30
  %arrayidx10.30 = getelementptr inbounds i32, i32* %y, i64 %274
  %275 = load i32, i32* %arrayidx10.30, align 4
  %mul11.30 = mul nsw i32 %272, %275
  %276 = shl nsw i64 %indvars.iv.next12.29, 10
  %277 = add nuw nsw i64 %276, %indvars.iv.30
  %arrayidx15.30 = getelementptr inbounds i32, i32* %z, i64 %277
  %278 = load i32, i32* %arrayidx15.30, align 4
  %add16.30 = add nsw i32 %278, %mul11.30
  store i32 %add16.30, i32* %arrayidx15.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.30, 1
  %exitcond.30 = icmp ne i64 %indvars.iv.next.30, 256
  br i1 %exitcond.30, label %for.body6.30, label %for.inc17.30, !llvm.loop !2

for.inc17.30:                                     ; preds = %for.body6.30
  %indvars.iv.next7.30 = add nuw nsw i64 %indvars.iv6.30, 1
  %exitcond10.30 = icmp ne i64 %indvars.iv.next7.30, 256
  br i1 %exitcond10.30, label %for.body3.30, label %for.inc20.30, !llvm.loop !4

for.inc20.30:                                     ; preds = %for.inc17.30
  %indvars.iv.next12.30 = add nuw nsw i64 %indvars.iv.next12.29, 1
  br label %for.body3.31

for.body3.31:                                     ; preds = %for.inc17.31, %for.inc20.30
  %indvars.iv6.31 = phi i64 [ 0, %for.inc20.30 ], [ %indvars.iv.next7.31, %for.inc17.31 ]
  %279 = shl nsw i64 %indvars.iv.next12.30, 10
  %280 = add nuw nsw i64 %279, %indvars.iv6.31
  %arrayidx.31 = getelementptr inbounds i32, i32* %x, i64 %280
  %281 = load i32, i32* %arrayidx.31, align 4
  br label %for.body6.31

for.body6.31:                                     ; preds = %for.body6.31, %for.body3.31
  %indvars.iv.31 = phi i64 [ 0, %for.body3.31 ], [ %indvars.iv.next.31, %for.body6.31 ]
  %282 = shl nsw i64 %indvars.iv6.31, 10
  %283 = add nuw nsw i64 %282, %indvars.iv.31
  %arrayidx10.31 = getelementptr inbounds i32, i32* %y, i64 %283
  %284 = load i32, i32* %arrayidx10.31, align 4
  %mul11.31 = mul nsw i32 %281, %284
  %285 = shl nsw i64 %indvars.iv.next12.30, 10
  %286 = add nuw nsw i64 %285, %indvars.iv.31
  %arrayidx15.31 = getelementptr inbounds i32, i32* %z, i64 %286
  %287 = load i32, i32* %arrayidx15.31, align 4
  %add16.31 = add nsw i32 %287, %mul11.31
  store i32 %add16.31, i32* %arrayidx15.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.31, 1
  %exitcond.31 = icmp ne i64 %indvars.iv.next.31, 256
  br i1 %exitcond.31, label %for.body6.31, label %for.inc17.31, !llvm.loop !2

for.inc17.31:                                     ; preds = %for.body6.31
  %indvars.iv.next7.31 = add nuw nsw i64 %indvars.iv6.31, 1
  %exitcond10.31 = icmp ne i64 %indvars.iv.next7.31, 256
  br i1 %exitcond10.31, label %for.body3.31, label %for.inc20.31, !llvm.loop !4

for.inc20.31:                                     ; preds = %for.inc17.31
  %indvars.iv.next12.31 = add nuw nsw i64 %indvars.iv.next12.30, 1
  %exitcond15.31 = icmp ne i64 %indvars.iv.next12.31, 1024
  br i1 %exitcond15.31, label %for.body, label %for.end22, !llvm.loop !5
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
!3 = !{!"llvm.loop.unroll.count", i32 1}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
