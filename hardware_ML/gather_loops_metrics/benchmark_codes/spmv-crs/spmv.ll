; ModuleID = 'spmv.ll'
source_filename = "spmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @spmv(double* %host_val, i32* %host_cols, i32* %host_rowDelimiters, double* %host_vec, double* %host_out, double* %val, i32* %cols, i32* %rowDelimiters, double* %vec, double* %out) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv5 = phi i64 [ 0, %entry ], [ %indvars.iv.next6, %for.end ]
  %arrayidx = getelementptr inbounds i32, i32* %host_rowDelimiters, i64 %indvars.iv5
  %0 = load i32, i32* %arrayidx, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %arrayidx2 = getelementptr inbounds i32, i32* %host_rowDelimiters, i64 %indvars.iv.next6
  %1 = load i32, i32* %arrayidx2, align 4
  %cmp41 = icmp slt i32 %0, %1
  br i1 %cmp41, label %for.body5.preheader, label %for.end

for.body5.preheader:                              ; preds = %for.body
  %2 = sext i32 %0 to i64
  %wide.trip.count = sext i32 %1 to i64
  br label %for.body5

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %indvars.iv = phi i64 [ %2, %for.body5.preheader ], [ %indvars.iv.next, %for.body5 ]
  %sum.03 = phi double [ %add12, %for.body5 ], [ 0.000000e+00, %for.body5.preheader ]
  %arrayidx7 = getelementptr inbounds double, double* %host_val, i64 %indvars.iv
  %3 = load double, double* %arrayidx7, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %host_cols, i64 %indvars.iv
  %4 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %4 to i64
  %arrayidx11 = getelementptr inbounds double, double* %host_vec, i64 %idxprom10
  %5 = load double, double* %arrayidx11, align 8
  %mul = fmul double %3, %5
  %add12 = fadd double %sum.03, %mul
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body5, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body5
  %sum.0.lcssa.ph = phi double [ %add12, %for.body5 ]
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.body ], [ %sum.0.lcssa.ph, %for.end.loopexit ]
  %arrayidx14 = getelementptr inbounds double, double* %host_out, i64 %indvars.iv5
  store double %sum.0.lcssa, double* %arrayidx14, align 8
  %exitcond7 = icmp ne i64 %indvars.iv.next6, 494
  br i1 %exitcond7, label %for.body, label %for.end17

for.end17:                                        ; preds = %for.end
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
