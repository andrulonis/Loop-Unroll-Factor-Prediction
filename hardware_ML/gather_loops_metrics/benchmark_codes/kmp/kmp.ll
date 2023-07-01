; ModuleID = 'kmp.ll'
source_filename = "kmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @CPF(i8* %pattern, i32* %kmpNext) #0 {
entry:
  store i32 0, i32* %kmpNext, align 4
  br label %for.body

for.body:                                         ; preds = %entry, %while.end
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %while.end ]
  %k.01 = phi i32 [ 0, %entry ], [ %spec.select, %while.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %k.1 = phi i32 [ %k.01, %for.body ], [ %2, %while.body ]
  %cmp1 = icmp sgt i32 %k.1, 0
  br i1 %cmp1, label %land.rhs, label %while.end

land.rhs:                                         ; preds = %while.cond
  %idxprom = sext i32 %k.1 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %pattern, i64 %idxprom
  %0 = load i8, i8* %arrayidx2, align 1
  %arrayidx4 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx4, align 1
  %cmp6 = icmp ne i8 %0, %1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  %arrayidx9 = getelementptr inbounds i32, i32* %kmpNext, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx9, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond, %land.rhs
  %k.1.lcssa = phi i32 [ %k.1, %while.cond ], [ %k.1, %land.rhs ]
  %idxprom10 = sext i32 %k.1.lcssa to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %pattern, i64 %idxprom10
  %3 = load i8, i8* %arrayidx11, align 1
  %arrayidx14 = getelementptr inbounds i8, i8* %pattern, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx14, align 1
  %cmp16 = icmp eq i8 %3, %4
  %inc = add nsw i32 %k.1.lcssa, 1
  %spec.select = select i1 %cmp16, i32 %inc, i32 %k.1.lcssa
  %arrayidx19 = getelementptr inbounds i32, i32* %kmpNext, i64 %indvars.iv
  store i32 %spec.select, i32* %arrayidx19, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          ; preds = %while.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kmp(i8* %host_input, i32* %host_n_matches, i8* %pattern, i8* %input, i32* %kmpNext, i32* %n_matches) #0 {
entry:
  store i32 0, i32* %host_n_matches, align 4
  call void @CPF(i8* %pattern, i32* %kmpNext)
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %q.02 = phi i32 [ 0, %entry ], [ %q.3, %for.inc ]
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %q.1 = phi i32 [ %q.02, %for.body ], [ %3, %while.body ]
  %cmp1 = icmp sgt i32 %q.1, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %idxprom = sext i32 %q.1 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %pattern, i64 %idxprom
  %0 = load i8, i8* %arrayidx2, align 1
  %arrayidx4 = getelementptr inbounds i8, i8* %host_input, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx4, align 1
  %cmp6 = icmp ne i8 %0, %1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  %idxprom8 = sext i32 %q.1 to i64
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %arrayidx9 = getelementptr inbounds i32, i32* %kmpNext, i64 %idxprom8
  %3 = load i32, i32* %arrayidx9, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %idxprom8.lcssa = phi i64 [ %idxprom8, %land.end ]
  %q.1.lcssa = phi i32 [ %q.1, %land.end ]
  %arrayidx11 = getelementptr inbounds i8, i8* %pattern, i64 %idxprom8.lcssa
  %4 = load i8, i8* %arrayidx11, align 1
  %arrayidx14 = getelementptr inbounds i8, i8* %host_input, i64 %indvars.iv
  %5 = load i8, i8* %arrayidx14, align 1
  %cmp16 = icmp eq i8 %4, %5
  %inc = add nsw i32 %q.1.lcssa, 1
  %spec.select = select i1 %cmp16, i32 %inc, i32 %q.1.lcssa
  %cmp18 = icmp sgt i32 %spec.select, 3
  br i1 %cmp18, label %if.then20, label %for.inc

if.then20:                                        ; preds = %while.end
  %6 = load i32, i32* %host_n_matches, align 4
  %inc22 = add nsw i32 %6, 1
  store i32 %inc22, i32* %host_n_matches, align 4
  %sub = add nsw i32 %spec.select, -1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %kmpNext, i64 %idxprom23
  %7 = load i32, i32* %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then20
  %q.3 = phi i32 [ %7, %if.then20 ], [ %spec.select, %while.end ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 32411
  br i1 %exitcond, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
