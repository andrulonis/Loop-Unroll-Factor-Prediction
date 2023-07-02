; ModuleID = 'sort.c'
source_filename = "sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @merge(i32* %a, i32 %start, i32 %m, i32 %stop) #0 !dbg !7 {
entry:
  %a.addr = alloca i32*, align 8
  %start.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %stop.addr = alloca i32, align 4
  %temp = alloca [2048 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp_j = alloca i32, align 4
  %tmp_i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %start, i32* %start.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %stop, i32* %stop.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %stop.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [2048 x i32]* %temp, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %j, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k, metadata !33, metadata !DIExpression()), !dbg !34
  br label %merge_label1, !dbg !35

merge_label1:                                     ; preds = %entry
  call void @llvm.dbg.label(metadata !36), !dbg !37
  %0 = load i32, i32* %start.addr, align 4, !dbg !38
  store i32 %0, i32* %i, align 4, !dbg !40
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %merge_label1
  %1 = load i32, i32* %i, align 4, !dbg !42
  %2 = load i32, i32* %m.addr, align 4, !dbg !44
  %cmp = icmp sle i32 %1, %2, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %a.addr, align 8, !dbg !47
  %4 = load i32, i32* %i, align 4, !dbg !49
  %idxprom = sext i32 %4 to i64, !dbg !47
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !47
  %5 = load i32, i32* %arrayidx, align 4, !dbg !47
  %6 = load i32, i32* %i, align 4, !dbg !50
  %idxprom1 = sext i32 %6 to i64, !dbg !51
  %arrayidx2 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom1, !dbg !51
  store i32 %5, i32* %arrayidx2, align 4, !dbg !52
  br label %for.inc, !dbg !53

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !54
  %inc = add nsw i32 %7, 1, !dbg !54
  store i32 %inc, i32* %i, align 4, !dbg !54
  br label %for.cond, !dbg !55, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  br label %merge_label2, !dbg !57

merge_label2:                                     ; preds = %for.end
  call void @llvm.dbg.label(metadata !58), !dbg !59
  %8 = load i32, i32* %m.addr, align 4, !dbg !60
  %add = add nsw i32 %8, 1, !dbg !62
  store i32 %add, i32* %j, align 4, !dbg !63
  br label %for.cond3, !dbg !64

for.cond3:                                        ; preds = %for.inc12, %merge_label2
  %9 = load i32, i32* %j, align 4, !dbg !65
  %10 = load i32, i32* %stop.addr, align 4, !dbg !67
  %cmp4 = icmp sle i32 %9, %10, !dbg !68
  br i1 %cmp4, label %for.body5, label %for.end14, !dbg !69

for.body5:                                        ; preds = %for.cond3
  %11 = load i32*, i32** %a.addr, align 8, !dbg !70
  %12 = load i32, i32* %j, align 4, !dbg !72
  %idxprom6 = sext i32 %12 to i64, !dbg !70
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6, !dbg !70
  %13 = load i32, i32* %arrayidx7, align 4, !dbg !70
  %14 = load i32, i32* %m.addr, align 4, !dbg !73
  %add8 = add nsw i32 %14, 1, !dbg !74
  %15 = load i32, i32* %stop.addr, align 4, !dbg !75
  %add9 = add nsw i32 %add8, %15, !dbg !76
  %16 = load i32, i32* %j, align 4, !dbg !77
  %sub = sub nsw i32 %add9, %16, !dbg !78
  %idxprom10 = sext i32 %sub to i64, !dbg !79
  %arrayidx11 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom10, !dbg !79
  store i32 %13, i32* %arrayidx11, align 4, !dbg !80
  br label %for.inc12, !dbg !81

for.inc12:                                        ; preds = %for.body5
  %17 = load i32, i32* %j, align 4, !dbg !82
  %inc13 = add nsw i32 %17, 1, !dbg !82
  store i32 %inc13, i32* %j, align 4, !dbg !82
  br label %for.cond3, !dbg !83, !llvm.loop !84

for.end14:                                        ; preds = %for.cond3
  %18 = load i32, i32* %start.addr, align 4, !dbg !86
  store i32 %18, i32* %i, align 4, !dbg !87
  %19 = load i32, i32* %stop.addr, align 4, !dbg !88
  store i32 %19, i32* %j, align 4, !dbg !89
  br label %merge_label3, !dbg !90

merge_label3:                                     ; preds = %for.end14
  call void @llvm.dbg.label(metadata !91), !dbg !92
  %20 = load i32, i32* %start.addr, align 4, !dbg !93
  store i32 %20, i32* %k, align 4, !dbg !95
  br label %for.cond15, !dbg !96

for.cond15:                                       ; preds = %for.inc28, %merge_label3
  %21 = load i32, i32* %k, align 4, !dbg !97
  %22 = load i32, i32* %stop.addr, align 4, !dbg !99
  %cmp16 = icmp sle i32 %21, %22, !dbg !100
  br i1 %cmp16, label %for.body17, label %for.end30, !dbg !101

for.body17:                                       ; preds = %for.cond15
  call void @llvm.dbg.declare(metadata i32* %tmp_j, metadata !102, metadata !DIExpression()), !dbg !104
  %23 = load i32, i32* %j, align 4, !dbg !105
  %idxprom18 = sext i32 %23 to i64, !dbg !106
  %arrayidx19 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom18, !dbg !106
  %24 = load i32, i32* %arrayidx19, align 4, !dbg !106
  store i32 %24, i32* %tmp_j, align 4, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %tmp_i, metadata !107, metadata !DIExpression()), !dbg !108
  %25 = load i32, i32* %i, align 4, !dbg !109
  %idxprom20 = sext i32 %25 to i64, !dbg !110
  %arrayidx21 = getelementptr inbounds [2048 x i32], [2048 x i32]* %temp, i64 0, i64 %idxprom20, !dbg !110
  %26 = load i32, i32* %arrayidx21, align 4, !dbg !110
  store i32 %26, i32* %tmp_i, align 4, !dbg !108
  %27 = load i32, i32* %tmp_j, align 4, !dbg !111
  %28 = load i32, i32* %tmp_i, align 4, !dbg !113
  %cmp22 = icmp slt i32 %27, %28, !dbg !114
  br i1 %cmp22, label %if.then, label %if.else, !dbg !115

if.then:                                          ; preds = %for.body17
  %29 = load i32, i32* %tmp_j, align 4, !dbg !116
  %30 = load i32*, i32** %a.addr, align 8, !dbg !118
  %31 = load i32, i32* %k, align 4, !dbg !119
  %idxprom23 = sext i32 %31 to i64, !dbg !118
  %arrayidx24 = getelementptr inbounds i32, i32* %30, i64 %idxprom23, !dbg !118
  store i32 %29, i32* %arrayidx24, align 4, !dbg !120
  %32 = load i32, i32* %j, align 4, !dbg !121
  %dec = add nsw i32 %32, -1, !dbg !121
  store i32 %dec, i32* %j, align 4, !dbg !121
  br label %if.end, !dbg !122

if.else:                                          ; preds = %for.body17
  %33 = load i32, i32* %tmp_i, align 4, !dbg !123
  %34 = load i32*, i32** %a.addr, align 8, !dbg !125
  %35 = load i32, i32* %k, align 4, !dbg !126
  %idxprom25 = sext i32 %35 to i64, !dbg !125
  %arrayidx26 = getelementptr inbounds i32, i32* %34, i64 %idxprom25, !dbg !125
  store i32 %33, i32* %arrayidx26, align 4, !dbg !127
  %36 = load i32, i32* %i, align 4, !dbg !128
  %inc27 = add nsw i32 %36, 1, !dbg !128
  store i32 %inc27, i32* %i, align 4, !dbg !128
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc28, !dbg !129

for.inc28:                                        ; preds = %if.end
  %37 = load i32, i32* %k, align 4, !dbg !130
  %inc29 = add nsw i32 %37, 1, !dbg !130
  store i32 %inc29, i32* %k, align 4, !dbg !130
  br label %for.cond15, !dbg !131, !llvm.loop !132

for.end30:                                        ; preds = %for.cond15
  ret void, !dbg !134
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ms_mergesort(i32* %host_a, i32* %a) #0 !dbg !135 {
entry:
  %host_a.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %start = alloca i32, align 4
  %stop = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %from = alloca i32, align 4
  %mid = alloca i32, align 4
  %to = alloca i32, align 4
  store i32* %host_a, i32** %host_a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_a.addr, metadata !138, metadata !DIExpression()), !dbg !139
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %start, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %stop, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %i, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i32* %m, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i32* %from, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %mid, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %to, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load i32*, i32** %host_a.addr, align 8, !dbg !156
  store i32* %0, i32** %a.addr, align 8, !dbg !157
  store i32 0, i32* %start, align 4, !dbg !158
  store i32 2048, i32* %stop, align 4, !dbg !159
  br label %mergesort_label1, !dbg !160

mergesort_label1:                                 ; preds = %entry
  call void @llvm.dbg.label(metadata !161), !dbg !162
  store i32 1, i32* %m, align 4, !dbg !163
  br label %for.cond, !dbg !165

for.cond:                                         ; preds = %for.inc11, %mergesort_label1
  %1 = load i32, i32* %m, align 4, !dbg !166
  %2 = load i32, i32* %stop, align 4, !dbg !168
  %3 = load i32, i32* %start, align 4, !dbg !169
  %sub = sub nsw i32 %2, %3, !dbg !170
  %cmp = icmp slt i32 %1, %sub, !dbg !171
  br i1 %cmp, label %for.body, label %for.end13, !dbg !172

for.body:                                         ; preds = %for.cond
  br label %mergesort_label2, !dbg !173

mergesort_label2:                                 ; preds = %for.body
  call void @llvm.dbg.label(metadata !174), !dbg !176
  %4 = load i32, i32* %start, align 4, !dbg !177
  store i32 %4, i32* %i, align 4, !dbg !179
  br label %for.cond1, !dbg !180

for.cond1:                                        ; preds = %for.inc, %mergesort_label2
  %5 = load i32, i32* %i, align 4, !dbg !181
  %6 = load i32, i32* %stop, align 4, !dbg !183
  %cmp2 = icmp slt i32 %5, %6, !dbg !184
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !185

for.body3:                                        ; preds = %for.cond1
  %7 = load i32, i32* %i, align 4, !dbg !186
  store i32 %7, i32* %from, align 4, !dbg !188
  %8 = load i32, i32* %i, align 4, !dbg !189
  %9 = load i32, i32* %m, align 4, !dbg !190
  %add = add nsw i32 %8, %9, !dbg !191
  %sub4 = sub nsw i32 %add, 1, !dbg !192
  store i32 %sub4, i32* %mid, align 4, !dbg !193
  %10 = load i32, i32* %i, align 4, !dbg !194
  %11 = load i32, i32* %m, align 4, !dbg !195
  %add5 = add nsw i32 %10, %11, !dbg !196
  %12 = load i32, i32* %m, align 4, !dbg !197
  %add6 = add nsw i32 %add5, %12, !dbg !198
  %sub7 = sub nsw i32 %add6, 1, !dbg !199
  store i32 %sub7, i32* %to, align 4, !dbg !200
  %13 = load i32, i32* %to, align 4, !dbg !201
  %14 = load i32, i32* %stop, align 4, !dbg !203
  %cmp8 = icmp slt i32 %13, %14, !dbg !204
  br i1 %cmp8, label %if.then, label %if.else, !dbg !205

if.then:                                          ; preds = %for.body3
  %15 = load i32*, i32** %a.addr, align 8, !dbg !206
  %16 = load i32, i32* %from, align 4, !dbg !208
  %17 = load i32, i32* %mid, align 4, !dbg !209
  %18 = load i32, i32* %to, align 4, !dbg !210
  call void @merge(i32* %15, i32 %16, i32 %17, i32 %18), !dbg !211
  br label %if.end, !dbg !212

if.else:                                          ; preds = %for.body3
  %19 = load i32*, i32** %a.addr, align 8, !dbg !213
  %20 = load i32, i32* %from, align 4, !dbg !215
  %21 = load i32, i32* %mid, align 4, !dbg !216
  %22 = load i32, i32* %stop, align 4, !dbg !217
  call void @merge(i32* %19, i32 %20, i32 %21, i32 %22), !dbg !218
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !219

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %m, align 4, !dbg !220
  %24 = load i32, i32* %m, align 4, !dbg !221
  %add9 = add nsw i32 %23, %24, !dbg !222
  %25 = load i32, i32* %i, align 4, !dbg !223
  %add10 = add nsw i32 %25, %add9, !dbg !223
  store i32 %add10, i32* %i, align 4, !dbg !223
  br label %for.cond1, !dbg !224, !llvm.loop !225

for.end:                                          ; preds = %for.cond1
  br label %for.inc11, !dbg !227

for.inc11:                                        ; preds = %for.end
  %26 = load i32, i32* %m, align 4, !dbg !228
  %27 = load i32, i32* %m, align 4, !dbg !229
  %add12 = add nsw i32 %27, %26, !dbg !229
  store i32 %add12, i32* %m, align 4, !dbg !229
  br label %for.cond, !dbg !230, !llvm.loop !231

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !233
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "sort.c", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/sort-merge")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "merge", scope: !1, file: !1, line: 7, type: !8, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !15, !15, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 26, baseType: !13)
!12 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !14, line: 41, baseType: !15)
!14 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 7, type: !10)
!17 = !DILocation(line: 7, column: 17, scope: !7)
!18 = !DILocalVariable(name: "start", arg: 2, scope: !7, file: !1, line: 7, type: !15)
!19 = !DILocation(line: 7, column: 30, scope: !7)
!20 = !DILocalVariable(name: "m", arg: 3, scope: !7, file: !1, line: 7, type: !15)
!21 = !DILocation(line: 7, column: 41, scope: !7)
!22 = !DILocalVariable(name: "stop", arg: 4, scope: !7, file: !1, line: 7, type: !15)
!23 = !DILocation(line: 7, column: 48, scope: !7)
!24 = !DILocalVariable(name: "temp", scope: !7, file: !1, line: 8, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 65536, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 2048)
!28 = !DILocation(line: 8, column: 10, scope: !7)
!29 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 9, type: !15)
!30 = !DILocation(line: 9, column: 9, scope: !7)
!31 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 9, type: !15)
!32 = !DILocation(line: 9, column: 12, scope: !7)
!33 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 9, type: !15)
!34 = !DILocation(line: 9, column: 15, scope: !7)
!35 = !DILocation(line: 9, column: 5, scope: !7)
!36 = !DILabel(scope: !7, name: "merge_label1", file: !1, line: 11)
!37 = !DILocation(line: 11, column: 5, scope: !7)
!38 = !DILocation(line: 11, column: 26, scope: !39)
!39 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 20)
!40 = !DILocation(line: 11, column: 25, scope: !39)
!41 = !DILocation(line: 11, column: 24, scope: !39)
!42 = !DILocation(line: 11, column: 33, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 11, column: 20)
!44 = !DILocation(line: 11, column: 36, scope: !43)
!45 = !DILocation(line: 11, column: 34, scope: !43)
!46 = !DILocation(line: 11, column: 20, scope: !39)
!47 = !DILocation(line: 12, column: 19, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 11, column: 43)
!49 = !DILocation(line: 12, column: 21, scope: !48)
!50 = !DILocation(line: 12, column: 14, scope: !48)
!51 = !DILocation(line: 12, column: 9, scope: !48)
!52 = !DILocation(line: 12, column: 17, scope: !48)
!53 = !DILocation(line: 13, column: 5, scope: !48)
!54 = !DILocation(line: 11, column: 40, scope: !43)
!55 = !DILocation(line: 11, column: 20, scope: !43)
!56 = distinct !{!56, !46, !57}
!57 = !DILocation(line: 13, column: 5, scope: !39)
!58 = !DILabel(scope: !7, name: "merge_label2", file: !1, line: 15)
!59 = !DILocation(line: 15, column: 5, scope: !7)
!60 = !DILocation(line: 15, column: 26, scope: !61)
!61 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 20)
!62 = !DILocation(line: 15, column: 27, scope: !61)
!63 = !DILocation(line: 15, column: 25, scope: !61)
!64 = !DILocation(line: 15, column: 24, scope: !61)
!65 = !DILocation(line: 15, column: 31, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !1, line: 15, column: 20)
!67 = !DILocation(line: 15, column: 34, scope: !66)
!68 = !DILocation(line: 15, column: 32, scope: !66)
!69 = !DILocation(line: 15, column: 20, scope: !61)
!70 = !DILocation(line: 16, column: 28, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 15, column: 44)
!72 = !DILocation(line: 16, column: 30, scope: !71)
!73 = !DILocation(line: 16, column: 14, scope: !71)
!74 = !DILocation(line: 16, column: 15, scope: !71)
!75 = !DILocation(line: 16, column: 18, scope: !71)
!76 = !DILocation(line: 16, column: 17, scope: !71)
!77 = !DILocation(line: 16, column: 23, scope: !71)
!78 = !DILocation(line: 16, column: 22, scope: !71)
!79 = !DILocation(line: 16, column: 9, scope: !71)
!80 = !DILocation(line: 16, column: 26, scope: !71)
!81 = !DILocation(line: 17, column: 5, scope: !71)
!82 = !DILocation(line: 15, column: 41, scope: !66)
!83 = !DILocation(line: 15, column: 20, scope: !66)
!84 = distinct !{!84, !69, !85}
!85 = !DILocation(line: 17, column: 5, scope: !61)
!86 = !DILocation(line: 19, column: 9, scope: !7)
!87 = !DILocation(line: 19, column: 7, scope: !7)
!88 = !DILocation(line: 20, column: 9, scope: !7)
!89 = !DILocation(line: 20, column: 7, scope: !7)
!90 = !DILocation(line: 20, column: 5, scope: !7)
!91 = !DILabel(scope: !7, name: "merge_label3", file: !1, line: 22)
!92 = !DILocation(line: 22, column: 5, scope: !7)
!93 = !DILocation(line: 22, column: 26, scope: !94)
!94 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 20)
!95 = !DILocation(line: 22, column: 25, scope: !94)
!96 = !DILocation(line: 22, column: 24, scope: !94)
!97 = !DILocation(line: 22, column: 33, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 22, column: 20)
!99 = !DILocation(line: 22, column: 36, scope: !98)
!100 = !DILocation(line: 22, column: 34, scope: !98)
!101 = !DILocation(line: 22, column: 20, scope: !94)
!102 = !DILocalVariable(name: "tmp_j", scope: !103, file: !1, line: 23, type: !11)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 22, column: 46)
!104 = !DILocation(line: 23, column: 14, scope: !103)
!105 = !DILocation(line: 23, column: 27, scope: !103)
!106 = !DILocation(line: 23, column: 22, scope: !103)
!107 = !DILocalVariable(name: "tmp_i", scope: !103, file: !1, line: 24, type: !11)
!108 = !DILocation(line: 24, column: 14, scope: !103)
!109 = !DILocation(line: 24, column: 27, scope: !103)
!110 = !DILocation(line: 24, column: 22, scope: !103)
!111 = !DILocation(line: 25, column: 12, scope: !112)
!112 = distinct !DILexicalBlock(scope: !103, file: !1, line: 25, column: 12)
!113 = !DILocation(line: 25, column: 20, scope: !112)
!114 = !DILocation(line: 25, column: 18, scope: !112)
!115 = !DILocation(line: 25, column: 12, scope: !103)
!116 = !DILocation(line: 26, column: 20, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 25, column: 27)
!118 = !DILocation(line: 26, column: 13, scope: !117)
!119 = !DILocation(line: 26, column: 15, scope: !117)
!120 = !DILocation(line: 26, column: 18, scope: !117)
!121 = !DILocation(line: 27, column: 14, scope: !117)
!122 = !DILocation(line: 28, column: 9, scope: !117)
!123 = !DILocation(line: 29, column: 20, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !1, line: 28, column: 16)
!125 = !DILocation(line: 29, column: 13, scope: !124)
!126 = !DILocation(line: 29, column: 15, scope: !124)
!127 = !DILocation(line: 29, column: 18, scope: !124)
!128 = !DILocation(line: 30, column: 14, scope: !124)
!129 = !DILocation(line: 32, column: 5, scope: !103)
!130 = !DILocation(line: 22, column: 43, scope: !98)
!131 = !DILocation(line: 22, column: 20, scope: !98)
!132 = distinct !{!132, !101, !133}
!133 = !DILocation(line: 32, column: 5, scope: !94)
!134 = !DILocation(line: 33, column: 1, scope: !7)
!135 = distinct !DISubprogram(name: "ms_mergesort", scope: !1, file: !1, line: 35, type: !136, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !10, !10}
!138 = !DILocalVariable(name: "host_a", arg: 1, scope: !135, file: !1, line: 35, type: !10)
!139 = !DILocation(line: 35, column: 25, scope: !135)
!140 = !DILocalVariable(name: "a", arg: 2, scope: !135, file: !1, line: 35, type: !10)
!141 = !DILocation(line: 35, column: 39, scope: !135)
!142 = !DILocalVariable(name: "start", scope: !135, file: !1, line: 36, type: !15)
!143 = !DILocation(line: 36, column: 9, scope: !135)
!144 = !DILocalVariable(name: "stop", scope: !135, file: !1, line: 36, type: !15)
!145 = !DILocation(line: 36, column: 16, scope: !135)
!146 = !DILocalVariable(name: "i", scope: !135, file: !1, line: 37, type: !15)
!147 = !DILocation(line: 37, column: 9, scope: !135)
!148 = !DILocalVariable(name: "m", scope: !135, file: !1, line: 37, type: !15)
!149 = !DILocation(line: 37, column: 12, scope: !135)
!150 = !DILocalVariable(name: "from", scope: !135, file: !1, line: 37, type: !15)
!151 = !DILocation(line: 37, column: 15, scope: !135)
!152 = !DILocalVariable(name: "mid", scope: !135, file: !1, line: 37, type: !15)
!153 = !DILocation(line: 37, column: 21, scope: !135)
!154 = !DILocalVariable(name: "to", scope: !135, file: !1, line: 37, type: !15)
!155 = !DILocation(line: 37, column: 26, scope: !135)
!156 = !DILocation(line: 42, column: 9, scope: !135)
!157 = !DILocation(line: 42, column: 7, scope: !135)
!158 = !DILocation(line: 45, column: 11, scope: !135)
!159 = !DILocation(line: 46, column: 10, scope: !135)
!160 = !DILocation(line: 46, column: 5, scope: !135)
!161 = !DILabel(scope: !135, name: "mergesort_label1", file: !1, line: 48)
!162 = !DILocation(line: 48, column: 5, scope: !135)
!163 = !DILocation(line: 48, column: 29, scope: !164)
!164 = distinct !DILexicalBlock(scope: !135, file: !1, line: 48, column: 24)
!165 = !DILocation(line: 48, column: 28, scope: !164)
!166 = !DILocation(line: 48, column: 33, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 48, column: 24)
!168 = !DILocation(line: 48, column: 35, scope: !167)
!169 = !DILocation(line: 48, column: 40, scope: !167)
!170 = !DILocation(line: 48, column: 39, scope: !167)
!171 = !DILocation(line: 48, column: 34, scope: !167)
!172 = !DILocation(line: 48, column: 24, scope: !164)
!173 = !DILocation(line: 48, column: 53, scope: !167)
!174 = !DILabel(scope: !175, name: "mergesort_label2", file: !1, line: 49)
!175 = distinct !DILexicalBlock(scope: !167, file: !1, line: 48, column: 53)
!176 = !DILocation(line: 49, column: 9, scope: !175)
!177 = !DILocation(line: 49, column: 34, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 49, column: 28)
!179 = !DILocation(line: 49, column: 33, scope: !178)
!180 = !DILocation(line: 49, column: 32, scope: !178)
!181 = !DILocation(line: 49, column: 41, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 49, column: 28)
!183 = !DILocation(line: 49, column: 43, scope: !182)
!184 = !DILocation(line: 49, column: 42, scope: !182)
!185 = !DILocation(line: 49, column: 28, scope: !178)
!186 = !DILocation(line: 50, column: 20, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !1, line: 49, column: 57)
!188 = !DILocation(line: 50, column: 18, scope: !187)
!189 = !DILocation(line: 51, column: 19, scope: !187)
!190 = !DILocation(line: 51, column: 21, scope: !187)
!191 = !DILocation(line: 51, column: 20, scope: !187)
!192 = !DILocation(line: 51, column: 22, scope: !187)
!193 = !DILocation(line: 51, column: 17, scope: !187)
!194 = !DILocation(line: 52, column: 18, scope: !187)
!195 = !DILocation(line: 52, column: 20, scope: !187)
!196 = !DILocation(line: 52, column: 19, scope: !187)
!197 = !DILocation(line: 52, column: 22, scope: !187)
!198 = !DILocation(line: 52, column: 21, scope: !187)
!199 = !DILocation(line: 52, column: 23, scope: !187)
!200 = !DILocation(line: 52, column: 16, scope: !187)
!201 = !DILocation(line: 53, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !187, file: !1, line: 53, column: 16)
!203 = !DILocation(line: 53, column: 21, scope: !202)
!204 = !DILocation(line: 53, column: 19, scope: !202)
!205 = !DILocation(line: 53, column: 16, scope: !187)
!206 = !DILocation(line: 54, column: 23, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !1, line: 53, column: 26)
!208 = !DILocation(line: 54, column: 26, scope: !207)
!209 = !DILocation(line: 54, column: 32, scope: !207)
!210 = !DILocation(line: 54, column: 37, scope: !207)
!211 = !DILocation(line: 54, column: 17, scope: !207)
!212 = !DILocation(line: 55, column: 13, scope: !207)
!213 = !DILocation(line: 57, column: 23, scope: !214)
!214 = distinct !DILexicalBlock(scope: !202, file: !1, line: 56, column: 17)
!215 = !DILocation(line: 57, column: 26, scope: !214)
!216 = !DILocation(line: 57, column: 32, scope: !214)
!217 = !DILocation(line: 57, column: 37, scope: !214)
!218 = !DILocation(line: 57, column: 17, scope: !214)
!219 = !DILocation(line: 59, column: 9, scope: !187)
!220 = !DILocation(line: 49, column: 52, scope: !182)
!221 = !DILocation(line: 49, column: 54, scope: !182)
!222 = !DILocation(line: 49, column: 53, scope: !182)
!223 = !DILocation(line: 49, column: 50, scope: !182)
!224 = !DILocation(line: 49, column: 28, scope: !182)
!225 = distinct !{!225, !185, !226}
!226 = !DILocation(line: 59, column: 9, scope: !178)
!227 = !DILocation(line: 60, column: 5, scope: !175)
!228 = !DILocation(line: 48, column: 50, scope: !167)
!229 = !DILocation(line: 48, column: 48, scope: !167)
!230 = !DILocation(line: 48, column: 24, scope: !167)
!231 = distinct !{!231, !172, !232}
!232 = !DILocation(line: 60, column: 5, scope: !164)
!233 = !DILocation(line: 64, column: 1, scope: !135)
