; ModuleID = 'stencil.ll'
source_filename = "stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil(i32* %host_orig, i32* %host_sol, i32* %orig, i32* %sol, i32* %filter) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc29
  %indvars.iv20 = phi i64 [ 0, %entry ], [ %indvars.iv.next21, %for.inc29 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.end21
  %indvars.iv16 = phi i64 [ 0, %for.body ], [ %indvars.iv.next17, %for.end21 ]
  br label %for.body6

for.body6:                                        ; preds = %for.body3, %for.inc19
  %indvars.iv9 = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next10, %for.inc19 ]
  %temp.04 = phi i32 [ 0, %for.body3 ], [ %add18.lcssa, %for.inc19 ]
  br label %for.body9

for.body9:                                        ; preds = %for.body6, %for.body9
  %indvars.iv = phi i64 [ 0, %for.body6 ], [ %indvars.iv.next, %for.body9 ]
  %temp.12 = phi i32 [ %temp.04, %for.body6 ], [ %add18, %for.body9 ]
  %0 = mul nuw nsw i64 %indvars.iv9, 3
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %filter, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %3 = add nuw nsw i64 %indvars.iv20, %indvars.iv9
  %4 = shl nsw i64 %3, 6
  %5 = add nuw nsw i64 %4, %indvars.iv16
  %6 = add nuw nsw i64 %5, %indvars.iv
  %arrayidx16 = getelementptr inbounds i32, i32* %host_orig, i64 %6
  %7 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %2, %7
  %add18 = add nsw i32 %temp.12, %mul17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 3
  br i1 %exitcond, label %for.body9, label %for.inc19

for.inc19:                                        ; preds = %for.body9
  %add18.lcssa = phi i32 [ %add18, %for.body9 ]
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next10, 3
  br i1 %exitcond15, label %for.body6, label %for.end21

for.end21:                                        ; preds = %for.inc19
  %add18.lcssa.lcssa = phi i32 [ %add18.lcssa, %for.inc19 ]
  %8 = shl nsw i64 %indvars.iv20, 6
  %9 = add nuw nsw i64 %8, %indvars.iv16
  %arrayidx25 = getelementptr inbounds i32, i32* %host_sol, i64 %9
  store i32 %add18.lcssa.lcssa, i32* %arrayidx25, align 4
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond19 = icmp ne i64 %indvars.iv.next17, 62
  br i1 %exitcond19, label %for.body3, label %for.inc29

for.inc29:                                        ; preds = %for.end21
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond23 = icmp ne i64 %indvars.iv.next21, 126
  br i1 %exitcond23, label %for.body, label %for.end31

for.end31:                                        ; preds = %for.inc29
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
