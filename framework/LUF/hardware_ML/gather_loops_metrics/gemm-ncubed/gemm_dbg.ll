; ModuleID = 'gemm.c'
source_filename = "gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @gemm(double* %host_m1, double* %host_m2, double* %host_prod, double* %m1, double* %m2, double* %prod) #0 !dbg !7 {
entry:
  %host_m1.addr = alloca double*, align 8
  %host_m2.addr = alloca double*, align 8
  %host_prod.addr = alloca double*, align 8
  %m1.addr = alloca double*, align 8
  %m2.addr = alloca double*, align 8
  %prod.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %k_col = alloca i32, align 4
  %i_col = alloca i32, align 4
  %mult = alloca double, align 8
  %sum = alloca double, align 8
  store double* %host_m1, double** %host_m1.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_m1.addr, metadata !12, metadata !DIExpression()), !dbg !13
  store double* %host_m2, double** %host_m2.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_m2.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store double* %host_prod, double** %host_prod.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_prod.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store double* %m1, double** %m1.addr, align 8
  call void @llvm.dbg.declare(metadata double** %m1.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store double* %m2, double** %m2.addr, align 8
  call void @llvm.dbg.declare(metadata double** %m2.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store double* %prod, double** %prod.addr, align 8
  call void @llvm.dbg.declare(metadata double** %prod.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %j, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %k, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %k_col, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i_col, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata double* %mult, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load double*, double** %host_m1.addr, align 8, !dbg !37
  store double* %0, double** %m1.addr, align 8, !dbg !38
  %1 = load double*, double** %host_m2.addr, align 8, !dbg !39
  store double* %1, double** %m2.addr, align 8, !dbg !40
  %2 = load double*, double** %host_prod.addr, align 8, !dbg !41
  store double* %2, double** %prod.addr, align 8, !dbg !42
  br label %outer, !dbg !43

outer:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !44), !dbg !45
  store i32 0, i32* %i, align 4, !dbg !46
  br label %for.cond, !dbg !48

for.cond:                                         ; preds = %for.inc19, %outer
  %3 = load i32, i32* %i, align 4, !dbg !49
  %cmp = icmp slt i32 %3, 64, !dbg !51
  br i1 %cmp, label %for.body, label %for.end21, !dbg !52

for.body:                                         ; preds = %for.cond
  br label %middle, !dbg !53

middle:                                           ; preds = %for.body
  call void @llvm.dbg.label(metadata !54), !dbg !56
  store i32 0, i32* %j, align 4, !dbg !57
  br label %for.cond1, !dbg !59

for.cond1:                                        ; preds = %for.inc16, %middle
  %4 = load i32, i32* %j, align 4, !dbg !60
  %cmp2 = icmp slt i32 %4, 64, !dbg !62
  br i1 %cmp2, label %for.body3, label %for.end18, !dbg !63

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %i, align 4, !dbg !64
  %mul = mul nsw i32 %5, 64, !dbg !66
  store i32 %mul, i32* %i_col, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata double* %sum, metadata !68, metadata !DIExpression()), !dbg !69
  store double 0.000000e+00, double* %sum, align 8, !dbg !69
  br label %inner, !dbg !70

inner:                                            ; preds = %for.body3
  call void @llvm.dbg.label(metadata !71), !dbg !72
  store i32 0, i32* %k, align 4, !dbg !73
  br label %for.cond4, !dbg !75

for.cond4:                                        ; preds = %for.inc, %inner
  %6 = load i32, i32* %k, align 4, !dbg !76
  %cmp5 = icmp slt i32 %6, 64, !dbg !78
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !79

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %k, align 4, !dbg !80
  %mul7 = mul nsw i32 %7, 64, !dbg !82
  store i32 %mul7, i32* %k_col, align 4, !dbg !83
  %8 = load double*, double** %m1.addr, align 8, !dbg !84
  %9 = load i32, i32* %i_col, align 4, !dbg !85
  %10 = load i32, i32* %k, align 4, !dbg !86
  %add = add nsw i32 %9, %10, !dbg !87
  %idxprom = sext i32 %add to i64, !dbg !84
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom, !dbg !84
  %11 = load double, double* %arrayidx, align 8, !dbg !84
  %12 = load double*, double** %m2.addr, align 8, !dbg !88
  %13 = load i32, i32* %k_col, align 4, !dbg !89
  %14 = load i32, i32* %j, align 4, !dbg !90
  %add8 = add nsw i32 %13, %14, !dbg !91
  %idxprom9 = sext i32 %add8 to i64, !dbg !88
  %arrayidx10 = getelementptr inbounds double, double* %12, i64 %idxprom9, !dbg !88
  %15 = load double, double* %arrayidx10, align 8, !dbg !88
  %mul11 = fmul double %11, %15, !dbg !92
  store double %mul11, double* %mult, align 8, !dbg !93
  %16 = load double, double* %mult, align 8, !dbg !94
  %17 = load double, double* %sum, align 8, !dbg !95
  %add12 = fadd double %17, %16, !dbg !95
  store double %add12, double* %sum, align 8, !dbg !95
  br label %for.inc, !dbg !96

for.inc:                                          ; preds = %for.body6
  %18 = load i32, i32* %k, align 4, !dbg !97
  %inc = add nsw i32 %18, 1, !dbg !97
  store i32 %inc, i32* %k, align 4, !dbg !97
  br label %for.cond4, !dbg !98, !llvm.loop !99

for.end:                                          ; preds = %for.cond4
  %19 = load double, double* %sum, align 8, !dbg !101
  %20 = load double*, double** %prod.addr, align 8, !dbg !102
  %21 = load i32, i32* %i_col, align 4, !dbg !103
  %22 = load i32, i32* %j, align 4, !dbg !104
  %add13 = add nsw i32 %21, %22, !dbg !105
  %idxprom14 = sext i32 %add13 to i64, !dbg !102
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 %idxprom14, !dbg !102
  store double %19, double* %arrayidx15, align 8, !dbg !106
  br label %for.inc16, !dbg !107

for.inc16:                                        ; preds = %for.end
  %23 = load i32, i32* %j, align 4, !dbg !108
  %inc17 = add nsw i32 %23, 1, !dbg !108
  store i32 %inc17, i32* %j, align 4, !dbg !108
  br label %for.cond1, !dbg !109, !llvm.loop !110

for.end18:                                        ; preds = %for.cond1
  br label %for.inc19, !dbg !112

for.inc19:                                        ; preds = %for.end18
  %24 = load i32, i32* %i, align 4, !dbg !113
  %inc20 = add nsw i32 %24, 1, !dbg !113
  store i32 %inc20, i32* %i, align 4, !dbg !113
  br label %for.cond, !dbg !114, !llvm.loop !115

for.end21:                                        ; preds = %for.cond
  ret void, !dbg !117
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
!1 = !DIFile(filename: "gemm.c", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/gemm-ncubed")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "gemm", scope: !1, file: !1, line: 7, type: !8, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DILocalVariable(name: "host_m1", arg: 1, scope: !7, file: !1, line: 7, type: !10)
!13 = !DILocation(line: 7, column: 17, scope: !7)
!14 = !DILocalVariable(name: "host_m2", arg: 2, scope: !7, file: !1, line: 7, type: !10)
!15 = !DILocation(line: 7, column: 32, scope: !7)
!16 = !DILocalVariable(name: "host_prod", arg: 3, scope: !7, file: !1, line: 7, type: !10)
!17 = !DILocation(line: 7, column: 47, scope: !7)
!18 = !DILocalVariable(name: "m1", arg: 4, scope: !7, file: !1, line: 8, type: !10)
!19 = !DILocation(line: 8, column: 19, scope: !7)
!20 = !DILocalVariable(name: "m2", arg: 5, scope: !7, file: !1, line: 8, type: !10)
!21 = !DILocation(line: 8, column: 29, scope: !7)
!22 = !DILocalVariable(name: "prod", arg: 6, scope: !7, file: !1, line: 8, type: !10)
!23 = !DILocation(line: 8, column: 39, scope: !7)
!24 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 9, type: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocation(line: 9, column: 9, scope: !7)
!27 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 9, type: !25)
!28 = !DILocation(line: 9, column: 12, scope: !7)
!29 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 9, type: !25)
!30 = !DILocation(line: 9, column: 15, scope: !7)
!31 = !DILocalVariable(name: "k_col", scope: !7, file: !1, line: 10, type: !25)
!32 = !DILocation(line: 10, column: 9, scope: !7)
!33 = !DILocalVariable(name: "i_col", scope: !7, file: !1, line: 10, type: !25)
!34 = !DILocation(line: 10, column: 16, scope: !7)
!35 = !DILocalVariable(name: "mult", scope: !7, file: !1, line: 11, type: !11)
!36 = !DILocation(line: 11, column: 10, scope: !7)
!37 = !DILocation(line: 17, column: 10, scope: !7)
!38 = !DILocation(line: 17, column: 8, scope: !7)
!39 = !DILocation(line: 18, column: 10, scope: !7)
!40 = !DILocation(line: 18, column: 8, scope: !7)
!41 = !DILocation(line: 19, column: 12, scope: !7)
!42 = !DILocation(line: 19, column: 10, scope: !7)
!43 = !DILocation(line: 19, column: 5, scope: !7)
!44 = !DILabel(scope: !7, name: "outer", file: !1, line: 22)
!45 = !DILocation(line: 22, column: 5, scope: !7)
!46 = !DILocation(line: 22, column: 16, scope: !47)
!47 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 11)
!48 = !DILocation(line: 22, column: 15, scope: !47)
!49 = !DILocation(line: 22, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 22, column: 11)
!51 = !DILocation(line: 22, column: 20, scope: !50)
!52 = !DILocation(line: 22, column: 11, scope: !47)
!53 = !DILocation(line: 22, column: 35, scope: !50)
!54 = !DILabel(scope: !55, name: "middle", file: !1, line: 23)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 22, column: 35)
!56 = !DILocation(line: 23, column: 9, scope: !55)
!57 = !DILocation(line: 23, column: 21, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 23, column: 16)
!59 = !DILocation(line: 23, column: 20, scope: !58)
!60 = !DILocation(line: 23, column: 24, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 23, column: 16)
!62 = !DILocation(line: 23, column: 25, scope: !61)
!63 = !DILocation(line: 23, column: 16, scope: !58)
!64 = !DILocation(line: 24, column: 21, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 23, column: 40)
!66 = !DILocation(line: 24, column: 23, scope: !65)
!67 = !DILocation(line: 24, column: 19, scope: !65)
!68 = !DILocalVariable(name: "sum", scope: !65, file: !1, line: 25, type: !11)
!69 = !DILocation(line: 25, column: 18, scope: !65)
!70 = !DILocation(line: 25, column: 13, scope: !65)
!71 = !DILabel(scope: !65, name: "inner", file: !1, line: 26)
!72 = !DILocation(line: 26, column: 13, scope: !65)
!73 = !DILocation(line: 26, column: 24, scope: !74)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 26, column: 19)
!75 = !DILocation(line: 26, column: 23, scope: !74)
!76 = !DILocation(line: 26, column: 27, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 26, column: 19)
!78 = !DILocation(line: 26, column: 28, scope: !77)
!79 = !DILocation(line: 26, column: 19, scope: !74)
!80 = !DILocation(line: 27, column: 25, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 26, column: 43)
!82 = !DILocation(line: 27, column: 27, scope: !81)
!83 = !DILocation(line: 27, column: 23, scope: !81)
!84 = !DILocation(line: 28, column: 24, scope: !81)
!85 = !DILocation(line: 28, column: 27, scope: !81)
!86 = !DILocation(line: 28, column: 35, scope: !81)
!87 = !DILocation(line: 28, column: 33, scope: !81)
!88 = !DILocation(line: 28, column: 40, scope: !81)
!89 = !DILocation(line: 28, column: 43, scope: !81)
!90 = !DILocation(line: 28, column: 51, scope: !81)
!91 = !DILocation(line: 28, column: 49, scope: !81)
!92 = !DILocation(line: 28, column: 38, scope: !81)
!93 = !DILocation(line: 28, column: 22, scope: !81)
!94 = !DILocation(line: 29, column: 24, scope: !81)
!95 = !DILocation(line: 29, column: 21, scope: !81)
!96 = !DILocation(line: 30, column: 13, scope: !81)
!97 = !DILocation(line: 26, column: 39, scope: !77)
!98 = !DILocation(line: 26, column: 19, scope: !77)
!99 = distinct !{!99, !79, !100}
!100 = !DILocation(line: 30, column: 13, scope: !74)
!101 = !DILocation(line: 31, column: 32, scope: !65)
!102 = !DILocation(line: 31, column: 13, scope: !65)
!103 = !DILocation(line: 31, column: 18, scope: !65)
!104 = !DILocation(line: 31, column: 26, scope: !65)
!105 = !DILocation(line: 31, column: 24, scope: !65)
!106 = !DILocation(line: 31, column: 30, scope: !65)
!107 = !DILocation(line: 32, column: 9, scope: !65)
!108 = !DILocation(line: 23, column: 36, scope: !61)
!109 = !DILocation(line: 23, column: 16, scope: !61)
!110 = distinct !{!110, !63, !111}
!111 = !DILocation(line: 32, column: 9, scope: !58)
!112 = !DILocation(line: 33, column: 5, scope: !55)
!113 = !DILocation(line: 22, column: 31, scope: !50)
!114 = !DILocation(line: 22, column: 11, scope: !50)
!115 = distinct !{!115, !52, !116}
!116 = !DILocation(line: 33, column: 5, scope: !47)
!117 = !DILocation(line: 38, column: 1, scope: !7)
