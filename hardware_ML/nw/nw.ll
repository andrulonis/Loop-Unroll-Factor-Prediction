; ModuleID = 'nw.ll'
source_filename = "nw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @needwun(i8* %host_SEQA, i8* %host_SEQB, i8* %host_alignedA, i8* %host_alignedB, i8* %SEQA, i8* %SEQB, i8* %alignedA, i8* %alignedB, i32* %M, i8* %ptr) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv37 = phi i64 [ 0, %entry ], [ %indvars.iv.next38, %for.body ]
  %0 = sub nsw i64 0, %indvars.iv37
  %arrayidx = getelementptr inbounds i32, i32* %M, i64 %indvars.iv37
  %1 = trunc i64 %0 to i32
  store i32 %1, i32* %arrayidx, align 4
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond40 = icmp ne i64 %indvars.iv.next38, 129
  br i1 %exitcond40, label %for.body, label %for.body3.preheader

for.body3.preheader:                              ; preds = %for.body
  br label %for.body3

for.body3:                                        ; preds = %for.body3.preheader, %for.body3
  %indvars.iv32 = phi i64 [ 0, %for.body3.preheader ], [ %indvars.iv.next33, %for.body3 ]
  %2 = sub nsw i64 0, %indvars.iv32
  %3 = mul nuw nsw i64 %indvars.iv32, 129
  %arrayidx7 = getelementptr inbounds i32, i32* %M, i64 %3
  %4 = trunc i64 %2 to i32
  store i32 %4, i32* %arrayidx7, align 4
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond36 = icmp ne i64 %indvars.iv.next33, 129
  br i1 %exitcond36, label %for.body3, label %for.body13.preheader

for.body13.preheader:                             ; preds = %for.body3
  br label %for.body13

for.body13:                                       ; preds = %for.body13.preheader, %for.inc80
  %indvars.iv26 = phi i64 [ 1, %for.body13.preheader ], [ %indvars.iv.next27, %for.inc80 ]
  br label %for.body16

for.body16:                                       ; preds = %for.body13, %for.inc77
  %indvars.iv15 = phi i64 [ 1, %for.body13 ], [ %indvars.iv.next16, %for.inc77 ]
  %5 = add nsw i64 %indvars.iv15, -1
  %arrayidx18 = getelementptr inbounds i8, i8* %host_SEQA, i64 %5
  %6 = load i8, i8* %arrayidx18, align 1
  %7 = add nsw i64 %indvars.iv26, -1
  %arrayidx21 = getelementptr inbounds i8, i8* %host_SEQB, i64 %7
  %8 = load i8, i8* %arrayidx21, align 1
  %cmp23 = icmp eq i8 %6, %8
  %. = select i1 %cmp23, i32 1, i32 -1
  %9 = mul nuw nsw i64 %indvars.iv26, 129
  %10 = add nsw i64 %9, -129
  %11 = mul nuw nsw i64 %indvars.iv26, 129
  %12 = add nsw i64 %indvars.iv15, -1
  %13 = add nuw nsw i64 %10, %12
  %arrayidx30 = getelementptr inbounds i32, i32* %M, i64 %13
  %14 = load i32, i32* %arrayidx30, align 4
  %add31 = add nsw i32 %14, %.
  %15 = add nuw nsw i64 %10, %indvars.iv15
  %arrayidx34 = getelementptr inbounds i32, i32* %M, i64 %15
  %16 = load i32, i32* %arrayidx34, align 4
  %add35 = add nsw i32 %16, -1
  %17 = add nsw i64 %indvars.iv15, -1
  %18 = add nuw nsw i64 %11, %17
  %arrayidx39 = getelementptr inbounds i32, i32* %M, i64 %18
  %19 = load i32, i32* %arrayidx39, align 4
  %add40 = add nsw i32 %19, -1
  %cmp41 = icmp sgt i32 %16, %19
  %cond = select i1 %cmp41, i32 %add35, i32 %add40
  %cmp43 = icmp sgt i32 %add31, %cond
  %cmp47 = icmp sgt i32 %16, %19
  %add35.add40 = select i1 %cmp47, i32 %add35, i32 %add40
  %cond54 = select i1 %cmp43, i32 %add31, i32 %add35.add40
  %20 = add nuw nsw i64 %11, %indvars.iv15
  %arrayidx57 = getelementptr inbounds i32, i32* %M, i64 %20
  store i32 %cond54, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %cond54, %add40
  br i1 %cmp58, label %if.then60, label %if.else64

if.then60:                                        ; preds = %for.body16
  %21 = add nuw nsw i64 %11, %indvars.iv15
  %arrayidx63 = getelementptr inbounds i8, i8* %ptr, i64 %21
  store i8 60, i8* %arrayidx63, align 1
  br label %for.inc77

if.else64:                                        ; preds = %for.body16
  %cmp65 = icmp eq i32 %cond54, %add35
  %22 = add nuw nsw i64 %11, %indvars.iv15
  %arrayidx70 = getelementptr inbounds i8, i8* %ptr, i64 %22
  br i1 %cmp65, label %if.then67, label %if.else71

if.then67:                                        ; preds = %if.else64
  store i8 94, i8* %arrayidx70, align 1
  br label %for.inc77

if.else71:                                        ; preds = %if.else64
  store i8 92, i8* %arrayidx70, align 1
  br label %for.inc77

for.inc77:                                        ; preds = %if.then60, %if.else71, %if.then67
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond = icmp ne i64 %indvars.iv.next16, 129
  br i1 %exitcond, label %for.body16, label %for.inc80

for.inc80:                                        ; preds = %for.inc77
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond31 = icmp ne i64 %indvars.iv.next27, 129
  br i1 %exitcond31, label %for.body13, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc80
  %a_idx.2.ph = phi i32 [ 128, %for.inc80 ]
  %b_idx.2.ph = phi i32 [ 128, %for.inc80 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end138
  %indvars.iv13 = phi i64 [ 0, %while.cond.preheader ], [ %indvars.iv.next14, %if.end138 ]
  %a_idx.2 = phi i32 [ %a_idx.4, %if.end138 ], [ %a_idx.2.ph, %while.cond.preheader ]
  %b_idx.2 = phi i32 [ %b_idx.4, %if.end138 ], [ %b_idx.2.ph, %while.cond.preheader ]
  %cmp83 = icmp sgt i32 %a_idx.2, 0
  %cmp85 = icmp sgt i32 %b_idx.2, 0
  %spec.select = select i1 %cmp83, i1 true, i1 %cmp85
  br i1 %spec.select, label %while.body, label %pad_a

while.body:                                       ; preds = %while.cond
  %mul87 = mul nsw i32 %b_idx.2, 129
  %add88 = add nsw i32 %mul87, %a_idx.2
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i8, i8* %ptr, i64 %idxprom89
  %23 = load i8, i8* %arrayidx90, align 1
  %cmp92 = icmp eq i8 %23, 92
  br i1 %cmp92, label %if.then94, label %if.else108

if.then94:                                        ; preds = %while.body
  %sub95 = add nsw i32 %a_idx.2, -1
  %idxprom96 = sext i32 %sub95 to i64
  %arrayidx97 = getelementptr inbounds i8, i8* %host_SEQA, i64 %idxprom96
  %24 = load i8, i8* %arrayidx97, align 1
  %arrayidx100 = getelementptr inbounds i8, i8* %host_alignedA, i64 %indvars.iv13
  store i8 %24, i8* %arrayidx100, align 1
  %sub101 = add nsw i32 %b_idx.2, -1
  %idxprom102 = sext i32 %sub101 to i64
  %arrayidx103 = getelementptr inbounds i8, i8* %host_SEQB, i64 %idxprom102
  %25 = load i8, i8* %arrayidx103, align 1
  %arrayidx106 = getelementptr inbounds i8, i8* %host_alignedB, i64 %indvars.iv13
  store i8 %25, i8* %arrayidx106, align 1
  %dec = add nsw i32 %a_idx.2, -1
  %dec107 = add nsw i32 %b_idx.2, -1
  br label %if.end138

if.else108:                                       ; preds = %while.body
  %add109 = add nsw i32 %mul87, %a_idx.2
  %idxprom110 = sext i32 %add109 to i64
  %arrayidx111 = getelementptr inbounds i8, i8* %ptr, i64 %idxprom110
  %26 = load i8, i8* %arrayidx111, align 1
  %cmp113 = icmp eq i8 %26, 60
  br i1 %cmp113, label %if.then115, label %if.else126

if.then115:                                       ; preds = %if.else108
  %sub116 = add nsw i32 %a_idx.2, -1
  %idxprom117 = sext i32 %sub116 to i64
  %arrayidx118 = getelementptr inbounds i8, i8* %host_SEQA, i64 %idxprom117
  %27 = load i8, i8* %arrayidx118, align 1
  %arrayidx121 = getelementptr inbounds i8, i8* %host_alignedA, i64 %indvars.iv13
  store i8 %27, i8* %arrayidx121, align 1
  %arrayidx124 = getelementptr inbounds i8, i8* %host_alignedB, i64 %indvars.iv13
  store i8 45, i8* %arrayidx124, align 1
  %dec125 = add nsw i32 %a_idx.2, -1
  br label %if.end138

if.else126:                                       ; preds = %if.else108
  %arrayidx129 = getelementptr inbounds i8, i8* %host_alignedA, i64 %indvars.iv13
  store i8 45, i8* %arrayidx129, align 1
  %sub130 = add nsw i32 %b_idx.2, -1
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds i8, i8* %host_SEQB, i64 %idxprom131
  %28 = load i8, i8* %arrayidx132, align 1
  %arrayidx135 = getelementptr inbounds i8, i8* %host_alignedB, i64 %indvars.iv13
  store i8 %28, i8* %arrayidx135, align 1
  %dec136 = add nsw i32 %b_idx.2, -1
  br label %if.end138

if.end138:                                        ; preds = %if.then115, %if.else126, %if.then94
  %a_idx.4 = phi i32 [ %dec, %if.then94 ], [ %dec125, %if.then115 ], [ %a_idx.2, %if.else126 ]
  %b_idx.4 = phi i32 [ %dec107, %if.then94 ], [ %b_idx.2, %if.then115 ], [ %dec136, %if.else126 ]
  %indvars.iv.next14 = add nuw i64 %indvars.iv13, 1
  br label %while.cond

pad_a:                                            ; preds = %while.cond
  %a_str_idx.0.lcssa.wide = phi i64 [ %indvars.iv13, %while.cond ]
  %b_str_idx.0.lcssa.wide = phi i64 [ %indvars.iv13, %while.cond ]
  %29 = trunc i64 %b_str_idx.0.lcssa.wide to i32
  %30 = trunc i64 %a_str_idx.0.lcssa.wide to i32
  %cmp1403 = icmp ult i32 %30, 256
  br i1 %cmp1403, label %for.body142.preheader, label %pad_b

for.body142.preheader:                            ; preds = %pad_a
  %31 = zext i32 %30 to i64
  br label %for.body142

for.body142:                                      ; preds = %for.body142.preheader, %for.body142
  %indvars.iv11 = phi i64 [ %31, %for.body142.preheader ], [ %indvars.iv.next12, %for.body142 ]
  %arrayidx144 = getelementptr inbounds i8, i8* %host_alignedA, i64 %indvars.iv11
  store i8 95, i8* %arrayidx144, align 1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %cmp140 = icmp ult i64 %indvars.iv11, 255
  br i1 %cmp140, label %for.body142, label %pad_b.loopexit

pad_b.loopexit:                                   ; preds = %for.body142
  br label %pad_b

pad_b:                                            ; preds = %pad_b.loopexit, %pad_a
  %cmp1491 = icmp ult i32 %29, 256
  br i1 %cmp1491, label %for.body151.preheader, label %for.end156

for.body151.preheader:                            ; preds = %pad_b
  %32 = zext i32 %29 to i64
  br label %for.body151

for.body151:                                      ; preds = %for.body151.preheader, %for.body151
  %indvars.iv = phi i64 [ %32, %for.body151.preheader ], [ %indvars.iv.next, %for.body151 ]
  %arrayidx153 = getelementptr inbounds i8, i8* %host_alignedB, i64 %indvars.iv
  store i8 95, i8* %arrayidx153, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp149 = icmp ult i64 %indvars.iv, 255
  br i1 %cmp149, label %for.body151, label %for.end156.loopexit

for.end156.loopexit:                              ; preds = %for.body151
  br label %for.end156

for.end156:                                       ; preds = %for.end156.loopexit, %pad_b
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
