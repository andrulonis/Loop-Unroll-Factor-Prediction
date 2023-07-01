; ModuleID = 'gemm.c'
source_filename = "gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bbgemm(double* %host_m1, double* %host_m2, double* %host_prod, double* %m1, double* %m2, double* %prod) #0 !dbg !7 {
entry:
  %host_m1.addr = alloca double*, align 8
  %host_m2.addr = alloca double*, align 8
  %host_prod.addr = alloca double*, align 8
  %m1.addr = alloca double*, align 8
  %m2.addr = alloca double*, align 8
  %prod.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %i_row = alloca i32, align 4
  %k_row = alloca i32, align 4
  %temp_x = alloca double, align 8
  %mul = alloca double, align 8
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
  call void @llvm.dbg.declare(metadata i32* %k, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %j, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %jj, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %kk, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i_row, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %k_row, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata double* %temp_x, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata double* %mul, metadata !41, metadata !DIExpression()), !dbg !42
  %0 = load double*, double** %host_m1.addr, align 8, !dbg !43
  store double* %0, double** %m1.addr, align 8, !dbg !44
  %1 = load double*, double** %host_m2.addr, align 8, !dbg !45
  store double* %1, double** %m2.addr, align 8, !dbg !46
  %2 = load double*, double** %host_prod.addr, align 8, !dbg !47
  store double* %2, double** %prod.addr, align 8, !dbg !48
  br label %loopjj, !dbg !49

loopjj:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !50), !dbg !51
  store i32 0, i32* %jj, align 4, !dbg !52
  br label %for.cond, !dbg !54

for.cond:                                         ; preds = %for.inc36, %loopjj
  %3 = load i32, i32* %jj, align 4, !dbg !55
  %cmp = icmp slt i32 %3, 64, !dbg !57
  br i1 %cmp, label %for.body, label %for.end38, !dbg !58

for.body:                                         ; preds = %for.cond
  br label %loopkk, !dbg !59

loopkk:                                           ; preds = %for.body
  call void @llvm.dbg.label(metadata !60), !dbg !62
  store i32 0, i32* %kk, align 4, !dbg !63
  br label %for.cond1, !dbg !65

for.cond1:                                        ; preds = %for.inc33, %loopkk
  %4 = load i32, i32* %kk, align 4, !dbg !66
  %cmp2 = icmp slt i32 %4, 64, !dbg !68
  br i1 %cmp2, label %for.body3, label %for.end35, !dbg !69

for.body3:                                        ; preds = %for.cond1
  br label %loopi, !dbg !70

loopi:                                            ; preds = %for.body3
  call void @llvm.dbg.label(metadata !71), !dbg !73
  store i32 0, i32* %i, align 4, !dbg !74
  br label %for.cond4, !dbg !76

for.cond4:                                        ; preds = %for.inc30, %loopi
  %5 = load i32, i32* %i, align 4, !dbg !77
  %cmp5 = icmp slt i32 %5, 64, !dbg !79
  br i1 %cmp5, label %for.body6, label %for.end32, !dbg !80

for.body6:                                        ; preds = %for.cond4
  br label %loopk, !dbg !81

loopk:                                            ; preds = %for.body6
  call void @llvm.dbg.label(metadata !82), !dbg !84
  store i32 0, i32* %k, align 4, !dbg !85
  br label %for.cond7, !dbg !87

for.cond7:                                        ; preds = %for.inc27, %loopk
  %6 = load i32, i32* %k, align 4, !dbg !88
  %cmp8 = icmp slt i32 %6, 8, !dbg !90
  br i1 %cmp8, label %for.body9, label %for.end29, !dbg !91

for.body9:                                        ; preds = %for.cond7
  %7 = load i32, i32* %i, align 4, !dbg !92
  %mul10 = mul nsw i32 %7, 64, !dbg !94
  store i32 %mul10, i32* %i_row, align 4, !dbg !95
  %8 = load i32, i32* %k, align 4, !dbg !96
  %9 = load i32, i32* %kk, align 4, !dbg !97
  %add = add nsw i32 %8, %9, !dbg !98
  %mul11 = mul nsw i32 %add, 64, !dbg !99
  store i32 %mul11, i32* %k_row, align 4, !dbg !100
  %10 = load double*, double** %m1.addr, align 8, !dbg !101
  %11 = load i32, i32* %i_row, align 4, !dbg !102
  %12 = load i32, i32* %k, align 4, !dbg !103
  %add12 = add nsw i32 %11, %12, !dbg !104
  %13 = load i32, i32* %kk, align 4, !dbg !105
  %add13 = add nsw i32 %add12, %13, !dbg !106
  %idxprom = sext i32 %add13 to i64, !dbg !101
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom, !dbg !101
  %14 = load double, double* %arrayidx, align 8, !dbg !101
  store double %14, double* %temp_x, align 8, !dbg !107
  br label %loopj, !dbg !108

loopj:                                            ; preds = %for.body9
  call void @llvm.dbg.label(metadata !109), !dbg !110
  store i32 0, i32* %j, align 4, !dbg !111
  br label %for.cond14, !dbg !113

for.cond14:                                       ; preds = %for.inc, %loopj
  %15 = load i32, i32* %j, align 4, !dbg !114
  %cmp15 = icmp slt i32 %15, 8, !dbg !116
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !117

for.body16:                                       ; preds = %for.cond14
  %16 = load double, double* %temp_x, align 8, !dbg !118
  %17 = load double*, double** %m2.addr, align 8, !dbg !120
  %18 = load i32, i32* %k_row, align 4, !dbg !121
  %19 = load i32, i32* %j, align 4, !dbg !122
  %add17 = add nsw i32 %18, %19, !dbg !123
  %20 = load i32, i32* %jj, align 4, !dbg !124
  %add18 = add nsw i32 %add17, %20, !dbg !125
  %idxprom19 = sext i32 %add18 to i64, !dbg !120
  %arrayidx20 = getelementptr inbounds double, double* %17, i64 %idxprom19, !dbg !120
  %21 = load double, double* %arrayidx20, align 8, !dbg !120
  %mul21 = fmul double %16, %21, !dbg !126
  store double %mul21, double* %mul, align 8, !dbg !127
  %22 = load double, double* %mul, align 8, !dbg !128
  %23 = load double*, double** %prod.addr, align 8, !dbg !129
  %24 = load i32, i32* %i_row, align 4, !dbg !130
  %25 = load i32, i32* %j, align 4, !dbg !131
  %add22 = add nsw i32 %24, %25, !dbg !132
  %26 = load i32, i32* %jj, align 4, !dbg !133
  %add23 = add nsw i32 %add22, %26, !dbg !134
  %idxprom24 = sext i32 %add23 to i64, !dbg !129
  %arrayidx25 = getelementptr inbounds double, double* %23, i64 %idxprom24, !dbg !129
  %27 = load double, double* %arrayidx25, align 8, !dbg !135
  %add26 = fadd double %27, %22, !dbg !135
  store double %add26, double* %arrayidx25, align 8, !dbg !135
  br label %for.inc, !dbg !136

for.inc:                                          ; preds = %for.body16
  %28 = load i32, i32* %j, align 4, !dbg !137
  %inc = add nsw i32 %28, 1, !dbg !137
  store i32 %inc, i32* %j, align 4, !dbg !137
  br label %for.cond14, !dbg !138, !llvm.loop !139

for.end:                                          ; preds = %for.cond14
  br label %for.inc27, !dbg !141

for.inc27:                                        ; preds = %for.end
  %29 = load i32, i32* %k, align 4, !dbg !142
  %inc28 = add nsw i32 %29, 1, !dbg !142
  store i32 %inc28, i32* %k, align 4, !dbg !142
  br label %for.cond7, !dbg !143, !llvm.loop !144

for.end29:                                        ; preds = %for.cond7
  br label %for.inc30, !dbg !146

for.inc30:                                        ; preds = %for.end29
  %30 = load i32, i32* %i, align 4, !dbg !147
  %inc31 = add nsw i32 %30, 1, !dbg !147
  store i32 %inc31, i32* %i, align 4, !dbg !147
  br label %for.cond4, !dbg !148, !llvm.loop !149

for.end32:                                        ; preds = %for.cond4
  br label %for.inc33, !dbg !151

for.inc33:                                        ; preds = %for.end32
  %31 = load i32, i32* %kk, align 4, !dbg !152
  %add34 = add nsw i32 %31, 8, !dbg !152
  store i32 %add34, i32* %kk, align 4, !dbg !152
  br label %for.cond1, !dbg !153, !llvm.loop !154

for.end35:                                        ; preds = %for.cond1
  br label %for.inc36, !dbg !156

for.inc36:                                        ; preds = %for.end35
  %32 = load i32, i32* %jj, align 4, !dbg !157
  %add37 = add nsw i32 %32, 8, !dbg !157
  store i32 %add37, i32* %jj, align 4, !dbg !157
  br label %for.cond, !dbg !158, !llvm.loop !159

for.end38:                                        ; preds = %for.cond
  ret void, !dbg !161
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
!1 = !DIFile(filename: "gemm.c", directory: "/home/coco/work/benchmark_codes/gemm-blocked")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "bbgemm", scope: !1, file: !1, line: 14, type: !8, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DILocalVariable(name: "host_m1", arg: 1, scope: !7, file: !1, line: 14, type: !10)
!13 = !DILocation(line: 14, column: 19, scope: !7)
!14 = !DILocalVariable(name: "host_m2", arg: 2, scope: !7, file: !1, line: 14, type: !10)
!15 = !DILocation(line: 14, column: 34, scope: !7)
!16 = !DILocalVariable(name: "host_prod", arg: 3, scope: !7, file: !1, line: 14, type: !10)
!17 = !DILocation(line: 14, column: 49, scope: !7)
!18 = !DILocalVariable(name: "m1", arg: 4, scope: !7, file: !1, line: 15, type: !10)
!19 = !DILocation(line: 15, column: 19, scope: !7)
!20 = !DILocalVariable(name: "m2", arg: 5, scope: !7, file: !1, line: 15, type: !10)
!21 = !DILocation(line: 15, column: 29, scope: !7)
!22 = !DILocalVariable(name: "prod", arg: 6, scope: !7, file: !1, line: 15, type: !10)
!23 = !DILocation(line: 15, column: 39, scope: !7)
!24 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 16, type: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocation(line: 16, column: 9, scope: !7)
!27 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 16, type: !25)
!28 = !DILocation(line: 16, column: 12, scope: !7)
!29 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 16, type: !25)
!30 = !DILocation(line: 16, column: 15, scope: !7)
!31 = !DILocalVariable(name: "jj", scope: !7, file: !1, line: 16, type: !25)
!32 = !DILocation(line: 16, column: 18, scope: !7)
!33 = !DILocalVariable(name: "kk", scope: !7, file: !1, line: 16, type: !25)
!34 = !DILocation(line: 16, column: 22, scope: !7)
!35 = !DILocalVariable(name: "i_row", scope: !7, file: !1, line: 17, type: !25)
!36 = !DILocation(line: 17, column: 9, scope: !7)
!37 = !DILocalVariable(name: "k_row", scope: !7, file: !1, line: 17, type: !25)
!38 = !DILocation(line: 17, column: 16, scope: !7)
!39 = !DILocalVariable(name: "temp_x", scope: !7, file: !1, line: 18, type: !11)
!40 = !DILocation(line: 18, column: 10, scope: !7)
!41 = !DILocalVariable(name: "mul", scope: !7, file: !1, line: 18, type: !11)
!42 = !DILocation(line: 18, column: 18, scope: !7)
!43 = !DILocation(line: 24, column: 10, scope: !7)
!44 = !DILocation(line: 24, column: 8, scope: !7)
!45 = !DILocation(line: 25, column: 10, scope: !7)
!46 = !DILocation(line: 25, column: 8, scope: !7)
!47 = !DILocation(line: 26, column: 12, scope: !7)
!48 = !DILocation(line: 26, column: 10, scope: !7)
!49 = !DILocation(line: 26, column: 5, scope: !7)
!50 = !DILabel(scope: !7, name: "loopjj", file: !1, line: 29)
!51 = !DILocation(line: 29, column: 5, scope: !7)
!52 = !DILocation(line: 29, column: 20, scope: !53)
!53 = distinct !DILexicalBlock(scope: !7, file: !1, line: 29, column: 12)
!54 = !DILocation(line: 29, column: 17, scope: !53)
!55 = !DILocation(line: 29, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 29, column: 12)
!57 = !DILocation(line: 29, column: 28, scope: !56)
!58 = !DILocation(line: 29, column: 12, scope: !53)
!59 = !DILocation(line: 29, column: 57, scope: !56)
!60 = !DILabel(scope: !61, name: "loopkk", file: !1, line: 30)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 29, column: 57)
!62 = !DILocation(line: 30, column: 9, scope: !61)
!63 = !DILocation(line: 30, column: 24, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 30, column: 16)
!65 = !DILocation(line: 30, column: 21, scope: !64)
!66 = !DILocation(line: 30, column: 29, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 30, column: 16)
!68 = !DILocation(line: 30, column: 32, scope: !67)
!69 = !DILocation(line: 30, column: 16, scope: !64)
!70 = !DILocation(line: 30, column: 61, scope: !67)
!71 = !DILabel(scope: !72, name: "loopi", file: !1, line: 31)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 30, column: 61)
!73 = !DILocation(line: 31, column: 13, scope: !72)
!74 = !DILocation(line: 31, column: 27, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 31, column: 19)
!76 = !DILocation(line: 31, column: 25, scope: !75)
!77 = !DILocation(line: 31, column: 32, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 31, column: 19)
!79 = !DILocation(line: 31, column: 34, scope: !78)
!80 = !DILocation(line: 31, column: 19, scope: !75)
!81 = !DILocation(line: 31, column: 50, scope: !78)
!82 = !DILabel(scope: !83, name: "loopk", file: !1, line: 32)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 31, column: 50)
!84 = !DILocation(line: 32, column: 17, scope: !83)
!85 = !DILocation(line: 32, column: 30, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 32, column: 23)
!87 = !DILocation(line: 32, column: 28, scope: !86)
!88 = !DILocation(line: 32, column: 35, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 32, column: 23)
!90 = !DILocation(line: 32, column: 37, scope: !89)
!91 = !DILocation(line: 32, column: 23, scope: !86)
!92 = !DILocation(line: 33, column: 29, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 32, column: 55)
!94 = !DILocation(line: 33, column: 31, scope: !93)
!95 = !DILocation(line: 33, column: 27, scope: !93)
!96 = !DILocation(line: 34, column: 30, scope: !93)
!97 = !DILocation(line: 34, column: 35, scope: !93)
!98 = !DILocation(line: 34, column: 33, scope: !93)
!99 = !DILocation(line: 34, column: 39, scope: !93)
!100 = !DILocation(line: 34, column: 27, scope: !93)
!101 = !DILocation(line: 35, column: 30, scope: !93)
!102 = !DILocation(line: 35, column: 33, scope: !93)
!103 = !DILocation(line: 35, column: 41, scope: !93)
!104 = !DILocation(line: 35, column: 39, scope: !93)
!105 = !DILocation(line: 35, column: 45, scope: !93)
!106 = !DILocation(line: 35, column: 43, scope: !93)
!107 = !DILocation(line: 35, column: 28, scope: !93)
!108 = !DILocation(line: 35, column: 21, scope: !93)
!109 = !DILabel(scope: !93, name: "loopj", file: !1, line: 36)
!110 = !DILocation(line: 36, column: 21, scope: !93)
!111 = !DILocation(line: 36, column: 34, scope: !112)
!112 = distinct !DILexicalBlock(scope: !93, file: !1, line: 36, column: 27)
!113 = !DILocation(line: 36, column: 32, scope: !112)
!114 = !DILocation(line: 36, column: 39, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 36, column: 27)
!116 = !DILocation(line: 36, column: 41, scope: !115)
!117 = !DILocation(line: 36, column: 27, scope: !112)
!118 = !DILocation(line: 37, column: 31, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 36, column: 59)
!120 = !DILocation(line: 37, column: 40, scope: !119)
!121 = !DILocation(line: 37, column: 43, scope: !119)
!122 = !DILocation(line: 37, column: 51, scope: !119)
!123 = !DILocation(line: 37, column: 49, scope: !119)
!124 = !DILocation(line: 37, column: 55, scope: !119)
!125 = !DILocation(line: 37, column: 53, scope: !119)
!126 = !DILocation(line: 37, column: 38, scope: !119)
!127 = !DILocation(line: 37, column: 29, scope: !119)
!128 = !DILocation(line: 38, column: 49, scope: !119)
!129 = !DILocation(line: 38, column: 25, scope: !119)
!130 = !DILocation(line: 38, column: 30, scope: !119)
!131 = !DILocation(line: 38, column: 38, scope: !119)
!132 = !DILocation(line: 38, column: 36, scope: !119)
!133 = !DILocation(line: 38, column: 42, scope: !119)
!134 = !DILocation(line: 38, column: 40, scope: !119)
!135 = !DILocation(line: 38, column: 46, scope: !119)
!136 = !DILocation(line: 39, column: 21, scope: !119)
!137 = !DILocation(line: 36, column: 55, scope: !115)
!138 = !DILocation(line: 36, column: 27, scope: !115)
!139 = distinct !{!139, !117, !140}
!140 = !DILocation(line: 39, column: 21, scope: !112)
!141 = !DILocation(line: 40, column: 17, scope: !93)
!142 = !DILocation(line: 32, column: 51, scope: !89)
!143 = !DILocation(line: 32, column: 23, scope: !89)
!144 = distinct !{!144, !91, !145}
!145 = !DILocation(line: 40, column: 17, scope: !86)
!146 = !DILocation(line: 41, column: 13, scope: !83)
!147 = !DILocation(line: 31, column: 46, scope: !78)
!148 = !DILocation(line: 31, column: 19, scope: !78)
!149 = distinct !{!149, !80, !150}
!150 = !DILocation(line: 41, column: 13, scope: !75)
!151 = !DILocation(line: 42, column: 9, scope: !72)
!152 = !DILocation(line: 30, column: 47, scope: !67)
!153 = !DILocation(line: 30, column: 16, scope: !67)
!154 = distinct !{!154, !69, !155}
!155 = !DILocation(line: 42, column: 9, scope: !64)
!156 = !DILocation(line: 43, column: 5, scope: !61)
!157 = !DILocation(line: 29, column: 43, scope: !56)
!158 = !DILocation(line: 29, column: 12, scope: !56)
!159 = distinct !{!159, !58, !160}
!160 = !DILocation(line: 43, column: 5, scope: !53)
!161 = !DILocation(line: 47, column: 1, scope: !7)
