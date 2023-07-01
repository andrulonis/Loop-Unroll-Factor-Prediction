; ModuleID = 'triad.c'
source_filename = "triad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [12 x i8] c"output.data\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @triad(i32* %a, i32* %b, i32* %c, i32 %s) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %s.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %a.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %s.addr, align 4
  %5 = load i32*, i32** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %mul = mul nsw i32 %4, %7
  %add = add nsw i32 %3, %mul
  %8 = load i32*, i32** %c.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  store i32 %add, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32*, align 8
  %i = alloca i32, align 4
  %output = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias i8* @malloc(i64 8192) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %a, align 8
  %call1 = call noalias i8* @malloc(i64 8192) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %b, align 8
  %call2 = call noalias i8* @malloc(i64 8192) #3
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %c, align 8
  %call3 = call i64 @time(i64* null) #3
  %conv = trunc i64 %call3 to i32
  call void @srand(i32 %conv) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %c, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %call5 = call i32 @rand() #3
  %6 = load i32*, i32** %a, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %6, i64 %idxprom6
  store i32 %call5, i32* %arrayidx7, align 4
  %call8 = call i32 @rand() #3
  %8 = load i32*, i32** %b, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %8, i64 %idxprom9
  store i32 %call8, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32*, i32** %a, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %11, i64 0
  %12 = load i32*, i32** %b, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32*, i32** %c, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 0
  call void @triad(i32* %arrayidx11, i32* %arrayidx12, i32* %arrayidx13, i32 3)
  %call14 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %output, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc22, %for.end
  %14 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %14, 2048
  br i1 %cmp16, label %for.body18, label %for.end24

for.body18:                                       ; preds = %for.cond15
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %16 = load i32*, i32** %c, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %16, i64 %idxprom19
  %18 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %19 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond15

for.end24:                                        ; preds = %for.cond15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %21)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
