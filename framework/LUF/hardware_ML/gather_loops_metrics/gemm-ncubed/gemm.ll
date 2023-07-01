; ModuleID = 'gemm.ll'
source_filename = "gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @gemm(double* %host_m1, double* %host_m2, double* %host_prod, double* %m1, double* %m2, double* %prod) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc19
  %indvars.iv12 = phi i64 [ 0, %entry ], [ %indvars.iv.next13, %for.inc19 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.end
  %indvars.iv8 = phi i64 [ 0, %for.body ], [ %indvars.iv.next9, %for.end ]
  %0 = shl nsw i64 %indvars.iv12, 6
  br label %for.body6

for.body6:                                        ; preds = %for.body3, %for.body6
  %indvars.iv = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next, %for.body6 ]
  %sum.02 = phi double [ 0.000000e+00, %for.body3 ], [ %add12, %for.body6 ]
  %1 = shl nsw i64 %indvars.iv, 6
  %2 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds double, double* %host_m1, i64 %2
  %3 = load double, double* %arrayidx, align 8
  %4 = add nuw nsw i64 %1, %indvars.iv8
  %arrayidx10 = getelementptr inbounds double, double* %host_m2, i64 %4
  %5 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %3, %5
  %add12 = fadd double %sum.02, %mul11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 64
  br i1 %exitcond, label %for.body6, label %for.end

for.end:                                          ; preds = %for.body6
  %add12.lcssa = phi double [ %add12, %for.body6 ]
  %6 = add nuw nsw i64 %0, %indvars.iv8
  %arrayidx15 = getelementptr inbounds double, double* %host_prod, i64 %6
  store double %add12.lcssa, double* %arrayidx15, align 8
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond11 = icmp ne i64 %indvars.iv.next9, 64
  br i1 %exitcond11, label %for.body3, label %for.inc19

for.inc19:                                        ; preds = %for.end
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next13, 64
  br i1 %exitcond15, label %for.body, label %for.end21

for.end21:                                        ; preds = %for.inc19
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
