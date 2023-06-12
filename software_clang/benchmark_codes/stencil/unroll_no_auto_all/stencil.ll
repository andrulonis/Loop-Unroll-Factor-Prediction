; ModuleID = 'stencil.c'
source_filename = "stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d, %d, %d,%d\0A \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Success!!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil(i32* %orig, i32* %sol, i32* %filter) #0 {
entry:
  %orig.addr = alloca i32*, align 8
  %sol.addr = alloca i32*, align 8
  %filter.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %sidx = alloca i32, align 4
  %didx = alloca i32, align 4
  %fidx = alloca i32, align 4
  %tmp = alloca i32, align 4
  %Si = alloca i32, align 4
  %SI = alloca i32, align 4
  %Di = alloca i32, align 4
  %Ti = alloca i32, align 4
  store i32* %orig, i32** %orig.addr, align 8
  store i32* %sol, i32** %sol.addr, align 8
  store i32* %filter, i32** %filter.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4094
  br i1 %cmp, label %for.body, label %for.end80

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4094
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %Si, align 4
  store i32 0, i32* %SI, align 4
  store i32 0, i32* %tmp, align 4
  store i32 0, i32* %fidx, align 4
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 4096
  store i32 %mul, i32* %SI, align 4
  %3 = load i32, i32* %SI, align 4
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %sidx, align 4
  %5 = load i32, i32* %sidx, align 4
  store i32 %5, i32* %didx, align 4
  %6 = load i32*, i32** %filter.addr, align 8
  %7 = load i32, i32* %fidx, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32*, i32** %orig.addr, align 8
  %10 = load i32, i32* %sidx, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %mul6 = mul nsw i32 %8, %11
  store i32 %mul6, i32* %Si, align 4
  %12 = load i32, i32* %tmp, align 4
  %13 = load i32, i32* %Si, align 4
  %add7 = add nsw i32 %12, %13
  store i32 %add7, i32* %tmp, align 4
  %14 = load i32, i32* %sidx, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %sidx, align 4
  %15 = load i32, i32* %fidx, align 4
  %inc8 = add nsw i32 %15, 1
  store i32 %inc8, i32* %fidx, align 4
  %16 = load i32*, i32** %filter.addr, align 8
  %17 = load i32, i32* %fidx, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %19 = load i32*, i32** %orig.addr, align 8
  %20 = load i32, i32* %sidx, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom11
  %21 = load i32, i32* %arrayidx12, align 4
  %mul13 = mul nsw i32 %18, %21
  store i32 %mul13, i32* %Si, align 4
  %22 = load i32, i32* %tmp, align 4
  %23 = load i32, i32* %Si, align 4
  %add14 = add nsw i32 %22, %23
  store i32 %add14, i32* %tmp, align 4
  %24 = load i32, i32* %sidx, align 4
  %inc15 = add nsw i32 %24, 1
  store i32 %inc15, i32* %sidx, align 4
  %25 = load i32, i32* %fidx, align 4
  %inc16 = add nsw i32 %25, 1
  store i32 %inc16, i32* %fidx, align 4
  %26 = load i32*, i32** %filter.addr, align 8
  %27 = load i32, i32* %fidx, align 4
  %idxprom17 = sext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %26, i64 %idxprom17
  %28 = load i32, i32* %arrayidx18, align 4
  %29 = load i32*, i32** %orig.addr, align 8
  %30 = load i32, i32* %sidx, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 %idxprom19
  %31 = load i32, i32* %arrayidx20, align 4
  %mul21 = mul nsw i32 %28, %31
  store i32 %mul21, i32* %Si, align 4
  %32 = load i32, i32* %tmp, align 4
  %33 = load i32, i32* %Si, align 4
  %add22 = add nsw i32 %32, %33
  store i32 %add22, i32* %tmp, align 4
  %34 = load i32, i32* %sidx, align 4
  %inc23 = add nsw i32 %34, 1
  store i32 %inc23, i32* %sidx, align 4
  %35 = load i32, i32* %fidx, align 4
  %inc24 = add nsw i32 %35, 1
  store i32 %inc24, i32* %fidx, align 4
  %36 = load i32, i32* %sidx, align 4
  %add25 = add nsw i32 %36, 4093
  store i32 %add25, i32* %sidx, align 4
  %37 = load i32*, i32** %filter.addr, align 8
  %38 = load i32, i32* %fidx, align 4
  %idxprom26 = sext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %37, i64 %idxprom26
  %39 = load i32, i32* %arrayidx27, align 4
  %40 = load i32*, i32** %orig.addr, align 8
  %41 = load i32, i32* %sidx, align 4
  %idxprom28 = sext i32 %41 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %40, i64 %idxprom28
  %42 = load i32, i32* %arrayidx29, align 4
  %mul30 = mul nsw i32 %39, %42
  store i32 %mul30, i32* %Si, align 4
  %43 = load i32, i32* %tmp, align 4
  %44 = load i32, i32* %Si, align 4
  %add31 = add nsw i32 %43, %44
  store i32 %add31, i32* %tmp, align 4
  %45 = load i32, i32* %sidx, align 4
  %inc32 = add nsw i32 %45, 1
  store i32 %inc32, i32* %sidx, align 4
  %46 = load i32, i32* %fidx, align 4
  %inc33 = add nsw i32 %46, 1
  store i32 %inc33, i32* %fidx, align 4
  %47 = load i32*, i32** %filter.addr, align 8
  %48 = load i32, i32* %fidx, align 4
  %idxprom34 = sext i32 %48 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %47, i64 %idxprom34
  %49 = load i32, i32* %arrayidx35, align 4
  %50 = load i32*, i32** %orig.addr, align 8
  %51 = load i32, i32* %sidx, align 4
  %idxprom36 = sext i32 %51 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %50, i64 %idxprom36
  %52 = load i32, i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %49, %52
  store i32 %mul38, i32* %Si, align 4
  %53 = load i32, i32* %tmp, align 4
  %54 = load i32, i32* %Si, align 4
  %add39 = add nsw i32 %53, %54
  store i32 %add39, i32* %tmp, align 4
  %55 = load i32, i32* %sidx, align 4
  %inc40 = add nsw i32 %55, 1
  store i32 %inc40, i32* %sidx, align 4
  %56 = load i32, i32* %fidx, align 4
  %inc41 = add nsw i32 %56, 1
  store i32 %inc41, i32* %fidx, align 4
  %57 = load i32*, i32** %filter.addr, align 8
  %58 = load i32, i32* %fidx, align 4
  %idxprom42 = sext i32 %58 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %57, i64 %idxprom42
  %59 = load i32, i32* %arrayidx43, align 4
  %60 = load i32*, i32** %orig.addr, align 8
  %61 = load i32, i32* %sidx, align 4
  %idxprom44 = sext i32 %61 to i64
  %arrayidx45 = getelementptr inbounds i32, i32* %60, i64 %idxprom44
  %62 = load i32, i32* %arrayidx45, align 4
  %mul46 = mul nsw i32 %59, %62
  store i32 %mul46, i32* %Si, align 4
  %63 = load i32, i32* %tmp, align 4
  %64 = load i32, i32* %Si, align 4
  %add47 = add nsw i32 %63, %64
  store i32 %add47, i32* %tmp, align 4
  %65 = load i32, i32* %sidx, align 4
  %inc48 = add nsw i32 %65, 1
  store i32 %inc48, i32* %sidx, align 4
  %66 = load i32, i32* %fidx, align 4
  %inc49 = add nsw i32 %66, 1
  store i32 %inc49, i32* %fidx, align 4
  %67 = load i32, i32* %sidx, align 4
  %add50 = add nsw i32 %67, 4096
  %sub = sub nsw i32 %add50, 3
  store i32 %sub, i32* %sidx, align 4
  %68 = load i32*, i32** %filter.addr, align 8
  %69 = load i32, i32* %fidx, align 4
  %idxprom51 = sext i32 %69 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %68, i64 %idxprom51
  %70 = load i32, i32* %arrayidx52, align 4
  %71 = load i32*, i32** %orig.addr, align 8
  %72 = load i32, i32* %sidx, align 4
  %idxprom53 = sext i32 %72 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %71, i64 %idxprom53
  %73 = load i32, i32* %arrayidx54, align 4
  %mul55 = mul nsw i32 %70, %73
  store i32 %mul55, i32* %Si, align 4
  %74 = load i32, i32* %tmp, align 4
  %75 = load i32, i32* %Si, align 4
  %add56 = add nsw i32 %74, %75
  store i32 %add56, i32* %tmp, align 4
  %76 = load i32, i32* %sidx, align 4
  %inc57 = add nsw i32 %76, 1
  store i32 %inc57, i32* %sidx, align 4
  %77 = load i32, i32* %fidx, align 4
  %inc58 = add nsw i32 %77, 1
  store i32 %inc58, i32* %fidx, align 4
  %78 = load i32*, i32** %filter.addr, align 8
  %79 = load i32, i32* %fidx, align 4
  %idxprom59 = sext i32 %79 to i64
  %arrayidx60 = getelementptr inbounds i32, i32* %78, i64 %idxprom59
  %80 = load i32, i32* %arrayidx60, align 4
  %81 = load i32*, i32** %orig.addr, align 8
  %82 = load i32, i32* %sidx, align 4
  %idxprom61 = sext i32 %82 to i64
  %arrayidx62 = getelementptr inbounds i32, i32* %81, i64 %idxprom61
  %83 = load i32, i32* %arrayidx62, align 4
  %mul63 = mul nsw i32 %80, %83
  store i32 %mul63, i32* %Si, align 4
  %84 = load i32, i32* %tmp, align 4
  %85 = load i32, i32* %Si, align 4
  %add64 = add nsw i32 %84, %85
  store i32 %add64, i32* %tmp, align 4
  %86 = load i32, i32* %sidx, align 4
  %inc65 = add nsw i32 %86, 1
  store i32 %inc65, i32* %sidx, align 4
  %87 = load i32, i32* %fidx, align 4
  %inc66 = add nsw i32 %87, 1
  store i32 %inc66, i32* %fidx, align 4
  %88 = load i32*, i32** %filter.addr, align 8
  %89 = load i32, i32* %fidx, align 4
  %idxprom67 = sext i32 %89 to i64
  %arrayidx68 = getelementptr inbounds i32, i32* %88, i64 %idxprom67
  %90 = load i32, i32* %arrayidx68, align 4
  %91 = load i32*, i32** %orig.addr, align 8
  %92 = load i32, i32* %sidx, align 4
  %idxprom69 = sext i32 %92 to i64
  %arrayidx70 = getelementptr inbounds i32, i32* %91, i64 %idxprom69
  %93 = load i32, i32* %arrayidx70, align 4
  %mul71 = mul nsw i32 %90, %93
  store i32 %mul71, i32* %Si, align 4
  %94 = load i32, i32* %tmp, align 4
  %95 = load i32, i32* %Si, align 4
  %add72 = add nsw i32 %94, %95
  store i32 %add72, i32* %tmp, align 4
  %96 = load i32, i32* %sidx, align 4
  %inc73 = add nsw i32 %96, 1
  store i32 %inc73, i32* %sidx, align 4
  %97 = load i32, i32* %fidx, align 4
  %inc74 = add nsw i32 %97, 1
  store i32 %inc74, i32* %fidx, align 4
  %98 = load i32, i32* %tmp, align 4
  %99 = load i32*, i32** %sol.addr, align 8
  %100 = load i32, i32* %didx, align 4
  %idxprom75 = sext i32 %100 to i64
  %arrayidx76 = getelementptr inbounds i32, i32* %99, i64 %idxprom75
  store i32 %98, i32* %arrayidx76, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %101 = load i32, i32* %j, align 4
  %inc77 = add nsw i32 %101, 1
  store i32 %inc77, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc78

for.inc78:                                        ; preds = %for.end
  %102 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %102, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond

for.end80:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %OrigImg = alloca i32*, align 8
  %Solution = alloca i32*, align 8
  %Filter = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @srand(i32 8650341) #3
  store i32 2147483646, i32* %max, align 4
  store i32 0, i32* %min, align 4
  %call = call noalias i8* @malloc(i64 67108864) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %OrigImg, align 8
  %call1 = call noalias i8* @malloc(i64 67108864) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %Solution, align 8
  %call2 = call noalias i8* @malloc(i64 36) #3
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %Filter, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 4096
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %4, 4096
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %call6 = call i32 @rand() #3
  %conv = sitofp i32 %call6 to double
  %mul = fmul double %conv, 1.000000e+00
  %5 = load i32, i32* %max, align 4
  %6 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %5, %6
  %conv7 = sitofp i32 %sub to double
  %mul8 = fmul double %mul, %conv7
  %div = fdiv double %mul8, 0x41DFFFFFFFC00000
  %7 = load i32, i32* %min, align 4
  %conv9 = sitofp i32 %7 to double
  %add = fadd double %div, %conv9
  %conv10 = fptosi double %add to i32
  %8 = load i32*, i32** %OrigImg, align 8
  %9 = load i32, i32* %i, align 4
  %mul11 = mul nsw i32 %9, 4096
  %10 = load i32, i32* %j, align 4
  %add12 = add nsw i32 %mul11, %10
  %idxprom = sext i32 %add12 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 %conv10, i32* %arrayidx, align 4
  %11 = load i32*, i32** %Solution, align 8
  %12 = load i32, i32* %i, align 4
  %mul13 = mul nsw i32 %12, 4096
  %13 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %mul13, %13
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %11, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end19:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %16 = load i32, i32* %i, align 4
  %cmp21 = icmp slt i32 %16, 3
  br i1 %cmp21, label %for.body23, label %for.end47

for.body23:                                       ; preds = %for.cond20
  store i32 0, i32* %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc42, %for.body23
  %17 = load i32, i32* %j, align 4
  %cmp25 = icmp slt i32 %17, 3
  br i1 %cmp25, label %for.body27, label %for.end44

for.body27:                                       ; preds = %for.cond24
  %call28 = call i32 @rand() #3
  %conv29 = sitofp i32 %call28 to double
  %mul30 = fmul double %conv29, 1.000000e+00
  %18 = load i32, i32* %max, align 4
  %19 = load i32, i32* %min, align 4
  %sub31 = sub nsw i32 %18, %19
  %conv32 = sitofp i32 %sub31 to double
  %mul33 = fmul double %mul30, %conv32
  %div34 = fdiv double %mul33, 0x41DFFFFFFFC00000
  %20 = load i32, i32* %min, align 4
  %conv35 = sitofp i32 %20 to double
  %add36 = fadd double %div34, %conv35
  %conv37 = fptosi double %add36 to i32
  %21 = load i32*, i32** %Filter, align 8
  %22 = load i32, i32* %i, align 4
  %mul38 = mul nsw i32 %22, 3
  %23 = load i32, i32* %j, align 4
  %add39 = add nsw i32 %mul38, %23
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %21, i64 %idxprom40
  store i32 %conv37, i32* %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body27
  %24 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %24, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond24

for.end44:                                        ; preds = %for.cond24
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %25 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %25, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond20

for.end47:                                        ; preds = %for.cond20
  %26 = load i32*, i32** %OrigImg, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %26, i64 0
  %27 = load i32*, i32** %Solution, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %27, i64 0
  %28 = load i32*, i32** %Filter, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %28, i64 0
  call void @stencil(i32* %arrayidx48, i32* %arrayidx49, i32* %arrayidx50)
  store i32 0, i32* %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc71, %for.end47
  %29 = load i32, i32* %i, align 4
  %cmp52 = icmp slt i32 %29, 4
  br i1 %cmp52, label %for.body54, label %for.end73

for.body54:                                       ; preds = %for.cond51
  store i32 0, i32* %j, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc68, %for.body54
  %30 = load i32, i32* %j, align 4
  %cmp56 = icmp slt i32 %30, 4
  br i1 %cmp56, label %for.body58, label %for.end70

for.body58:                                       ; preds = %for.cond55
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %j, align 4
  %33 = load i32*, i32** %OrigImg, align 8
  %34 = load i32, i32* %i, align 4
  %mul59 = mul nsw i32 %34, 4096
  %35 = load i32, i32* %j, align 4
  %add60 = add nsw i32 %mul59, %35
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds i32, i32* %33, i64 %idxprom61
  %36 = load i32, i32* %arrayidx62, align 4
  %37 = load i32*, i32** %Solution, align 8
  %38 = load i32, i32* %i, align 4
  %mul63 = mul nsw i32 %38, 4096
  %39 = load i32, i32* %j, align 4
  %add64 = add nsw i32 %mul63, %39
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds i32, i32* %37, i64 %idxprom65
  %40 = load i32, i32* %arrayidx66, align 4
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %36, i32 %40)
  br label %for.inc68

for.inc68:                                        ; preds = %for.body58
  %41 = load i32, i32* %j, align 4
  %inc69 = add nsw i32 %41, 1
  store i32 %inc69, i32* %j, align 4
  br label %for.cond55

for.end70:                                        ; preds = %for.cond55
  br label %for.inc71

for.inc71:                                        ; preds = %for.end70
  %42 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %42, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond51

for.end73:                                        ; preds = %for.cond51
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
