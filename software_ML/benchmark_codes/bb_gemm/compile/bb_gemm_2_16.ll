; ModuleID = 'bb_gemm_2_16.ll'
source_filename = "bb_gemm_2_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bb_gemm(i32* %x, i32* %y, i32* %z) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc20
  %indvars.iv25 = phi i64 [ 0, %entry ], [ %indvars.iv.next26, %for.inc20 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.inc17
  %indvars.iv6 = phi i64 [ 0, %for.body ], [ %indvars.iv.next7, %for.inc17 ]
  %0 = shl nsw i64 %indvars.iv25, 10
  %1 = add nuw nsw i64 %0, %indvars.iv6
  %arrayidx = getelementptr inbounds i32, i32* %x, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next.15, %for.body6 ]
  %3 = shl nsw i64 %indvars.iv6, 10
  %4 = add nuw nsw i64 %3, %indvars.iv
  %arrayidx10 = getelementptr inbounds i32, i32* %y, i64 %4
  %5 = load i32, i32* %arrayidx10, align 4
  %mul11 = mul nsw i32 %2, %5
  %6 = shl nsw i64 %indvars.iv25, 10
  %7 = add nuw nsw i64 %6, %indvars.iv
  %arrayidx15 = getelementptr inbounds i32, i32* %z, i64 %7
  %8 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %8, %mul11
  store i32 %add16, i32* %arrayidx15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = shl nsw i64 %indvars.iv6, 10
  %10 = add nuw nsw i64 %9, %indvars.iv.next
  %arrayidx10.1 = getelementptr inbounds i32, i32* %y, i64 %10
  %11 = load i32, i32* %arrayidx10.1, align 4
  %mul11.1 = mul nsw i32 %2, %11
  %12 = shl nsw i64 %indvars.iv25, 10
  %13 = add nuw nsw i64 %12, %indvars.iv.next
  %arrayidx15.1 = getelementptr inbounds i32, i32* %z, i64 %13
  %14 = load i32, i32* %arrayidx15.1, align 4
  %add16.1 = add nsw i32 %14, %mul11.1
  store i32 %add16.1, i32* %arrayidx15.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %15 = shl nsw i64 %indvars.iv6, 10
  %16 = add nuw nsw i64 %15, %indvars.iv.next.1
  %arrayidx10.2 = getelementptr inbounds i32, i32* %y, i64 %16
  %17 = load i32, i32* %arrayidx10.2, align 4
  %mul11.2 = mul nsw i32 %2, %17
  %18 = shl nsw i64 %indvars.iv25, 10
  %19 = add nuw nsw i64 %18, %indvars.iv.next.1
  %arrayidx15.2 = getelementptr inbounds i32, i32* %z, i64 %19
  %20 = load i32, i32* %arrayidx15.2, align 4
  %add16.2 = add nsw i32 %20, %mul11.2
  store i32 %add16.2, i32* %arrayidx15.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %21 = shl nsw i64 %indvars.iv6, 10
  %22 = add nuw nsw i64 %21, %indvars.iv.next.2
  %arrayidx10.3 = getelementptr inbounds i32, i32* %y, i64 %22
  %23 = load i32, i32* %arrayidx10.3, align 4
  %mul11.3 = mul nsw i32 %2, %23
  %24 = shl nsw i64 %indvars.iv25, 10
  %25 = add nuw nsw i64 %24, %indvars.iv.next.2
  %arrayidx15.3 = getelementptr inbounds i32, i32* %z, i64 %25
  %26 = load i32, i32* %arrayidx15.3, align 4
  %add16.3 = add nsw i32 %26, %mul11.3
  store i32 %add16.3, i32* %arrayidx15.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %27 = shl nsw i64 %indvars.iv6, 10
  %28 = add nuw nsw i64 %27, %indvars.iv.next.3
  %arrayidx10.4 = getelementptr inbounds i32, i32* %y, i64 %28
  %29 = load i32, i32* %arrayidx10.4, align 4
  %mul11.4 = mul nsw i32 %2, %29
  %30 = shl nsw i64 %indvars.iv25, 10
  %31 = add nuw nsw i64 %30, %indvars.iv.next.3
  %arrayidx15.4 = getelementptr inbounds i32, i32* %z, i64 %31
  %32 = load i32, i32* %arrayidx15.4, align 4
  %add16.4 = add nsw i32 %32, %mul11.4
  store i32 %add16.4, i32* %arrayidx15.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %33 = shl nsw i64 %indvars.iv6, 10
  %34 = add nuw nsw i64 %33, %indvars.iv.next.4
  %arrayidx10.5 = getelementptr inbounds i32, i32* %y, i64 %34
  %35 = load i32, i32* %arrayidx10.5, align 4
  %mul11.5 = mul nsw i32 %2, %35
  %36 = shl nsw i64 %indvars.iv25, 10
  %37 = add nuw nsw i64 %36, %indvars.iv.next.4
  %arrayidx15.5 = getelementptr inbounds i32, i32* %z, i64 %37
  %38 = load i32, i32* %arrayidx15.5, align 4
  %add16.5 = add nsw i32 %38, %mul11.5
  store i32 %add16.5, i32* %arrayidx15.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %39 = shl nsw i64 %indvars.iv6, 10
  %40 = add nuw nsw i64 %39, %indvars.iv.next.5
  %arrayidx10.6 = getelementptr inbounds i32, i32* %y, i64 %40
  %41 = load i32, i32* %arrayidx10.6, align 4
  %mul11.6 = mul nsw i32 %2, %41
  %42 = shl nsw i64 %indvars.iv25, 10
  %43 = add nuw nsw i64 %42, %indvars.iv.next.5
  %arrayidx15.6 = getelementptr inbounds i32, i32* %z, i64 %43
  %44 = load i32, i32* %arrayidx15.6, align 4
  %add16.6 = add nsw i32 %44, %mul11.6
  store i32 %add16.6, i32* %arrayidx15.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %45 = shl nsw i64 %indvars.iv6, 10
  %46 = add nuw nsw i64 %45, %indvars.iv.next.6
  %arrayidx10.7 = getelementptr inbounds i32, i32* %y, i64 %46
  %47 = load i32, i32* %arrayidx10.7, align 4
  %mul11.7 = mul nsw i32 %2, %47
  %48 = shl nsw i64 %indvars.iv25, 10
  %49 = add nuw nsw i64 %48, %indvars.iv.next.6
  %arrayidx15.7 = getelementptr inbounds i32, i32* %z, i64 %49
  %50 = load i32, i32* %arrayidx15.7, align 4
  %add16.7 = add nsw i32 %50, %mul11.7
  store i32 %add16.7, i32* %arrayidx15.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %51 = shl nsw i64 %indvars.iv6, 10
  %52 = add nuw nsw i64 %51, %indvars.iv.next.7
  %arrayidx10.8 = getelementptr inbounds i32, i32* %y, i64 %52
  %53 = load i32, i32* %arrayidx10.8, align 4
  %mul11.8 = mul nsw i32 %2, %53
  %54 = shl nsw i64 %indvars.iv25, 10
  %55 = add nuw nsw i64 %54, %indvars.iv.next.7
  %arrayidx15.8 = getelementptr inbounds i32, i32* %z, i64 %55
  %56 = load i32, i32* %arrayidx15.8, align 4
  %add16.8 = add nsw i32 %56, %mul11.8
  store i32 %add16.8, i32* %arrayidx15.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %57 = shl nsw i64 %indvars.iv6, 10
  %58 = add nuw nsw i64 %57, %indvars.iv.next.8
  %arrayidx10.9 = getelementptr inbounds i32, i32* %y, i64 %58
  %59 = load i32, i32* %arrayidx10.9, align 4
  %mul11.9 = mul nsw i32 %2, %59
  %60 = shl nsw i64 %indvars.iv25, 10
  %61 = add nuw nsw i64 %60, %indvars.iv.next.8
  %arrayidx15.9 = getelementptr inbounds i32, i32* %z, i64 %61
  %62 = load i32, i32* %arrayidx15.9, align 4
  %add16.9 = add nsw i32 %62, %mul11.9
  store i32 %add16.9, i32* %arrayidx15.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %63 = shl nsw i64 %indvars.iv6, 10
  %64 = add nuw nsw i64 %63, %indvars.iv.next.9
  %arrayidx10.10 = getelementptr inbounds i32, i32* %y, i64 %64
  %65 = load i32, i32* %arrayidx10.10, align 4
  %mul11.10 = mul nsw i32 %2, %65
  %66 = shl nsw i64 %indvars.iv25, 10
  %67 = add nuw nsw i64 %66, %indvars.iv.next.9
  %arrayidx15.10 = getelementptr inbounds i32, i32* %z, i64 %67
  %68 = load i32, i32* %arrayidx15.10, align 4
  %add16.10 = add nsw i32 %68, %mul11.10
  store i32 %add16.10, i32* %arrayidx15.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %69 = shl nsw i64 %indvars.iv6, 10
  %70 = add nuw nsw i64 %69, %indvars.iv.next.10
  %arrayidx10.11 = getelementptr inbounds i32, i32* %y, i64 %70
  %71 = load i32, i32* %arrayidx10.11, align 4
  %mul11.11 = mul nsw i32 %2, %71
  %72 = shl nsw i64 %indvars.iv25, 10
  %73 = add nuw nsw i64 %72, %indvars.iv.next.10
  %arrayidx15.11 = getelementptr inbounds i32, i32* %z, i64 %73
  %74 = load i32, i32* %arrayidx15.11, align 4
  %add16.11 = add nsw i32 %74, %mul11.11
  store i32 %add16.11, i32* %arrayidx15.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %75 = shl nsw i64 %indvars.iv6, 10
  %76 = add nuw nsw i64 %75, %indvars.iv.next.11
  %arrayidx10.12 = getelementptr inbounds i32, i32* %y, i64 %76
  %77 = load i32, i32* %arrayidx10.12, align 4
  %mul11.12 = mul nsw i32 %2, %77
  %78 = shl nsw i64 %indvars.iv25, 10
  %79 = add nuw nsw i64 %78, %indvars.iv.next.11
  %arrayidx15.12 = getelementptr inbounds i32, i32* %z, i64 %79
  %80 = load i32, i32* %arrayidx15.12, align 4
  %add16.12 = add nsw i32 %80, %mul11.12
  store i32 %add16.12, i32* %arrayidx15.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %81 = shl nsw i64 %indvars.iv6, 10
  %82 = add nuw nsw i64 %81, %indvars.iv.next.12
  %arrayidx10.13 = getelementptr inbounds i32, i32* %y, i64 %82
  %83 = load i32, i32* %arrayidx10.13, align 4
  %mul11.13 = mul nsw i32 %2, %83
  %84 = shl nsw i64 %indvars.iv25, 10
  %85 = add nuw nsw i64 %84, %indvars.iv.next.12
  %arrayidx15.13 = getelementptr inbounds i32, i32* %z, i64 %85
  %86 = load i32, i32* %arrayidx15.13, align 4
  %add16.13 = add nsw i32 %86, %mul11.13
  store i32 %add16.13, i32* %arrayidx15.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %87 = shl nsw i64 %indvars.iv6, 10
  %88 = add nuw nsw i64 %87, %indvars.iv.next.13
  %arrayidx10.14 = getelementptr inbounds i32, i32* %y, i64 %88
  %89 = load i32, i32* %arrayidx10.14, align 4
  %mul11.14 = mul nsw i32 %2, %89
  %90 = shl nsw i64 %indvars.iv25, 10
  %91 = add nuw nsw i64 %90, %indvars.iv.next.13
  %arrayidx15.14 = getelementptr inbounds i32, i32* %z, i64 %91
  %92 = load i32, i32* %arrayidx15.14, align 4
  %add16.14 = add nsw i32 %92, %mul11.14
  store i32 %add16.14, i32* %arrayidx15.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %93 = shl nsw i64 %indvars.iv6, 10
  %94 = add nuw nsw i64 %93, %indvars.iv.next.14
  %arrayidx10.15 = getelementptr inbounds i32, i32* %y, i64 %94
  %95 = load i32, i32* %arrayidx10.15, align 4
  %mul11.15 = mul nsw i32 %2, %95
  %96 = shl nsw i64 %indvars.iv25, 10
  %97 = add nuw nsw i64 %96, %indvars.iv.next.14
  %arrayidx15.15 = getelementptr inbounds i32, i32* %z, i64 %97
  %98 = load i32, i32* %arrayidx15.15, align 4
  %add16.15 = add nsw i32 %98, %mul11.15
  store i32 %add16.15, i32* %arrayidx15.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %exitcond.15 = icmp ne i64 %indvars.iv.next.15, 256
  br i1 %exitcond.15, label %for.body6, label %for.inc17, !llvm.loop !2

for.inc17:                                        ; preds = %for.body6
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond = icmp ne i64 %indvars.iv.next7, 256
  br i1 %exitcond, label %for.body3, label %for.inc20, !llvm.loop !4

for.inc20:                                        ; preds = %for.inc17
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond44 = icmp ne i64 %indvars.iv.next26, 1024
  br i1 %exitcond44, label %for.body, label %for.end22, !llvm.loop !6

for.end22:                                        ; preds = %for.inc20
  ret void
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
!3 = !{!"llvm.loop.unroll.disable"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.unroll.count", i32 1}
!6 = distinct !{!6, !5}
