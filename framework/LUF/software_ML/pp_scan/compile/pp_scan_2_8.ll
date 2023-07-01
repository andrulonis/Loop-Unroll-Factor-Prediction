; ModuleID = 'pp_scan_2_8.ll'
source_filename = "pp_scan_2_8.c"
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

for.body:                                         ; preds = %for.body.7, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next.7, %for.body.7 ]
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
  %arrayidx1.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx1.1, align 4
  %6 = shl nsw i64 %indvars.iv.next, 4
  %7 = add nsw i64 %6, -1
  %arrayidx4.1 = getelementptr inbounds i32, i32* %bucket, i64 %7
  %8 = load i32, i32* %arrayidx4.1, align 4
  %add.1 = add nsw i32 %5, %8
  %arrayidx6.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next
  store i32 %add.1, i32* %arrayidx6.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx1.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next
  %9 = load i32, i32* %arrayidx1.2, align 4
  %10 = shl nsw i64 %indvars.iv.next.1, 4
  %11 = add nsw i64 %10, -1
  %arrayidx4.2 = getelementptr inbounds i32, i32* %bucket, i64 %11
  %12 = load i32, i32* %arrayidx4.2, align 4
  %add.2 = add nsw i32 %9, %12
  %arrayidx6.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.1
  store i32 %add.2, i32* %arrayidx6.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx1.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.1
  %13 = load i32, i32* %arrayidx1.3, align 4
  %14 = shl nsw i64 %indvars.iv.next.2, 4
  %15 = add nsw i64 %14, -1
  %arrayidx4.3 = getelementptr inbounds i32, i32* %bucket, i64 %15
  %16 = load i32, i32* %arrayidx4.3, align 4
  %add.3 = add nsw i32 %13, %16
  %arrayidx6.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.2
  store i32 %add.3, i32* %arrayidx6.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx1.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.2
  %17 = load i32, i32* %arrayidx1.4, align 4
  %18 = shl nsw i64 %indvars.iv.next.3, 4
  %19 = add nsw i64 %18, -1
  %arrayidx4.4 = getelementptr inbounds i32, i32* %bucket, i64 %19
  %20 = load i32, i32* %arrayidx4.4, align 4
  %add.4 = add nsw i32 %17, %20
  %arrayidx6.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.3
  store i32 %add.4, i32* %arrayidx6.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx1.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.3
  %21 = load i32, i32* %arrayidx1.5, align 4
  %22 = shl nsw i64 %indvars.iv.next.4, 4
  %23 = add nsw i64 %22, -1
  %arrayidx4.5 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx4.5, align 4
  %add.5 = add nsw i32 %21, %24
  %arrayidx6.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.4
  store i32 %add.5, i32* %arrayidx6.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx1.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.4
  %25 = load i32, i32* %arrayidx1.6, align 4
  %26 = shl nsw i64 %indvars.iv.next.5, 4
  %27 = add nsw i64 %26, -1
  %arrayidx4.6 = getelementptr inbounds i32, i32* %bucket, i64 %27
  %28 = load i32, i32* %arrayidx4.6, align 4
  %add.6 = add nsw i32 %25, %28
  %arrayidx6.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.5
  store i32 %add.6, i32* %arrayidx6.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %exitcond.6 = icmp ne i64 %indvars.iv.next.6, 524288
  br i1 %exitcond.6, label %for.body.7, label %for.end, !llvm.loop !5

for.end:                                          ; preds = %for.body
  ret void

for.body.7:                                       ; preds = %for.body
  %arrayidx1.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.5
  %29 = load i32, i32* %arrayidx1.7, align 4
  %30 = shl nsw i64 %indvars.iv.next.6, 4
  %31 = add nsw i64 %30, -1
  %arrayidx4.7 = getelementptr inbounds i32, i32* %bucket, i64 %31
  %32 = load i32, i32* %arrayidx4.7, align 4
  %add.7 = add nsw i32 %29, %32
  %arrayidx6.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.6
  store i32 %add.7, i32* %arrayidx6.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  br label %for.body, !llvm.loop !7
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
  br i1 %exitcond, label %for.body3, label %for.inc11, !llvm.loop !9

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next6, 524288
  br i1 %exitcond10, label %for.body, label %for.end13, !llvm.loop !10

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.count", i32 8}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
