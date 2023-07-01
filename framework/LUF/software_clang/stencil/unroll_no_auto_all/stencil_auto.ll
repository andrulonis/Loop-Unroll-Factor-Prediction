; ModuleID = 'unroll_no_auto_all/stencil.ll'
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
  %0 = shl nsw i64 %indvars.iv12, 12
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
  %10 = add nuw nsw i64 %1, 4096
  %arrayidx27 = getelementptr inbounds i32, i32* %filter, i64 3
  %11 = load i32, i32* %arrayidx27, align 4
  %arrayidx29 = getelementptr inbounds i32, i32* %orig, i64 %10
  %12 = load i32, i32* %arrayidx29, align 4
  %mul30 = mul nsw i32 %11, %12
  %add31 = add nsw i32 %add22, %mul30
  %13 = add nuw nsw i64 %1, 4097
  %arrayidx35 = getelementptr inbounds i32, i32* %filter, i64 4
  %14 = load i32, i32* %arrayidx35, align 4
  %arrayidx37 = getelementptr inbounds i32, i32* %orig, i64 %13
  %15 = load i32, i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %14, %15
  %add39 = add nsw i32 %add31, %mul38
  %16 = add nuw nsw i64 %1, 4098
  %arrayidx43 = getelementptr inbounds i32, i32* %filter, i64 5
  %17 = load i32, i32* %arrayidx43, align 4
  %arrayidx45 = getelementptr inbounds i32, i32* %orig, i64 %16
  %18 = load i32, i32* %arrayidx45, align 4
  %mul46 = mul nsw i32 %17, %18
  %add47 = add nsw i32 %add39, %mul46
  %19 = add nuw nsw i64 %1, 8192
  %arrayidx52 = getelementptr inbounds i32, i32* %filter, i64 6
  %20 = load i32, i32* %arrayidx52, align 4
  %arrayidx54 = getelementptr inbounds i32, i32* %orig, i64 %19
  %21 = load i32, i32* %arrayidx54, align 4
  %mul55 = mul nsw i32 %20, %21
  %add56 = add nsw i32 %add47, %mul55
  %22 = add nuw nsw i64 %1, 8193
  %arrayidx60 = getelementptr inbounds i32, i32* %filter, i64 7
  %23 = load i32, i32* %arrayidx60, align 4
  %arrayidx62 = getelementptr inbounds i32, i32* %orig, i64 %22
  %24 = load i32, i32* %arrayidx62, align 4
  %mul63 = mul nsw i32 %23, %24
  %add64 = add nsw i32 %add56, %mul63
  %25 = add nuw nsw i64 %1, 8194
  %arrayidx68 = getelementptr inbounds i32, i32* %filter, i64 8
  %26 = load i32, i32* %arrayidx68, align 4
  %arrayidx70 = getelementptr inbounds i32, i32* %orig, i64 %25
  %27 = load i32, i32* %arrayidx70, align 4
  %mul71 = mul nsw i32 %26, %27
  %add72 = add nsw i32 %add64, %mul71
  %arrayidx76 = getelementptr inbounds i32, i32* %sol, i64 %1
  store i32 %add72, i32* %arrayidx76, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4094
  br i1 %exitcond, label %for.body3, label %for.inc78

for.inc78:                                        ; preds = %for.body3
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %exitcond15 = icmp ne i64 %indvars.iv.next13, 4094
  br i1 %exitcond15, label %for.body, label %for.end80

for.end80:                                        ; preds = %for.inc78
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  call void @srand(i32 8650341) #4
  %call = call noalias dereferenceable_or_null(67108864) i8* @malloc(i64 67108864) #4
  %0 = bitcast i8* %call to i32*
  %call1 = call noalias dereferenceable_or_null(67108864) i8* @malloc(i64 67108864) #4
  %1 = bitcast i8* %call1 to i32*
  %call2 = call noalias dereferenceable_or_null(36) i8* @malloc(i64 36) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc17
  %indvars.iv46 = phi i64 [ 0, %entry ], [ %indvars.iv.next47, %for.inc17 ]
  br label %for.body5

for.body5:                                        ; preds = %for.body, %for.body5
  %indvars.iv41 = phi i64 [ 0, %for.body ], [ %indvars.iv.next42, %for.body5 ]
  %call6 = call i32 @rand() #4
  %conv = sitofp i32 %call6 to double
  %mul8 = fmul double %conv, 0x41DFFFFFFF800000
  %div = fdiv double %mul8, 0x41DFFFFFFFC00000
  %add = fadd double %div, 0.000000e+00
  %conv10 = fptosi double %add to i32
  %2 = shl nsw i64 %indvars.iv46, 12
  %3 = add nuw nsw i64 %2, %indvars.iv41
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %3
  store i32 %conv10, i32* %arrayidx, align 4
  %4 = shl nsw i64 %indvars.iv46, 12
  %5 = add nuw nsw i64 %4, %indvars.iv41
  %arrayidx16 = getelementptr inbounds i32, i32* %1, i64 %5
  store i32 0, i32* %arrayidx16, align 4
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond45 = icmp ne i64 %indvars.iv.next42, 4096
  br i1 %exitcond45, label %for.body5, label %for.inc17

for.inc17:                                        ; preds = %for.body5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50 = icmp ne i64 %indvars.iv.next47, 4096
  br i1 %exitcond50, label %for.body, label %for.body23.preheader

for.body23.preheader:                             ; preds = %for.inc17
  %6 = bitcast i8* %call2 to i32*
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader
  br label %for.body27

for.body27:                                       ; preds = %for.body23
  %call28 = call i32 @rand() #4
  %conv29 = sitofp i32 %call28 to double
  %mul33 = fmul double %conv29, 0x41DFFFFFFF800000
  %div34 = fdiv double %mul33, 0x41DFFFFFFFC00000
  %add36 = fadd double %div34, 0.000000e+00
  %conv37 = fptosi double %add36 to i32
  store i32 %conv37, i32* %6, align 4
  %call28.1 = call i32 @rand() #4
  %conv29.1 = sitofp i32 %call28.1 to double
  %mul33.1 = fmul double %conv29.1, 0x41DFFFFFFF800000
  %div34.1 = fdiv double %mul33.1, 0x41DFFFFFFFC00000
  %add36.1 = fadd double %div34.1, 0.000000e+00
  %conv37.1 = fptosi double %add36.1 to i32
  %arrayidx41.1 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 %conv37.1, i32* %arrayidx41.1, align 4
  %call28.2 = call i32 @rand() #4
  %conv29.2 = sitofp i32 %call28.2 to double
  %mul33.2 = fmul double %conv29.2, 0x41DFFFFFFF800000
  %div34.2 = fdiv double %mul33.2, 0x41DFFFFFFFC00000
  %add36.2 = fadd double %div34.2, 0.000000e+00
  %conv37.2 = fptosi double %add36.2 to i32
  %arrayidx41.2 = getelementptr inbounds i32, i32* %6, i64 2
  store i32 %conv37.2, i32* %arrayidx41.2, align 4
  br label %for.body27.1

for.body54:                                       ; preds = %for.body27.2, %for.body58
  %indvars.iv = phi i64 [ 0, %for.body27.2 ], [ %indvars.iv.next, %for.body58 ]
  br label %for.body58

for.body58:                                       ; preds = %for.body54
  %7 = shl nsw i64 %indvars.iv, 12
  %arrayidx62 = getelementptr inbounds i32, i32* %0, i64 %7
  %8 = load i32, i32* %arrayidx62, align 4
  %9 = shl nsw i64 %indvars.iv, 12
  %arrayidx66 = getelementptr inbounds i32, i32* %1, i64 %9
  %10 = load i32, i32* %arrayidx66, align 4
  %11 = trunc i64 %indvars.iv to i32
  %call67 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11, i32 0, i32 %8, i32 %10) #4
  %12 = shl nsw i64 %indvars.iv, 12
  %13 = add nuw nsw i64 %12, 1
  %arrayidx62.1 = getelementptr inbounds i32, i32* %0, i64 %13
  %14 = load i32, i32* %arrayidx62.1, align 4
  %15 = shl nsw i64 %indvars.iv, 12
  %16 = add nuw nsw i64 %15, 1
  %arrayidx66.1 = getelementptr inbounds i32, i32* %1, i64 %16
  %17 = load i32, i32* %arrayidx66.1, align 4
  %18 = trunc i64 %indvars.iv to i32
  %call67.1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18, i32 1, i32 %14, i32 %17) #4
  %19 = shl nsw i64 %indvars.iv, 12
  %20 = add nuw nsw i64 %19, 2
  %arrayidx62.2 = getelementptr inbounds i32, i32* %0, i64 %20
  %21 = load i32, i32* %arrayidx62.2, align 4
  %22 = shl nsw i64 %indvars.iv, 12
  %23 = add nuw nsw i64 %22, 2
  %arrayidx66.2 = getelementptr inbounds i32, i32* %1, i64 %23
  %24 = load i32, i32* %arrayidx66.2, align 4
  %25 = trunc i64 %indvars.iv to i32
  %call67.2 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25, i32 2, i32 %21, i32 %24) #4
  %26 = shl nsw i64 %indvars.iv, 12
  %27 = add nuw nsw i64 %26, 3
  %arrayidx62.3 = getelementptr inbounds i32, i32* %0, i64 %27
  %28 = load i32, i32* %arrayidx62.3, align 4
  %29 = shl nsw i64 %indvars.iv, 12
  %30 = add nuw nsw i64 %29, 3
  %arrayidx66.3 = getelementptr inbounds i32, i32* %1, i64 %30
  %31 = load i32, i32* %arrayidx66.3, align 4
  %32 = trunc i64 %indvars.iv to i32
  %call67.3 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %32, i32 3, i32 %28, i32 %31) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body54, label %for.end73

for.end73:                                        ; preds = %for.body58
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str, i64 0, i64 0))
  ret i32 0

for.body27.1:                                     ; preds = %for.body27
  %call28.127 = call i32 @rand() #4
  %conv29.128 = sitofp i32 %call28.127 to double
  %mul33.129 = fmul double %conv29.128, 0x41DFFFFFFF800000
  %div34.130 = fdiv double %mul33.129, 0x41DFFFFFFFC00000
  %add36.131 = fadd double %div34.130, 0.000000e+00
  %conv37.132 = fptosi double %add36.131 to i32
  %arrayidx41.133 = getelementptr inbounds i32, i32* %6, i64 3
  store i32 %conv37.132, i32* %arrayidx41.133, align 4
  %call28.1.1 = call i32 @rand() #4
  %conv29.1.1 = sitofp i32 %call28.1.1 to double
  %mul33.1.1 = fmul double %conv29.1.1, 0x41DFFFFFFF800000
  %div34.1.1 = fdiv double %mul33.1.1, 0x41DFFFFFFFC00000
  %add36.1.1 = fadd double %div34.1.1, 0.000000e+00
  %conv37.1.1 = fptosi double %add36.1.1 to i32
  %arrayidx41.1.1 = getelementptr inbounds i32, i32* %6, i64 4
  store i32 %conv37.1.1, i32* %arrayidx41.1.1, align 4
  %call28.2.1 = call i32 @rand() #4
  %conv29.2.1 = sitofp i32 %call28.2.1 to double
  %mul33.2.1 = fmul double %conv29.2.1, 0x41DFFFFFFF800000
  %div34.2.1 = fdiv double %mul33.2.1, 0x41DFFFFFFFC00000
  %add36.2.1 = fadd double %div34.2.1, 0.000000e+00
  %conv37.2.1 = fptosi double %add36.2.1 to i32
  %arrayidx41.2.1 = getelementptr inbounds i32, i32* %6, i64 5
  store i32 %conv37.2.1, i32* %arrayidx41.2.1, align 4
  br label %for.body27.2

for.body27.2:                                     ; preds = %for.body27.1
  %call28.234 = call i32 @rand() #4
  %conv29.235 = sitofp i32 %call28.234 to double
  %mul33.236 = fmul double %conv29.235, 0x41DFFFFFFF800000
  %div34.237 = fdiv double %mul33.236, 0x41DFFFFFFFC00000
  %add36.238 = fadd double %div34.237, 0.000000e+00
  %conv37.239 = fptosi double %add36.238 to i32
  %arrayidx41.240 = getelementptr inbounds i32, i32* %6, i64 6
  store i32 %conv37.239, i32* %arrayidx41.240, align 4
  %call28.1.2 = call i32 @rand() #4
  %conv29.1.2 = sitofp i32 %call28.1.2 to double
  %mul33.1.2 = fmul double %conv29.1.2, 0x41DFFFFFFF800000
  %div34.1.2 = fdiv double %mul33.1.2, 0x41DFFFFFFFC00000
  %add36.1.2 = fadd double %div34.1.2, 0.000000e+00
  %conv37.1.2 = fptosi double %add36.1.2 to i32
  %arrayidx41.1.2 = getelementptr inbounds i32, i32* %6, i64 7
  store i32 %conv37.1.2, i32* %arrayidx41.1.2, align 4
  %call28.2.2 = call i32 @rand() #4
  %conv29.2.2 = sitofp i32 %call28.2.2 to double
  %mul33.2.2 = fmul double %conv29.2.2, 0x41DFFFFFFF800000
  %div34.2.2 = fdiv double %mul33.2.2, 0x41DFFFFFFFC00000
  %add36.2.2 = fadd double %div34.2.2, 0.000000e+00
  %conv37.2.2 = fptosi double %add36.2.2 to i32
  %arrayidx41.2.2 = getelementptr inbounds i32, i32* %6, i64 8
  store i32 %conv37.2.2, i32* %arrayidx41.2.2, align 4
  call void @stencil(i32* %0, i32* %1, i32* %6)
  br label %for.body54
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
