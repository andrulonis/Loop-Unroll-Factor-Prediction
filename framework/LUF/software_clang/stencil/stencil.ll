; ModuleID = 'stencil.ll'
source_filename = "stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d, %d, %d,%d\0A \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Success!!\0A\00", align 1
@str = private unnamed_addr constant [10 x i8] c"Success!!\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil(i32* %orig, i32* %sol, i32* %filter) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc78
  %indvars.iv12 = phi i64 [ 0, %entry ], [ %indvars.iv.next13, %for.inc78 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv12, 5
  %1 = add nuw nsw i64 %0, %indvars.iv
  %2 = load i32, i32* %filter, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %orig, i64 %1
  %3 = load i32, i32* %arrayidx5, align 4
  %mul6 = mul nsw i32 %2, %3
  %4 = add nuw nsw i64 %1, 1
  %arrayidx10 = getelementptr inbounds i32, i32* %filter, i64 1
  %5 = load i32, i32* %arrayidx10, align 4
  %arrayidx12 = getelementptr inbounds i32, i32* %orig, i64 %4
  %6 = load i32, i32* %arrayidx12, align 4
  %mul13 = mul nsw i32 %5, %6
  %add14 = add nsw i32 %mul6, %mul13
  %7 = add nuw nsw i64 %1, 2
  %arrayidx18 = getelementptr inbounds i32, i32* %filter, i64 2
  %8 = load i32, i32* %arrayidx18, align 4
  %arrayidx20 = getelementptr inbounds i32, i32* %orig, i64 %7
  %9 = load i32, i32* %arrayidx20, align 4
  %mul21 = mul nsw i32 %8, %9
  %add22 = add nsw i32 %add14, %mul21
  %10 = add nuw nsw i64 %1, 32
  %arrayidx27 = getelementptr inbounds i32, i32* %filter, i64 3
  %11 = load i32, i32* %arrayidx27, align 4
  %arrayidx29 = getelementptr inbounds i32, i32* %orig, i64 %10
  %12 = load i32, i32* %arrayidx29, align 4
  %mul30 = mul nsw i32 %11, %12
  %add31 = add nsw i32 %add22, %mul30
  %13 = add nuw nsw i64 %1, 33
  %arrayidx35 = getelementptr inbounds i32, i32* %filter, i64 4
  %14 = load i32, i32* %arrayidx35, align 4
  %arrayidx37 = getelementptr inbounds i32, i32* %orig, i64 %13
  %15 = load i32, i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %14, %15
  %add39 = add nsw i32 %add31, %mul38
  %16 = add nuw nsw i64 %1, 34
  %arrayidx43 = getelementptr inbounds i32, i32* %filter, i64 5
  %17 = load i32, i32* %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds i32, i32* %orig, i64 %16
  %18 = load i32, i32* %arrayidx45, align 4
  %mul46 = mul nsw i32 %17, %18
  %add47 = add nsw i32 %add39, %mul46
  %19 = add nuw nsw i64 %1, 64
  %arrayidx52 = getelementptr inbounds i32, i32* %filter, i64 6
  %20 = load i32, i32* %arrayidx52, align 4
  %arrayidx54 = getelementptr inbounds i32, i32* %orig, i64 %19
  %21 = load i32, i32* %arrayidx54, align 4
  %mul55 = mul nsw i32 %20, %21
  %add56 = add nsw i32 %add47, %mul55
  %22 = add nuw nsw i64 %1, 65
  %arrayidx60 = getelementptr inbounds i32, i32* %filter, i64 7
  %23 = load i32, i32* %arrayidx60, align 4
  %arrayidx62 = getelementptr inbounds i32, i32* %orig, i64 %22
  %24 = load i32, i32* %arrayidx62, align 4
  %mul63 = mul nsw i32 %23, %24
  %add64 = add nsw i32 %add56, %mul63
  %25 = add nuw nsw i64 %1, 66
  %arrayidx68 = getelementptr inbounds i32, i32* %filter, i64 8
  %26 = load i32, i32* %arrayidx68, align 4
  %arrayidx70 = getelementptr inbounds i32, i32* %orig, i64 %25
  %27 = load i32, i32* %arrayidx70, align 4
  %mul71 = mul nsw i32 %26, %27
  %add72 = add nsw i32 %add64, %mul71
  %arrayidx76 = getelementptr inbounds i32, i32* %sol, i64 %1
  store i32 %add72, i32* %arrayidx76, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 30
  br i1 %exitcond, label %for.body3, label %for.inc78

for.inc78:                                        ; preds = %for.body3
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next13, 30
  br i1 %exitcond15, label %for.body, label %for.end80

for.end80:                                        ; preds = %for.inc78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  call void @srand(i32 8650341) #4
  %call = call noalias dereferenceable_or_null(4096) i8* @malloc(i64 4096) #4
  %0 = bitcast i8* %call to i32*
  %call1 = call noalias dereferenceable_or_null(4096) i8* @malloc(i64 4096) #4
  %1 = bitcast i8* %call1 to i32*
  %call2 = call noalias dereferenceable_or_null(36) i8* @malloc(i64 36) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc17
  %indvars.iv27 = phi i64 [ 0, %entry ], [ %indvars.iv.next28, %for.inc17 ]
  br label %for.body5

for.body5:                                        ; preds = %for.body, %for.body5
  %indvars.iv22 = phi i64 [ 0, %for.body ], [ %indvars.iv.next23, %for.body5 ]
  %call6 = call i32 @rand() #4
  %conv = sitofp i32 %call6 to double
  %mul8 = fmul double %conv, 0x41DFFFFFFF800000
  %div = fdiv double %mul8, 0x41DFFFFFFFC00000
  %add = fadd double %div, 0.000000e+00
  %conv10 = fptosi double %add to i32
  %2 = shl nsw i64 %indvars.iv27, 5
  %3 = add nuw nsw i64 %2, %indvars.iv22
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %3
  store i32 %conv10, i32* %arrayidx, align 4
  %4 = shl nsw i64 %indvars.iv27, 5
  %5 = add nuw nsw i64 %4, %indvars.iv22
  %arrayidx16 = getelementptr inbounds i32, i32* %1, i64 %5
  store i32 0, i32* %arrayidx16, align 4
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %exitcond26 = icmp ne i64 %indvars.iv.next23, 32
  br i1 %exitcond26, label %for.body5, label %for.inc17

for.inc17:                                        ; preds = %for.body5
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond31 = icmp ne i64 %indvars.iv.next28, 32
  br i1 %exitcond31, label %for.body, label %for.body23.preheader

for.body23.preheader:                             ; preds = %for.inc17
  %6 = bitcast i8* %call2 to i32*
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %for.inc45
  %indvars.iv18 = phi i64 [ 0, %for.body23.preheader ], [ %indvars.iv.next19, %for.inc45 ]
  br label %for.body27

for.body27:                                       ; preds = %for.body23, %for.body27
  %indvars.iv14 = phi i64 [ 0, %for.body23 ], [ %indvars.iv.next15, %for.body27 ]
  %call28 = call i32 @rand() #4
  %conv29 = sitofp i32 %call28 to double
  %mul33 = fmul double %conv29, 0x41DFFFFFFF800000
  %div34 = fdiv double %mul33, 0x41DFFFFFFFC00000
  %add36 = fadd double %div34, 0.000000e+00
  %conv37 = fptosi double %add36 to i32
  %7 = mul nuw nsw i64 %indvars.iv18, 3
  %8 = add nuw nsw i64 %7, %indvars.iv14
  %arrayidx41 = getelementptr inbounds i32, i32* %6, i64 %8
  store i32 %conv37, i32* %arrayidx41, align 4
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17 = icmp ne i64 %indvars.iv.next15, 3
  br i1 %exitcond17, label %for.body27, label %for.inc45

for.inc45:                                        ; preds = %for.body27
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond21 = icmp ne i64 %indvars.iv.next19, 3
  br i1 %exitcond21, label %for.body23, label %for.end47

for.end47:                                        ; preds = %for.inc45
  call void @stencil(i32* %0, i32* %1, i32* %6)
  br label %for.body54

for.body54:                                       ; preds = %for.end47, %for.inc71
  %indvars.iv9 = phi i64 [ 0, %for.end47 ], [ %indvars.iv.next10, %for.inc71 ]
  br label %for.body58

for.body58:                                       ; preds = %for.body54, %for.body58
  %indvars.iv = phi i64 [ 0, %for.body54 ], [ %indvars.iv.next, %for.body58 ]
  %9 = shl nsw i64 %indvars.iv9, 5
  %10 = add nuw nsw i64 %9, %indvars.iv
  %arrayidx62 = getelementptr inbounds i32, i32* %0, i64 %10
  %11 = load i32, i32* %arrayidx62, align 4
  %12 = shl nsw i64 %indvars.iv9, 5
  %13 = add nuw nsw i64 %12, %indvars.iv
  %arrayidx66 = getelementptr inbounds i32, i32* %1, i64 %13
  %14 = load i32, i32* %arrayidx66, align 4
  %15 = trunc i64 %indvars.iv to i32
  %16 = trunc i64 %indvars.iv9 to i32
  %call67 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %15, i32 %11, i32 %14) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body58, label %for.inc71

for.inc71:                                        ; preds = %for.body58
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next10, 4
  br i1 %exitcond13, label %for.body54, label %for.end73

for.end73:                                        ; preds = %for.inc71
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
