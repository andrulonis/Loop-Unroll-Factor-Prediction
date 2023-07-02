; ModuleID = 'stencil.c'
source_filename = "stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil(i32* %host_orig, i32* %host_sol, i32* %orig, i32* %sol, i32* %filter) #0 !dbg !13 {
entry:
  %host_orig.addr = alloca i32*, align 8
  %host_sol.addr = alloca i32*, align 8
  %orig.addr = alloca i32*, align 8
  %sol.addr = alloca i32*, align 8
  %filter.addr = alloca i32*, align 8
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %temp = alloca i32, align 4
  %mul = alloca i32, align 4
  store i32* %host_orig, i32** %host_orig.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_orig.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i32* %host_sol, i32** %host_sol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_sol.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store i32* %orig, i32** %orig.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %orig.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store i32* %sol, i32** %sol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sol.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i32* %filter, i32** %filter.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %filter.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %r, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %c, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k1, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %k2, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %mul, metadata !37, metadata !DIExpression()), !dbg !38
  %0 = load i32*, i32** %host_orig.addr, align 8, !dbg !39
  store i32* %0, i32** %orig.addr, align 8, !dbg !40
  %1 = load i32*, i32** %host_sol.addr, align 8, !dbg !41
  store i32* %1, i32** %sol.addr, align 8, !dbg !42
  br label %stencil_label1, !dbg !43

stencil_label1:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !44), !dbg !45
  store i32 0, i32* %r, align 4, !dbg !46
  br label %for.cond, !dbg !48

for.cond:                                         ; preds = %for.inc29, %stencil_label1
  %2 = load i32, i32* %r, align 4, !dbg !49
  %cmp = icmp slt i32 %2, 126, !dbg !51
  br i1 %cmp, label %for.body, label %for.end31, !dbg !52

for.body:                                         ; preds = %for.cond
  br label %stencil_label2, !dbg !53

stencil_label2:                                   ; preds = %for.body
  call void @llvm.dbg.label(metadata !54), !dbg !56
  store i32 0, i32* %c, align 4, !dbg !57
  br label %for.cond1, !dbg !59

for.cond1:                                        ; preds = %for.inc26, %stencil_label2
  %3 = load i32, i32* %c, align 4, !dbg !60
  %cmp2 = icmp slt i32 %3, 62, !dbg !62
  br i1 %cmp2, label %for.body3, label %for.end28, !dbg !63

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %temp, align 4, !dbg !64
  br label %stencil_label3, !dbg !66

stencil_label3:                                   ; preds = %for.body3
  call void @llvm.dbg.label(metadata !67), !dbg !68
  store i32 0, i32* %k1, align 4, !dbg !69
  br label %for.cond4, !dbg !71

for.cond4:                                        ; preds = %for.inc19, %stencil_label3
  %4 = load i32, i32* %k1, align 4, !dbg !72
  %cmp5 = icmp slt i32 %4, 3, !dbg !74
  br i1 %cmp5, label %for.body6, label %for.end21, !dbg !75

for.body6:                                        ; preds = %for.cond4
  br label %stencil_label4, !dbg !76

stencil_label4:                                   ; preds = %for.body6
  call void @llvm.dbg.label(metadata !77), !dbg !79
  store i32 0, i32* %k2, align 4, !dbg !80
  br label %for.cond7, !dbg !82

for.cond7:                                        ; preds = %for.inc, %stencil_label4
  %5 = load i32, i32* %k2, align 4, !dbg !83
  %cmp8 = icmp slt i32 %5, 3, !dbg !85
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !86

for.body9:                                        ; preds = %for.cond7
  %6 = load i32*, i32** %filter.addr, align 8, !dbg !87
  %7 = load i32, i32* %k1, align 4, !dbg !89
  %mul10 = mul nsw i32 %7, 3, !dbg !90
  %8 = load i32, i32* %k2, align 4, !dbg !91
  %add = add nsw i32 %mul10, %8, !dbg !92
  %idxprom = sext i32 %add to i64, !dbg !87
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom, !dbg !87
  %9 = load i32, i32* %arrayidx, align 4, !dbg !87
  %10 = load i32*, i32** %orig.addr, align 8, !dbg !93
  %11 = load i32, i32* %r, align 4, !dbg !94
  %12 = load i32, i32* %k1, align 4, !dbg !95
  %add11 = add nsw i32 %11, %12, !dbg !96
  %mul12 = mul nsw i32 %add11, 64, !dbg !97
  %13 = load i32, i32* %c, align 4, !dbg !98
  %add13 = add nsw i32 %mul12, %13, !dbg !99
  %14 = load i32, i32* %k2, align 4, !dbg !100
  %add14 = add nsw i32 %add13, %14, !dbg !101
  %idxprom15 = sext i32 %add14 to i64, !dbg !93
  %arrayidx16 = getelementptr inbounds i32, i32* %10, i64 %idxprom15, !dbg !93
  %15 = load i32, i32* %arrayidx16, align 4, !dbg !93
  %mul17 = mul nsw i32 %9, %15, !dbg !102
  store i32 %mul17, i32* %mul, align 4, !dbg !103
  %16 = load i32, i32* %mul, align 4, !dbg !104
  %17 = load i32, i32* %temp, align 4, !dbg !105
  %add18 = add nsw i32 %17, %16, !dbg !105
  store i32 %add18, i32* %temp, align 4, !dbg !105
  br label %for.inc, !dbg !106

for.inc:                                          ; preds = %for.body9
  %18 = load i32, i32* %k2, align 4, !dbg !107
  %inc = add nsw i32 %18, 1, !dbg !107
  store i32 %inc, i32* %k2, align 4, !dbg !107
  br label %for.cond7, !dbg !108, !llvm.loop !109

for.end:                                          ; preds = %for.cond7
  br label %for.inc19, !dbg !111

for.inc19:                                        ; preds = %for.end
  %19 = load i32, i32* %k1, align 4, !dbg !112
  %inc20 = add nsw i32 %19, 1, !dbg !112
  store i32 %inc20, i32* %k1, align 4, !dbg !112
  br label %for.cond4, !dbg !113, !llvm.loop !114

for.end21:                                        ; preds = %for.cond4
  %20 = load i32, i32* %temp, align 4, !dbg !116
  %21 = load i32*, i32** %sol.addr, align 8, !dbg !117
  %22 = load i32, i32* %r, align 4, !dbg !118
  %mul22 = mul nsw i32 %22, 64, !dbg !119
  %23 = load i32, i32* %c, align 4, !dbg !120
  %add23 = add nsw i32 %mul22, %23, !dbg !121
  %idxprom24 = sext i32 %add23 to i64, !dbg !117
  %arrayidx25 = getelementptr inbounds i32, i32* %21, i64 %idxprom24, !dbg !117
  store i32 %20, i32* %arrayidx25, align 4, !dbg !122
  br label %for.inc26, !dbg !123

for.inc26:                                        ; preds = %for.end21
  %24 = load i32, i32* %c, align 4, !dbg !124
  %inc27 = add nsw i32 %24, 1, !dbg !124
  store i32 %inc27, i32* %c, align 4, !dbg !124
  br label %for.cond1, !dbg !125, !llvm.loop !126

for.end28:                                        ; preds = %for.cond1
  br label %for.inc29, !dbg !128

for.inc29:                                        ; preds = %for.end28
  %25 = load i32, i32* %r, align 4, !dbg !129
  %inc30 = add nsw i32 %25, 1, !dbg !129
  store i32 %inc30, i32* %r, align 4, !dbg !129
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end31:                                        ; preds = %for.cond
  ret void, !dbg !133
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stencil.c", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/stencil-stencil2d")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !5, line: 26, baseType: !6)
!5 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 41, baseType: !8)
!7 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "stencil", scope: !1, file: !1, line: 7, type: !14, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !16, !16, !16, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!17 = !DILocalVariable(name: "host_orig", arg: 1, scope: !13, file: !1, line: 7, type: !16)
!18 = !DILocation(line: 7, column: 20, scope: !13)
!19 = !DILocalVariable(name: "host_sol", arg: 2, scope: !13, file: !1, line: 8, type: !16)
!20 = !DILocation(line: 8, column: 20, scope: !13)
!21 = !DILocalVariable(name: "orig", arg: 3, scope: !13, file: !1, line: 9, type: !16)
!22 = !DILocation(line: 9, column: 20, scope: !13)
!23 = !DILocalVariable(name: "sol", arg: 4, scope: !13, file: !1, line: 10, type: !16)
!24 = !DILocation(line: 10, column: 20, scope: !13)
!25 = !DILocalVariable(name: "filter", arg: 5, scope: !13, file: !1, line: 11, type: !16)
!26 = !DILocation(line: 11, column: 20, scope: !13)
!27 = !DILocalVariable(name: "r", scope: !13, file: !1, line: 12, type: !8)
!28 = !DILocation(line: 12, column: 9, scope: !13)
!29 = !DILocalVariable(name: "c", scope: !13, file: !1, line: 12, type: !8)
!30 = !DILocation(line: 12, column: 12, scope: !13)
!31 = !DILocalVariable(name: "k1", scope: !13, file: !1, line: 12, type: !8)
!32 = !DILocation(line: 12, column: 15, scope: !13)
!33 = !DILocalVariable(name: "k2", scope: !13, file: !1, line: 12, type: !8)
!34 = !DILocation(line: 12, column: 19, scope: !13)
!35 = !DILocalVariable(name: "temp", scope: !13, file: !1, line: 13, type: !4)
!36 = !DILocation(line: 13, column: 10, scope: !13)
!37 = !DILocalVariable(name: "mul", scope: !13, file: !1, line: 13, type: !4)
!38 = !DILocation(line: 13, column: 16, scope: !13)
!39 = !DILocation(line: 20, column: 12, scope: !13)
!40 = !DILocation(line: 20, column: 10, scope: !13)
!41 = !DILocation(line: 21, column: 11, scope: !13)
!42 = !DILocation(line: 21, column: 9, scope: !13)
!43 = !DILocation(line: 21, column: 5, scope: !13)
!44 = !DILabel(scope: !13, name: "stencil_label1", file: !1, line: 24)
!45 = !DILocation(line: 24, column: 5, scope: !13)
!46 = !DILocation(line: 24, column: 26, scope: !47)
!47 = distinct !DILexicalBlock(scope: !13, file: !1, line: 24, column: 20)
!48 = !DILocation(line: 24, column: 25, scope: !47)
!49 = !DILocation(line: 24, column: 30, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 20)
!51 = !DILocation(line: 24, column: 31, scope: !50)
!52 = !DILocation(line: 24, column: 20, scope: !47)
!53 = !DILocation(line: 24, column: 49, scope: !50)
!54 = !DILabel(scope: !55, name: "stencil_label2", file: !1, line: 25)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 24, column: 49)
!56 = !DILocation(line: 25, column: 9, scope: !55)
!57 = !DILocation(line: 25, column: 30, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 25, column: 24)
!59 = !DILocation(line: 25, column: 29, scope: !58)
!60 = !DILocation(line: 25, column: 34, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 25, column: 24)
!62 = !DILocation(line: 25, column: 35, scope: !61)
!63 = !DILocation(line: 25, column: 24, scope: !58)
!64 = !DILocation(line: 26, column: 18, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 25, column: 53)
!66 = !DILocation(line: 26, column: 13, scope: !65)
!67 = !DILabel(scope: !65, name: "stencil_label3", file: !1, line: 27)
!68 = !DILocation(line: 27, column: 13, scope: !65)
!69 = !DILocation(line: 27, column: 35, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 27, column: 28)
!71 = !DILocation(line: 27, column: 33, scope: !70)
!72 = !DILocation(line: 27, column: 38, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 27, column: 28)
!74 = !DILocation(line: 27, column: 40, scope: !73)
!75 = !DILocation(line: 27, column: 28, scope: !70)
!76 = !DILocation(line: 27, column: 48, scope: !73)
!77 = !DILabel(scope: !78, name: "stencil_label4", file: !1, line: 28)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 27, column: 48)
!79 = !DILocation(line: 28, column: 17, scope: !78)
!80 = !DILocation(line: 28, column: 39, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 28, column: 32)
!82 = !DILocation(line: 28, column: 37, scope: !81)
!83 = !DILocation(line: 28, column: 42, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 28, column: 32)
!85 = !DILocation(line: 28, column: 44, scope: !84)
!86 = !DILocation(line: 28, column: 32, scope: !81)
!87 = !DILocation(line: 29, column: 27, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 28, column: 52)
!89 = !DILocation(line: 29, column: 34, scope: !88)
!90 = !DILocation(line: 29, column: 36, scope: !88)
!91 = !DILocation(line: 29, column: 41, scope: !88)
!92 = !DILocation(line: 29, column: 39, scope: !88)
!93 = !DILocation(line: 29, column: 47, scope: !88)
!94 = !DILocation(line: 29, column: 53, scope: !88)
!95 = !DILocation(line: 29, column: 55, scope: !88)
!96 = !DILocation(line: 29, column: 54, scope: !88)
!97 = !DILocation(line: 29, column: 58, scope: !88)
!98 = !DILocation(line: 29, column: 70, scope: !88)
!99 = !DILocation(line: 29, column: 68, scope: !88)
!100 = !DILocation(line: 29, column: 72, scope: !88)
!101 = !DILocation(line: 29, column: 71, scope: !88)
!102 = !DILocation(line: 29, column: 45, scope: !88)
!103 = !DILocation(line: 29, column: 25, scope: !88)
!104 = !DILocation(line: 30, column: 29, scope: !88)
!105 = !DILocation(line: 30, column: 26, scope: !88)
!106 = !DILocation(line: 31, column: 17, scope: !88)
!107 = !DILocation(line: 28, column: 49, scope: !84)
!108 = !DILocation(line: 28, column: 32, scope: !84)
!109 = distinct !{!109, !86, !110}
!110 = !DILocation(line: 31, column: 17, scope: !81)
!111 = !DILocation(line: 32, column: 13, scope: !78)
!112 = !DILocation(line: 27, column: 45, scope: !73)
!113 = !DILocation(line: 27, column: 28, scope: !73)
!114 = distinct !{!114, !75, !115}
!115 = !DILocation(line: 32, column: 13, scope: !70)
!116 = !DILocation(line: 33, column: 37, scope: !65)
!117 = !DILocation(line: 33, column: 13, scope: !65)
!118 = !DILocation(line: 33, column: 18, scope: !65)
!119 = !DILocation(line: 33, column: 19, scope: !65)
!120 = !DILocation(line: 33, column: 32, scope: !65)
!121 = !DILocation(line: 33, column: 30, scope: !65)
!122 = !DILocation(line: 33, column: 35, scope: !65)
!123 = !DILocation(line: 34, column: 9, scope: !65)
!124 = !DILocation(line: 25, column: 49, scope: !61)
!125 = !DILocation(line: 25, column: 24, scope: !61)
!126 = distinct !{!126, !63, !127}
!127 = !DILocation(line: 34, column: 9, scope: !58)
!128 = !DILocation(line: 35, column: 5, scope: !55)
!129 = !DILocation(line: 24, column: 45, scope: !50)
!130 = !DILocation(line: 24, column: 20, scope: !50)
!131 = distinct !{!131, !52, !132}
!132 = !DILocation(line: 35, column: 5, scope: !47)
!133 = !DILocation(line: 40, column: 1, scope: !13)
