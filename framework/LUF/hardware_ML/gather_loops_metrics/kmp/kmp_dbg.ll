; ModuleID = 'kmp.c'
source_filename = "kmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @CPF(i8* %pattern, i32* %kmpNext) #0 !dbg !7 {
entry:
  %pattern.addr = alloca i8*, align 8
  %kmpNext.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  store i8* %pattern, i8** %pattern.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pattern.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32* %kmpNext, i32** %kmpNext.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %kmpNext.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %k, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %q, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %k, align 4, !dbg !26
  %0 = load i32*, i32** %kmpNext.addr, align 8, !dbg !27
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !27
  store i32 0, i32* %arrayidx, align 4, !dbg !28
  br label %c1, !dbg !27

c1:                                               ; preds = %entry
  call void @llvm.dbg.label(metadata !29), !dbg !30
  store i32 1, i32* %q, align 4, !dbg !31
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %c1
  %1 = load i32, i32* %q, align 4, !dbg !34
  %cmp = icmp slt i32 %1, 4, !dbg !36
  br i1 %cmp, label %for.body, label %for.end, !dbg !37

for.body:                                         ; preds = %for.cond
  br label %c2, !dbg !38

c2:                                               ; preds = %for.body
  call void @llvm.dbg.label(metadata !39), !dbg !41
  br label %while.cond, !dbg !42

while.cond:                                       ; preds = %while.body, %c2
  %2 = load i32, i32* %k, align 4, !dbg !43
  %cmp1 = icmp sgt i32 %2, 0, !dbg !44
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !45

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %pattern.addr, align 8, !dbg !46
  %4 = load i32, i32* %k, align 4, !dbg !47
  %idxprom = sext i32 %4 to i64, !dbg !46
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 %idxprom, !dbg !46
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !46
  %conv = sext i8 %5 to i32, !dbg !46
  %6 = load i8*, i8** %pattern.addr, align 8, !dbg !48
  %7 = load i32, i32* %q, align 4, !dbg !49
  %idxprom3 = sext i32 %7 to i64, !dbg !48
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3, !dbg !48
  %8 = load i8, i8* %arrayidx4, align 1, !dbg !48
  %conv5 = sext i8 %8 to i32, !dbg !48
  %cmp6 = icmp ne i32 %conv, %conv5, !dbg !50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ], !dbg !51
  br i1 %9, label %while.body, label %while.end, !dbg !42

while.body:                                       ; preds = %land.end
  %10 = load i32*, i32** %kmpNext.addr, align 8, !dbg !52
  %11 = load i32, i32* %q, align 4, !dbg !54
  %idxprom8 = sext i32 %11 to i64, !dbg !52
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %idxprom8, !dbg !52
  %12 = load i32, i32* %arrayidx9, align 4, !dbg !52
  store i32 %12, i32* %k, align 4, !dbg !55
  br label %while.cond, !dbg !42, !llvm.loop !56

while.end:                                        ; preds = %land.end
  %13 = load i8*, i8** %pattern.addr, align 8, !dbg !58
  %14 = load i32, i32* %k, align 4, !dbg !60
  %idxprom10 = sext i32 %14 to i64, !dbg !58
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom10, !dbg !58
  %15 = load i8, i8* %arrayidx11, align 1, !dbg !58
  %conv12 = sext i8 %15 to i32, !dbg !58
  %16 = load i8*, i8** %pattern.addr, align 8, !dbg !61
  %17 = load i32, i32* %q, align 4, !dbg !62
  %idxprom13 = sext i32 %17 to i64, !dbg !61
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %idxprom13, !dbg !61
  %18 = load i8, i8* %arrayidx14, align 1, !dbg !61
  %conv15 = sext i8 %18 to i32, !dbg !61
  %cmp16 = icmp eq i32 %conv12, %conv15, !dbg !63
  br i1 %cmp16, label %if.then, label %if.end, !dbg !64

if.then:                                          ; preds = %while.end
  %19 = load i32, i32* %k, align 4, !dbg !65
  %inc = add nsw i32 %19, 1, !dbg !65
  store i32 %inc, i32* %k, align 4, !dbg !65
  br label %if.end, !dbg !67

if.end:                                           ; preds = %if.then, %while.end
  %20 = load i32, i32* %k, align 4, !dbg !68
  %21 = load i32*, i32** %kmpNext.addr, align 8, !dbg !69
  %22 = load i32, i32* %q, align 4, !dbg !70
  %idxprom18 = sext i32 %22 to i64, !dbg !69
  %arrayidx19 = getelementptr inbounds i32, i32* %21, i64 %idxprom18, !dbg !69
  store i32 %20, i32* %arrayidx19, align 4, !dbg !71
  br label %for.inc, !dbg !72

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %q, align 4, !dbg !73
  %inc20 = add nsw i32 %23, 1, !dbg !73
  store i32 %inc20, i32* %q, align 4, !dbg !73
  br label %for.cond, !dbg !74, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  ret void, !dbg !77
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kmp(i8* %host_input, i32* %host_n_matches, i8* %pattern, i8* %input, i32* %kmpNext, i32* %n_matches) #0 !dbg !78 {
entry:
  %host_input.addr = alloca i8*, align 8
  %host_n_matches.addr = alloca i32*, align 8
  %pattern.addr = alloca i8*, align 8
  %input.addr = alloca i8*, align 8
  %kmpNext.addr = alloca i32*, align 8
  %n_matches.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store i8* %host_input, i8** %host_input.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %host_input.addr, metadata !81, metadata !DIExpression()), !dbg !82
  store i32* %host_n_matches, i32** %host_n_matches.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_n_matches.addr, metadata !83, metadata !DIExpression()), !dbg !84
  store i8* %pattern, i8** %pattern.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pattern.addr, metadata !85, metadata !DIExpression()), !dbg !86
  store i8* %input, i8** %input.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %input.addr, metadata !87, metadata !DIExpression()), !dbg !88
  store i32* %kmpNext, i32** %kmpNext.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %kmpNext.addr, metadata !89, metadata !DIExpression()), !dbg !90
  store i32* %n_matches, i32** %n_matches.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n_matches.addr, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %i, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i32* %q, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i8*, i8** %host_input.addr, align 8, !dbg !97
  store i8* %0, i8** %input.addr, align 8, !dbg !98
  %1 = load i32*, i32** %host_n_matches.addr, align 8, !dbg !99
  store i32* %1, i32** %n_matches.addr, align 8, !dbg !100
  %2 = load i32*, i32** %n_matches.addr, align 8, !dbg !101
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0, !dbg !101
  store i32 0, i32* %arrayidx, align 4, !dbg !102
  %3 = load i8*, i8** %pattern.addr, align 8, !dbg !103
  %4 = load i32*, i32** %kmpNext.addr, align 8, !dbg !104
  call void @CPF(i8* %3, i32* %4), !dbg !105
  store i32 0, i32* %q, align 4, !dbg !106
  br label %k1, !dbg !107

k1:                                               ; preds = %entry
  call void @llvm.dbg.label(metadata !108), !dbg !109
  store i32 0, i32* %i, align 4, !dbg !110
  br label %for.cond, !dbg !112

for.cond:                                         ; preds = %for.inc, %k1
  %5 = load i32, i32* %i, align 4, !dbg !113
  %cmp = icmp slt i32 %5, 32411, !dbg !115
  br i1 %cmp, label %for.body, label %for.end, !dbg !116

for.body:                                         ; preds = %for.cond
  br label %k2, !dbg !117

k2:                                               ; preds = %for.body
  call void @llvm.dbg.label(metadata !118), !dbg !120
  br label %while.cond, !dbg !121

while.cond:                                       ; preds = %while.body, %k2
  %6 = load i32, i32* %q, align 4, !dbg !122
  %cmp1 = icmp sgt i32 %6, 0, !dbg !123
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !124

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %pattern.addr, align 8, !dbg !125
  %8 = load i32, i32* %q, align 4, !dbg !126
  %idxprom = sext i32 %8 to i64, !dbg !125
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom, !dbg !125
  %9 = load i8, i8* %arrayidx2, align 1, !dbg !125
  %conv = sext i8 %9 to i32, !dbg !125
  %10 = load i8*, i8** %input.addr, align 8, !dbg !127
  %11 = load i32, i32* %i, align 4, !dbg !128
  %idxprom3 = sext i32 %11 to i64, !dbg !127
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3, !dbg !127
  %12 = load i8, i8* %arrayidx4, align 1, !dbg !127
  %conv5 = sext i8 %12 to i32, !dbg !127
  %cmp6 = icmp ne i32 %conv, %conv5, !dbg !129
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ], !dbg !130
  br i1 %13, label %while.body, label %while.end, !dbg !121

while.body:                                       ; preds = %land.end
  %14 = load i32*, i32** %kmpNext.addr, align 8, !dbg !131
  %15 = load i32, i32* %q, align 4, !dbg !133
  %idxprom8 = sext i32 %15 to i64, !dbg !131
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8, !dbg !131
  %16 = load i32, i32* %arrayidx9, align 4, !dbg !131
  store i32 %16, i32* %q, align 4, !dbg !134
  br label %while.cond, !dbg !121, !llvm.loop !135

while.end:                                        ; preds = %land.end
  %17 = load i8*, i8** %pattern.addr, align 8, !dbg !137
  %18 = load i32, i32* %q, align 4, !dbg !139
  %idxprom10 = sext i32 %18 to i64, !dbg !137
  %arrayidx11 = getelementptr inbounds i8, i8* %17, i64 %idxprom10, !dbg !137
  %19 = load i8, i8* %arrayidx11, align 1, !dbg !137
  %conv12 = sext i8 %19 to i32, !dbg !137
  %20 = load i8*, i8** %input.addr, align 8, !dbg !140
  %21 = load i32, i32* %i, align 4, !dbg !141
  %idxprom13 = sext i32 %21 to i64, !dbg !140
  %arrayidx14 = getelementptr inbounds i8, i8* %20, i64 %idxprom13, !dbg !140
  %22 = load i8, i8* %arrayidx14, align 1, !dbg !140
  %conv15 = sext i8 %22 to i32, !dbg !140
  %cmp16 = icmp eq i32 %conv12, %conv15, !dbg !142
  br i1 %cmp16, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %while.end
  %23 = load i32, i32* %q, align 4, !dbg !144
  %inc = add nsw i32 %23, 1, !dbg !144
  store i32 %inc, i32* %q, align 4, !dbg !144
  br label %if.end, !dbg !146

if.end:                                           ; preds = %if.then, %while.end
  %24 = load i32, i32* %q, align 4, !dbg !147
  %cmp18 = icmp sge i32 %24, 4, !dbg !149
  br i1 %cmp18, label %if.then20, label %if.end25, !dbg !150

if.then20:                                        ; preds = %if.end
  %25 = load i32*, i32** %n_matches.addr, align 8, !dbg !151
  %arrayidx21 = getelementptr inbounds i32, i32* %25, i64 0, !dbg !151
  %26 = load i32, i32* %arrayidx21, align 4, !dbg !153
  %inc22 = add nsw i32 %26, 1, !dbg !153
  store i32 %inc22, i32* %arrayidx21, align 4, !dbg !153
  %27 = load i32*, i32** %kmpNext.addr, align 8, !dbg !154
  %28 = load i32, i32* %q, align 4, !dbg !155
  %sub = sub nsw i32 %28, 1, !dbg !156
  %idxprom23 = sext i32 %sub to i64, !dbg !154
  %arrayidx24 = getelementptr inbounds i32, i32* %27, i64 %idxprom23, !dbg !154
  %29 = load i32, i32* %arrayidx24, align 4, !dbg !154
  store i32 %29, i32* %q, align 4, !dbg !157
  br label %if.end25, !dbg !158

if.end25:                                         ; preds = %if.then20, %if.end
  br label %for.inc, !dbg !159

for.inc:                                          ; preds = %if.end25
  %30 = load i32, i32* %i, align 4, !dbg !160
  %inc26 = add nsw i32 %30, 1, !dbg !160
  store i32 %inc26, i32* %i, align 4, !dbg !160
  br label %for.cond, !dbg !161, !llvm.loop !162

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !164
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "kmp.c", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/kmp")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "CPF", scope: !1, file: !1, line: 11, type: !8, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !14, line: 26, baseType: !15)
!14 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 41, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "pattern", arg: 1, scope: !7, file: !1, line: 11, type: !10)
!19 = !DILocation(line: 11, column: 15, scope: !7)
!20 = !DILocalVariable(name: "kmpNext", arg: 2, scope: !7, file: !1, line: 11, type: !12)
!21 = !DILocation(line: 11, column: 46, scope: !7)
!22 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 12, type: !13)
!23 = !DILocation(line: 12, column: 13, scope: !7)
!24 = !DILocalVariable(name: "q", scope: !7, file: !1, line: 12, type: !13)
!25 = !DILocation(line: 12, column: 16, scope: !7)
!26 = !DILocation(line: 13, column: 7, scope: !7)
!27 = !DILocation(line: 14, column: 5, scope: !7)
!28 = !DILocation(line: 14, column: 16, scope: !7)
!29 = !DILabel(scope: !7, name: "c1", file: !1, line: 16)
!30 = !DILocation(line: 16, column: 5, scope: !7)
!31 = !DILocation(line: 16, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 16, column: 10)
!33 = !DILocation(line: 16, column: 14, scope: !32)
!34 = !DILocation(line: 16, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 16, column: 10)
!36 = !DILocation(line: 16, column: 23, scope: !35)
!37 = !DILocation(line: 16, column: 10, scope: !32)
!38 = !DILocation(line: 16, column: 43, scope: !35)
!39 = !DILabel(scope: !40, name: "c2", file: !1, line: 17)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 16, column: 43)
!41 = !DILocation(line: 17, column: 9, scope: !40)
!42 = !DILocation(line: 17, column: 14, scope: !40)
!43 = !DILocation(line: 17, column: 20, scope: !40)
!44 = !DILocation(line: 17, column: 22, scope: !40)
!45 = !DILocation(line: 17, column: 26, scope: !40)
!46 = !DILocation(line: 17, column: 29, scope: !40)
!47 = !DILocation(line: 17, column: 37, scope: !40)
!48 = !DILocation(line: 17, column: 43, scope: !40)
!49 = !DILocation(line: 17, column: 51, scope: !40)
!50 = !DILocation(line: 17, column: 40, scope: !40)
!51 = !DILocation(line: 0, scope: !40)
!52 = !DILocation(line: 18, column: 17, scope: !53)
!53 = distinct !DILexicalBlock(scope: !40, file: !1, line: 17, column: 54)
!54 = !DILocation(line: 18, column: 25, scope: !53)
!55 = !DILocation(line: 18, column: 15, scope: !53)
!56 = distinct !{!56, !42, !57}
!57 = !DILocation(line: 19, column: 9, scope: !40)
!58 = !DILocation(line: 20, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !40, file: !1, line: 20, column: 12)
!60 = !DILocation(line: 20, column: 20, scope: !59)
!61 = !DILocation(line: 20, column: 26, scope: !59)
!62 = !DILocation(line: 20, column: 34, scope: !59)
!63 = !DILocation(line: 20, column: 23, scope: !59)
!64 = !DILocation(line: 20, column: 12, scope: !40)
!65 = !DILocation(line: 21, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 20, column: 37)
!67 = !DILocation(line: 22, column: 9, scope: !66)
!68 = !DILocation(line: 23, column: 22, scope: !40)
!69 = !DILocation(line: 23, column: 9, scope: !40)
!70 = !DILocation(line: 23, column: 17, scope: !40)
!71 = !DILocation(line: 23, column: 20, scope: !40)
!72 = !DILocation(line: 24, column: 5, scope: !40)
!73 = !DILocation(line: 16, column: 40, scope: !35)
!74 = !DILocation(line: 16, column: 10, scope: !35)
!75 = distinct !{!75, !37, !76}
!76 = !DILocation(line: 24, column: 5, scope: !32)
!77 = !DILocation(line: 25, column: 1, scope: !7)
!78 = distinct !DISubprogram(name: "kmp", scope: !1, file: !1, line: 28, type: !79, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!79 = !DISubroutineType(types: !80)
!80 = !{!17, !10, !12, !10, !10, !12, !12}
!81 = !DILocalVariable(name: "host_input", arg: 1, scope: !78, file: !1, line: 28, type: !10)
!82 = !DILocation(line: 28, column: 15, scope: !78)
!83 = !DILocalVariable(name: "host_n_matches", arg: 2, scope: !78, file: !1, line: 29, type: !12)
!84 = !DILocation(line: 29, column: 18, scope: !78)
!85 = !DILocalVariable(name: "pattern", arg: 3, scope: !78, file: !1, line: 30, type: !10)
!86 = !DILocation(line: 30, column: 15, scope: !78)
!87 = !DILocalVariable(name: "input", arg: 4, scope: !78, file: !1, line: 31, type: !10)
!88 = !DILocation(line: 31, column: 15, scope: !78)
!89 = !DILocalVariable(name: "kmpNext", arg: 5, scope: !78, file: !1, line: 32, type: !12)
!90 = !DILocation(line: 32, column: 18, scope: !78)
!91 = !DILocalVariable(name: "n_matches", arg: 6, scope: !78, file: !1, line: 33, type: !12)
!92 = !DILocation(line: 33, column: 18, scope: !78)
!93 = !DILocalVariable(name: "i", scope: !78, file: !1, line: 34, type: !13)
!94 = !DILocation(line: 34, column: 13, scope: !78)
!95 = !DILocalVariable(name: "q", scope: !78, file: !1, line: 34, type: !13)
!96 = !DILocation(line: 34, column: 16, scope: !78)
!97 = !DILocation(line: 42, column: 13, scope: !78)
!98 = !DILocation(line: 42, column: 11, scope: !78)
!99 = !DILocation(line: 43, column: 17, scope: !78)
!100 = !DILocation(line: 43, column: 15, scope: !78)
!101 = !DILocation(line: 45, column: 5, scope: !78)
!102 = !DILocation(line: 45, column: 18, scope: !78)
!103 = !DILocation(line: 47, column: 9, scope: !78)
!104 = !DILocation(line: 47, column: 18, scope: !78)
!105 = !DILocation(line: 47, column: 5, scope: !78)
!106 = !DILocation(line: 49, column: 7, scope: !78)
!107 = !DILocation(line: 49, column: 5, scope: !78)
!108 = !DILabel(scope: !78, name: "k1", file: !1, line: 50)
!109 = !DILocation(line: 50, column: 5, scope: !78)
!110 = !DILocation(line: 50, column: 16, scope: !111)
!111 = distinct !DILexicalBlock(scope: !78, file: !1, line: 50, column: 10)
!112 = !DILocation(line: 50, column: 14, scope: !111)
!113 = !DILocation(line: 50, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 50, column: 10)
!115 = !DILocation(line: 50, column: 23, scope: !114)
!116 = !DILocation(line: 50, column: 10, scope: !111)
!117 = !DILocation(line: 50, column: 42, scope: !114)
!118 = !DILabel(scope: !119, name: "k2", file: !1, line: 51)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 50, column: 42)
!120 = !DILocation(line: 51, column: 9, scope: !119)
!121 = !DILocation(line: 51, column: 14, scope: !119)
!122 = !DILocation(line: 51, column: 21, scope: !119)
!123 = !DILocation(line: 51, column: 23, scope: !119)
!124 = !DILocation(line: 51, column: 27, scope: !119)
!125 = !DILocation(line: 51, column: 30, scope: !119)
!126 = !DILocation(line: 51, column: 38, scope: !119)
!127 = !DILocation(line: 51, column: 44, scope: !119)
!128 = !DILocation(line: 51, column: 50, scope: !119)
!129 = !DILocation(line: 51, column: 41, scope: !119)
!130 = !DILocation(line: 0, scope: !119)
!131 = !DILocation(line: 52, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !119, file: !1, line: 51, column: 53)
!133 = !DILocation(line: 52, column: 25, scope: !132)
!134 = !DILocation(line: 52, column: 15, scope: !132)
!135 = distinct !{!135, !121, !136}
!136 = !DILocation(line: 53, column: 9, scope: !119)
!137 = !DILocation(line: 54, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !119, file: !1, line: 54, column: 13)
!139 = !DILocation(line: 54, column: 21, scope: !138)
!140 = !DILocation(line: 54, column: 27, scope: !138)
!141 = !DILocation(line: 54, column: 33, scope: !138)
!142 = !DILocation(line: 54, column: 24, scope: !138)
!143 = !DILocation(line: 54, column: 13, scope: !119)
!144 = !DILocation(line: 55, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !1, line: 54, column: 36)
!146 = !DILocation(line: 56, column: 9, scope: !145)
!147 = !DILocation(line: 57, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !119, file: !1, line: 57, column: 13)
!149 = !DILocation(line: 57, column: 15, scope: !148)
!150 = !DILocation(line: 57, column: 13, scope: !119)
!151 = !DILocation(line: 58, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 57, column: 31)
!153 = !DILocation(line: 58, column: 25, scope: !152)
!154 = !DILocation(line: 59, column: 17, scope: !152)
!155 = !DILocation(line: 59, column: 25, scope: !152)
!156 = !DILocation(line: 59, column: 27, scope: !152)
!157 = !DILocation(line: 59, column: 15, scope: !152)
!158 = !DILocation(line: 60, column: 9, scope: !152)
!159 = !DILocation(line: 61, column: 5, scope: !119)
!160 = !DILocation(line: 50, column: 39, scope: !114)
!161 = !DILocation(line: 50, column: 10, scope: !114)
!162 = distinct !{!162, !116, !163}
!163 = !DILocation(line: 61, column: 5, scope: !111)
!164 = !DILocation(line: 68, column: 5, scope: !78)
