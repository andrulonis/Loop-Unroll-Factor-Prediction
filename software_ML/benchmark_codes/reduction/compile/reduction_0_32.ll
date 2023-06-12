; ModuleID = 'reduction_0_32.ll'
source_filename = "reduction_0_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"sum: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @reduction(i32* %in) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.31, %for.body ]
  %sum.02 = phi i32 [ 0, %entry ], [ %add.31, %for.body ]
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
  %exitcond.31 = icmp ne i64 %indvars.iv.next.31, 8388608
  br i1 %exitcond.31, label %for.body, label %for.end, !llvm.loop !2

for.end:                                          ; preds = %for.body
  %add.lcssa = phi i32 [ %add.31, %for.body ]
  ret i32 %add.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call noalias dereferenceable_or_null(33554432) i8* @malloc(i64 33554432) #3
  %0 = bitcast i8* %call to i32*
  call void @srand(i32 8650341) #3
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %call1 = call i32 @rand() #3
  %conv2 = sitofp i32 %call1 to double
  %mul4 = fmul double %conv2, 0x41DFFFFFFF800000
  %div = fdiv double %mul4, 0x41DFFFFFFFC00000
  %add = fadd double %div, 0.000000e+00
  %conv5 = fptosi double %add to i32
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %conv5, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 8388608
  br i1 %exitcond, label %for.body, label %for.end

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
