; ModuleID = 'fft.ll'
source_filename = "fft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft(double* %host_real, double* %host_img, double* %host_real_twid, double* %host_img_twid, double* %real, double* %img, double* %real_twid, double* %img_twid) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc53, %entry
  %log.05 = phi i32 [ 0, %entry ], [ %inc54, %for.inc53 ]
  %span.03 = phi i32 [ 512, %entry ], [ %shr, %for.inc53 ]
  %cmp1 = icmp slt i32 %span.03, 1024
  br i1 %cmp1, label %for.body2.preheader, label %for.inc53

for.body2.preheader:                              ; preds = %for.body
  br label %for.body2

for.body2:                                        ; preds = %for.body2.preheader, %for.inc
  %odd.02 = phi i32 [ %inc, %for.inc ], [ %span.03, %for.body2.preheader ]
  %or = or i32 %odd.02, %span.03
  %xor = xor i32 %or, %span.03
  %idxprom = sext i32 %xor to i64
  %arrayidx = getelementptr inbounds double, double* %host_real, i64 %idxprom
  %0 = load double, double* %arrayidx, align 8
  %idxprom3 = sext i32 %or to i64
  %arrayidx4 = getelementptr inbounds double, double* %host_real, i64 %idxprom3
  %1 = load double, double* %arrayidx4, align 8
  %add = fadd double %0, %1
  %idxprom5 = sext i32 %xor to i64
  %arrayidx6 = getelementptr inbounds double, double* %host_real, i64 %idxprom5
  %2 = load double, double* %arrayidx6, align 8
  %idxprom7 = sext i32 %or to i64
  %arrayidx8 = getelementptr inbounds double, double* %host_real, i64 %idxprom7
  %3 = load double, double* %arrayidx8, align 8
  %sub = fsub double %2, %3
  %idxprom9 = sext i32 %or to i64
  %arrayidx10 = getelementptr inbounds double, double* %host_real, i64 %idxprom9
  store double %sub, double* %arrayidx10, align 8
  %idxprom11 = sext i32 %xor to i64
  %arrayidx12 = getelementptr inbounds double, double* %host_real, i64 %idxprom11
  store double %add, double* %arrayidx12, align 8
  %idxprom13 = sext i32 %xor to i64
  %arrayidx14 = getelementptr inbounds double, double* %host_img, i64 %idxprom13
  %4 = load double, double* %arrayidx14, align 8
  %idxprom15 = sext i32 %or to i64
  %arrayidx16 = getelementptr inbounds double, double* %host_img, i64 %idxprom15
  %5 = load double, double* %arrayidx16, align 8
  %add17 = fadd double %4, %5
  %idxprom18 = sext i32 %xor to i64
  %arrayidx19 = getelementptr inbounds double, double* %host_img, i64 %idxprom18
  %6 = load double, double* %arrayidx19, align 8
  %idxprom20 = sext i32 %or to i64
  %arrayidx21 = getelementptr inbounds double, double* %host_img, i64 %idxprom20
  %7 = load double, double* %arrayidx21, align 8
  %sub22 = fsub double %6, %7
  %idxprom23 = sext i32 %or to i64
  %arrayidx24 = getelementptr inbounds double, double* %host_img, i64 %idxprom23
  store double %sub22, double* %arrayidx24, align 8
  %idxprom25 = sext i32 %xor to i64
  %arrayidx26 = getelementptr inbounds double, double* %host_img, i64 %idxprom25
  store double %add17, double* %arrayidx26, align 8
  %shl = shl i32 %xor, %log.05
  %and = and i32 %shl, 1023
  %tobool27 = icmp eq i32 %and, 0
  br i1 %tobool27, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body2
  %idxprom28 = zext i32 %and to i64
  %arrayidx29 = getelementptr inbounds double, double* %host_real_twid, i64 %idxprom28
  %8 = load double, double* %arrayidx29, align 8
  %idxprom30 = sext i32 %or to i64
  %arrayidx31 = getelementptr inbounds double, double* %host_real, i64 %idxprom30
  %9 = load double, double* %arrayidx31, align 8
  %mul = fmul double %8, %9
  %idxprom32 = zext i32 %and to i64
  %arrayidx33 = getelementptr inbounds double, double* %host_img_twid, i64 %idxprom32
  %10 = load double, double* %arrayidx33, align 8
  %idxprom34 = sext i32 %or to i64
  %arrayidx35 = getelementptr inbounds double, double* %host_img, i64 %idxprom34
  %11 = load double, double* %arrayidx35, align 8
  %mul36 = fmul double %10, %11
  %sub37 = fsub double %mul, %mul36
  %idxprom38 = zext i32 %and to i64
  %arrayidx39 = getelementptr inbounds double, double* %host_real_twid, i64 %idxprom38
  %12 = load double, double* %arrayidx39, align 8
  %idxprom40 = sext i32 %or to i64
  %arrayidx41 = getelementptr inbounds double, double* %host_img, i64 %idxprom40
  %13 = load double, double* %arrayidx41, align 8
  %mul42 = fmul double %12, %13
  %idxprom43 = zext i32 %and to i64
  %arrayidx44 = getelementptr inbounds double, double* %host_img_twid, i64 %idxprom43
  %14 = load double, double* %arrayidx44, align 8
  %idxprom45 = sext i32 %or to i64
  %arrayidx46 = getelementptr inbounds double, double* %host_real, i64 %idxprom45
  %15 = load double, double* %arrayidx46, align 8
  %mul47 = fmul double %14, %15
  %add48 = fadd double %mul42, %mul47
  %idxprom49 = sext i32 %or to i64
  %arrayidx50 = getelementptr inbounds double, double* %host_img, i64 %idxprom49
  store double %add48, double* %arrayidx50, align 8
  %idxprom51 = sext i32 %or to i64
  %arrayidx52 = getelementptr inbounds double, double* %host_real, i64 %idxprom51
  store double %sub37, double* %arrayidx52, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body2
  %inc = add nsw i32 %or, 1
  %cmp = icmp slt i32 %or, 1023
  br i1 %cmp, label %for.body2, label %for.inc53.loopexit

for.inc53.loopexit:                               ; preds = %for.inc
  br label %for.inc53

for.inc53:                                        ; preds = %for.inc53.loopexit, %for.body
  %shr = ashr i32 %span.03, 1
  %inc54 = add nuw nsw i32 %log.05, 1
  %exitcond = icmp eq i32 %inc54, 10
  br i1 %exitcond, label %for.end55, label %for.body

for.end55:                                        ; preds = %for.inc53
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
