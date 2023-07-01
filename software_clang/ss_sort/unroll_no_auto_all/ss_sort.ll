; ModuleID = 'ss_sort.c'
source_filename = "ss_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

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
define dso_local void @local_scan(i32* %bucket) #0 {
entry:
  %bucket.addr = alloca i32*, align 8
  %radixID = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %bucket, i32** %bucket.addr, align 8
  store i32 0, i32* %radixID, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, i32* %radixID, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 16
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %bucket.addr, align 8
  %3 = load i32, i32* %radixID, align 4
  %mul = mul nsw i32 %3, 16
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %4
  %sub = sub nsw i32 %add, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32*, i32** %bucket.addr, align 8
  %7 = load i32, i32* %radixID, align 4
  %mul4 = mul nsw i32 %7, 16
  %8 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %mul4, %8
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %6, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %9, %5
  store i32 %add8, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %11 = load i32, i32* %radixID, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, i32* %radixID, align 4
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sum_scan(i32* %sum, i32* %bucket) #0 {
entry:
  %sum.addr = alloca i32*, align 8
  %bucket.addr = alloca i32*, align 8
  %radixID = alloca i32, align 4
  store i32* %sum, i32** %sum.addr, align 8
  store i32* %bucket, i32** %bucket.addr, align 8
  %0 = load i32*, i32** %sum.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 0, i32* %arrayidx, align 4
  store i32 1, i32* %radixID, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %radixID, align 4
  %cmp = icmp slt i32 %1, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %sum.addr, align 8
  %3 = load i32, i32* %radixID, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  %5 = load i32*, i32** %bucket.addr, align 8
  %6 = load i32, i32* %radixID, align 4
  %mul = mul nsw i32 %6, 16
  %sub2 = sub nsw i32 %mul, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %4, %7
  %8 = load i32*, i32** %sum.addr, align 8
  %9 = load i32, i32* %radixID, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %8, i64 %idxprom5
  store i32 %add, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %radixID, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %radixID, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @last_step_scan(i32* %bucket, i32* %sum) #0 {
entry:
  %bucket.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %radixID = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %bucket, i32** %bucket.addr, align 8
  store i32* %sum, i32** %sum.addr, align 8
  store i32 0, i32* %radixID, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, i32* %radixID, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 16
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %bucket.addr, align 8
  %3 = load i32, i32* %radixID, align 4
  %mul = mul nsw i32 %3, 16
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32*, i32** %sum.addr, align 8
  %7 = load i32, i32* %radixID, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %5, %8
  %9 = load i32*, i32** %bucket.addr, align 8
  %10 = load i32, i32* %radixID, align 4
  %mul7 = mul nsw i32 %10, 16
  %11 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %mul7, %11
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %9, i64 %idxprom9
  store i32 %add6, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %13 = load i32, i32* %radixID, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %radixID, align 4
  br label %for.cond

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(i32* %bucket) #0 {
entry:
  %bucket.addr = alloca i32*, align 8
  %radixID = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %bucket, i32** %bucket.addr, align 8
  store i32 0, i32* %radixID, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %radixID, align 4
  %cmp = icmp slt i32 %0, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %bucket.addr, align 8
  %2 = load i32, i32* %radixID, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %radixID, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %radixID, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hist(i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  %bucket.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %exp.addr = alloca i32, align 4
  %blockID = alloca i32, align 4
  %maskID = alloca i32, align 4
  store i32* %bucket, i32** %bucket.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32 %exp, i32* %exp.addr, align 4
  store i32 0, i32* %blockID, align 4
  store i32 0, i32* %maskID, align 4
  store i32 0, i32* %blockID, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %blockID, align 4
  %cmp = icmp slt i32 %0, 512
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %maskID, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %maskID, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %bucket.addr, align 8
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32, i32* %blockID, align 4
  %mul = mul nsw i32 %4, 4
  %5 = load i32, i32* %maskID, align 4
  %add = add nsw i32 %mul, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %exp.addr, align 4
  %shr = ashr i32 %6, %7
  %and = and i32 %shr, 3
  %mul4 = mul nsw i32 %and, 512
  %8 = load i32, i32* %blockID, align 4
  %add5 = add nsw i32 %mul4, %8
  %add6 = add nsw i32 %add5, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %2, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %maskID, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %maskID, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %11 = load i32, i32* %blockID, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %blockID, align 4
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update(i32* %b, i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  %b.addr = alloca i32*, align 8
  %bucket.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %exp.addr = alloca i32, align 4
  %blockID = alloca i32, align 4
  %maskID = alloca i32, align 4
  %a_value = alloca i32, align 4
  %bucket_value = alloca i32, align 4
  store i32* %b, i32** %b.addr, align 8
  store i32* %bucket, i32** %bucket.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32 %exp, i32* %exp.addr, align 4
  store i32 0, i32* %blockID, align 4
  store i32 0, i32* %maskID, align 4
  store i32 0, i32* %blockID, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %blockID, align 4
  %cmp = icmp slt i32 %0, 512
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %maskID, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %maskID, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %blockID, align 4
  %mul = mul nsw i32 %3, 4
  %4 = load i32, i32* %maskID, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %a_value, align 4
  %6 = load i32*, i32** %bucket.addr, align 8
  %7 = load i32, i32* %a_value, align 4
  %8 = load i32, i32* %exp.addr, align 4
  %shr = ashr i32 %7, %8
  %and = and i32 %shr, 3
  %mul4 = mul nsw i32 %and, 512
  %9 = load i32, i32* %blockID, align 4
  %add5 = add nsw i32 %mul4, %9
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %6, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  store i32 %10, i32* %bucket_value, align 4
  %11 = load i32, i32* %a_value, align 4
  %12 = load i32*, i32** %b.addr, align 8
  %13 = load i32, i32* %bucket_value, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 %idxprom8
  store i32 %11, i32* %arrayidx9, align 4
  %14 = load i32, i32* %bucket_value, align 4
  %add10 = add nsw i32 %14, 1
  %15 = load i32*, i32** %bucket.addr, align 8
  %16 = load i32, i32* %a_value, align 4
  %17 = load i32, i32* %exp.addr, align 4
  %shr11 = ashr i32 %16, %17
  %and12 = and i32 %shr11, 3
  %mul13 = mul nsw i32 %and12, 512
  %18 = load i32, i32* %blockID, align 4
  %add14 = add nsw i32 %mul13, %18
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 %idxprom15
  store i32 %add10, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %19 = load i32, i32* %maskID, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %maskID, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %20 = load i32, i32* %blockID, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %blockID, align 4
  br label %for.cond

for.end19:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ss_sort(i32* %a, i32* %b, i32* %bucket, i32* %sum) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %bucket.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %exp = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %bucket, i32** %bucket.addr, align 8
  store i32* %sum, i32** %sum.addr, align 8
  store i32 0, i32* %exp, align 4
  store i32 0, i32* %flag, align 4
  store i32 0, i32* %exp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %exp, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %bucket.addr, align 8
  call void @init(i32* %1)
  %2 = load i32, i32* %flag, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32*, i32** %bucket.addr, align 8
  %4 = load i32*, i32** %a.addr, align 8
  %5 = load i32, i32* %exp, align 4
  call void @hist(i32* %3, i32* %4, i32 %5)
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i32*, i32** %bucket.addr, align 8
  %7 = load i32*, i32** %b.addr, align 8
  %8 = load i32, i32* %exp, align 4
  call void @hist(i32* %6, i32* %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32*, i32** %bucket.addr, align 8
  call void @local_scan(i32* %9)
  %10 = load i32*, i32** %sum.addr, align 8
  %11 = load i32*, i32** %bucket.addr, align 8
  call void @sum_scan(i32* %10, i32* %11)
  %12 = load i32*, i32** %bucket.addr, align 8
  %13 = load i32*, i32** %sum.addr, align 8
  call void @last_step_scan(i32* %12, i32* %13)
  %14 = load i32, i32* %flag, align 4
  %cmp2 = icmp eq i32 %14, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  %15 = load i32*, i32** %b.addr, align 8
  %16 = load i32*, i32** %bucket.addr, align 8
  %17 = load i32*, i32** %a.addr, align 8
  %18 = load i32, i32* %exp, align 4
  call void @update(i32* %15, i32* %16, i32* %17, i32 %18)
  store i32 1, i32* %flag, align 4
  br label %if.end5

if.else4:                                         ; preds = %if.end
  %19 = load i32*, i32** %a.addr, align 8
  %20 = load i32*, i32** %bucket.addr, align 8
  %21 = load i32*, i32** %b.addr, align 8
  %22 = load i32, i32* %exp, align 4
  call void @update(i32* %19, i32* %20, i32* %21, i32 %22)
  store i32 0, i32* %flag, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %23 = load i32, i32* %exp, align 4
  %add = add nsw i32 %23, 2
  store i32 %add, i32* %exp, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %arr = alloca i32*, align 8
  %bucket = alloca i32*, align 8
  %b = alloca i32*, align 8
  %sum = alloca i32*, align 8
  %max = alloca float, align 4
  %min = alloca float, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 8192) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %bucket, align 8
  %call1 = call noalias i8* @malloc(i64 8192) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %b, align 8
  %call2 = call noalias i8* @malloc(i64 8192) #3
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %arr, align 8
  %call3 = call noalias i8* @malloc(i64 512) #3
  %3 = bitcast i8* %call3 to i32*
  store i32* %3, i32** %sum, align 8
  call void @srand(i32 8650341) #3
  store float 2.550000e+02, float* %max, align 4
  store float 0.000000e+00, float* %min, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call i32 @rand() #3
  %conv = sitofp i32 %call4 to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  %5 = load float, float* %max, align 4
  %6 = load float, float* %min, align 4
  %sub = fsub float %5, %6
  %conv5 = fpext float %sub to double
  %mul = fmul double %div, %conv5
  %7 = load float, float* %min, align 4
  %conv6 = fpext float %7 to double
  %add = fadd double %mul, %conv6
  %conv7 = fptosi double %add to i32
  %8 = load i32*, i32** %arr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 %conv7, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32*, i32** %arr, align 8
  %12 = load i32*, i32** %b, align 8
  %13 = load i32*, i32** %bucket, align 8
  %14 = load i32*, i32** %sum, align 8
  call void @ss_sort(i32* %11, i32* %12, i32* %13, i32* %14)
  %15 = load i32*, i32** %arr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 0
  call void @print(i32* %arrayidx8, i32 1)
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
