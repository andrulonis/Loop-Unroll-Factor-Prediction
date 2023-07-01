; ModuleID = 'sort.ll'
source_filename = "sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @merge(i32* %a, i32 %start, i32 %m, i32 %stop) #0 {
entry:
  %temp = alloca [2048 x i32], align 16
  %cmp8 = icmp sgt i32 %start, %m
  br i1 %cmp8, label %merge_label2, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %0 = sext i32 %start to i64
  %1 = sext i32 %m to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv13 = phi i64 [ %0, %for.body.preheader ], [ %indvars.iv.next14, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv13
  %2 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %indvars.iv13
  store i32 %2, i32* %arrayidx2, align 4
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, 1
  %cmp = icmp slt i64 %indvars.iv13, %1
  br i1 %cmp, label %for.body, label %merge_label2.loopexit

merge_label2.loopexit:                            ; preds = %for.body
  br label %merge_label2

merge_label2:                                     ; preds = %merge_label2.loopexit, %entry
  %cmp46 = icmp slt i32 %m, %stop
  br i1 %cmp46, label %for.body5.preheader, label %merge_label3

for.body5.preheader:                              ; preds = %merge_label2
  %3 = sext i32 %m to i64
  %wide.trip.count = sext i32 %stop to i64
  br label %for.body5

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %indvars.iv10 = phi i64 [ %3, %for.body5.preheader ], [ %indvars.iv.next11, %for.body5 ]
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, 1
  %arrayidx7 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next11
  %4 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %m, 1
  %add9 = add nsw i32 %add8, %stop
  %5 = sext i32 %add9 to i64
  %6 = sub nsw i64 %5, %indvars.iv.next11
  %arrayidx11 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %6
  store i32 %4, i32* %arrayidx11, align 4
  %exitcond = icmp ne i64 %indvars.iv.next11, %wide.trip.count
  br i1 %exitcond, label %for.body5, label %merge_label3.loopexit

merge_label3.loopexit:                            ; preds = %for.body5
  br label %merge_label3

merge_label3:                                     ; preds = %merge_label3.loopexit, %merge_label2
  %cmp161 = icmp sgt i32 %start, %stop
  br i1 %cmp161, label %for.end30, label %for.body17.preheader

for.body17.preheader:                             ; preds = %merge_label3
  %7 = sext i32 %start to i64
  %8 = sext i32 %stop to i64
  br label %for.body17

for.body17:                                       ; preds = %for.body17.preheader, %for.inc28
  %indvars.iv = phi i64 [ %7, %for.body17.preheader ], [ %indvars.iv.next, %for.inc28 ]
  %j.13 = phi i32 [ %j.2, %for.inc28 ], [ %stop, %for.body17.preheader ]
  %i.12 = phi i32 [ %i.2, %for.inc28 ], [ %start, %for.body17.preheader ]
  %idxprom18 = sext i32 %j.13 to i64
  %arrayidx19 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom18
  %9 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = sext i32 %i.12 to i64
  %arrayidx21 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom20
  %10 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp slt i32 %9, %10
  %arrayidx24 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %for.body17
  store i32 %9, i32* %arrayidx24, align 4
  %dec = add nsw i32 %j.13, -1
  br label %for.inc28

if.else:                                          ; preds = %for.body17
  store i32 %10, i32* %arrayidx24, align 4
  %inc27 = add nsw i32 %i.12, 1
  br label %for.inc28

for.inc28:                                        ; preds = %if.then, %if.else
  %i.2 = phi i32 [ %i.12, %if.then ], [ %inc27, %if.else ]
  %j.2 = phi i32 [ %dec, %if.then ], [ %j.13, %if.else ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp16 = icmp slt i64 %indvars.iv, %8
  br i1 %cmp16, label %for.body17, label %for.end30.loopexit

for.end30.loopexit:                               ; preds = %for.inc28
  br label %for.end30

for.end30:                                        ; preds = %for.end30.loopexit, %merge_label3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ms_mergesort(i32* %host_a, i32* %a) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc11
  %m.04 = phi i32 [ 1, %entry ], [ %add12, %for.inc11 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.inc
  %i.01 = phi i32 [ 0, %for.body ], [ %add10, %for.inc ]
  %add = add nsw i32 %i.01, %m.04
  %sub4 = add nsw i32 %add, -1
  %add5 = add nsw i32 %i.01, %m.04
  %add6 = add nsw i32 %add5, %m.04
  %cmp8 = icmp slt i32 %add6, 2049
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %sub7 = add nsw i32 %add6, -1
  call void @merge(i32* %host_a, i32 %i.01, i32 %sub4, i32 %sub7)
  br label %for.inc

if.else:                                          ; preds = %for.body3
  call void @merge(i32* %host_a, i32 %i.01, i32 %sub4, i32 2048)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %add9 = shl nsw i32 %m.04, 1
  %add10 = add nsw i32 %i.01, %add9
  %cmp2 = icmp slt i32 %add10, 2048
  br i1 %cmp2, label %for.body3, label %for.inc11

for.inc11:                                        ; preds = %for.inc
  %add12 = shl nsw i32 %m.04, 1
  %cmp = icmp slt i32 %m.04, 1024
  br i1 %cmp, label %for.body, label %for.end13

for.end13:                                        ; preds = %for.inc11
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
