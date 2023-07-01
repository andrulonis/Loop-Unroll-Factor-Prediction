; ModuleID = 'reduction.c'
source_filename = "reduction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"sum: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @reduction(i32* %in) #0 !dbg !10 {
entry:
  %in.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32* %in, i32** %in.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %in.addr, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %i, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %sum, align 4, !dbg !18
  br label %sum1, !dbg !19

sum1:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !20), !dbg !21
  store i32 0, i32* %i, align 4, !dbg !22
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %sum1
  %0 = load i32, i32* %i, align 4, !dbg !25
  %cmp = icmp slt i32 %0, 2048, !dbg !27
  br i1 %cmp, label %for.body, label %for.end, !dbg !28

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %in.addr, align 8, !dbg !29
  %2 = load i32, i32* %i, align 4, !dbg !30
  %idxprom = sext i32 %2 to i64, !dbg !29
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !29
  %3 = load i32, i32* %arrayidx, align 4, !dbg !29
  %4 = load i32, i32* %sum, align 4, !dbg !31
  %add = add nsw i32 %4, %3, !dbg !31
  store i32 %add, i32* %sum, align 4, !dbg !31
  br label %for.inc, !dbg !32

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !33
  %inc = add nsw i32 %5, 1, !dbg !33
  store i32 %inc, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !34, !llvm.loop !35

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %sum, align 4, !dbg !37
  ret i32 %6, !dbg !38
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !39 {
entry:
  %retval = alloca i32, align 4
  %in = alloca i32*, align 8
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32** %in, metadata !42, metadata !DIExpression()), !dbg !43
  %call = call noalias i8* @malloc(i64 8192) #4, !dbg !44
  %0 = bitcast i8* %call to i32*, !dbg !45
  store i32* %0, i32** %in, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %max, metadata !49, metadata !DIExpression()), !dbg !50
  store i32 2147483646, i32* %max, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %min, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 0, i32* %min, align 4, !dbg !52
  call void @srand(i32 8650341) #4, !dbg !53
  store i32 0, i32* %i, align 4, !dbg !54
  br label %for.cond, !dbg !56

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !57
  %cmp = icmp slt i32 %1, 2048, !dbg !59
  br i1 %cmp, label %for.body, label %for.end, !dbg !60

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %min, align 4, !dbg !61
  %conv = sitofp i32 %2 to double, !dbg !61
  %call1 = call i32 @rand() #4, !dbg !63
  %conv2 = sitofp i32 %call1 to double, !dbg !63
  %mul = fmul double %conv2, 1.000000e+00, !dbg !64
  %3 = load i32, i32* %max, align 4, !dbg !65
  %4 = load i32, i32* %min, align 4, !dbg !66
  %sub = sub nsw i32 %3, %4, !dbg !67
  %conv3 = sitofp i32 %sub to double, !dbg !68
  %mul4 = fmul double %mul, %conv3, !dbg !69
  %div = fdiv double %mul4, 0x41DFFFFFFFC00000, !dbg !70
  %add = fadd double %conv, %div, !dbg !71
  %conv5 = fptosi double %add to i32, !dbg !72
  %5 = load i32*, i32** %in, align 8, !dbg !73
  %6 = load i32, i32* %i, align 4, !dbg !74
  %idxprom = sext i32 %6 to i64, !dbg !73
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !73
  store i32 %conv5, i32* %arrayidx, align 4, !dbg !75
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !77
  %inc = add nsw i32 %7, 1, !dbg !77
  store i32 %inc, i32* %i, align 4, !dbg !77
  br label %for.cond, !dbg !78, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !81, metadata !DIExpression()), !dbg !82
  %8 = load i32*, i32** %in, align 8, !dbg !83
  %arrayidx6 = getelementptr inbounds i32, i32* %8, i64 0, !dbg !83
  %call7 = call i32 @reduction(i32* %arrayidx6), !dbg !84
  store i32 %call7, i32* %sum, align 4, !dbg !82
  %9 = load i32, i32* %sum, align 4, !dbg !85
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9), !dbg !86
  ret i32 0, !dbg !87
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "reduction.c", directory: "/home/coco/work/benchmark_codes/reduction")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 10.0.1 "}
!10 = distinct !DISubprogram(name: "reduction", scope: !1, file: !1, line: 7, type: !11, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!5, !4}
!13 = !DILocalVariable(name: "in", arg: 1, scope: !10, file: !1, line: 7, type: !4)
!14 = !DILocation(line: 7, column: 20, scope: !10)
!15 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 9, type: !5)
!16 = !DILocation(line: 9, column: 7, scope: !10)
!17 = !DILocalVariable(name: "sum", scope: !10, file: !1, line: 9, type: !5)
!18 = !DILocation(line: 9, column: 18, scope: !10)
!19 = !DILocation(line: 9, column: 14, scope: !10)
!20 = !DILabel(scope: !10, name: "sum", file: !1, line: 13)
!21 = !DILocation(line: 13, column: 3, scope: !10)
!22 = !DILocation(line: 13, column: 14, scope: !23)
!23 = distinct !DILexicalBlock(scope: !10, file: !1, line: 13, column: 7)
!24 = !DILocation(line: 13, column: 12, scope: !23)
!25 = !DILocation(line: 13, column: 19, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 13, column: 7)
!27 = !DILocation(line: 13, column: 21, scope: !26)
!28 = !DILocation(line: 13, column: 7, scope: !23)
!29 = !DILocation(line: 14, column: 12, scope: !26)
!30 = !DILocation(line: 14, column: 15, scope: !26)
!31 = !DILocation(line: 14, column: 9, scope: !26)
!32 = !DILocation(line: 14, column: 5, scope: !26)
!33 = !DILocation(line: 13, column: 29, scope: !26)
!34 = !DILocation(line: 13, column: 7, scope: !26)
!35 = distinct !{!35, !28, !36}
!36 = !DILocation(line: 14, column: 16, scope: !23)
!37 = !DILocation(line: 16, column: 10, scope: !10)
!38 = !DILocation(line: 16, column: 3, scope: !10)
!39 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !40, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{!5}
!42 = !DILocalVariable(name: "in", scope: !39, file: !1, line: 22, type: !4)
!43 = !DILocation(line: 22, column: 8, scope: !39)
!44 = !DILocation(line: 23, column: 16, scope: !39)
!45 = !DILocation(line: 23, column: 8, scope: !39)
!46 = !DILocation(line: 23, column: 6, scope: !39)
!47 = !DILocalVariable(name: "i", scope: !39, file: !1, line: 25, type: !5)
!48 = !DILocation(line: 25, column: 7, scope: !39)
!49 = !DILocalVariable(name: "max", scope: !39, file: !1, line: 26, type: !5)
!50 = !DILocation(line: 26, column: 7, scope: !39)
!51 = !DILocalVariable(name: "min", scope: !39, file: !1, line: 27, type: !5)
!52 = !DILocation(line: 27, column: 7, scope: !39)
!53 = !DILocation(line: 28, column: 3, scope: !39)
!54 = !DILocation(line: 29, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !39, file: !1, line: 29, column: 3)
!56 = !DILocation(line: 29, column: 8, scope: !55)
!57 = !DILocation(line: 29, column: 15, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 29, column: 3)
!59 = !DILocation(line: 29, column: 17, scope: !58)
!60 = !DILocation(line: 29, column: 3, scope: !55)
!61 = !DILocation(line: 31, column: 19, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 30, column: 3)
!63 = !DILocation(line: 31, column: 25, scope: !62)
!64 = !DILocation(line: 31, column: 32, scope: !62)
!65 = !DILocation(line: 31, column: 41, scope: !62)
!66 = !DILocation(line: 31, column: 47, scope: !62)
!67 = !DILocation(line: 31, column: 45, scope: !62)
!68 = !DILocation(line: 31, column: 40, scope: !62)
!69 = !DILocation(line: 31, column: 38, scope: !62)
!70 = !DILocation(line: 31, column: 52, scope: !62)
!71 = !DILocation(line: 31, column: 23, scope: !62)
!72 = !DILocation(line: 31, column: 13, scope: !62)
!73 = !DILocation(line: 31, column: 5, scope: !62)
!74 = !DILocation(line: 31, column: 8, scope: !62)
!75 = !DILocation(line: 31, column: 11, scope: !62)
!76 = !DILocation(line: 32, column: 3, scope: !62)
!77 = !DILocation(line: 29, column: 25, scope: !58)
!78 = !DILocation(line: 29, column: 3, scope: !58)
!79 = distinct !{!79, !60, !80}
!80 = !DILocation(line: 32, column: 3, scope: !55)
!81 = !DILocalVariable(name: "sum", scope: !39, file: !1, line: 37, type: !5)
!82 = !DILocation(line: 37, column: 7, scope: !39)
!83 = !DILocation(line: 37, column: 24, scope: !39)
!84 = !DILocation(line: 37, column: 13, scope: !39)
!85 = !DILocation(line: 41, column: 23, scope: !39)
!86 = !DILocation(line: 41, column: 3, scope: !39)
!87 = !DILocation(line: 42, column: 3, scope: !39)
