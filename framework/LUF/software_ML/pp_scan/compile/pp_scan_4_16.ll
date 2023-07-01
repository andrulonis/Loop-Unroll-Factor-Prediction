; ModuleID = 'pp_scan_4_16.ll'
source_filename = "pp_scan_4_16.c"
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

for.body:                                         ; preds = %entry, %for.inc9
  %indvars.iv6 = phi i64 [ 0, %entry ], [ %indvars.iv.next7, %for.inc9 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 1, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv6, 4
  %1 = add nuw nsw i64 %0, %indvars.iv
  %2 = add nsw i64 %1, -1
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %2
  %3 = load i32, i32* %arrayidx, align 4
  %4 = shl nsw i64 %indvars.iv6, 4
  %5 = add nuw nsw i64 %4, %indvars.iv
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %5
  %6 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %6, %3
  store i32 %add8, i32* %arrayidx7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 16
  br i1 %exitcond, label %for.body3, label %for.inc9, !llvm.loop !2

for.inc9:                                         ; preds = %for.body3
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next7, 524288
  br i1 %exitcond10, label %for.body, label %for.end11, !llvm.loop !4

for.end11:                                        ; preds = %for.inc9
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
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !5

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @last_step_scan(i32* %bucket, i32* %bucket2, i32* %sum) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body3 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %0 = shl nsw i64 %indvars.iv, 4
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %1, %2
  %3 = shl nsw i64 %indvars.iv, 4
  %arrayidx10 = getelementptr inbounds i32, i32* %bucket2, i64 %3
  store i32 %add6, i32* %arrayidx10, align 4
  %4 = shl nsw i64 %indvars.iv, 4
  %5 = add nuw nsw i64 %4, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %5
  %6 = load i32, i32* %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %7 = load i32, i32* %arrayidx5.1, align 4
  %add6.1 = add nsw i32 %6, %7
  %8 = shl nsw i64 %indvars.iv, 4
  %9 = add nuw nsw i64 %8, 1
  %arrayidx10.1 = getelementptr inbounds i32, i32* %bucket2, i64 %9
  store i32 %add6.1, i32* %arrayidx10.1, align 4
  %10 = shl nsw i64 %indvars.iv, 4
  %11 = add nuw nsw i64 %10, 2
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %11
  %12 = load i32, i32* %arrayidx.2, align 4
  %arrayidx5.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %13 = load i32, i32* %arrayidx5.2, align 4
  %add6.2 = add nsw i32 %12, %13
  %14 = shl nsw i64 %indvars.iv, 4
  %15 = add nuw nsw i64 %14, 2
  %arrayidx10.2 = getelementptr inbounds i32, i32* %bucket2, i64 %15
  store i32 %add6.2, i32* %arrayidx10.2, align 4
  %16 = shl nsw i64 %indvars.iv, 4
  %17 = add nuw nsw i64 %16, 3
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %17
  %18 = load i32, i32* %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %19 = load i32, i32* %arrayidx5.3, align 4
  %add6.3 = add nsw i32 %18, %19
  %20 = shl nsw i64 %indvars.iv, 4
  %21 = add nuw nsw i64 %20, 3
  %arrayidx10.3 = getelementptr inbounds i32, i32* %bucket2, i64 %21
  store i32 %add6.3, i32* %arrayidx10.3, align 4
  %22 = shl nsw i64 %indvars.iv, 4
  %23 = add nuw nsw i64 %22, 4
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx.4, align 4
  %arrayidx5.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %25 = load i32, i32* %arrayidx5.4, align 4
  %add6.4 = add nsw i32 %24, %25
  %26 = shl nsw i64 %indvars.iv, 4
  %27 = add nuw nsw i64 %26, 4
  %arrayidx10.4 = getelementptr inbounds i32, i32* %bucket2, i64 %27
  store i32 %add6.4, i32* %arrayidx10.4, align 4
  %28 = shl nsw i64 %indvars.iv, 4
  %29 = add nuw nsw i64 %28, 5
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %29
  %30 = load i32, i32* %arrayidx.5, align 4
  %arrayidx5.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %31 = load i32, i32* %arrayidx5.5, align 4
  %add6.5 = add nsw i32 %30, %31
  %32 = shl nsw i64 %indvars.iv, 4
  %33 = add nuw nsw i64 %32, 5
  %arrayidx10.5 = getelementptr inbounds i32, i32* %bucket2, i64 %33
  store i32 %add6.5, i32* %arrayidx10.5, align 4
  %34 = shl nsw i64 %indvars.iv, 4
  %35 = add nuw nsw i64 %34, 6
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %35
  %36 = load i32, i32* %arrayidx.6, align 4
  %arrayidx5.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %37 = load i32, i32* %arrayidx5.6, align 4
  %add6.6 = add nsw i32 %36, %37
  %38 = shl nsw i64 %indvars.iv, 4
  %39 = add nuw nsw i64 %38, 6
  %arrayidx10.6 = getelementptr inbounds i32, i32* %bucket2, i64 %39
  store i32 %add6.6, i32* %arrayidx10.6, align 4
  %40 = shl nsw i64 %indvars.iv, 4
  %41 = add nuw nsw i64 %40, 7
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %41
  %42 = load i32, i32* %arrayidx.7, align 4
  %arrayidx5.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %43 = load i32, i32* %arrayidx5.7, align 4
  %add6.7 = add nsw i32 %42, %43
  %44 = shl nsw i64 %indvars.iv, 4
  %45 = add nuw nsw i64 %44, 7
  %arrayidx10.7 = getelementptr inbounds i32, i32* %bucket2, i64 %45
  store i32 %add6.7, i32* %arrayidx10.7, align 4
  %46 = shl nsw i64 %indvars.iv, 4
  %47 = add nuw nsw i64 %46, 8
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %47
  %48 = load i32, i32* %arrayidx.8, align 4
  %arrayidx5.8 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %49 = load i32, i32* %arrayidx5.8, align 4
  %add6.8 = add nsw i32 %48, %49
  %50 = shl nsw i64 %indvars.iv, 4
  %51 = add nuw nsw i64 %50, 8
  %arrayidx10.8 = getelementptr inbounds i32, i32* %bucket2, i64 %51
  store i32 %add6.8, i32* %arrayidx10.8, align 4
  %52 = shl nsw i64 %indvars.iv, 4
  %53 = add nuw nsw i64 %52, 9
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %53
  %54 = load i32, i32* %arrayidx.9, align 4
  %arrayidx5.9 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %55 = load i32, i32* %arrayidx5.9, align 4
  %add6.9 = add nsw i32 %54, %55
  %56 = shl nsw i64 %indvars.iv, 4
  %57 = add nuw nsw i64 %56, 9
  %arrayidx10.9 = getelementptr inbounds i32, i32* %bucket2, i64 %57
  store i32 %add6.9, i32* %arrayidx10.9, align 4
  %58 = shl nsw i64 %indvars.iv, 4
  %59 = add nuw nsw i64 %58, 10
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %59
  %60 = load i32, i32* %arrayidx.10, align 4
  %arrayidx5.10 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %61 = load i32, i32* %arrayidx5.10, align 4
  %add6.10 = add nsw i32 %60, %61
  %62 = shl nsw i64 %indvars.iv, 4
  %63 = add nuw nsw i64 %62, 10
  %arrayidx10.10 = getelementptr inbounds i32, i32* %bucket2, i64 %63
  store i32 %add6.10, i32* %arrayidx10.10, align 4
  %64 = shl nsw i64 %indvars.iv, 4
  %65 = add nuw nsw i64 %64, 11
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %65
  %66 = load i32, i32* %arrayidx.11, align 4
  %arrayidx5.11 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %67 = load i32, i32* %arrayidx5.11, align 4
  %add6.11 = add nsw i32 %66, %67
  %68 = shl nsw i64 %indvars.iv, 4
  %69 = add nuw nsw i64 %68, 11
  %arrayidx10.11 = getelementptr inbounds i32, i32* %bucket2, i64 %69
  store i32 %add6.11, i32* %arrayidx10.11, align 4
  %70 = shl nsw i64 %indvars.iv, 4
  %71 = add nuw nsw i64 %70, 12
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %71
  %72 = load i32, i32* %arrayidx.12, align 4
  %arrayidx5.12 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %73 = load i32, i32* %arrayidx5.12, align 4
  %add6.12 = add nsw i32 %72, %73
  %74 = shl nsw i64 %indvars.iv, 4
  %75 = add nuw nsw i64 %74, 12
  %arrayidx10.12 = getelementptr inbounds i32, i32* %bucket2, i64 %75
  store i32 %add6.12, i32* %arrayidx10.12, align 4
  %76 = shl nsw i64 %indvars.iv, 4
  %77 = add nuw nsw i64 %76, 13
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %77
  %78 = load i32, i32* %arrayidx.13, align 4
  %arrayidx5.13 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %79 = load i32, i32* %arrayidx5.13, align 4
  %add6.13 = add nsw i32 %78, %79
  %80 = shl nsw i64 %indvars.iv, 4
  %81 = add nuw nsw i64 %80, 13
  %arrayidx10.13 = getelementptr inbounds i32, i32* %bucket2, i64 %81
  store i32 %add6.13, i32* %arrayidx10.13, align 4
  %82 = shl nsw i64 %indvars.iv, 4
  %83 = add nuw nsw i64 %82, 14
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %83
  %84 = load i32, i32* %arrayidx.14, align 4
  %arrayidx5.14 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %85 = load i32, i32* %arrayidx5.14, align 4
  %add6.14 = add nsw i32 %84, %85
  %86 = shl nsw i64 %indvars.iv, 4
  %87 = add nuw nsw i64 %86, 14
  %arrayidx10.14 = getelementptr inbounds i32, i32* %bucket2, i64 %87
  store i32 %add6.14, i32* %arrayidx10.14, align 4
  %88 = shl nsw i64 %indvars.iv, 4
  %89 = add nuw nsw i64 %88, 15
  %arrayidx.15 = getelementptr inbounds i32, i32* %bucket, i64 %89
  %90 = load i32, i32* %arrayidx.15, align 4
  %arrayidx5.15 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %91 = load i32, i32* %arrayidx5.15, align 4
  %add6.15 = add nsw i32 %90, %91
  %92 = shl nsw i64 %indvars.iv, 4
  %93 = add nuw nsw i64 %92, 15
  %arrayidx10.15 = getelementptr inbounds i32, i32* %bucket2, i64 %93
  store i32 %add6.15, i32* %arrayidx10.15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 524288
  br i1 %exitcond, label %for.body, label %for.end13, !llvm.loop !6

for.end13:                                        ; preds = %for.body3
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
