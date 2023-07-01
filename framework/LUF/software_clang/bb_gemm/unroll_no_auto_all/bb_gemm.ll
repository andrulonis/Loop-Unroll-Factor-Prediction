; ModuleID = 'bb_gemm.c'
source_filename = "bb_gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bb_gemm(i32* %x, i32* %y, i32* %z) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %z.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %temp_x = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %z, i32** %z.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %1 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %1, 256
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %x.addr, align 8
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 1024
  %4 = load i32, i32* %k, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %temp_x, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %6 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %6, 256
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %temp_x, align 4
  %8 = load i32*, i32** %y.addr, align 8
  %9 = load i32, i32* %k, align 4
  %mul7 = mul nsw i32 %9, 1024
  %10 = load i32, i32* %j, align 4
  %add8 = add nsw i32 %mul7, %10
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %8, i64 %idxprom9
  %11 = load i32, i32* %arrayidx10, align 4
  %mul11 = mul nsw i32 %7, %11
  %12 = load i32*, i32** %z.addr, align 8
  %13 = load i32, i32* %i, align 4
  %mul12 = mul nsw i32 %13, 1024
  %14 = load i32, i32* %j, align 4
  %add13 = add nsw i32 %mul12, %14
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %12, i64 %idxprom14
  %15 = load i32, i32* %arrayidx15, align 4
  %add16 = add nsw i32 %15, %mul11
  store i32 %add16, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %17 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, i32* %k, align 4
  br label %for.cond1

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print(i32* %a, i32 %size) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32*, align 8
  %y = alloca i32*, align 8
  %z = alloca i32*, align 8
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 4194304) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %x, align 8
  %call1 = call noalias i8* @malloc(i64 4194304) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %y, align 8
  %call2 = call noalias i8* @malloc(i64 4194304) #3
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %z, align 8
  call void @srand(i32 8650341) #3
  store i32 128, i32* %max, align 4
  store i32 0, i32* %min, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 1048576
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand() #3
  %conv = sitofp i32 %call3 to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  %4 = load i32, i32* %max, align 4
  %5 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %4, %5
  %conv4 = sitofp i32 %sub to double
  %mul = fmul double %div, %conv4
  %6 = load i32, i32* %min, align 4
  %conv5 = sitofp i32 %6 to double
  %add = fadd double %mul, %conv5
  %conv6 = fptosi double %add to i32
  %7 = load i32*, i32** %x, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 %conv6, i32* %arrayidx, align 4
  %call7 = call i32 @rand() #3
  %conv8 = sitofp i32 %call7 to double
  %div9 = fdiv double %conv8, 0x41DFFFFFFFC00000
  %9 = load i32, i32* %max, align 4
  %10 = load i32, i32* %min, align 4
  %sub10 = sub nsw i32 %9, %10
  %conv11 = sitofp i32 %sub10 to double
  %mul12 = fmul double %div9, %conv11
  %11 = load i32, i32* %min, align 4
  %conv13 = sitofp i32 %11 to double
  %add14 = fadd double %mul12, %conv13
  %conv15 = fptosi double %add14 to i32
  %12 = load i32*, i32** %y, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %12, i64 %idxprom16
  store i32 %conv15, i32* %arrayidx17, align 4
  %14 = load i32*, i32** %z, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %14, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %x, align 8
  %18 = load i32*, i32** %y, align 8
  %19 = load i32*, i32** %z, align 8
  call void @bb_gemm(i32* %17, i32* %18, i32* %19)
  %20 = load i32*, i32** %z, align 8
  call void @print(i32* %20, i32 1048576)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
