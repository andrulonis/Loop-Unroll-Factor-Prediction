; ModuleID = 'pp_scan_1_16.ll'
source_filename = "pp_scan_1_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
define dso_local void @local_scan(i32* %bucket) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body3 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %0 = shl nsw i64 %indvars.iv, 4
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = shl nsw i64 %indvars.iv, 4
  %3 = add nuw nsw i64 %2, 1
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %3
  %4 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %4, %1
  store i32 %add8, i32* %arrayidx7, align 4
  %5 = shl nsw i64 %indvars.iv, 4
  %6 = add nuw nsw i64 %5, 2
  %7 = add nsw i64 %6, -1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %7
  %8 = load i32, i32* %arrayidx.1, align 4
  %9 = shl nsw i64 %indvars.iv, 4
  %10 = add nuw nsw i64 %9, 2
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %10
  %11 = load i32, i32* %arrayidx7.1, align 4
  %add8.1 = add nsw i32 %11, %8
  store i32 %add8.1, i32* %arrayidx7.1, align 4
  %12 = shl nsw i64 %indvars.iv, 4
  %13 = add nuw nsw i64 %12, 3
  %14 = add nsw i64 %13, -1
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %14
  %15 = load i32, i32* %arrayidx.2, align 4
  %16 = shl nsw i64 %indvars.iv, 4
  %17 = add nuw nsw i64 %16, 3
  %arrayidx7.2 = getelementptr inbounds i32, i32* %bucket, i64 %17
  %18 = load i32, i32* %arrayidx7.2, align 4
  %add8.2 = add nsw i32 %18, %15
  store i32 %add8.2, i32* %arrayidx7.2, align 4
  %19 = shl nsw i64 %indvars.iv, 4
  %20 = add nuw nsw i64 %19, 4
  %21 = add nsw i64 %20, -1
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %21
  %22 = load i32, i32* %arrayidx.3, align 4
  %23 = shl nsw i64 %indvars.iv, 4
  %24 = add nuw nsw i64 %23, 4
  %arrayidx7.3 = getelementptr inbounds i32, i32* %bucket, i64 %24
  %25 = load i32, i32* %arrayidx7.3, align 4
  %add8.3 = add nsw i32 %25, %22
  store i32 %add8.3, i32* %arrayidx7.3, align 4
  %26 = shl nsw i64 %indvars.iv, 4
  %27 = add nuw nsw i64 %26, 5
  %28 = add nsw i64 %27, -1
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %28
  %29 = load i32, i32* %arrayidx.4, align 4
  %30 = shl nsw i64 %indvars.iv, 4
  %31 = add nuw nsw i64 %30, 5
  %arrayidx7.4 = getelementptr inbounds i32, i32* %bucket, i64 %31
  %32 = load i32, i32* %arrayidx7.4, align 4
  %add8.4 = add nsw i32 %32, %29
  store i32 %add8.4, i32* %arrayidx7.4, align 4
  %33 = shl nsw i64 %indvars.iv, 4
  %34 = add nuw nsw i64 %33, 6
  %35 = add nsw i64 %34, -1
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %35
  %36 = load i32, i32* %arrayidx.5, align 4
  %37 = shl nsw i64 %indvars.iv, 4
  %38 = add nuw nsw i64 %37, 6
  %arrayidx7.5 = getelementptr inbounds i32, i32* %bucket, i64 %38
  %39 = load i32, i32* %arrayidx7.5, align 4
  %add8.5 = add nsw i32 %39, %36
  store i32 %add8.5, i32* %arrayidx7.5, align 4
  %40 = shl nsw i64 %indvars.iv, 4
  %41 = add nuw nsw i64 %40, 7
  %42 = add nsw i64 %41, -1
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %42
  %43 = load i32, i32* %arrayidx.6, align 4
  %44 = shl nsw i64 %indvars.iv, 4
  %45 = add nuw nsw i64 %44, 7
  %arrayidx7.6 = getelementptr inbounds i32, i32* %bucket, i64 %45
  %46 = load i32, i32* %arrayidx7.6, align 4
  %add8.6 = add nsw i32 %46, %43
  store i32 %add8.6, i32* %arrayidx7.6, align 4
  %47 = shl nsw i64 %indvars.iv, 4
  %48 = add nuw nsw i64 %47, 8
  %49 = add nsw i64 %48, -1
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %49
  %50 = load i32, i32* %arrayidx.7, align 4
  %51 = shl nsw i64 %indvars.iv, 4
  %52 = add nuw nsw i64 %51, 8
  %arrayidx7.7 = getelementptr inbounds i32, i32* %bucket, i64 %52
  %53 = load i32, i32* %arrayidx7.7, align 4
  %add8.7 = add nsw i32 %53, %50
  store i32 %add8.7, i32* %arrayidx7.7, align 4
  %54 = shl nsw i64 %indvars.iv, 4
  %55 = add nuw nsw i64 %54, 9
  %56 = add nsw i64 %55, -1
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %56
  %57 = load i32, i32* %arrayidx.8, align 4
  %58 = shl nsw i64 %indvars.iv, 4
  %59 = add nuw nsw i64 %58, 9
  %arrayidx7.8 = getelementptr inbounds i32, i32* %bucket, i64 %59
  %60 = load i32, i32* %arrayidx7.8, align 4
  %add8.8 = add nsw i32 %60, %57
  store i32 %add8.8, i32* %arrayidx7.8, align 4
  %61 = shl nsw i64 %indvars.iv, 4
  %62 = add nuw nsw i64 %61, 10
  %63 = add nsw i64 %62, -1
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %63
  %64 = load i32, i32* %arrayidx.9, align 4
  %65 = shl nsw i64 %indvars.iv, 4
  %66 = add nuw nsw i64 %65, 10
  %arrayidx7.9 = getelementptr inbounds i32, i32* %bucket, i64 %66
  %67 = load i32, i32* %arrayidx7.9, align 4
  %add8.9 = add nsw i32 %67, %64
  store i32 %add8.9, i32* %arrayidx7.9, align 4
  %68 = shl nsw i64 %indvars.iv, 4
  %69 = add nuw nsw i64 %68, 11
  %70 = add nsw i64 %69, -1
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %70
  %71 = load i32, i32* %arrayidx.10, align 4
  %72 = shl nsw i64 %indvars.iv, 4
  %73 = add nuw nsw i64 %72, 11
  %arrayidx7.10 = getelementptr inbounds i32, i32* %bucket, i64 %73
  %74 = load i32, i32* %arrayidx7.10, align 4
  %add8.10 = add nsw i32 %74, %71
  store i32 %add8.10, i32* %arrayidx7.10, align 4
  %75 = shl nsw i64 %indvars.iv, 4
  %76 = add nuw nsw i64 %75, 12
  %77 = add nsw i64 %76, -1
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %77
  %78 = load i32, i32* %arrayidx.11, align 4
  %79 = shl nsw i64 %indvars.iv, 4
  %80 = add nuw nsw i64 %79, 12
  %arrayidx7.11 = getelementptr inbounds i32, i32* %bucket, i64 %80
  %81 = load i32, i32* %arrayidx7.11, align 4
  %add8.11 = add nsw i32 %81, %78
  store i32 %add8.11, i32* %arrayidx7.11, align 4
  %82 = shl nsw i64 %indvars.iv, 4
  %83 = add nuw nsw i64 %82, 13
  %84 = add nsw i64 %83, -1
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %84
  %85 = load i32, i32* %arrayidx.12, align 4
  %86 = shl nsw i64 %indvars.iv, 4
  %87 = add nuw nsw i64 %86, 13
  %arrayidx7.12 = getelementptr inbounds i32, i32* %bucket, i64 %87
  %88 = load i32, i32* %arrayidx7.12, align 4
  %add8.12 = add nsw i32 %88, %85
  store i32 %add8.12, i32* %arrayidx7.12, align 4
  %89 = shl nsw i64 %indvars.iv, 4
  %90 = add nuw nsw i64 %89, 14
  %91 = add nsw i64 %90, -1
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %91
  %92 = load i32, i32* %arrayidx.13, align 4
  %93 = shl nsw i64 %indvars.iv, 4
  %94 = add nuw nsw i64 %93, 14
  %arrayidx7.13 = getelementptr inbounds i32, i32* %bucket, i64 %94
  %95 = load i32, i32* %arrayidx7.13, align 4
  %add8.13 = add nsw i32 %95, %92
  store i32 %add8.13, i32* %arrayidx7.13, align 4
  %96 = shl nsw i64 %indvars.iv, 4
  %97 = add nuw nsw i64 %96, 15
  %98 = add nsw i64 %97, -1
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %98
  %99 = load i32, i32* %arrayidx.14, align 4
  %100 = shl nsw i64 %indvars.iv, 4
  %101 = add nuw nsw i64 %100, 15
  %arrayidx7.14 = getelementptr inbounds i32, i32* %bucket, i64 %101
  %102 = load i32, i32* %arrayidx7.14, align 4
  %add8.14 = add nsw i32 %102, %99
  store i32 %add8.14, i32* %arrayidx7.14, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 524288
  br i1 %exitcond, label %for.body, label %for.end11, !llvm.loop !2

for.end11:                                        ; preds = %for.body3
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
  %2 = shl nsw i64 %indvars.iv, 4
  %3 = add nsw i64 %2, -1
  %arrayidx4 = getelementptr inbounds i32, i32* %bucket, i64 %3
  %4 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %1, %4
  %arrayidx6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  store i32 %add, i32* %arrayidx6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 524288
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !4

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @last_step_scan(i32* %bucket, i32* %bucket2, i32* %sum) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc11
  %indvars.iv5 = phi i64 [ 0, %entry ], [ %indvars.iv.next6, %for.inc11 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv5, 4
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv5
  %3 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %2, %3
  %4 = shl nsw i64 %indvars.iv5, 4
  %5 = add nuw nsw i64 %4, %indvars.iv
  %arrayidx10 = getelementptr inbounds i32, i32* %bucket2, i64 %5
  store i32 %add6, i32* %arrayidx10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 16
  br i1 %exitcond, label %for.body3, label %for.inc11, !llvm.loop !5

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next6, 524288
  br i1 %exitcond10, label %for.body, label %for.end13, !llvm.loop !6

for.end13:                                        ; preds = %for.inc11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pp_scan(i32* %bucket, i32* %bucket2, i32* %sum) #0 {
entry:
  call void @local_scan(i32* %bucket)
  call void @sum_scan(i32* %sum, i32* %bucket)
  call void @last_step_scan(i32* %bucket, i32* %bucket2, i32* %sum)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %sum = alloca [524288 x i32], align 16
  %call = call noalias dereferenceable_or_null(33554432) i8* @malloc(i64 33554432) #4
  %0 = bitcast i8* %call to i32*
  %call1 = call noalias dereferenceable_or_null(33554432) i8* @malloc(i64 33554432) #4
  %1 = bitcast i8* %call1 to i32*
  call void @srand(i32 8650341) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %call2 = call i32 @rand() #4
  %conv = sitofp i32 %call2 to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  %mul = fmul double %div, 2.048000e+03
  %add = fadd double %mul, 0.000000e+00
  %conv5 = fptosi double %add to i32
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %conv5, i32* %arrayidx, align 4
  %call6 = call i32 @rand() #4
  %conv7 = sitofp i32 %call6 to double
  %div8 = fdiv double %conv7, 0x41DFFFFFFFC00000
  %mul11 = fmul double %div8, 2.048000e+03
  %add13 = fadd double %mul11, 0.000000e+00
  %conv14 = fptosi double %add13 to i32
  %arrayidx16 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv
  store i32 %conv14, i32* %arrayidx16, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 8388608
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  call void @print(i32* %0, i32 1)
  %putchar = call i32 @putchar(i32 10)
  %arraydecay = getelementptr inbounds [524288 x i32], [524288 x i32]* %sum, i64 0, i64 0
  call void @pp_scan(i32* %0, i32* %1, i32* nonnull %arraydecay)
  call void @print(i32* %0, i32 2)
  %putchar2 = call i32 @putchar(i32 10)
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
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
