; ModuleID = 'spmv.c'
source_filename = "spmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @ellpack(double* %host_nzval, i32* %host_cols, double* %host_vec, double* %host_out, double* %nzval, i32* %cols, double* %vec, double* %out) #0 !dbg !7 {
entry:
  %host_nzval.addr = alloca double*, align 8
  %host_cols.addr = alloca i32*, align 8
  %host_vec.addr = alloca double*, align 8
  %host_out.addr = alloca double*, align 8
  %nzval.addr = alloca double*, align 8
  %cols.addr = alloca i32*, align 8
  %vec.addr = alloca double*, align 8
  %out.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Si = alloca double, align 8
  %sum = alloca double, align 8
  store double* %host_nzval, double** %host_nzval.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_nzval.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32* %host_cols, i32** %host_cols.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_cols.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store double* %host_vec, double** %host_vec.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_vec.addr, metadata !22, metadata !DIExpression()), !dbg !23
  store double* %host_out, double** %host_out.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_out.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store double* %nzval, double** %nzval.addr, align 8
  call void @llvm.dbg.declare(metadata double** %nzval.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store i32* %cols, i32** %cols.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %cols.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store double* %vec, double** %vec.addr, align 8
  call void @llvm.dbg.declare(metadata double** %vec.addr, metadata !30, metadata !DIExpression()), !dbg !31
  store double* %out, double** %out.addr, align 8
  call void @llvm.dbg.declare(metadata double** %out.addr, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %j, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata double* %Si, metadata !38, metadata !DIExpression()), !dbg !39
  %0 = load double*, double** %host_nzval.addr, align 8, !dbg !40
  store double* %0, double** %nzval.addr, align 8, !dbg !41
  %1 = load i32*, i32** %host_cols.addr, align 8, !dbg !42
  store i32* %1, i32** %cols.addr, align 8, !dbg !43
  %2 = load double*, double** %host_vec.addr, align 8, !dbg !44
  store double* %2, double** %vec.addr, align 8, !dbg !45
  %3 = load double*, double** %host_out.addr, align 8, !dbg !46
  store double* %3, double** %out.addr, align 8, !dbg !47
  br label %ellpack_1, !dbg !48

ellpack_1:                                        ; preds = %entry
  call void @llvm.dbg.label(metadata !49), !dbg !50
  store i32 0, i32* %i, align 4, !dbg !51
  br label %for.cond, !dbg !53

for.cond:                                         ; preds = %for.inc16, %ellpack_1
  %4 = load i32, i32* %i, align 4, !dbg !54
  %cmp = icmp slt i32 %4, 494, !dbg !56
  br i1 %cmp, label %for.body, label %for.end18, !dbg !57

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata double* %sum, metadata !58, metadata !DIExpression()), !dbg !60
  %5 = load double*, double** %out.addr, align 8, !dbg !61
  %6 = load i32, i32* %i, align 4, !dbg !62
  %idxprom = sext i32 %6 to i64, !dbg !61
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom, !dbg !61
  %7 = load double, double* %arrayidx, align 8, !dbg !61
  store double %7, double* %sum, align 8, !dbg !60
  br label %ellpack_2, !dbg !63

ellpack_2:                                        ; preds = %for.body
  call void @llvm.dbg.label(metadata !64), !dbg !65
  store i32 0, i32* %j, align 4, !dbg !66
  br label %for.cond1, !dbg !68

for.cond1:                                        ; preds = %for.inc, %ellpack_2
  %8 = load i32, i32* %j, align 4, !dbg !69
  %cmp2 = icmp slt i32 %8, 10, !dbg !71
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !72

for.body3:                                        ; preds = %for.cond1
  %9 = load double*, double** %nzval.addr, align 8, !dbg !73
  %10 = load i32, i32* %j, align 4, !dbg !75
  %11 = load i32, i32* %i, align 4, !dbg !76
  %mul = mul nsw i32 %11, 10, !dbg !77
  %add = add nsw i32 %10, %mul, !dbg !78
  %idxprom4 = sext i32 %add to i64, !dbg !73
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4, !dbg !73
  %12 = load double, double* %arrayidx5, align 8, !dbg !73
  %13 = load double*, double** %vec.addr, align 8, !dbg !79
  %14 = load i32*, i32** %cols.addr, align 8, !dbg !80
  %15 = load i32, i32* %j, align 4, !dbg !81
  %16 = load i32, i32* %i, align 4, !dbg !82
  %mul6 = mul nsw i32 %16, 10, !dbg !83
  %add7 = add nsw i32 %15, %mul6, !dbg !84
  %idxprom8 = sext i32 %add7 to i64, !dbg !80
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8, !dbg !80
  %17 = load i32, i32* %arrayidx9, align 4, !dbg !80
  %idxprom10 = sext i32 %17 to i64, !dbg !79
  %arrayidx11 = getelementptr inbounds double, double* %13, i64 %idxprom10, !dbg !79
  %18 = load double, double* %arrayidx11, align 8, !dbg !79
  %mul12 = fmul double %12, %18, !dbg !85
  store double %mul12, double* %Si, align 8, !dbg !86
  %19 = load double, double* %Si, align 8, !dbg !87
  %20 = load double, double* %sum, align 8, !dbg !88
  %add13 = fadd double %20, %19, !dbg !88
  store double %add13, double* %sum, align 8, !dbg !88
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body3
  %21 = load i32, i32* %j, align 4, !dbg !90
  %inc = add nsw i32 %21, 1, !dbg !90
  store i32 %inc, i32* %j, align 4, !dbg !90
  br label %for.cond1, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond1
  %22 = load double, double* %sum, align 8, !dbg !94
  %23 = load double*, double** %out.addr, align 8, !dbg !95
  %24 = load i32, i32* %i, align 4, !dbg !96
  %idxprom14 = sext i32 %24 to i64, !dbg !95
  %arrayidx15 = getelementptr inbounds double, double* %23, i64 %idxprom14, !dbg !95
  store double %22, double* %arrayidx15, align 8, !dbg !97
  br label %for.inc16, !dbg !98

for.inc16:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4, !dbg !99
  %inc17 = add nsw i32 %25, 1, !dbg !99
  store i32 %inc17, i32* %i, align 4, !dbg !99
  br label %for.cond, !dbg !100, !llvm.loop !101

for.end18:                                        ; preds = %for.cond
  ret void, !dbg !103
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
!1 = !DIFile(filename: "spmv.c", directory: "/home/coco/work/benchmark_codes/spmv-ellpack")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "ellpack", scope: !1, file: !1, line: 12, type: !8, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !10, !10, !10, !12, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !14, line: 26, baseType: !15)
!14 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 41, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "host_nzval", arg: 1, scope: !7, file: !1, line: 12, type: !10)
!19 = !DILocation(line: 12, column: 20, scope: !7)
!20 = !DILocalVariable(name: "host_cols", arg: 2, scope: !7, file: !1, line: 13, type: !12)
!21 = !DILocation(line: 13, column: 23, scope: !7)
!22 = !DILocalVariable(name: "host_vec", arg: 3, scope: !7, file: !1, line: 14, type: !10)
!23 = !DILocation(line: 14, column: 20, scope: !7)
!24 = !DILocalVariable(name: "host_out", arg: 4, scope: !7, file: !1, line: 15, type: !10)
!25 = !DILocation(line: 15, column: 20, scope: !7)
!26 = !DILocalVariable(name: "nzval", arg: 5, scope: !7, file: !1, line: 16, type: !10)
!27 = !DILocation(line: 16, column: 20, scope: !7)
!28 = !DILocalVariable(name: "cols", arg: 6, scope: !7, file: !1, line: 17, type: !12)
!29 = !DILocation(line: 17, column: 23, scope: !7)
!30 = !DILocalVariable(name: "vec", arg: 7, scope: !7, file: !1, line: 18, type: !10)
!31 = !DILocation(line: 18, column: 20, scope: !7)
!32 = !DILocalVariable(name: "out", arg: 8, scope: !7, file: !1, line: 19, type: !10)
!33 = !DILocation(line: 19, column: 20, scope: !7)
!34 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 21, type: !17)
!35 = !DILocation(line: 21, column: 9, scope: !7)
!36 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 21, type: !17)
!37 = !DILocation(line: 21, column: 12, scope: !7)
!38 = !DILocalVariable(name: "Si", scope: !7, file: !1, line: 22, type: !11)
!39 = !DILocation(line: 22, column: 10, scope: !7)
!40 = !DILocation(line: 29, column: 13, scope: !7)
!41 = !DILocation(line: 29, column: 11, scope: !7)
!42 = !DILocation(line: 30, column: 12, scope: !7)
!43 = !DILocation(line: 30, column: 10, scope: !7)
!44 = !DILocation(line: 31, column: 11, scope: !7)
!45 = !DILocation(line: 31, column: 9, scope: !7)
!46 = !DILocation(line: 32, column: 11, scope: !7)
!47 = !DILocation(line: 32, column: 9, scope: !7)
!48 = !DILocation(line: 32, column: 5, scope: !7)
!49 = !DILabel(scope: !7, name: "ellpack_1", file: !1, line: 35)
!50 = !DILocation(line: 35, column: 5, scope: !7)
!51 = !DILocation(line: 35, column: 23, scope: !52)
!52 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 17)
!53 = !DILocation(line: 35, column: 22, scope: !52)
!54 = !DILocation(line: 35, column: 27, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 35, column: 17)
!56 = !DILocation(line: 35, column: 28, scope: !55)
!57 = !DILocation(line: 35, column: 17, scope: !52)
!58 = !DILocalVariable(name: "sum", scope: !59, file: !1, line: 36, type: !11)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 35, column: 37)
!60 = !DILocation(line: 36, column: 14, scope: !59)
!61 = !DILocation(line: 36, column: 20, scope: !59)
!62 = !DILocation(line: 36, column: 24, scope: !59)
!63 = !DILocation(line: 36, column: 9, scope: !59)
!64 = !DILabel(scope: !59, name: "ellpack_2", file: !1, line: 37)
!65 = !DILocation(line: 37, column: 9, scope: !59)
!66 = !DILocation(line: 37, column: 27, scope: !67)
!67 = distinct !DILexicalBlock(scope: !59, file: !1, line: 37, column: 21)
!68 = !DILocation(line: 37, column: 26, scope: !67)
!69 = !DILocation(line: 37, column: 31, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 37, column: 21)
!71 = !DILocation(line: 37, column: 32, scope: !70)
!72 = !DILocation(line: 37, column: 21, scope: !67)
!73 = !DILocation(line: 38, column: 22, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 37, column: 41)
!75 = !DILocation(line: 38, column: 28, scope: !74)
!76 = !DILocation(line: 38, column: 32, scope: !74)
!77 = !DILocation(line: 38, column: 33, scope: !74)
!78 = !DILocation(line: 38, column: 30, scope: !74)
!79 = !DILocation(line: 38, column: 39, scope: !74)
!80 = !DILocation(line: 38, column: 43, scope: !74)
!81 = !DILocation(line: 38, column: 48, scope: !74)
!82 = !DILocation(line: 38, column: 52, scope: !74)
!83 = !DILocation(line: 38, column: 53, scope: !74)
!84 = !DILocation(line: 38, column: 50, scope: !74)
!85 = !DILocation(line: 38, column: 37, scope: !74)
!86 = !DILocation(line: 38, column: 20, scope: !74)
!87 = !DILocation(line: 39, column: 24, scope: !74)
!88 = !DILocation(line: 39, column: 21, scope: !74)
!89 = !DILocation(line: 40, column: 9, scope: !74)
!90 = !DILocation(line: 37, column: 37, scope: !70)
!91 = !DILocation(line: 37, column: 21, scope: !70)
!92 = distinct !{!92, !72, !93}
!93 = !DILocation(line: 40, column: 9, scope: !67)
!94 = !DILocation(line: 41, column: 18, scope: !59)
!95 = !DILocation(line: 41, column: 9, scope: !59)
!96 = !DILocation(line: 41, column: 13, scope: !59)
!97 = !DILocation(line: 41, column: 16, scope: !59)
!98 = !DILocation(line: 42, column: 5, scope: !59)
!99 = !DILocation(line: 35, column: 33, scope: !55)
!100 = !DILocation(line: 35, column: 17, scope: !55)
!101 = distinct !{!101, !57, !102}
!102 = !DILocation(line: 42, column: 5, scope: !52)
!103 = !DILocation(line: 47, column: 1, scope: !7)
