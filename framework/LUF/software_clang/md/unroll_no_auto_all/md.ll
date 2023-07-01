; ModuleID = 'md.c'
source_filename = "md.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"total pairs - %i \0A\00", align 1
@__const.main.probSizes = private unnamed_addr constant [4 x i32] [i32 12288, i32 24576, i32 36864, i32 73728], align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"after, X:%i Y:%i Z%i \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @md(i32* %d_force_x, i32* %d_force_y, i32* %d_force_z, i32* %position_x, i32* %position_y, i32* %position_z, i32* %NL) #0 {
entry:
  %d_force_x.addr = alloca i32*, align 8
  %d_force_y.addr = alloca i32*, align 8
  %d_force_z.addr = alloca i32*, align 8
  %position_x.addr = alloca i32*, align 8
  %position_y.addr = alloca i32*, align 8
  %position_z.addr = alloca i32*, align 8
  %NL.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jidx = alloca i32, align 4
  %delx = alloca i32, align 4
  %dely = alloca i32, align 4
  %delz = alloca i32, align 4
  %r2inv = alloca i32, align 4
  %r2invTEMP = alloca i32, align 4
  %r2invTEMP2 = alloca i32, align 4
  %r2invTEMP3 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %i_x = alloca i32, align 4
  %i_y = alloca i32, align 4
  %i_z = alloca i32, align 4
  %fx = alloca i32, align 4
  %fy = alloca i32, align 4
  %fz = alloca i32, align 4
  %j_x = alloca i32, align 4
  %j_y = alloca i32, align 4
  %j_z = alloca i32, align 4
  %r6inv = alloca i32, align 4
  %force = alloca i32, align 4
  store i32* %d_force_x, i32** %d_force_x.addr, align 8
  store i32* %d_force_y, i32** %d_force_y.addr, align 8
  store i32* %d_force_z, i32** %d_force_z.addr, align 8
  store i32* %position_x, i32** %position_x.addr, align 8
  store i32* %position_y, i32** %position_y.addr, align 8
  store i32* %position_z, i32** %position_z.addr, align 8
  store i32* %NL, i32** %NL.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc41, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end43

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %position_x.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %i_x, align 4
  %4 = load i32*, i32** %position_y.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  store i32 %6, i32* %i_y, align 4
  %7 = load i32*, i32** %position_z.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  store i32 %9, i32* %i_z, align 4
  store i32 0, i32* %fx, align 4
  store i32 0, i32* %fy, align 4
  store i32 0, i32* %fz, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %10, 1024
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %11 = load i32*, i32** %NL.addr, align 8
  %12 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %12, 32
  %13 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %13
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %11, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  store i32 %14, i32* %jidx, align 4
  %15 = load i32*, i32** %position_x.addr, align 8
  %16 = load i32, i32* %jidx, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  store i32 %17, i32* %j_x, align 4
  %18 = load i32*, i32** %position_y.addr, align 8
  %19 = load i32, i32* %jidx, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 %idxprom12
  %20 = load i32, i32* %arrayidx13, align 4
  store i32 %20, i32* %j_y, align 4
  %21 = load i32*, i32** %position_z.addr, align 8
  %22 = load i32, i32* %jidx, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 %idxprom14
  %23 = load i32, i32* %arrayidx15, align 4
  store i32 %23, i32* %j_z, align 4
  %24 = load i32, i32* %i_x, align 4
  %25 = load i32, i32* %j_x, align 4
  %sub = sub nsw i32 %24, %25
  store i32 %sub, i32* %delx, align 4
  %26 = load i32, i32* %i_y, align 4
  %27 = load i32, i32* %j_y, align 4
  %sub16 = sub nsw i32 %26, %27
  store i32 %sub16, i32* %dely, align 4
  %28 = load i32, i32* %i_z, align 4
  %29 = load i32, i32* %j_z, align 4
  %sub17 = sub nsw i32 %28, %29
  store i32 %sub17, i32* %delz, align 4
  %30 = load i32, i32* %delx, align 4
  %31 = load i32, i32* %delx, align 4
  %mul18 = mul nsw i32 %30, %31
  store i32 %mul18, i32* %r2invTEMP, align 4
  %32 = load i32, i32* %dely, align 4
  %33 = load i32, i32* %dely, align 4
  %mul19 = mul nsw i32 %32, %33
  store i32 %mul19, i32* %r2invTEMP2, align 4
  %34 = load i32, i32* %delz, align 4
  %35 = load i32, i32* %delz, align 4
  %mul20 = mul nsw i32 %34, %35
  store i32 %mul20, i32* %r2invTEMP3, align 4
  %36 = load i32, i32* %r2invTEMP, align 4
  %37 = load i32, i32* %r2invTEMP2, align 4
  %add21 = add nsw i32 %36, %37
  store i32 %add21, i32* %t1, align 4
  %38 = load i32, i32* %t1, align 4
  %39 = load i32, i32* %r2invTEMP3, align 4
  %add22 = add nsw i32 %38, %39
  store i32 %add22, i32* %t2, align 4
  %40 = load i32, i32* %t2, align 4
  store i32 %40, i32* %r2inv, align 4
  %41 = load i32, i32* %r2inv, align 4
  %42 = load i32, i32* %r2inv, align 4
  %mul23 = mul nsw i32 %41, %42
  %43 = load i32, i32* %r2inv, align 4
  %mul24 = mul nsw i32 %mul23, %43
  store i32 %mul24, i32* %r6inv, align 4
  %44 = load i32, i32* %r2inv, align 4
  %45 = load i32, i32* %r6inv, align 4
  %mul25 = mul nsw i32 %44, %45
  %46 = load i32, i32* %r6inv, align 4
  %mul26 = mul nsw i32 15, %46
  %sub27 = sub nsw i32 %mul26, 20
  %mul28 = mul nsw i32 %mul25, %sub27
  store i32 %mul28, i32* %force, align 4
  %47 = load i32, i32* %delx, align 4
  %48 = load i32, i32* %force, align 4
  %mul29 = mul nsw i32 %47, %48
  %49 = load i32, i32* %fx, align 4
  %add30 = add nsw i32 %49, %mul29
  store i32 %add30, i32* %fx, align 4
  %50 = load i32, i32* %dely, align 4
  %51 = load i32, i32* %force, align 4
  %mul31 = mul nsw i32 %50, %51
  %52 = load i32, i32* %fy, align 4
  %add32 = add nsw i32 %52, %mul31
  store i32 %add32, i32* %fy, align 4
  %53 = load i32, i32* %delz, align 4
  %54 = load i32, i32* %force, align 4
  %mul33 = mul nsw i32 %53, %54
  %55 = load i32, i32* %fz, align 4
  %add34 = add nsw i32 %55, %mul33
  store i32 %add34, i32* %fz, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %56 = load i32, i32* %j, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  %57 = load i32, i32* %fx, align 4
  %58 = load i32*, i32** %d_force_x.addr, align 8
  %59 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %59 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %58, i64 %idxprom35
  store i32 %57, i32* %arrayidx36, align 4
  %60 = load i32, i32* %fy, align 4
  %61 = load i32*, i32** %d_force_y.addr, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %62 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %61, i64 %idxprom37
  store i32 %60, i32* %arrayidx38, align 4
  %63 = load i32, i32* %fz, align 4
  %64 = load i32*, i32** %d_force_z.addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %65 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %64, i64 %idxprom39
  store i32 %63, i32* %arrayidx40, align 4
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %66 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %66, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond

for.end43:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @distance(i32* %position_x, i32* %position_y, i32* %position_z, i32 %i, i32 %j) #0 {
entry:
  %position_x.addr = alloca i32*, align 8
  %position_y.addr = alloca i32*, align 8
  %position_z.addr = alloca i32*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %delx = alloca i32, align 4
  %dely = alloca i32, align 4
  %delz = alloca i32, align 4
  %r2inv = alloca i32, align 4
  store i32* %position_x, i32** %position_x.addr, align 8
  store i32* %position_y, i32** %position_y.addr, align 8
  store i32* %position_z, i32** %position_z.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32*, i32** %position_x.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32*, i32** %position_x.addr, align 8
  %4 = load i32, i32* %j.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 %2, %5
  store i32 %sub, i32* %delx, align 4
  %6 = load i32*, i32** %position_y.addr, align 8
  %7 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %9 = load i32*, i32** %position_y.addr, align 8
  %10 = load i32, i32* %j.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %sub7 = sub nsw i32 %8, %11
  store i32 %sub7, i32* %dely, align 4
  %12 = load i32*, i32** %position_z.addr, align 8
  %13 = load i32, i32* %i.addr, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  %15 = load i32*, i32** %position_z.addr, align 8
  %16 = load i32, i32* %j.addr, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %sub12 = sub nsw i32 %14, %17
  store i32 %sub12, i32* %delz, align 4
  %18 = load i32, i32* %delx, align 4
  %19 = load i32, i32* %delx, align 4
  %mul = mul nsw i32 %18, %19
  %20 = load i32, i32* %dely, align 4
  %21 = load i32, i32* %dely, align 4
  %mul13 = mul nsw i32 %20, %21
  %add = add nsw i32 %mul, %mul13
  %22 = load i32, i32* %delz, align 4
  %23 = load i32, i32* %delz, align 4
  %mul14 = mul nsw i32 %22, %23
  %add15 = add nsw i32 %add, %mul14
  store i32 %add15, i32* %r2inv, align 4
  %24 = load i32, i32* %r2inv, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @buildNeighborList(i32* %position_x, i32* %position_y, i32* %position_z, [1024 x i32]* %NL) #0 {
entry:
  %position_x.addr = alloca i32*, align 8
  %position_y.addr = alloca i32*, align 8
  %position_z.addr = alloca i32*, align 8
  %NL.addr = alloca [1024 x i32]*, align 8
  %totalPairs = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %distIJ = alloca i32, align 4
  %currList = alloca [1024 x i32], align 16
  %currDist = alloca [1024 x i32], align 16
  store i32* %position_x, i32** %position_x.addr, align 8
  store i32* %position_y, i32** %position_y.addr, align 8
  store i32* %position_z, i32** %position_z.addr, align 8
  store [1024 x i32]* %NL, [1024 x i32]** %NL.addr, align 8
  store i32 0, i32* %totalPairs, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %1, 1024
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %3 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %idxprom4
  store i32 999999999, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %k, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %5, 1024
  br i1 %cmp7, label %for.body8, label %for.end16

for.body8:                                        ; preds = %for.cond6
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %cmp9 = icmp eq i32 %6, %7
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  br label %for.inc14

if.end:                                           ; preds = %for.body8
  %8 = load i32*, i32** %position_x.addr, align 8
  %9 = load i32*, i32** %position_y.addr, align 8
  %10 = load i32*, i32** %position_z.addr, align 8
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %call = call i32 @distance(i32* %8, i32* %9, i32* %10, i32 %11, i32 %12)
  store i32 %call, i32* %distIJ, align 4
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 %idxprom10
  store i32 %13, i32* %arrayidx11, align 4
  %15 = load i32, i32* %distIJ, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 %idxprom12
  store i32 %15, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %j, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond6

for.end16:                                        ; preds = %for.cond6
  %arraydecay = getelementptr inbounds [1024 x i32], [1024 x i32]* %currDist, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [1024 x i32], [1024 x i32]* %currList, i64 0, i64 0
  %18 = load i32, i32* %i, align 4
  %19 = load [1024 x i32]*, [1024 x i32]** %NL.addr, align 8
  %call18 = call i32 @populateNeighborList(i32* %arraydecay, i32* %arraydecay17, i32 %18, [1024 x i32]* %19)
  %20 = load i32, i32* %totalPairs, align 4
  %add = add nsw i32 %20, %call18
  store i32 %add, i32* %totalPairs, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.end16
  %21 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end21:                                        ; preds = %for.cond
  %22 = load i32, i32* %totalPairs, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  %23 = load i32, i32* %totalPairs, align 4
  ret i32 %23
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @populateNeighborList(i32* %currDist, i32* %currList, i32 %i, [1024 x i32]* %NL) #0 {
entry:
  %currDist.addr = alloca i32*, align 8
  %currList.addr = alloca i32*, align 8
  %i.addr = alloca i32, align 4
  %NL.addr = alloca [1024 x i32]*, align 8
  %idx = alloca i32, align 4
  %validPairs = alloca i32, align 4
  %distanceIter = alloca i32, align 4
  %neighborIter = alloca i32, align 4
  store i32* %currDist, i32** %currDist.addr, align 8
  store i32* %currList, i32** %currList.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store [1024 x i32]* %NL, [1024 x i32]** %NL.addr, align 8
  store i32 0, i32* %idx, align 4
  store i32 0, i32* %validPairs, align 4
  store i32 0, i32* %neighborIter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %neighborIter, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %currList.addr, align 8
  %2 = load i32, i32* %neighborIter, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load [1024 x i32]*, [1024 x i32]** %NL.addr, align 8
  %5 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [1024 x i32], [1024 x i32]* %4, i64 %idxprom1
  %6 = load i32, i32* %neighborIter, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [1024 x i32], [1024 x i32]* %arrayidx2, i64 0, i64 %idxprom3
  store i32 %3, i32* %arrayidx4, align 4
  %7 = load i32, i32* %validPairs, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %validPairs, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %neighborIter, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* %neighborIter, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %validPairs, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sizeClass = alloca i32, align 4
  %passes = alloca i32, align 4
  %iter = alloca i32, align 4
  %nAtom = alloca i32, align 4
  %err = alloca i32, align 4
  %localSize = alloca i32, align 4
  %globalSize = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %totalPairs = alloca i32, align 4
  %probSizes = alloca [4 x i32], align 16
  %position_x = alloca [1024 x i32], align 16
  %position_y = alloca [1024 x i32], align 16
  %position_z = alloca [1024 x i32], align 16
  %force_x = alloca [1024 x i32], align 16
  %force_y = alloca [1024 x i32], align 16
  %force_z = alloca [1024 x i32], align 16
  %NL = alloca [1024 x [1024 x i32]], align 16
  %neighborList = alloca [1024 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i32]* %probSizes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.probSizes to i8*), i64 16, i1 false)
  store i32 1, i32* %sizeClass, align 4
  store i32 1, i32* %passes, align 4
  store i32 1, i32* %iter, align 4
  store i32 0, i32* %err, align 4
  store i32 128, i32* %localSize, align 4
  store i32 1024, i32* %globalSize, align 4
  call void @srand(i32 8650341) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 1024
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  %call1 = call i32 @rand() #4
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 %idxprom2
  store i32 %call1, i32* %arrayidx3, align 4
  %call4 = call i32 @rand() #4
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 %idxprom5
  store i32 %call4, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc20, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %6, 1024
  br i1 %cmp8, label %for.body9, label %for.end22

for.body9:                                        ; preds = %for.cond7
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc17, %for.body9
  %7 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %7, 1024
  br i1 %cmp11, label %for.body12, label %for.end19

for.body12:                                       ; preds = %for.cond10
  %8 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %idxprom13
  %9 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [1024 x i32], [1024 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body12
  %10 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %10, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond10

for.end19:                                        ; preds = %for.cond10
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %11 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %11, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond7

for.end22:                                        ; preds = %for.cond7
  %arraydecay = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 0
  %arraydecay24 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 0
  %call26 = call i32 @buildNeighborList(i32* %arraydecay, i32* %arraydecay23, i32* %arraydecay24, [1024 x i32]* %arraydecay25)
  store i32 %call26, i32* %totalPairs, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc42, %for.end22
  %12 = load i32, i32* %i, align 4
  %cmp28 = icmp slt i32 %12, 32
  br i1 %cmp28, label %for.body29, label %for.end44

for.body29:                                       ; preds = %for.cond27
  store i32 0, i32* %j, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.body29
  %13 = load i32, i32* %j, align 4
  %cmp31 = icmp slt i32 %13, 32
  br i1 %cmp31, label %for.body32, label %for.end41

for.body32:                                       ; preds = %for.cond30
  %14 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %14 to i64
  %arrayidx34 = getelementptr inbounds [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %NL, i64 0, i64 %idxprom33
  %15 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %15 to i64
  %arrayidx36 = getelementptr inbounds [1024 x i32], [1024 x i32]* %arrayidx34, i64 0, i64 %idxprom35
  %16 = load i32, i32* %arrayidx36, align 4
  %17 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %17, 32
  %18 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %18
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds [1024 x i32], [1024 x i32]* %neighborList, i64 0, i64 %idxprom37
  store i32 %16, i32* %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body32
  %19 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %19, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond30

for.end41:                                        ; preds = %for.cond30
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %20 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %20, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond27

for.end44:                                        ; preds = %for.cond27
  %arraydecay45 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_x, i64 0, i64 0
  %arraydecay46 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_y, i64 0, i64 0
  %arraydecay47 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_z, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_x, i64 0, i64 0
  %arraydecay49 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_y, i64 0, i64 0
  %arraydecay50 = getelementptr inbounds [1024 x i32], [1024 x i32]* %position_z, i64 0, i64 0
  %arraydecay51 = getelementptr inbounds [1024 x i32], [1024 x i32]* %neighborList, i64 0, i64 0
  call void @md(i32* %arraydecay45, i32* %arraydecay46, i32* %arraydecay47, i32* %arraydecay48, i32* %arraydecay49, i32* %arraydecay50, i32* %arraydecay51)
  store i32 0, i32* %i, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc62, %for.end44
  %21 = load i32, i32* %i, align 4
  %cmp53 = icmp slt i32 %21, 1024
  br i1 %cmp53, label %for.body54, label %for.end64

for.body54:                                       ; preds = %for.cond52
  %22 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %22 to i64
  %arrayidx56 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_x, i64 0, i64 %idxprom55
  %23 = load i32, i32* %arrayidx56, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %24 to i64
  %arrayidx58 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_y, i64 0, i64 %idxprom57
  %25 = load i32, i32* %arrayidx58, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %26 to i64
  %arrayidx60 = getelementptr inbounds [1024 x i32], [1024 x i32]* %force_z, i64 0, i64 %idxprom59
  %27 = load i32, i32* %arrayidx60, align 4
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %25, i32 %27)
  br label %for.inc62

for.inc62:                                        ; preds = %for.body54
  %28 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %28, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond52

for.end64:                                        ; preds = %for.cond52
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
