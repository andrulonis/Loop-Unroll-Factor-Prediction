; ModuleID = 'spmv.ll'
source_filename = "spmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @ellpack(double* %host_nzval, i32* %host_cols, double* %host_vec, double* %host_out, double* %nzval, i32* %cols, double* %vec, double* %out) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv6 = phi i64 [ 0, %entry ], [ %indvars.iv.next7, %for.end ]
  %arrayidx = getelementptr inbounds double, double* %host_out, i64 %indvars.iv6
  %0 = load double, double* %arrayidx, align 8
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %sum.02 = phi double [ %0, %for.body ], [ %add13, %for.body3 ]
  %1 = mul nuw nsw i64 %indvars.iv6, 10
  %2 = add nuw nsw i64 %indvars.iv, %1
  %arrayidx5 = getelementptr inbounds double, double* %host_nzval, i64 %2
  %3 = load double, double* %arrayidx5, align 8
  %4 = mul nuw nsw i64 %indvars.iv6, 10
  %5 = add nuw nsw i64 %indvars.iv, %4
  %arrayidx9 = getelementptr inbounds i32, i32* %host_cols, i64 %5
  %6 = load i32, i32* %arrayidx9, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds double, double* %host_vec, i64 %idxprom10
  %7 = load double, double* %arrayidx11, align 8
  %mul12 = fmul double %3, %7
  %add13 = fadd double %sum.02, %mul12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 10
  br i1 %exitcond, label %for.body3, label %for.end

for.end:                                          ; preds = %for.body3
  %add13.lcssa = phi double [ %add13, %for.body3 ]
  %arrayidx15 = getelementptr inbounds double, double* %host_out, i64 %indvars.iv6
  store double %add13.lcssa, double* %arrayidx15, align 8
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next7, 494
  br i1 %exitcond10, label %for.body, label %for.end18

for.end18:                                        ; preds = %for.end
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
