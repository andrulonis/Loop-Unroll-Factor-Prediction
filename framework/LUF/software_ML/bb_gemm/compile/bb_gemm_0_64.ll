; ModuleID = 'bb_gemm_0_64.ll'
source_filename = "bb_gemm_0_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bb_gemm(i32* %x, i32* %y, i32* %z) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc20.63, %entry
  %indvars.iv11 = phi i64 [ 0, %entry ], [ %indvars.iv.next12.63, %for.inc20.63 ]
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

for.end22:                                        ; preds = %for.inc20.63
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
  br label %for.body3.32

for.body3.32:                                     ; preds = %for.inc17.32, %for.inc20.31
  %indvars.iv6.32 = phi i64 [ 0, %for.inc20.31 ], [ %indvars.iv.next7.32, %for.inc17.32 ]
  %288 = shl nsw i64 %indvars.iv.next12.31, 10
  %289 = add nuw nsw i64 %288, %indvars.iv6.32
  %arrayidx.32 = getelementptr inbounds i32, i32* %x, i64 %289
  %290 = load i32, i32* %arrayidx.32, align 4
  br label %for.body6.32

for.body6.32:                                     ; preds = %for.body6.32, %for.body3.32
  %indvars.iv.32 = phi i64 [ 0, %for.body3.32 ], [ %indvars.iv.next.32, %for.body6.32 ]
  %291 = shl nsw i64 %indvars.iv6.32, 10
  %292 = add nuw nsw i64 %291, %indvars.iv.32
  %arrayidx10.32 = getelementptr inbounds i32, i32* %y, i64 %292
  %293 = load i32, i32* %arrayidx10.32, align 4
  %mul11.32 = mul nsw i32 %290, %293
  %294 = shl nsw i64 %indvars.iv.next12.31, 10
  %295 = add nuw nsw i64 %294, %indvars.iv.32
  %arrayidx15.32 = getelementptr inbounds i32, i32* %z, i64 %295
  %296 = load i32, i32* %arrayidx15.32, align 4
  %add16.32 = add nsw i32 %296, %mul11.32
  store i32 %add16.32, i32* %arrayidx15.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.32, 1
  %exitcond.32 = icmp ne i64 %indvars.iv.next.32, 256
  br i1 %exitcond.32, label %for.body6.32, label %for.inc17.32, !llvm.loop !2

for.inc17.32:                                     ; preds = %for.body6.32
  %indvars.iv.next7.32 = add nuw nsw i64 %indvars.iv6.32, 1
  %exitcond10.32 = icmp ne i64 %indvars.iv.next7.32, 256
  br i1 %exitcond10.32, label %for.body3.32, label %for.inc20.32, !llvm.loop !4

for.inc20.32:                                     ; preds = %for.inc17.32
  %indvars.iv.next12.32 = add nuw nsw i64 %indvars.iv.next12.31, 1
  br label %for.body3.33

for.body3.33:                                     ; preds = %for.inc17.33, %for.inc20.32
  %indvars.iv6.33 = phi i64 [ 0, %for.inc20.32 ], [ %indvars.iv.next7.33, %for.inc17.33 ]
  %297 = shl nsw i64 %indvars.iv.next12.32, 10
  %298 = add nuw nsw i64 %297, %indvars.iv6.33
  %arrayidx.33 = getelementptr inbounds i32, i32* %x, i64 %298
  %299 = load i32, i32* %arrayidx.33, align 4
  br label %for.body6.33

for.body6.33:                                     ; preds = %for.body6.33, %for.body3.33
  %indvars.iv.33 = phi i64 [ 0, %for.body3.33 ], [ %indvars.iv.next.33, %for.body6.33 ]
  %300 = shl nsw i64 %indvars.iv6.33, 10
  %301 = add nuw nsw i64 %300, %indvars.iv.33
  %arrayidx10.33 = getelementptr inbounds i32, i32* %y, i64 %301
  %302 = load i32, i32* %arrayidx10.33, align 4
  %mul11.33 = mul nsw i32 %299, %302
  %303 = shl nsw i64 %indvars.iv.next12.32, 10
  %304 = add nuw nsw i64 %303, %indvars.iv.33
  %arrayidx15.33 = getelementptr inbounds i32, i32* %z, i64 %304
  %305 = load i32, i32* %arrayidx15.33, align 4
  %add16.33 = add nsw i32 %305, %mul11.33
  store i32 %add16.33, i32* %arrayidx15.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.33, 1
  %exitcond.33 = icmp ne i64 %indvars.iv.next.33, 256
  br i1 %exitcond.33, label %for.body6.33, label %for.inc17.33, !llvm.loop !2

for.inc17.33:                                     ; preds = %for.body6.33
  %indvars.iv.next7.33 = add nuw nsw i64 %indvars.iv6.33, 1
  %exitcond10.33 = icmp ne i64 %indvars.iv.next7.33, 256
  br i1 %exitcond10.33, label %for.body3.33, label %for.inc20.33, !llvm.loop !4

for.inc20.33:                                     ; preds = %for.inc17.33
  %indvars.iv.next12.33 = add nuw nsw i64 %indvars.iv.next12.32, 1
  br label %for.body3.34

for.body3.34:                                     ; preds = %for.inc17.34, %for.inc20.33
  %indvars.iv6.34 = phi i64 [ 0, %for.inc20.33 ], [ %indvars.iv.next7.34, %for.inc17.34 ]
  %306 = shl nsw i64 %indvars.iv.next12.33, 10
  %307 = add nuw nsw i64 %306, %indvars.iv6.34
  %arrayidx.34 = getelementptr inbounds i32, i32* %x, i64 %307
  %308 = load i32, i32* %arrayidx.34, align 4
  br label %for.body6.34

for.body6.34:                                     ; preds = %for.body6.34, %for.body3.34
  %indvars.iv.34 = phi i64 [ 0, %for.body3.34 ], [ %indvars.iv.next.34, %for.body6.34 ]
  %309 = shl nsw i64 %indvars.iv6.34, 10
  %310 = add nuw nsw i64 %309, %indvars.iv.34
  %arrayidx10.34 = getelementptr inbounds i32, i32* %y, i64 %310
  %311 = load i32, i32* %arrayidx10.34, align 4
  %mul11.34 = mul nsw i32 %308, %311
  %312 = shl nsw i64 %indvars.iv.next12.33, 10
  %313 = add nuw nsw i64 %312, %indvars.iv.34
  %arrayidx15.34 = getelementptr inbounds i32, i32* %z, i64 %313
  %314 = load i32, i32* %arrayidx15.34, align 4
  %add16.34 = add nsw i32 %314, %mul11.34
  store i32 %add16.34, i32* %arrayidx15.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.34, 1
  %exitcond.34 = icmp ne i64 %indvars.iv.next.34, 256
  br i1 %exitcond.34, label %for.body6.34, label %for.inc17.34, !llvm.loop !2

for.inc17.34:                                     ; preds = %for.body6.34
  %indvars.iv.next7.34 = add nuw nsw i64 %indvars.iv6.34, 1
  %exitcond10.34 = icmp ne i64 %indvars.iv.next7.34, 256
  br i1 %exitcond10.34, label %for.body3.34, label %for.inc20.34, !llvm.loop !4

for.inc20.34:                                     ; preds = %for.inc17.34
  %indvars.iv.next12.34 = add nuw nsw i64 %indvars.iv.next12.33, 1
  br label %for.body3.35

for.body3.35:                                     ; preds = %for.inc17.35, %for.inc20.34
  %indvars.iv6.35 = phi i64 [ 0, %for.inc20.34 ], [ %indvars.iv.next7.35, %for.inc17.35 ]
  %315 = shl nsw i64 %indvars.iv.next12.34, 10
  %316 = add nuw nsw i64 %315, %indvars.iv6.35
  %arrayidx.35 = getelementptr inbounds i32, i32* %x, i64 %316
  %317 = load i32, i32* %arrayidx.35, align 4
  br label %for.body6.35

for.body6.35:                                     ; preds = %for.body6.35, %for.body3.35
  %indvars.iv.35 = phi i64 [ 0, %for.body3.35 ], [ %indvars.iv.next.35, %for.body6.35 ]
  %318 = shl nsw i64 %indvars.iv6.35, 10
  %319 = add nuw nsw i64 %318, %indvars.iv.35
  %arrayidx10.35 = getelementptr inbounds i32, i32* %y, i64 %319
  %320 = load i32, i32* %arrayidx10.35, align 4
  %mul11.35 = mul nsw i32 %317, %320
  %321 = shl nsw i64 %indvars.iv.next12.34, 10
  %322 = add nuw nsw i64 %321, %indvars.iv.35
  %arrayidx15.35 = getelementptr inbounds i32, i32* %z, i64 %322
  %323 = load i32, i32* %arrayidx15.35, align 4
  %add16.35 = add nsw i32 %323, %mul11.35
  store i32 %add16.35, i32* %arrayidx15.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.35, 1
  %exitcond.35 = icmp ne i64 %indvars.iv.next.35, 256
  br i1 %exitcond.35, label %for.body6.35, label %for.inc17.35, !llvm.loop !2

for.inc17.35:                                     ; preds = %for.body6.35
  %indvars.iv.next7.35 = add nuw nsw i64 %indvars.iv6.35, 1
  %exitcond10.35 = icmp ne i64 %indvars.iv.next7.35, 256
  br i1 %exitcond10.35, label %for.body3.35, label %for.inc20.35, !llvm.loop !4

for.inc20.35:                                     ; preds = %for.inc17.35
  %indvars.iv.next12.35 = add nuw nsw i64 %indvars.iv.next12.34, 1
  br label %for.body3.36

for.body3.36:                                     ; preds = %for.inc17.36, %for.inc20.35
  %indvars.iv6.36 = phi i64 [ 0, %for.inc20.35 ], [ %indvars.iv.next7.36, %for.inc17.36 ]
  %324 = shl nsw i64 %indvars.iv.next12.35, 10
  %325 = add nuw nsw i64 %324, %indvars.iv6.36
  %arrayidx.36 = getelementptr inbounds i32, i32* %x, i64 %325
  %326 = load i32, i32* %arrayidx.36, align 4
  br label %for.body6.36

for.body6.36:                                     ; preds = %for.body6.36, %for.body3.36
  %indvars.iv.36 = phi i64 [ 0, %for.body3.36 ], [ %indvars.iv.next.36, %for.body6.36 ]
  %327 = shl nsw i64 %indvars.iv6.36, 10
  %328 = add nuw nsw i64 %327, %indvars.iv.36
  %arrayidx10.36 = getelementptr inbounds i32, i32* %y, i64 %328
  %329 = load i32, i32* %arrayidx10.36, align 4
  %mul11.36 = mul nsw i32 %326, %329
  %330 = shl nsw i64 %indvars.iv.next12.35, 10
  %331 = add nuw nsw i64 %330, %indvars.iv.36
  %arrayidx15.36 = getelementptr inbounds i32, i32* %z, i64 %331
  %332 = load i32, i32* %arrayidx15.36, align 4
  %add16.36 = add nsw i32 %332, %mul11.36
  store i32 %add16.36, i32* %arrayidx15.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.36, 1
  %exitcond.36 = icmp ne i64 %indvars.iv.next.36, 256
  br i1 %exitcond.36, label %for.body6.36, label %for.inc17.36, !llvm.loop !2

for.inc17.36:                                     ; preds = %for.body6.36
  %indvars.iv.next7.36 = add nuw nsw i64 %indvars.iv6.36, 1
  %exitcond10.36 = icmp ne i64 %indvars.iv.next7.36, 256
  br i1 %exitcond10.36, label %for.body3.36, label %for.inc20.36, !llvm.loop !4

for.inc20.36:                                     ; preds = %for.inc17.36
  %indvars.iv.next12.36 = add nuw nsw i64 %indvars.iv.next12.35, 1
  br label %for.body3.37

for.body3.37:                                     ; preds = %for.inc17.37, %for.inc20.36
  %indvars.iv6.37 = phi i64 [ 0, %for.inc20.36 ], [ %indvars.iv.next7.37, %for.inc17.37 ]
  %333 = shl nsw i64 %indvars.iv.next12.36, 10
  %334 = add nuw nsw i64 %333, %indvars.iv6.37
  %arrayidx.37 = getelementptr inbounds i32, i32* %x, i64 %334
  %335 = load i32, i32* %arrayidx.37, align 4
  br label %for.body6.37

for.body6.37:                                     ; preds = %for.body6.37, %for.body3.37
  %indvars.iv.37 = phi i64 [ 0, %for.body3.37 ], [ %indvars.iv.next.37, %for.body6.37 ]
  %336 = shl nsw i64 %indvars.iv6.37, 10
  %337 = add nuw nsw i64 %336, %indvars.iv.37
  %arrayidx10.37 = getelementptr inbounds i32, i32* %y, i64 %337
  %338 = load i32, i32* %arrayidx10.37, align 4
  %mul11.37 = mul nsw i32 %335, %338
  %339 = shl nsw i64 %indvars.iv.next12.36, 10
  %340 = add nuw nsw i64 %339, %indvars.iv.37
  %arrayidx15.37 = getelementptr inbounds i32, i32* %z, i64 %340
  %341 = load i32, i32* %arrayidx15.37, align 4
  %add16.37 = add nsw i32 %341, %mul11.37
  store i32 %add16.37, i32* %arrayidx15.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.37, 1
  %exitcond.37 = icmp ne i64 %indvars.iv.next.37, 256
  br i1 %exitcond.37, label %for.body6.37, label %for.inc17.37, !llvm.loop !2

for.inc17.37:                                     ; preds = %for.body6.37
  %indvars.iv.next7.37 = add nuw nsw i64 %indvars.iv6.37, 1
  %exitcond10.37 = icmp ne i64 %indvars.iv.next7.37, 256
  br i1 %exitcond10.37, label %for.body3.37, label %for.inc20.37, !llvm.loop !4

for.inc20.37:                                     ; preds = %for.inc17.37
  %indvars.iv.next12.37 = add nuw nsw i64 %indvars.iv.next12.36, 1
  br label %for.body3.38

for.body3.38:                                     ; preds = %for.inc17.38, %for.inc20.37
  %indvars.iv6.38 = phi i64 [ 0, %for.inc20.37 ], [ %indvars.iv.next7.38, %for.inc17.38 ]
  %342 = shl nsw i64 %indvars.iv.next12.37, 10
  %343 = add nuw nsw i64 %342, %indvars.iv6.38
  %arrayidx.38 = getelementptr inbounds i32, i32* %x, i64 %343
  %344 = load i32, i32* %arrayidx.38, align 4
  br label %for.body6.38

for.body6.38:                                     ; preds = %for.body6.38, %for.body3.38
  %indvars.iv.38 = phi i64 [ 0, %for.body3.38 ], [ %indvars.iv.next.38, %for.body6.38 ]
  %345 = shl nsw i64 %indvars.iv6.38, 10
  %346 = add nuw nsw i64 %345, %indvars.iv.38
  %arrayidx10.38 = getelementptr inbounds i32, i32* %y, i64 %346
  %347 = load i32, i32* %arrayidx10.38, align 4
  %mul11.38 = mul nsw i32 %344, %347
  %348 = shl nsw i64 %indvars.iv.next12.37, 10
  %349 = add nuw nsw i64 %348, %indvars.iv.38
  %arrayidx15.38 = getelementptr inbounds i32, i32* %z, i64 %349
  %350 = load i32, i32* %arrayidx15.38, align 4
  %add16.38 = add nsw i32 %350, %mul11.38
  store i32 %add16.38, i32* %arrayidx15.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.38, 1
  %exitcond.38 = icmp ne i64 %indvars.iv.next.38, 256
  br i1 %exitcond.38, label %for.body6.38, label %for.inc17.38, !llvm.loop !2

for.inc17.38:                                     ; preds = %for.body6.38
  %indvars.iv.next7.38 = add nuw nsw i64 %indvars.iv6.38, 1
  %exitcond10.38 = icmp ne i64 %indvars.iv.next7.38, 256
  br i1 %exitcond10.38, label %for.body3.38, label %for.inc20.38, !llvm.loop !4

for.inc20.38:                                     ; preds = %for.inc17.38
  %indvars.iv.next12.38 = add nuw nsw i64 %indvars.iv.next12.37, 1
  br label %for.body3.39

for.body3.39:                                     ; preds = %for.inc17.39, %for.inc20.38
  %indvars.iv6.39 = phi i64 [ 0, %for.inc20.38 ], [ %indvars.iv.next7.39, %for.inc17.39 ]
  %351 = shl nsw i64 %indvars.iv.next12.38, 10
  %352 = add nuw nsw i64 %351, %indvars.iv6.39
  %arrayidx.39 = getelementptr inbounds i32, i32* %x, i64 %352
  %353 = load i32, i32* %arrayidx.39, align 4
  br label %for.body6.39

for.body6.39:                                     ; preds = %for.body6.39, %for.body3.39
  %indvars.iv.39 = phi i64 [ 0, %for.body3.39 ], [ %indvars.iv.next.39, %for.body6.39 ]
  %354 = shl nsw i64 %indvars.iv6.39, 10
  %355 = add nuw nsw i64 %354, %indvars.iv.39
  %arrayidx10.39 = getelementptr inbounds i32, i32* %y, i64 %355
  %356 = load i32, i32* %arrayidx10.39, align 4
  %mul11.39 = mul nsw i32 %353, %356
  %357 = shl nsw i64 %indvars.iv.next12.38, 10
  %358 = add nuw nsw i64 %357, %indvars.iv.39
  %arrayidx15.39 = getelementptr inbounds i32, i32* %z, i64 %358
  %359 = load i32, i32* %arrayidx15.39, align 4
  %add16.39 = add nsw i32 %359, %mul11.39
  store i32 %add16.39, i32* %arrayidx15.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.39, 1
  %exitcond.39 = icmp ne i64 %indvars.iv.next.39, 256
  br i1 %exitcond.39, label %for.body6.39, label %for.inc17.39, !llvm.loop !2

for.inc17.39:                                     ; preds = %for.body6.39
  %indvars.iv.next7.39 = add nuw nsw i64 %indvars.iv6.39, 1
  %exitcond10.39 = icmp ne i64 %indvars.iv.next7.39, 256
  br i1 %exitcond10.39, label %for.body3.39, label %for.inc20.39, !llvm.loop !4

for.inc20.39:                                     ; preds = %for.inc17.39
  %indvars.iv.next12.39 = add nuw nsw i64 %indvars.iv.next12.38, 1
  br label %for.body3.40

for.body3.40:                                     ; preds = %for.inc17.40, %for.inc20.39
  %indvars.iv6.40 = phi i64 [ 0, %for.inc20.39 ], [ %indvars.iv.next7.40, %for.inc17.40 ]
  %360 = shl nsw i64 %indvars.iv.next12.39, 10
  %361 = add nuw nsw i64 %360, %indvars.iv6.40
  %arrayidx.40 = getelementptr inbounds i32, i32* %x, i64 %361
  %362 = load i32, i32* %arrayidx.40, align 4
  br label %for.body6.40

for.body6.40:                                     ; preds = %for.body6.40, %for.body3.40
  %indvars.iv.40 = phi i64 [ 0, %for.body3.40 ], [ %indvars.iv.next.40, %for.body6.40 ]
  %363 = shl nsw i64 %indvars.iv6.40, 10
  %364 = add nuw nsw i64 %363, %indvars.iv.40
  %arrayidx10.40 = getelementptr inbounds i32, i32* %y, i64 %364
  %365 = load i32, i32* %arrayidx10.40, align 4
  %mul11.40 = mul nsw i32 %362, %365
  %366 = shl nsw i64 %indvars.iv.next12.39, 10
  %367 = add nuw nsw i64 %366, %indvars.iv.40
  %arrayidx15.40 = getelementptr inbounds i32, i32* %z, i64 %367
  %368 = load i32, i32* %arrayidx15.40, align 4
  %add16.40 = add nsw i32 %368, %mul11.40
  store i32 %add16.40, i32* %arrayidx15.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.40, 1
  %exitcond.40 = icmp ne i64 %indvars.iv.next.40, 256
  br i1 %exitcond.40, label %for.body6.40, label %for.inc17.40, !llvm.loop !2

for.inc17.40:                                     ; preds = %for.body6.40
  %indvars.iv.next7.40 = add nuw nsw i64 %indvars.iv6.40, 1
  %exitcond10.40 = icmp ne i64 %indvars.iv.next7.40, 256
  br i1 %exitcond10.40, label %for.body3.40, label %for.inc20.40, !llvm.loop !4

for.inc20.40:                                     ; preds = %for.inc17.40
  %indvars.iv.next12.40 = add nuw nsw i64 %indvars.iv.next12.39, 1
  br label %for.body3.41

for.body3.41:                                     ; preds = %for.inc17.41, %for.inc20.40
  %indvars.iv6.41 = phi i64 [ 0, %for.inc20.40 ], [ %indvars.iv.next7.41, %for.inc17.41 ]
  %369 = shl nsw i64 %indvars.iv.next12.40, 10
  %370 = add nuw nsw i64 %369, %indvars.iv6.41
  %arrayidx.41 = getelementptr inbounds i32, i32* %x, i64 %370
  %371 = load i32, i32* %arrayidx.41, align 4
  br label %for.body6.41

for.body6.41:                                     ; preds = %for.body6.41, %for.body3.41
  %indvars.iv.41 = phi i64 [ 0, %for.body3.41 ], [ %indvars.iv.next.41, %for.body6.41 ]
  %372 = shl nsw i64 %indvars.iv6.41, 10
  %373 = add nuw nsw i64 %372, %indvars.iv.41
  %arrayidx10.41 = getelementptr inbounds i32, i32* %y, i64 %373
  %374 = load i32, i32* %arrayidx10.41, align 4
  %mul11.41 = mul nsw i32 %371, %374
  %375 = shl nsw i64 %indvars.iv.next12.40, 10
  %376 = add nuw nsw i64 %375, %indvars.iv.41
  %arrayidx15.41 = getelementptr inbounds i32, i32* %z, i64 %376
  %377 = load i32, i32* %arrayidx15.41, align 4
  %add16.41 = add nsw i32 %377, %mul11.41
  store i32 %add16.41, i32* %arrayidx15.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.41, 1
  %exitcond.41 = icmp ne i64 %indvars.iv.next.41, 256
  br i1 %exitcond.41, label %for.body6.41, label %for.inc17.41, !llvm.loop !2

for.inc17.41:                                     ; preds = %for.body6.41
  %indvars.iv.next7.41 = add nuw nsw i64 %indvars.iv6.41, 1
  %exitcond10.41 = icmp ne i64 %indvars.iv.next7.41, 256
  br i1 %exitcond10.41, label %for.body3.41, label %for.inc20.41, !llvm.loop !4

for.inc20.41:                                     ; preds = %for.inc17.41
  %indvars.iv.next12.41 = add nuw nsw i64 %indvars.iv.next12.40, 1
  br label %for.body3.42

for.body3.42:                                     ; preds = %for.inc17.42, %for.inc20.41
  %indvars.iv6.42 = phi i64 [ 0, %for.inc20.41 ], [ %indvars.iv.next7.42, %for.inc17.42 ]
  %378 = shl nsw i64 %indvars.iv.next12.41, 10
  %379 = add nuw nsw i64 %378, %indvars.iv6.42
  %arrayidx.42 = getelementptr inbounds i32, i32* %x, i64 %379
  %380 = load i32, i32* %arrayidx.42, align 4
  br label %for.body6.42

for.body6.42:                                     ; preds = %for.body6.42, %for.body3.42
  %indvars.iv.42 = phi i64 [ 0, %for.body3.42 ], [ %indvars.iv.next.42, %for.body6.42 ]
  %381 = shl nsw i64 %indvars.iv6.42, 10
  %382 = add nuw nsw i64 %381, %indvars.iv.42
  %arrayidx10.42 = getelementptr inbounds i32, i32* %y, i64 %382
  %383 = load i32, i32* %arrayidx10.42, align 4
  %mul11.42 = mul nsw i32 %380, %383
  %384 = shl nsw i64 %indvars.iv.next12.41, 10
  %385 = add nuw nsw i64 %384, %indvars.iv.42
  %arrayidx15.42 = getelementptr inbounds i32, i32* %z, i64 %385
  %386 = load i32, i32* %arrayidx15.42, align 4
  %add16.42 = add nsw i32 %386, %mul11.42
  store i32 %add16.42, i32* %arrayidx15.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.42, 1
  %exitcond.42 = icmp ne i64 %indvars.iv.next.42, 256
  br i1 %exitcond.42, label %for.body6.42, label %for.inc17.42, !llvm.loop !2

for.inc17.42:                                     ; preds = %for.body6.42
  %indvars.iv.next7.42 = add nuw nsw i64 %indvars.iv6.42, 1
  %exitcond10.42 = icmp ne i64 %indvars.iv.next7.42, 256
  br i1 %exitcond10.42, label %for.body3.42, label %for.inc20.42, !llvm.loop !4

for.inc20.42:                                     ; preds = %for.inc17.42
  %indvars.iv.next12.42 = add nuw nsw i64 %indvars.iv.next12.41, 1
  br label %for.body3.43

for.body3.43:                                     ; preds = %for.inc17.43, %for.inc20.42
  %indvars.iv6.43 = phi i64 [ 0, %for.inc20.42 ], [ %indvars.iv.next7.43, %for.inc17.43 ]
  %387 = shl nsw i64 %indvars.iv.next12.42, 10
  %388 = add nuw nsw i64 %387, %indvars.iv6.43
  %arrayidx.43 = getelementptr inbounds i32, i32* %x, i64 %388
  %389 = load i32, i32* %arrayidx.43, align 4
  br label %for.body6.43

for.body6.43:                                     ; preds = %for.body6.43, %for.body3.43
  %indvars.iv.43 = phi i64 [ 0, %for.body3.43 ], [ %indvars.iv.next.43, %for.body6.43 ]
  %390 = shl nsw i64 %indvars.iv6.43, 10
  %391 = add nuw nsw i64 %390, %indvars.iv.43
  %arrayidx10.43 = getelementptr inbounds i32, i32* %y, i64 %391
  %392 = load i32, i32* %arrayidx10.43, align 4
  %mul11.43 = mul nsw i32 %389, %392
  %393 = shl nsw i64 %indvars.iv.next12.42, 10
  %394 = add nuw nsw i64 %393, %indvars.iv.43
  %arrayidx15.43 = getelementptr inbounds i32, i32* %z, i64 %394
  %395 = load i32, i32* %arrayidx15.43, align 4
  %add16.43 = add nsw i32 %395, %mul11.43
  store i32 %add16.43, i32* %arrayidx15.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.43, 1
  %exitcond.43 = icmp ne i64 %indvars.iv.next.43, 256
  br i1 %exitcond.43, label %for.body6.43, label %for.inc17.43, !llvm.loop !2

for.inc17.43:                                     ; preds = %for.body6.43
  %indvars.iv.next7.43 = add nuw nsw i64 %indvars.iv6.43, 1
  %exitcond10.43 = icmp ne i64 %indvars.iv.next7.43, 256
  br i1 %exitcond10.43, label %for.body3.43, label %for.inc20.43, !llvm.loop !4

for.inc20.43:                                     ; preds = %for.inc17.43
  %indvars.iv.next12.43 = add nuw nsw i64 %indvars.iv.next12.42, 1
  br label %for.body3.44

for.body3.44:                                     ; preds = %for.inc17.44, %for.inc20.43
  %indvars.iv6.44 = phi i64 [ 0, %for.inc20.43 ], [ %indvars.iv.next7.44, %for.inc17.44 ]
  %396 = shl nsw i64 %indvars.iv.next12.43, 10
  %397 = add nuw nsw i64 %396, %indvars.iv6.44
  %arrayidx.44 = getelementptr inbounds i32, i32* %x, i64 %397
  %398 = load i32, i32* %arrayidx.44, align 4
  br label %for.body6.44

for.body6.44:                                     ; preds = %for.body6.44, %for.body3.44
  %indvars.iv.44 = phi i64 [ 0, %for.body3.44 ], [ %indvars.iv.next.44, %for.body6.44 ]
  %399 = shl nsw i64 %indvars.iv6.44, 10
  %400 = add nuw nsw i64 %399, %indvars.iv.44
  %arrayidx10.44 = getelementptr inbounds i32, i32* %y, i64 %400
  %401 = load i32, i32* %arrayidx10.44, align 4
  %mul11.44 = mul nsw i32 %398, %401
  %402 = shl nsw i64 %indvars.iv.next12.43, 10
  %403 = add nuw nsw i64 %402, %indvars.iv.44
  %arrayidx15.44 = getelementptr inbounds i32, i32* %z, i64 %403
  %404 = load i32, i32* %arrayidx15.44, align 4
  %add16.44 = add nsw i32 %404, %mul11.44
  store i32 %add16.44, i32* %arrayidx15.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.44, 1
  %exitcond.44 = icmp ne i64 %indvars.iv.next.44, 256
  br i1 %exitcond.44, label %for.body6.44, label %for.inc17.44, !llvm.loop !2

for.inc17.44:                                     ; preds = %for.body6.44
  %indvars.iv.next7.44 = add nuw nsw i64 %indvars.iv6.44, 1
  %exitcond10.44 = icmp ne i64 %indvars.iv.next7.44, 256
  br i1 %exitcond10.44, label %for.body3.44, label %for.inc20.44, !llvm.loop !4

for.inc20.44:                                     ; preds = %for.inc17.44
  %indvars.iv.next12.44 = add nuw nsw i64 %indvars.iv.next12.43, 1
  br label %for.body3.45

for.body3.45:                                     ; preds = %for.inc17.45, %for.inc20.44
  %indvars.iv6.45 = phi i64 [ 0, %for.inc20.44 ], [ %indvars.iv.next7.45, %for.inc17.45 ]
  %405 = shl nsw i64 %indvars.iv.next12.44, 10
  %406 = add nuw nsw i64 %405, %indvars.iv6.45
  %arrayidx.45 = getelementptr inbounds i32, i32* %x, i64 %406
  %407 = load i32, i32* %arrayidx.45, align 4
  br label %for.body6.45

for.body6.45:                                     ; preds = %for.body6.45, %for.body3.45
  %indvars.iv.45 = phi i64 [ 0, %for.body3.45 ], [ %indvars.iv.next.45, %for.body6.45 ]
  %408 = shl nsw i64 %indvars.iv6.45, 10
  %409 = add nuw nsw i64 %408, %indvars.iv.45
  %arrayidx10.45 = getelementptr inbounds i32, i32* %y, i64 %409
  %410 = load i32, i32* %arrayidx10.45, align 4
  %mul11.45 = mul nsw i32 %407, %410
  %411 = shl nsw i64 %indvars.iv.next12.44, 10
  %412 = add nuw nsw i64 %411, %indvars.iv.45
  %arrayidx15.45 = getelementptr inbounds i32, i32* %z, i64 %412
  %413 = load i32, i32* %arrayidx15.45, align 4
  %add16.45 = add nsw i32 %413, %mul11.45
  store i32 %add16.45, i32* %arrayidx15.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.45, 1
  %exitcond.45 = icmp ne i64 %indvars.iv.next.45, 256
  br i1 %exitcond.45, label %for.body6.45, label %for.inc17.45, !llvm.loop !2

for.inc17.45:                                     ; preds = %for.body6.45
  %indvars.iv.next7.45 = add nuw nsw i64 %indvars.iv6.45, 1
  %exitcond10.45 = icmp ne i64 %indvars.iv.next7.45, 256
  br i1 %exitcond10.45, label %for.body3.45, label %for.inc20.45, !llvm.loop !4

for.inc20.45:                                     ; preds = %for.inc17.45
  %indvars.iv.next12.45 = add nuw nsw i64 %indvars.iv.next12.44, 1
  br label %for.body3.46

for.body3.46:                                     ; preds = %for.inc17.46, %for.inc20.45
  %indvars.iv6.46 = phi i64 [ 0, %for.inc20.45 ], [ %indvars.iv.next7.46, %for.inc17.46 ]
  %414 = shl nsw i64 %indvars.iv.next12.45, 10
  %415 = add nuw nsw i64 %414, %indvars.iv6.46
  %arrayidx.46 = getelementptr inbounds i32, i32* %x, i64 %415
  %416 = load i32, i32* %arrayidx.46, align 4
  br label %for.body6.46

for.body6.46:                                     ; preds = %for.body6.46, %for.body3.46
  %indvars.iv.46 = phi i64 [ 0, %for.body3.46 ], [ %indvars.iv.next.46, %for.body6.46 ]
  %417 = shl nsw i64 %indvars.iv6.46, 10
  %418 = add nuw nsw i64 %417, %indvars.iv.46
  %arrayidx10.46 = getelementptr inbounds i32, i32* %y, i64 %418
  %419 = load i32, i32* %arrayidx10.46, align 4
  %mul11.46 = mul nsw i32 %416, %419
  %420 = shl nsw i64 %indvars.iv.next12.45, 10
  %421 = add nuw nsw i64 %420, %indvars.iv.46
  %arrayidx15.46 = getelementptr inbounds i32, i32* %z, i64 %421
  %422 = load i32, i32* %arrayidx15.46, align 4
  %add16.46 = add nsw i32 %422, %mul11.46
  store i32 %add16.46, i32* %arrayidx15.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.46, 1
  %exitcond.46 = icmp ne i64 %indvars.iv.next.46, 256
  br i1 %exitcond.46, label %for.body6.46, label %for.inc17.46, !llvm.loop !2

for.inc17.46:                                     ; preds = %for.body6.46
  %indvars.iv.next7.46 = add nuw nsw i64 %indvars.iv6.46, 1
  %exitcond10.46 = icmp ne i64 %indvars.iv.next7.46, 256
  br i1 %exitcond10.46, label %for.body3.46, label %for.inc20.46, !llvm.loop !4

for.inc20.46:                                     ; preds = %for.inc17.46
  %indvars.iv.next12.46 = add nuw nsw i64 %indvars.iv.next12.45, 1
  br label %for.body3.47

for.body3.47:                                     ; preds = %for.inc17.47, %for.inc20.46
  %indvars.iv6.47 = phi i64 [ 0, %for.inc20.46 ], [ %indvars.iv.next7.47, %for.inc17.47 ]
  %423 = shl nsw i64 %indvars.iv.next12.46, 10
  %424 = add nuw nsw i64 %423, %indvars.iv6.47
  %arrayidx.47 = getelementptr inbounds i32, i32* %x, i64 %424
  %425 = load i32, i32* %arrayidx.47, align 4
  br label %for.body6.47

for.body6.47:                                     ; preds = %for.body6.47, %for.body3.47
  %indvars.iv.47 = phi i64 [ 0, %for.body3.47 ], [ %indvars.iv.next.47, %for.body6.47 ]
  %426 = shl nsw i64 %indvars.iv6.47, 10
  %427 = add nuw nsw i64 %426, %indvars.iv.47
  %arrayidx10.47 = getelementptr inbounds i32, i32* %y, i64 %427
  %428 = load i32, i32* %arrayidx10.47, align 4
  %mul11.47 = mul nsw i32 %425, %428
  %429 = shl nsw i64 %indvars.iv.next12.46, 10
  %430 = add nuw nsw i64 %429, %indvars.iv.47
  %arrayidx15.47 = getelementptr inbounds i32, i32* %z, i64 %430
  %431 = load i32, i32* %arrayidx15.47, align 4
  %add16.47 = add nsw i32 %431, %mul11.47
  store i32 %add16.47, i32* %arrayidx15.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.47, 1
  %exitcond.47 = icmp ne i64 %indvars.iv.next.47, 256
  br i1 %exitcond.47, label %for.body6.47, label %for.inc17.47, !llvm.loop !2

for.inc17.47:                                     ; preds = %for.body6.47
  %indvars.iv.next7.47 = add nuw nsw i64 %indvars.iv6.47, 1
  %exitcond10.47 = icmp ne i64 %indvars.iv.next7.47, 256
  br i1 %exitcond10.47, label %for.body3.47, label %for.inc20.47, !llvm.loop !4

for.inc20.47:                                     ; preds = %for.inc17.47
  %indvars.iv.next12.47 = add nuw nsw i64 %indvars.iv.next12.46, 1
  br label %for.body3.48

for.body3.48:                                     ; preds = %for.inc17.48, %for.inc20.47
  %indvars.iv6.48 = phi i64 [ 0, %for.inc20.47 ], [ %indvars.iv.next7.48, %for.inc17.48 ]
  %432 = shl nsw i64 %indvars.iv.next12.47, 10
  %433 = add nuw nsw i64 %432, %indvars.iv6.48
  %arrayidx.48 = getelementptr inbounds i32, i32* %x, i64 %433
  %434 = load i32, i32* %arrayidx.48, align 4
  br label %for.body6.48

for.body6.48:                                     ; preds = %for.body6.48, %for.body3.48
  %indvars.iv.48 = phi i64 [ 0, %for.body3.48 ], [ %indvars.iv.next.48, %for.body6.48 ]
  %435 = shl nsw i64 %indvars.iv6.48, 10
  %436 = add nuw nsw i64 %435, %indvars.iv.48
  %arrayidx10.48 = getelementptr inbounds i32, i32* %y, i64 %436
  %437 = load i32, i32* %arrayidx10.48, align 4
  %mul11.48 = mul nsw i32 %434, %437
  %438 = shl nsw i64 %indvars.iv.next12.47, 10
  %439 = add nuw nsw i64 %438, %indvars.iv.48
  %arrayidx15.48 = getelementptr inbounds i32, i32* %z, i64 %439
  %440 = load i32, i32* %arrayidx15.48, align 4
  %add16.48 = add nsw i32 %440, %mul11.48
  store i32 %add16.48, i32* %arrayidx15.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.48, 1
  %exitcond.48 = icmp ne i64 %indvars.iv.next.48, 256
  br i1 %exitcond.48, label %for.body6.48, label %for.inc17.48, !llvm.loop !2

for.inc17.48:                                     ; preds = %for.body6.48
  %indvars.iv.next7.48 = add nuw nsw i64 %indvars.iv6.48, 1
  %exitcond10.48 = icmp ne i64 %indvars.iv.next7.48, 256
  br i1 %exitcond10.48, label %for.body3.48, label %for.inc20.48, !llvm.loop !4

for.inc20.48:                                     ; preds = %for.inc17.48
  %indvars.iv.next12.48 = add nuw nsw i64 %indvars.iv.next12.47, 1
  br label %for.body3.49

for.body3.49:                                     ; preds = %for.inc17.49, %for.inc20.48
  %indvars.iv6.49 = phi i64 [ 0, %for.inc20.48 ], [ %indvars.iv.next7.49, %for.inc17.49 ]
  %441 = shl nsw i64 %indvars.iv.next12.48, 10
  %442 = add nuw nsw i64 %441, %indvars.iv6.49
  %arrayidx.49 = getelementptr inbounds i32, i32* %x, i64 %442
  %443 = load i32, i32* %arrayidx.49, align 4
  br label %for.body6.49

for.body6.49:                                     ; preds = %for.body6.49, %for.body3.49
  %indvars.iv.49 = phi i64 [ 0, %for.body3.49 ], [ %indvars.iv.next.49, %for.body6.49 ]
  %444 = shl nsw i64 %indvars.iv6.49, 10
  %445 = add nuw nsw i64 %444, %indvars.iv.49
  %arrayidx10.49 = getelementptr inbounds i32, i32* %y, i64 %445
  %446 = load i32, i32* %arrayidx10.49, align 4
  %mul11.49 = mul nsw i32 %443, %446
  %447 = shl nsw i64 %indvars.iv.next12.48, 10
  %448 = add nuw nsw i64 %447, %indvars.iv.49
  %arrayidx15.49 = getelementptr inbounds i32, i32* %z, i64 %448
  %449 = load i32, i32* %arrayidx15.49, align 4
  %add16.49 = add nsw i32 %449, %mul11.49
  store i32 %add16.49, i32* %arrayidx15.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.49, 1
  %exitcond.49 = icmp ne i64 %indvars.iv.next.49, 256
  br i1 %exitcond.49, label %for.body6.49, label %for.inc17.49, !llvm.loop !2

for.inc17.49:                                     ; preds = %for.body6.49
  %indvars.iv.next7.49 = add nuw nsw i64 %indvars.iv6.49, 1
  %exitcond10.49 = icmp ne i64 %indvars.iv.next7.49, 256
  br i1 %exitcond10.49, label %for.body3.49, label %for.inc20.49, !llvm.loop !4

for.inc20.49:                                     ; preds = %for.inc17.49
  %indvars.iv.next12.49 = add nuw nsw i64 %indvars.iv.next12.48, 1
  br label %for.body3.50

for.body3.50:                                     ; preds = %for.inc17.50, %for.inc20.49
  %indvars.iv6.50 = phi i64 [ 0, %for.inc20.49 ], [ %indvars.iv.next7.50, %for.inc17.50 ]
  %450 = shl nsw i64 %indvars.iv.next12.49, 10
  %451 = add nuw nsw i64 %450, %indvars.iv6.50
  %arrayidx.50 = getelementptr inbounds i32, i32* %x, i64 %451
  %452 = load i32, i32* %arrayidx.50, align 4
  br label %for.body6.50

for.body6.50:                                     ; preds = %for.body6.50, %for.body3.50
  %indvars.iv.50 = phi i64 [ 0, %for.body3.50 ], [ %indvars.iv.next.50, %for.body6.50 ]
  %453 = shl nsw i64 %indvars.iv6.50, 10
  %454 = add nuw nsw i64 %453, %indvars.iv.50
  %arrayidx10.50 = getelementptr inbounds i32, i32* %y, i64 %454
  %455 = load i32, i32* %arrayidx10.50, align 4
  %mul11.50 = mul nsw i32 %452, %455
  %456 = shl nsw i64 %indvars.iv.next12.49, 10
  %457 = add nuw nsw i64 %456, %indvars.iv.50
  %arrayidx15.50 = getelementptr inbounds i32, i32* %z, i64 %457
  %458 = load i32, i32* %arrayidx15.50, align 4
  %add16.50 = add nsw i32 %458, %mul11.50
  store i32 %add16.50, i32* %arrayidx15.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.50, 1
  %exitcond.50 = icmp ne i64 %indvars.iv.next.50, 256
  br i1 %exitcond.50, label %for.body6.50, label %for.inc17.50, !llvm.loop !2

for.inc17.50:                                     ; preds = %for.body6.50
  %indvars.iv.next7.50 = add nuw nsw i64 %indvars.iv6.50, 1
  %exitcond10.50 = icmp ne i64 %indvars.iv.next7.50, 256
  br i1 %exitcond10.50, label %for.body3.50, label %for.inc20.50, !llvm.loop !4

for.inc20.50:                                     ; preds = %for.inc17.50
  %indvars.iv.next12.50 = add nuw nsw i64 %indvars.iv.next12.49, 1
  br label %for.body3.51

for.body3.51:                                     ; preds = %for.inc17.51, %for.inc20.50
  %indvars.iv6.51 = phi i64 [ 0, %for.inc20.50 ], [ %indvars.iv.next7.51, %for.inc17.51 ]
  %459 = shl nsw i64 %indvars.iv.next12.50, 10
  %460 = add nuw nsw i64 %459, %indvars.iv6.51
  %arrayidx.51 = getelementptr inbounds i32, i32* %x, i64 %460
  %461 = load i32, i32* %arrayidx.51, align 4
  br label %for.body6.51

for.body6.51:                                     ; preds = %for.body6.51, %for.body3.51
  %indvars.iv.51 = phi i64 [ 0, %for.body3.51 ], [ %indvars.iv.next.51, %for.body6.51 ]
  %462 = shl nsw i64 %indvars.iv6.51, 10
  %463 = add nuw nsw i64 %462, %indvars.iv.51
  %arrayidx10.51 = getelementptr inbounds i32, i32* %y, i64 %463
  %464 = load i32, i32* %arrayidx10.51, align 4
  %mul11.51 = mul nsw i32 %461, %464
  %465 = shl nsw i64 %indvars.iv.next12.50, 10
  %466 = add nuw nsw i64 %465, %indvars.iv.51
  %arrayidx15.51 = getelementptr inbounds i32, i32* %z, i64 %466
  %467 = load i32, i32* %arrayidx15.51, align 4
  %add16.51 = add nsw i32 %467, %mul11.51
  store i32 %add16.51, i32* %arrayidx15.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.51, 1
  %exitcond.51 = icmp ne i64 %indvars.iv.next.51, 256
  br i1 %exitcond.51, label %for.body6.51, label %for.inc17.51, !llvm.loop !2

for.inc17.51:                                     ; preds = %for.body6.51
  %indvars.iv.next7.51 = add nuw nsw i64 %indvars.iv6.51, 1
  %exitcond10.51 = icmp ne i64 %indvars.iv.next7.51, 256
  br i1 %exitcond10.51, label %for.body3.51, label %for.inc20.51, !llvm.loop !4

for.inc20.51:                                     ; preds = %for.inc17.51
  %indvars.iv.next12.51 = add nuw nsw i64 %indvars.iv.next12.50, 1
  br label %for.body3.52

for.body3.52:                                     ; preds = %for.inc17.52, %for.inc20.51
  %indvars.iv6.52 = phi i64 [ 0, %for.inc20.51 ], [ %indvars.iv.next7.52, %for.inc17.52 ]
  %468 = shl nsw i64 %indvars.iv.next12.51, 10
  %469 = add nuw nsw i64 %468, %indvars.iv6.52
  %arrayidx.52 = getelementptr inbounds i32, i32* %x, i64 %469
  %470 = load i32, i32* %arrayidx.52, align 4
  br label %for.body6.52

for.body6.52:                                     ; preds = %for.body6.52, %for.body3.52
  %indvars.iv.52 = phi i64 [ 0, %for.body3.52 ], [ %indvars.iv.next.52, %for.body6.52 ]
  %471 = shl nsw i64 %indvars.iv6.52, 10
  %472 = add nuw nsw i64 %471, %indvars.iv.52
  %arrayidx10.52 = getelementptr inbounds i32, i32* %y, i64 %472
  %473 = load i32, i32* %arrayidx10.52, align 4
  %mul11.52 = mul nsw i32 %470, %473
  %474 = shl nsw i64 %indvars.iv.next12.51, 10
  %475 = add nuw nsw i64 %474, %indvars.iv.52
  %arrayidx15.52 = getelementptr inbounds i32, i32* %z, i64 %475
  %476 = load i32, i32* %arrayidx15.52, align 4
  %add16.52 = add nsw i32 %476, %mul11.52
  store i32 %add16.52, i32* %arrayidx15.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.52, 1
  %exitcond.52 = icmp ne i64 %indvars.iv.next.52, 256
  br i1 %exitcond.52, label %for.body6.52, label %for.inc17.52, !llvm.loop !2

for.inc17.52:                                     ; preds = %for.body6.52
  %indvars.iv.next7.52 = add nuw nsw i64 %indvars.iv6.52, 1
  %exitcond10.52 = icmp ne i64 %indvars.iv.next7.52, 256
  br i1 %exitcond10.52, label %for.body3.52, label %for.inc20.52, !llvm.loop !4

for.inc20.52:                                     ; preds = %for.inc17.52
  %indvars.iv.next12.52 = add nuw nsw i64 %indvars.iv.next12.51, 1
  br label %for.body3.53

for.body3.53:                                     ; preds = %for.inc17.53, %for.inc20.52
  %indvars.iv6.53 = phi i64 [ 0, %for.inc20.52 ], [ %indvars.iv.next7.53, %for.inc17.53 ]
  %477 = shl nsw i64 %indvars.iv.next12.52, 10
  %478 = add nuw nsw i64 %477, %indvars.iv6.53
  %arrayidx.53 = getelementptr inbounds i32, i32* %x, i64 %478
  %479 = load i32, i32* %arrayidx.53, align 4
  br label %for.body6.53

for.body6.53:                                     ; preds = %for.body6.53, %for.body3.53
  %indvars.iv.53 = phi i64 [ 0, %for.body3.53 ], [ %indvars.iv.next.53, %for.body6.53 ]
  %480 = shl nsw i64 %indvars.iv6.53, 10
  %481 = add nuw nsw i64 %480, %indvars.iv.53
  %arrayidx10.53 = getelementptr inbounds i32, i32* %y, i64 %481
  %482 = load i32, i32* %arrayidx10.53, align 4
  %mul11.53 = mul nsw i32 %479, %482
  %483 = shl nsw i64 %indvars.iv.next12.52, 10
  %484 = add nuw nsw i64 %483, %indvars.iv.53
  %arrayidx15.53 = getelementptr inbounds i32, i32* %z, i64 %484
  %485 = load i32, i32* %arrayidx15.53, align 4
  %add16.53 = add nsw i32 %485, %mul11.53
  store i32 %add16.53, i32* %arrayidx15.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.53, 1
  %exitcond.53 = icmp ne i64 %indvars.iv.next.53, 256
  br i1 %exitcond.53, label %for.body6.53, label %for.inc17.53, !llvm.loop !2

for.inc17.53:                                     ; preds = %for.body6.53
  %indvars.iv.next7.53 = add nuw nsw i64 %indvars.iv6.53, 1
  %exitcond10.53 = icmp ne i64 %indvars.iv.next7.53, 256
  br i1 %exitcond10.53, label %for.body3.53, label %for.inc20.53, !llvm.loop !4

for.inc20.53:                                     ; preds = %for.inc17.53
  %indvars.iv.next12.53 = add nuw nsw i64 %indvars.iv.next12.52, 1
  br label %for.body3.54

for.body3.54:                                     ; preds = %for.inc17.54, %for.inc20.53
  %indvars.iv6.54 = phi i64 [ 0, %for.inc20.53 ], [ %indvars.iv.next7.54, %for.inc17.54 ]
  %486 = shl nsw i64 %indvars.iv.next12.53, 10
  %487 = add nuw nsw i64 %486, %indvars.iv6.54
  %arrayidx.54 = getelementptr inbounds i32, i32* %x, i64 %487
  %488 = load i32, i32* %arrayidx.54, align 4
  br label %for.body6.54

for.body6.54:                                     ; preds = %for.body6.54, %for.body3.54
  %indvars.iv.54 = phi i64 [ 0, %for.body3.54 ], [ %indvars.iv.next.54, %for.body6.54 ]
  %489 = shl nsw i64 %indvars.iv6.54, 10
  %490 = add nuw nsw i64 %489, %indvars.iv.54
  %arrayidx10.54 = getelementptr inbounds i32, i32* %y, i64 %490
  %491 = load i32, i32* %arrayidx10.54, align 4
  %mul11.54 = mul nsw i32 %488, %491
  %492 = shl nsw i64 %indvars.iv.next12.53, 10
  %493 = add nuw nsw i64 %492, %indvars.iv.54
  %arrayidx15.54 = getelementptr inbounds i32, i32* %z, i64 %493
  %494 = load i32, i32* %arrayidx15.54, align 4
  %add16.54 = add nsw i32 %494, %mul11.54
  store i32 %add16.54, i32* %arrayidx15.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.54, 1
  %exitcond.54 = icmp ne i64 %indvars.iv.next.54, 256
  br i1 %exitcond.54, label %for.body6.54, label %for.inc17.54, !llvm.loop !2

for.inc17.54:                                     ; preds = %for.body6.54
  %indvars.iv.next7.54 = add nuw nsw i64 %indvars.iv6.54, 1
  %exitcond10.54 = icmp ne i64 %indvars.iv.next7.54, 256
  br i1 %exitcond10.54, label %for.body3.54, label %for.inc20.54, !llvm.loop !4

for.inc20.54:                                     ; preds = %for.inc17.54
  %indvars.iv.next12.54 = add nuw nsw i64 %indvars.iv.next12.53, 1
  br label %for.body3.55

for.body3.55:                                     ; preds = %for.inc17.55, %for.inc20.54
  %indvars.iv6.55 = phi i64 [ 0, %for.inc20.54 ], [ %indvars.iv.next7.55, %for.inc17.55 ]
  %495 = shl nsw i64 %indvars.iv.next12.54, 10
  %496 = add nuw nsw i64 %495, %indvars.iv6.55
  %arrayidx.55 = getelementptr inbounds i32, i32* %x, i64 %496
  %497 = load i32, i32* %arrayidx.55, align 4
  br label %for.body6.55

for.body6.55:                                     ; preds = %for.body6.55, %for.body3.55
  %indvars.iv.55 = phi i64 [ 0, %for.body3.55 ], [ %indvars.iv.next.55, %for.body6.55 ]
  %498 = shl nsw i64 %indvars.iv6.55, 10
  %499 = add nuw nsw i64 %498, %indvars.iv.55
  %arrayidx10.55 = getelementptr inbounds i32, i32* %y, i64 %499
  %500 = load i32, i32* %arrayidx10.55, align 4
  %mul11.55 = mul nsw i32 %497, %500
  %501 = shl nsw i64 %indvars.iv.next12.54, 10
  %502 = add nuw nsw i64 %501, %indvars.iv.55
  %arrayidx15.55 = getelementptr inbounds i32, i32* %z, i64 %502
  %503 = load i32, i32* %arrayidx15.55, align 4
  %add16.55 = add nsw i32 %503, %mul11.55
  store i32 %add16.55, i32* %arrayidx15.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.55, 1
  %exitcond.55 = icmp ne i64 %indvars.iv.next.55, 256
  br i1 %exitcond.55, label %for.body6.55, label %for.inc17.55, !llvm.loop !2

for.inc17.55:                                     ; preds = %for.body6.55
  %indvars.iv.next7.55 = add nuw nsw i64 %indvars.iv6.55, 1
  %exitcond10.55 = icmp ne i64 %indvars.iv.next7.55, 256
  br i1 %exitcond10.55, label %for.body3.55, label %for.inc20.55, !llvm.loop !4

for.inc20.55:                                     ; preds = %for.inc17.55
  %indvars.iv.next12.55 = add nuw nsw i64 %indvars.iv.next12.54, 1
  br label %for.body3.56

for.body3.56:                                     ; preds = %for.inc17.56, %for.inc20.55
  %indvars.iv6.56 = phi i64 [ 0, %for.inc20.55 ], [ %indvars.iv.next7.56, %for.inc17.56 ]
  %504 = shl nsw i64 %indvars.iv.next12.55, 10
  %505 = add nuw nsw i64 %504, %indvars.iv6.56
  %arrayidx.56 = getelementptr inbounds i32, i32* %x, i64 %505
  %506 = load i32, i32* %arrayidx.56, align 4
  br label %for.body6.56

for.body6.56:                                     ; preds = %for.body6.56, %for.body3.56
  %indvars.iv.56 = phi i64 [ 0, %for.body3.56 ], [ %indvars.iv.next.56, %for.body6.56 ]
  %507 = shl nsw i64 %indvars.iv6.56, 10
  %508 = add nuw nsw i64 %507, %indvars.iv.56
  %arrayidx10.56 = getelementptr inbounds i32, i32* %y, i64 %508
  %509 = load i32, i32* %arrayidx10.56, align 4
  %mul11.56 = mul nsw i32 %506, %509
  %510 = shl nsw i64 %indvars.iv.next12.55, 10
  %511 = add nuw nsw i64 %510, %indvars.iv.56
  %arrayidx15.56 = getelementptr inbounds i32, i32* %z, i64 %511
  %512 = load i32, i32* %arrayidx15.56, align 4
  %add16.56 = add nsw i32 %512, %mul11.56
  store i32 %add16.56, i32* %arrayidx15.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.56, 1
  %exitcond.56 = icmp ne i64 %indvars.iv.next.56, 256
  br i1 %exitcond.56, label %for.body6.56, label %for.inc17.56, !llvm.loop !2

for.inc17.56:                                     ; preds = %for.body6.56
  %indvars.iv.next7.56 = add nuw nsw i64 %indvars.iv6.56, 1
  %exitcond10.56 = icmp ne i64 %indvars.iv.next7.56, 256
  br i1 %exitcond10.56, label %for.body3.56, label %for.inc20.56, !llvm.loop !4

for.inc20.56:                                     ; preds = %for.inc17.56
  %indvars.iv.next12.56 = add nuw nsw i64 %indvars.iv.next12.55, 1
  br label %for.body3.57

for.body3.57:                                     ; preds = %for.inc17.57, %for.inc20.56
  %indvars.iv6.57 = phi i64 [ 0, %for.inc20.56 ], [ %indvars.iv.next7.57, %for.inc17.57 ]
  %513 = shl nsw i64 %indvars.iv.next12.56, 10
  %514 = add nuw nsw i64 %513, %indvars.iv6.57
  %arrayidx.57 = getelementptr inbounds i32, i32* %x, i64 %514
  %515 = load i32, i32* %arrayidx.57, align 4
  br label %for.body6.57

for.body6.57:                                     ; preds = %for.body6.57, %for.body3.57
  %indvars.iv.57 = phi i64 [ 0, %for.body3.57 ], [ %indvars.iv.next.57, %for.body6.57 ]
  %516 = shl nsw i64 %indvars.iv6.57, 10
  %517 = add nuw nsw i64 %516, %indvars.iv.57
  %arrayidx10.57 = getelementptr inbounds i32, i32* %y, i64 %517
  %518 = load i32, i32* %arrayidx10.57, align 4
  %mul11.57 = mul nsw i32 %515, %518
  %519 = shl nsw i64 %indvars.iv.next12.56, 10
  %520 = add nuw nsw i64 %519, %indvars.iv.57
  %arrayidx15.57 = getelementptr inbounds i32, i32* %z, i64 %520
  %521 = load i32, i32* %arrayidx15.57, align 4
  %add16.57 = add nsw i32 %521, %mul11.57
  store i32 %add16.57, i32* %arrayidx15.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.57, 1
  %exitcond.57 = icmp ne i64 %indvars.iv.next.57, 256
  br i1 %exitcond.57, label %for.body6.57, label %for.inc17.57, !llvm.loop !2

for.inc17.57:                                     ; preds = %for.body6.57
  %indvars.iv.next7.57 = add nuw nsw i64 %indvars.iv6.57, 1
  %exitcond10.57 = icmp ne i64 %indvars.iv.next7.57, 256
  br i1 %exitcond10.57, label %for.body3.57, label %for.inc20.57, !llvm.loop !4

for.inc20.57:                                     ; preds = %for.inc17.57
  %indvars.iv.next12.57 = add nuw nsw i64 %indvars.iv.next12.56, 1
  br label %for.body3.58

for.body3.58:                                     ; preds = %for.inc17.58, %for.inc20.57
  %indvars.iv6.58 = phi i64 [ 0, %for.inc20.57 ], [ %indvars.iv.next7.58, %for.inc17.58 ]
  %522 = shl nsw i64 %indvars.iv.next12.57, 10
  %523 = add nuw nsw i64 %522, %indvars.iv6.58
  %arrayidx.58 = getelementptr inbounds i32, i32* %x, i64 %523
  %524 = load i32, i32* %arrayidx.58, align 4
  br label %for.body6.58

for.body6.58:                                     ; preds = %for.body6.58, %for.body3.58
  %indvars.iv.58 = phi i64 [ 0, %for.body3.58 ], [ %indvars.iv.next.58, %for.body6.58 ]
  %525 = shl nsw i64 %indvars.iv6.58, 10
  %526 = add nuw nsw i64 %525, %indvars.iv.58
  %arrayidx10.58 = getelementptr inbounds i32, i32* %y, i64 %526
  %527 = load i32, i32* %arrayidx10.58, align 4
  %mul11.58 = mul nsw i32 %524, %527
  %528 = shl nsw i64 %indvars.iv.next12.57, 10
  %529 = add nuw nsw i64 %528, %indvars.iv.58
  %arrayidx15.58 = getelementptr inbounds i32, i32* %z, i64 %529
  %530 = load i32, i32* %arrayidx15.58, align 4
  %add16.58 = add nsw i32 %530, %mul11.58
  store i32 %add16.58, i32* %arrayidx15.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.58, 1
  %exitcond.58 = icmp ne i64 %indvars.iv.next.58, 256
  br i1 %exitcond.58, label %for.body6.58, label %for.inc17.58, !llvm.loop !2

for.inc17.58:                                     ; preds = %for.body6.58
  %indvars.iv.next7.58 = add nuw nsw i64 %indvars.iv6.58, 1
  %exitcond10.58 = icmp ne i64 %indvars.iv.next7.58, 256
  br i1 %exitcond10.58, label %for.body3.58, label %for.inc20.58, !llvm.loop !4

for.inc20.58:                                     ; preds = %for.inc17.58
  %indvars.iv.next12.58 = add nuw nsw i64 %indvars.iv.next12.57, 1
  br label %for.body3.59

for.body3.59:                                     ; preds = %for.inc17.59, %for.inc20.58
  %indvars.iv6.59 = phi i64 [ 0, %for.inc20.58 ], [ %indvars.iv.next7.59, %for.inc17.59 ]
  %531 = shl nsw i64 %indvars.iv.next12.58, 10
  %532 = add nuw nsw i64 %531, %indvars.iv6.59
  %arrayidx.59 = getelementptr inbounds i32, i32* %x, i64 %532
  %533 = load i32, i32* %arrayidx.59, align 4
  br label %for.body6.59

for.body6.59:                                     ; preds = %for.body6.59, %for.body3.59
  %indvars.iv.59 = phi i64 [ 0, %for.body3.59 ], [ %indvars.iv.next.59, %for.body6.59 ]
  %534 = shl nsw i64 %indvars.iv6.59, 10
  %535 = add nuw nsw i64 %534, %indvars.iv.59
  %arrayidx10.59 = getelementptr inbounds i32, i32* %y, i64 %535
  %536 = load i32, i32* %arrayidx10.59, align 4
  %mul11.59 = mul nsw i32 %533, %536
  %537 = shl nsw i64 %indvars.iv.next12.58, 10
  %538 = add nuw nsw i64 %537, %indvars.iv.59
  %arrayidx15.59 = getelementptr inbounds i32, i32* %z, i64 %538
  %539 = load i32, i32* %arrayidx15.59, align 4
  %add16.59 = add nsw i32 %539, %mul11.59
  store i32 %add16.59, i32* %arrayidx15.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.59, 1
  %exitcond.59 = icmp ne i64 %indvars.iv.next.59, 256
  br i1 %exitcond.59, label %for.body6.59, label %for.inc17.59, !llvm.loop !2

for.inc17.59:                                     ; preds = %for.body6.59
  %indvars.iv.next7.59 = add nuw nsw i64 %indvars.iv6.59, 1
  %exitcond10.59 = icmp ne i64 %indvars.iv.next7.59, 256
  br i1 %exitcond10.59, label %for.body3.59, label %for.inc20.59, !llvm.loop !4

for.inc20.59:                                     ; preds = %for.inc17.59
  %indvars.iv.next12.59 = add nuw nsw i64 %indvars.iv.next12.58, 1
  br label %for.body3.60

for.body3.60:                                     ; preds = %for.inc17.60, %for.inc20.59
  %indvars.iv6.60 = phi i64 [ 0, %for.inc20.59 ], [ %indvars.iv.next7.60, %for.inc17.60 ]
  %540 = shl nsw i64 %indvars.iv.next12.59, 10
  %541 = add nuw nsw i64 %540, %indvars.iv6.60
  %arrayidx.60 = getelementptr inbounds i32, i32* %x, i64 %541
  %542 = load i32, i32* %arrayidx.60, align 4
  br label %for.body6.60

for.body6.60:                                     ; preds = %for.body6.60, %for.body3.60
  %indvars.iv.60 = phi i64 [ 0, %for.body3.60 ], [ %indvars.iv.next.60, %for.body6.60 ]
  %543 = shl nsw i64 %indvars.iv6.60, 10
  %544 = add nuw nsw i64 %543, %indvars.iv.60
  %arrayidx10.60 = getelementptr inbounds i32, i32* %y, i64 %544
  %545 = load i32, i32* %arrayidx10.60, align 4
  %mul11.60 = mul nsw i32 %542, %545
  %546 = shl nsw i64 %indvars.iv.next12.59, 10
  %547 = add nuw nsw i64 %546, %indvars.iv.60
  %arrayidx15.60 = getelementptr inbounds i32, i32* %z, i64 %547
  %548 = load i32, i32* %arrayidx15.60, align 4
  %add16.60 = add nsw i32 %548, %mul11.60
  store i32 %add16.60, i32* %arrayidx15.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.60, 1
  %exitcond.60 = icmp ne i64 %indvars.iv.next.60, 256
  br i1 %exitcond.60, label %for.body6.60, label %for.inc17.60, !llvm.loop !2

for.inc17.60:                                     ; preds = %for.body6.60
  %indvars.iv.next7.60 = add nuw nsw i64 %indvars.iv6.60, 1
  %exitcond10.60 = icmp ne i64 %indvars.iv.next7.60, 256
  br i1 %exitcond10.60, label %for.body3.60, label %for.inc20.60, !llvm.loop !4

for.inc20.60:                                     ; preds = %for.inc17.60
  %indvars.iv.next12.60 = add nuw nsw i64 %indvars.iv.next12.59, 1
  br label %for.body3.61

for.body3.61:                                     ; preds = %for.inc17.61, %for.inc20.60
  %indvars.iv6.61 = phi i64 [ 0, %for.inc20.60 ], [ %indvars.iv.next7.61, %for.inc17.61 ]
  %549 = shl nsw i64 %indvars.iv.next12.60, 10
  %550 = add nuw nsw i64 %549, %indvars.iv6.61
  %arrayidx.61 = getelementptr inbounds i32, i32* %x, i64 %550
  %551 = load i32, i32* %arrayidx.61, align 4
  br label %for.body6.61

for.body6.61:                                     ; preds = %for.body6.61, %for.body3.61
  %indvars.iv.61 = phi i64 [ 0, %for.body3.61 ], [ %indvars.iv.next.61, %for.body6.61 ]
  %552 = shl nsw i64 %indvars.iv6.61, 10
  %553 = add nuw nsw i64 %552, %indvars.iv.61
  %arrayidx10.61 = getelementptr inbounds i32, i32* %y, i64 %553
  %554 = load i32, i32* %arrayidx10.61, align 4
  %mul11.61 = mul nsw i32 %551, %554
  %555 = shl nsw i64 %indvars.iv.next12.60, 10
  %556 = add nuw nsw i64 %555, %indvars.iv.61
  %arrayidx15.61 = getelementptr inbounds i32, i32* %z, i64 %556
  %557 = load i32, i32* %arrayidx15.61, align 4
  %add16.61 = add nsw i32 %557, %mul11.61
  store i32 %add16.61, i32* %arrayidx15.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.61, 1
  %exitcond.61 = icmp ne i64 %indvars.iv.next.61, 256
  br i1 %exitcond.61, label %for.body6.61, label %for.inc17.61, !llvm.loop !2

for.inc17.61:                                     ; preds = %for.body6.61
  %indvars.iv.next7.61 = add nuw nsw i64 %indvars.iv6.61, 1
  %exitcond10.61 = icmp ne i64 %indvars.iv.next7.61, 256
  br i1 %exitcond10.61, label %for.body3.61, label %for.inc20.61, !llvm.loop !4

for.inc20.61:                                     ; preds = %for.inc17.61
  %indvars.iv.next12.61 = add nuw nsw i64 %indvars.iv.next12.60, 1
  br label %for.body3.62

for.body3.62:                                     ; preds = %for.inc17.62, %for.inc20.61
  %indvars.iv6.62 = phi i64 [ 0, %for.inc20.61 ], [ %indvars.iv.next7.62, %for.inc17.62 ]
  %558 = shl nsw i64 %indvars.iv.next12.61, 10
  %559 = add nuw nsw i64 %558, %indvars.iv6.62
  %arrayidx.62 = getelementptr inbounds i32, i32* %x, i64 %559
  %560 = load i32, i32* %arrayidx.62, align 4
  br label %for.body6.62

for.body6.62:                                     ; preds = %for.body6.62, %for.body3.62
  %indvars.iv.62 = phi i64 [ 0, %for.body3.62 ], [ %indvars.iv.next.62, %for.body6.62 ]
  %561 = shl nsw i64 %indvars.iv6.62, 10
  %562 = add nuw nsw i64 %561, %indvars.iv.62
  %arrayidx10.62 = getelementptr inbounds i32, i32* %y, i64 %562
  %563 = load i32, i32* %arrayidx10.62, align 4
  %mul11.62 = mul nsw i32 %560, %563
  %564 = shl nsw i64 %indvars.iv.next12.61, 10
  %565 = add nuw nsw i64 %564, %indvars.iv.62
  %arrayidx15.62 = getelementptr inbounds i32, i32* %z, i64 %565
  %566 = load i32, i32* %arrayidx15.62, align 4
  %add16.62 = add nsw i32 %566, %mul11.62
  store i32 %add16.62, i32* %arrayidx15.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.62, 1
  %exitcond.62 = icmp ne i64 %indvars.iv.next.62, 256
  br i1 %exitcond.62, label %for.body6.62, label %for.inc17.62, !llvm.loop !2

for.inc17.62:                                     ; preds = %for.body6.62
  %indvars.iv.next7.62 = add nuw nsw i64 %indvars.iv6.62, 1
  %exitcond10.62 = icmp ne i64 %indvars.iv.next7.62, 256
  br i1 %exitcond10.62, label %for.body3.62, label %for.inc20.62, !llvm.loop !4

for.inc20.62:                                     ; preds = %for.inc17.62
  %indvars.iv.next12.62 = add nuw nsw i64 %indvars.iv.next12.61, 1
  br label %for.body3.63

for.body3.63:                                     ; preds = %for.inc17.63, %for.inc20.62
  %indvars.iv6.63 = phi i64 [ 0, %for.inc20.62 ], [ %indvars.iv.next7.63, %for.inc17.63 ]
  %567 = shl nsw i64 %indvars.iv.next12.62, 10
  %568 = add nuw nsw i64 %567, %indvars.iv6.63
  %arrayidx.63 = getelementptr inbounds i32, i32* %x, i64 %568
  %569 = load i32, i32* %arrayidx.63, align 4
  br label %for.body6.63

for.body6.63:                                     ; preds = %for.body6.63, %for.body3.63
  %indvars.iv.63 = phi i64 [ 0, %for.body3.63 ], [ %indvars.iv.next.63, %for.body6.63 ]
  %570 = shl nsw i64 %indvars.iv6.63, 10
  %571 = add nuw nsw i64 %570, %indvars.iv.63
  %arrayidx10.63 = getelementptr inbounds i32, i32* %y, i64 %571
  %572 = load i32, i32* %arrayidx10.63, align 4
  %mul11.63 = mul nsw i32 %569, %572
  %573 = shl nsw i64 %indvars.iv.next12.62, 10
  %574 = add nuw nsw i64 %573, %indvars.iv.63
  %arrayidx15.63 = getelementptr inbounds i32, i32* %z, i64 %574
  %575 = load i32, i32* %arrayidx15.63, align 4
  %add16.63 = add nsw i32 %575, %mul11.63
  store i32 %add16.63, i32* %arrayidx15.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.63, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 256
  br i1 %exitcond.63, label %for.body6.63, label %for.inc17.63, !llvm.loop !2

for.inc17.63:                                     ; preds = %for.body6.63
  %indvars.iv.next7.63 = add nuw nsw i64 %indvars.iv6.63, 1
  %exitcond10.63 = icmp ne i64 %indvars.iv.next7.63, 256
  br i1 %exitcond10.63, label %for.body3.63, label %for.inc20.63, !llvm.loop !4

for.inc20.63:                                     ; preds = %for.inc17.63
  %indvars.iv.next12.63 = add nuw nsw i64 %indvars.iv.next12.62, 1
  %exitcond15.63 = icmp ne i64 %indvars.iv.next12.63, 1024
  br i1 %exitcond15.63, label %for.body, label %for.end22, !llvm.loop !5
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
