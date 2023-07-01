; ModuleID = 'spmv.c'
source_filename = "spmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @spmv(double* %host_val, i32* %host_cols, i32* %host_rowDelimiters, double* %host_vec, double* %host_out, double* %val, i32* %cols, i32* %rowDelimiters, double* %vec, double* %out) #0 !dbg !7 {
entry:
  %host_val.addr = alloca double*, align 8
  %host_cols.addr = alloca i32*, align 8
  %host_rowDelimiters.addr = alloca i32*, align 8
  %host_vec.addr = alloca double*, align 8
  %host_out.addr = alloca double*, align 8
  %val.addr = alloca double*, align 8
  %cols.addr = alloca i32*, align 8
  %rowDelimiters.addr = alloca i32*, align 8
  %vec.addr = alloca double*, align 8
  %out.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca double, align 8
  %Si = alloca double, align 8
  %tmp_begin = alloca i32, align 4
  %tmp_end = alloca i32, align 4
  store double* %host_val, double** %host_val.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_val.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32* %host_cols, i32** %host_cols.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_cols.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store i32* %host_rowDelimiters, i32** %host_rowDelimiters.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_rowDelimiters.addr, metadata !22, metadata !DIExpression()), !dbg !23
  store double* %host_vec, double** %host_vec.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_vec.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store double* %host_out, double** %host_out.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_out.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store double* %val, double** %val.addr, align 8
  call void @llvm.dbg.declare(metadata double** %val.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store i32* %cols, i32** %cols.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %cols.addr, metadata !30, metadata !DIExpression()), !dbg !31
  store i32* %rowDelimiters, i32** %rowDelimiters.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %rowDelimiters.addr, metadata !32, metadata !DIExpression()), !dbg !33
  store double* %vec, double** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata double** %vec.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store double* %out, double** %out.addr, align 8
  call void @llvm.dbg.declare(metadata double** %out.addr, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %j, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata double* %sum, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata double* %Si, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load i32*, i32** %host_rowDelimiters.addr, align 8, !dbg !46
  store i32* %0, i32** %rowDelimiters.addr, align 8, !dbg !47
  %1 = load double*, double** %host_vec.addr, align 8, !dbg !48
  store double* %1, double** %vec.addr, align 8, !dbg !49
  %2 = load double*, double** %host_val.addr, align 8, !dbg !50
  store double* %2, double** %val.addr, align 8, !dbg !51
  %3 = load i32*, i32** %host_cols.addr, align 8, !dbg !52
  store i32* %3, i32** %cols.addr, align 8, !dbg !53
  %4 = load double*, double** %host_out.addr, align 8, !dbg !54
  store double* %4, double** %out.addr, align 8, !dbg !55
  br label %spmv_1, !dbg !56

spmv_1:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !57), !dbg !58
  store i32 0, i32* %i, align 4, !dbg !59
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc15, %spmv_1
  %5 = load i32, i32* %i, align 4, !dbg !62
  %cmp = icmp slt i32 %5, 494, !dbg !64
  br i1 %cmp, label %for.body, label %for.end17, !dbg !65

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8, !dbg !66
  store double 0.000000e+00, double* %Si, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %tmp_begin, metadata !69, metadata !DIExpression()), !dbg !70
  %6 = load i32*, i32** %rowDelimiters.addr, align 8, !dbg !71
  %7 = load i32, i32* %i, align 4, !dbg !72
  %idxprom = sext i32 %7 to i64, !dbg !71
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom, !dbg !71
  %8 = load i32, i32* %arrayidx, align 4, !dbg !71
  store i32 %8, i32* %tmp_begin, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %tmp_end, metadata !73, metadata !DIExpression()), !dbg !74
  %9 = load i32*, i32** %rowDelimiters.addr, align 8, !dbg !75
  %10 = load i32, i32* %i, align 4, !dbg !76
  %add = add nsw i32 %10, 1, !dbg !77
  %idxprom1 = sext i32 %add to i64, !dbg !75
  %arrayidx2 = getelementptr inbounds i32, i32* %9, i64 %idxprom1, !dbg !75
  %11 = load i32, i32* %arrayidx2, align 4, !dbg !75
  store i32 %11, i32* %tmp_end, align 4, !dbg !74
  br label %spmv_2, !dbg !78

spmv_2:                                           ; preds = %for.body
  call void @llvm.dbg.label(metadata !79), !dbg !80
  %12 = load i32, i32* %tmp_begin, align 4, !dbg !81
  store i32 %12, i32* %j, align 4, !dbg !83
  br label %for.cond3, !dbg !84

for.cond3:                                        ; preds = %for.inc, %spmv_2
  %13 = load i32, i32* %j, align 4, !dbg !85
  %14 = load i32, i32* %tmp_end, align 4, !dbg !87
  %cmp4 = icmp slt i32 %13, %14, !dbg !88
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !89

for.body5:                                        ; preds = %for.cond3
  %15 = load double*, double** %val.addr, align 8, !dbg !90
  %16 = load i32, i32* %j, align 4, !dbg !92
  %idxprom6 = sext i32 %16 to i64, !dbg !90
  %arrayidx7 = getelementptr inbounds double, double* %15, i64 %idxprom6, !dbg !90
  %17 = load double, double* %arrayidx7, align 8, !dbg !90
  %18 = load double*, double** %vec.addr, align 8, !dbg !93
  %19 = load i32*, i32** %cols.addr, align 8, !dbg !94
  %20 = load i32, i32* %j, align 4, !dbg !95
  %idxprom8 = sext i32 %20 to i64, !dbg !94
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom8, !dbg !94
  %21 = load i32, i32* %arrayidx9, align 4, !dbg !94
  %idxprom10 = sext i32 %21 to i64, !dbg !93
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom10, !dbg !93
  %22 = load double, double* %arrayidx11, align 8, !dbg !93
  %mul = fmul double %17, %22, !dbg !96
  store double %mul, double* %Si, align 8, !dbg !97
  %23 = load double, double* %sum, align 8, !dbg !98
  %24 = load double, double* %Si, align 8, !dbg !99
  %add12 = fadd double %23, %24, !dbg !100
  store double %add12, double* %sum, align 8, !dbg !101
  br label %for.inc, !dbg !102

for.inc:                                          ; preds = %for.body5
  %25 = load i32, i32* %j, align 4, !dbg !103
  %inc = add nsw i32 %25, 1, !dbg !103
  store i32 %inc, i32* %j, align 4, !dbg !103
  br label %for.cond3, !dbg !104, !llvm.loop !105

for.end:                                          ; preds = %for.cond3
  %26 = load double, double* %sum, align 8, !dbg !107
  %27 = load double*, double** %out.addr, align 8, !dbg !108
  %28 = load i32, i32* %i, align 4, !dbg !109
  %idxprom13 = sext i32 %28 to i64, !dbg !108
  %arrayidx14 = getelementptr inbounds double, double* %27, i64 %idxprom13, !dbg !108
  store double %26, double* %arrayidx14, align 8, !dbg !110
  br label %for.inc15, !dbg !111

for.inc15:                                        ; preds = %for.end
  %29 = load i32, i32* %i, align 4, !dbg !112
  %inc16 = add nsw i32 %29, 1, !dbg !112
  store i32 %inc16, i32* %i, align 4, !dbg !112
  br label %for.cond, !dbg !113, !llvm.loop !114

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !116
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "spmv.c", directory: "/home/coco/work/benchmark_codes/spmv-crs")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "spmv", scope: !1, file: !1, line: 12, type: !8, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !12, !10, !10, !10, !12, !12, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !14, line: 26, baseType: !15)
!14 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 41, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "host_val", arg: 1, scope: !7, file: !1, line: 12, type: !10)
!19 = !DILocation(line: 12, column: 17, scope: !7)
!20 = !DILocalVariable(name: "host_cols", arg: 2, scope: !7, file: !1, line: 13, type: !12)
!21 = !DILocation(line: 13, column: 20, scope: !7)
!22 = !DILocalVariable(name: "host_rowDelimiters", arg: 3, scope: !7, file: !1, line: 14, type: !12)
!23 = !DILocation(line: 14, column: 20, scope: !7)
!24 = !DILocalVariable(name: "host_vec", arg: 4, scope: !7, file: !1, line: 15, type: !10)
!25 = !DILocation(line: 15, column: 17, scope: !7)
!26 = !DILocalVariable(name: "host_out", arg: 5, scope: !7, file: !1, line: 16, type: !10)
!27 = !DILocation(line: 16, column: 17, scope: !7)
!28 = !DILocalVariable(name: "val", arg: 6, scope: !7, file: !1, line: 17, type: !10)
!29 = !DILocation(line: 17, column: 17, scope: !7)
!30 = !DILocalVariable(name: "cols", arg: 7, scope: !7, file: !1, line: 18, type: !12)
!31 = !DILocation(line: 18, column: 20, scope: !7)
!32 = !DILocalVariable(name: "rowDelimiters", arg: 8, scope: !7, file: !1, line: 19, type: !12)
!33 = !DILocation(line: 19, column: 20, scope: !7)
!34 = !DILocalVariable(name: "vec", arg: 9, scope: !7, file: !1, line: 20, type: !10)
!35 = !DILocation(line: 20, column: 17, scope: !7)
!36 = !DILocalVariable(name: "out", arg: 10, scope: !7, file: !1, line: 21, type: !10)
!37 = !DILocation(line: 21, column: 17, scope: !7)
!38 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 22, type: !17)
!39 = !DILocation(line: 22, column: 9, scope: !7)
!40 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 22, type: !17)
!41 = !DILocation(line: 22, column: 12, scope: !7)
!42 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 23, type: !11)
!43 = !DILocation(line: 23, column: 10, scope: !7)
!44 = !DILocalVariable(name: "Si", scope: !7, file: !1, line: 23, type: !11)
!45 = !DILocation(line: 23, column: 15, scope: !7)
!46 = !DILocation(line: 31, column: 21, scope: !7)
!47 = !DILocation(line: 31, column: 19, scope: !7)
!48 = !DILocation(line: 32, column: 11, scope: !7)
!49 = !DILocation(line: 32, column: 9, scope: !7)
!50 = !DILocation(line: 33, column: 11, scope: !7)
!51 = !DILocation(line: 33, column: 9, scope: !7)
!52 = !DILocation(line: 34, column: 12, scope: !7)
!53 = !DILocation(line: 34, column: 10, scope: !7)
!54 = !DILocation(line: 35, column: 11, scope: !7)
!55 = !DILocation(line: 35, column: 9, scope: !7)
!56 = !DILocation(line: 35, column: 5, scope: !7)
!57 = !DILabel(scope: !7, name: "spmv_1", file: !1, line: 38)
!58 = !DILocation(line: 38, column: 5, scope: !7)
!59 = !DILocation(line: 38, column: 20, scope: !60)
!60 = distinct !DILexicalBlock(scope: !7, file: !1, line: 38, column: 14)
!61 = !DILocation(line: 38, column: 18, scope: !60)
!62 = !DILocation(line: 38, column: 25, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 38, column: 14)
!64 = !DILocation(line: 38, column: 27, scope: !63)
!65 = !DILocation(line: 38, column: 14, scope: !60)
!66 = !DILocation(line: 39, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 38, column: 36)
!68 = !DILocation(line: 39, column: 21, scope: !67)
!69 = !DILocalVariable(name: "tmp_begin", scope: !67, file: !1, line: 40, type: !17)
!70 = !DILocation(line: 40, column: 13, scope: !67)
!71 = !DILocation(line: 40, column: 25, scope: !67)
!72 = !DILocation(line: 40, column: 39, scope: !67)
!73 = !DILocalVariable(name: "tmp_end", scope: !67, file: !1, line: 41, type: !17)
!74 = !DILocation(line: 41, column: 13, scope: !67)
!75 = !DILocation(line: 41, column: 23, scope: !67)
!76 = !DILocation(line: 41, column: 37, scope: !67)
!77 = !DILocation(line: 41, column: 38, scope: !67)
!78 = !DILocation(line: 41, column: 9, scope: !67)
!79 = !DILabel(scope: !67, name: "spmv_2", file: !1, line: 42)
!80 = !DILocation(line: 42, column: 9, scope: !67)
!81 = !DILocation(line: 42, column: 27, scope: !82)
!82 = distinct !DILexicalBlock(scope: !67, file: !1, line: 42, column: 18)
!83 = !DILocation(line: 42, column: 25, scope: !82)
!84 = !DILocation(line: 42, column: 23, scope: !82)
!85 = !DILocation(line: 42, column: 38, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 42, column: 18)
!87 = !DILocation(line: 42, column: 42, scope: !86)
!88 = !DILocation(line: 42, column: 40, scope: !86)
!89 = !DILocation(line: 42, column: 18, scope: !82)
!90 = !DILocation(line: 43, column: 18, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 42, column: 55)
!92 = !DILocation(line: 43, column: 22, scope: !91)
!93 = !DILocation(line: 43, column: 27, scope: !91)
!94 = !DILocation(line: 43, column: 31, scope: !91)
!95 = !DILocation(line: 43, column: 36, scope: !91)
!96 = !DILocation(line: 43, column: 25, scope: !91)
!97 = !DILocation(line: 43, column: 16, scope: !91)
!98 = !DILocation(line: 44, column: 19, scope: !91)
!99 = !DILocation(line: 44, column: 25, scope: !91)
!100 = !DILocation(line: 44, column: 23, scope: !91)
!101 = !DILocation(line: 44, column: 17, scope: !91)
!102 = !DILocation(line: 45, column: 9, scope: !91)
!103 = !DILocation(line: 42, column: 52, scope: !86)
!104 = !DILocation(line: 42, column: 18, scope: !86)
!105 = distinct !{!105, !89, !106}
!106 = !DILocation(line: 45, column: 9, scope: !82)
!107 = !DILocation(line: 46, column: 18, scope: !67)
!108 = !DILocation(line: 46, column: 9, scope: !67)
!109 = !DILocation(line: 46, column: 13, scope: !67)
!110 = !DILocation(line: 46, column: 16, scope: !67)
!111 = !DILocation(line: 47, column: 5, scope: !67)
!112 = !DILocation(line: 38, column: 33, scope: !63)
!113 = !DILocation(line: 38, column: 14, scope: !63)
!114 = distinct !{!114, !65, !115}
!115 = !DILocation(line: 47, column: 5, scope: !60)
!116 = !DILocation(line: 51, column: 1, scope: !7)
