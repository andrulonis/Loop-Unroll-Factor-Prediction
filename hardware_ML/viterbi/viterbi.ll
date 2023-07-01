; ModuleID = 'viterbi.ll'
source_filename = "viterbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @viterbi(double* %host_init, double* %host_transition, double* %host_emission, i8* %host_path, i8* %obs, double* %init, double* %transition, double* %emission, i8* %path) #0 {
entry:
  %llike = alloca [140 x [64 x double]], align 16
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv31 = phi i64 [ 0, %entry ], [ %indvars.iv.next32, %for.body ]
  %arrayidx = getelementptr inbounds double, double* %host_init, i64 %indvars.iv31
  %0 = load double, double* %arrayidx, align 8
  %mul = shl nuw nsw i64 %indvars.iv31, 6
  %1 = load i8, i8* %obs, align 1
  %conv4 = zext i8 %1 to i64
  %add = add nuw nsw i64 %mul, %conv4
  %arrayidx6 = getelementptr inbounds double, double* %host_emission, i64 %add
  %2 = load double, double* %arrayidx6, align 8
  %add7 = fadd double %0, %2
  %arrayidx10 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 0, i64 %indvars.iv31
  store double %add7, double* %arrayidx10, align 8
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond33 = icmp ne i64 %indvars.iv.next32, 64
  br i1 %exitcond33, label %for.body, label %for.body14.preheader

for.body14.preheader:                             ; preds = %for.body
  br label %for.body14

for.body14:                                       ; preds = %for.body14.preheader, %for.inc78
  %indvars.iv26 = phi i64 [ 1, %for.body14.preheader ], [ %indvars.iv.next27, %for.inc78 ]
  br label %for.body19

for.body19:                                       ; preds = %for.body14, %for.end70
  %indvars.iv23 = phi i64 [ 0, %for.body14 ], [ %indvars.iv.next24, %for.end70 ]
  %3 = add nsw i64 %indvars.iv26, -1
  %arrayidx23 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %3, i64 0
  %4 = load double, double* %arrayidx23, align 16
  %arrayidx29 = getelementptr inbounds double, double* %host_transition, i64 %indvars.iv23
  %5 = load double, double* %arrayidx29, align 8
  %add30 = fadd double %4, %5
  %mul32 = shl nuw nsw i64 %indvars.iv23, 6
  %arrayidx34 = getelementptr inbounds i8, i8* %obs, i64 %indvars.iv26
  %6 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %6 to i64
  %add36 = add nuw nsw i64 %mul32, %conv35
  %arrayidx38 = getelementptr inbounds double, double* %host_emission, i64 %add36
  %7 = load double, double* %arrayidx38, align 8
  %add39 = fadd double %add30, %7
  br label %for.body44

for.body44:                                       ; preds = %for.body19, %for.body44
  %indvars.iv20 = phi i64 [ 1, %for.body19 ], [ %indvars.iv.next21, %for.body44 ]
  %min_p.09 = phi double [ %add39, %for.body19 ], [ %min_p.1, %for.body44 ]
  %8 = add nsw i64 %indvars.iv26, -1
  %arrayidx49 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %8, i64 %indvars.iv20
  %9 = load double, double* %arrayidx49, align 8
  %mul51 = shl nuw nsw i64 %indvars.iv20, 6
  %add53 = add nuw nsw i64 %mul51, %indvars.iv23
  %arrayidx55 = getelementptr inbounds double, double* %host_transition, i64 %add53
  %10 = load double, double* %arrayidx55, align 8
  %add56 = fadd double %9, %10
  %mul58 = shl nuw nsw i64 %indvars.iv23, 6
  %arrayidx60 = getelementptr inbounds i8, i8* %obs, i64 %indvars.iv26
  %11 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %11 to i64
  %add62 = add nuw nsw i64 %mul58, %conv61
  %arrayidx64 = getelementptr inbounds double, double* %host_emission, i64 %add62
  %12 = load double, double* %arrayidx64, align 8
  %add65 = fadd double %add56, %12
  %cmp66 = fcmp olt double %add65, %min_p.09
  %min_p.1 = select i1 %cmp66, double %add65, double %min_p.09
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %exitcond22 = icmp ne i64 %indvars.iv.next21, 64
  br i1 %exitcond22, label %for.body44, label %for.end70

for.end70:                                        ; preds = %for.body44
  %min_p.1.lcssa = phi double [ %min_p.1, %for.body44 ]
  %arrayidx74 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %indvars.iv26, i64 %indvars.iv23
  store double %min_p.1.lcssa, double* %arrayidx74, align 8
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond25 = icmp ne i64 %indvars.iv.next24, 64
  br i1 %exitcond25, label %for.body19, label %for.inc78

for.inc78:                                        ; preds = %for.end70
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond30 = icmp ne i64 %indvars.iv.next27, 140
  br i1 %exitcond30, label %for.body14, label %L_end

L_end:                                            ; preds = %for.inc78
  %arrayidx83 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 139, i64 0
  %13 = load double, double* %arrayidx83, align 16
  br label %for.body88

for.body88:                                       ; preds = %L_end, %for.body88
  %indvars.iv17 = phi i64 [ 1, %L_end ], [ %indvars.iv.next18, %for.body88 ]
  %min_s.06 = phi i8 [ 0, %L_end ], [ %min_s.1, %for.body88 ]
  %min_p.25 = phi double [ %13, %L_end ], [ %min_p.3, %for.body88 ]
  %arrayidx91 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 139, i64 %indvars.iv17
  %14 = load double, double* %arrayidx91, align 8
  %cmp92 = fcmp olt double %14, %min_p.25
  %min_p.3 = select i1 %cmp92, double %14, double %min_p.25
  %15 = trunc i64 %indvars.iv17 to i8
  %min_s.1 = select i1 %cmp92, i8 %15, i8 %min_s.06
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond19 = icmp ne i64 %indvars.iv.next18, 64
  br i1 %exitcond19, label %for.body88, label %for.end98

for.end98:                                        ; preds = %for.body88
  %min_s.1.lcssa = phi i8 [ %min_s.1, %for.body88 ]
  %arrayidx99 = getelementptr inbounds i8, i8* %host_path, i64 139
  store i8 %min_s.1.lcssa, i8* %arrayidx99, align 1
  br label %for.body103

for.body103:                                      ; preds = %for.end98, %for.end143
  %indvars.iv13 = phi i64 [ 138, %for.end98 ], [ %indvars.iv.next14, %for.end143 ]
  %arrayidx107 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %indvars.iv13, i64 0
  %16 = load double, double* %arrayidx107, align 16
  %17 = add nuw nsw i64 %indvars.iv13, 1
  %arrayidx112 = getelementptr inbounds i8, i8* %host_path, i64 %17
  %18 = load i8, i8* %arrayidx112, align 1
  %idxprom115 = zext i8 %18 to i64
  %arrayidx116 = getelementptr inbounds double, double* %host_transition, i64 %idxprom115
  %19 = load double, double* %arrayidx116, align 8
  %add117 = fadd double %16, %19
  br label %for.body122

for.body122:                                      ; preds = %for.body103, %for.body122
  %indvars.iv = phi i64 [ 1, %for.body103 ], [ %indvars.iv.next, %for.body122 ]
  %min_s.22 = phi i8 [ 0, %for.body103 ], [ %min_s.3, %for.body122 ]
  %min_p.41 = phi double [ %add117, %for.body103 ], [ %min_p.5, %for.body122 ]
  %arrayidx126 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %indvars.iv13, i64 %indvars.iv
  %20 = load double, double* %arrayidx126, align 8
  %mul128 = shl nuw nsw i64 %indvars.iv, 6
  %21 = add nuw nsw i64 %indvars.iv13, 1
  %arrayidx131 = getelementptr inbounds i8, i8* %host_path, i64 %21
  %22 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %22 to i64
  %add133 = add nuw nsw i64 %mul128, %conv132
  %arrayidx135 = getelementptr inbounds double, double* %host_transition, i64 %add133
  %23 = load double, double* %arrayidx135, align 8
  %add136 = fadd double %20, %23
  %cmp137 = fcmp olt double %add136, %min_p.41
  %min_p.5 = select i1 %cmp137, double %add136, double %min_p.41
  %24 = trunc i64 %indvars.iv to i8
  %min_s.3 = select i1 %cmp137, i8 %24, i8 %min_s.22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 64
  br i1 %exitcond, label %for.body122, label %for.end143

for.end143:                                       ; preds = %for.body122
  %min_s.3.lcssa = phi i8 [ %min_s.3, %for.body122 ]
  %arrayidx145 = getelementptr inbounds i8, i8* %host_path, i64 %indvars.iv13
  store i8 %min_s.3.lcssa, i8* %arrayidx145, align 1
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, -1
  %cmp101 = icmp ugt i64 %indvars.iv13, 0
  br i1 %cmp101, label %for.body103, label %for.end147

for.end147:                                       ; preds = %for.end143
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
