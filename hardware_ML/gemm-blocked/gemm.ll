; ModuleID = 'gemm.ll'
source_filename = "gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bbgemm(double* %host_m1, double* %host_m2, double* %host_prod, double* %m1, double* %m2, double* %prod) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc36
  %indvars.iv23 = phi i64 [ 0, %entry ], [ %indvars.iv.next24, %for.inc36 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.inc33
  %indvars.iv21 = phi i64 [ 0, %for.body ], [ %indvars.iv.next22, %for.inc33 ]
  br label %for.body6

for.body6:                                        ; preds = %for.body3, %for.inc30
  %indvars.iv17 = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next18, %for.inc30 ]
  br label %for.body9

for.body9:                                        ; preds = %for.body6, %for.inc27
  %indvars.iv10 = phi i64 [ 0, %for.body6 ], [ %indvars.iv.next11, %for.inc27 ]
  %0 = shl nsw i64 %indvars.iv17, 6
  %1 = add nuw nsw i64 %indvars.iv10, %indvars.iv21
  %2 = shl nsw i64 %1, 6
  %3 = add nuw nsw i64 %0, %indvars.iv10
  %4 = add nuw nsw i64 %3, %indvars.iv21
  %arrayidx = getelementptr inbounds double, double* %host_m1, i64 %4
  %5 = load double, double* %arrayidx, align 8
  br label %for.body16

for.body16:                                       ; preds = %for.body9, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next, %for.body16 ]
  %6 = add nuw nsw i64 %2, %indvars.iv
  %7 = add nuw nsw i64 %6, %indvars.iv23
  %arrayidx20 = getelementptr inbounds double, double* %host_m2, i64 %7
  %8 = load double, double* %arrayidx20, align 8
  %mul21 = fmul double %5, %8
  %9 = add nuw nsw i64 %0, %indvars.iv
  %10 = add nuw nsw i64 %9, %indvars.iv23
  %arrayidx25 = getelementptr inbounds double, double* %host_prod, i64 %10
  %11 = load double, double* %arrayidx25, align 8
  %add26 = fadd double %11, %mul21
  store double %add26, double* %arrayidx25, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 8
  br i1 %exitcond, label %for.body16, label %for.inc27

for.inc27:                                        ; preds = %for.body16
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond16 = icmp ne i64 %indvars.iv.next11, 8
  br i1 %exitcond16, label %for.body9, label %for.inc30

for.inc30:                                        ; preds = %for.inc27
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond20 = icmp ne i64 %indvars.iv.next18, 64
  br i1 %exitcond20, label %for.body6, label %for.inc33

for.inc33:                                        ; preds = %for.inc30
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 8
  %cmp2 = icmp ult i64 %indvars.iv21, 56
  br i1 %cmp2, label %for.body3, label %for.inc36

for.inc36:                                        ; preds = %for.inc33
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 8
  %cmp = icmp ult i64 %indvars.iv23, 56
  br i1 %cmp, label %for.body, label %for.end38

for.end38:                                        ; preds = %for.inc36
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
