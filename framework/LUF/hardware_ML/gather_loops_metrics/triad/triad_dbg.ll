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
define dso_local void @triad(i32* %a, i32* %b, i32* %c, i32 %s) #0 !dbg !10 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %s.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !13, metadata !DIExpression()), !dbg !14
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32* %c, i32** %c.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 %s, i32* %s.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %s.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !22
  br label %triad, !dbg !23

triad:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !24), !dbg !25
  store i32 0, i32* %i, align 4, !dbg !26
  br label %for.cond, !dbg !28

for.cond:                                         ; preds = %for.inc, %triad
  %0 = load i32, i32* %i, align 4, !dbg !29
  %cmp = icmp slt i32 %0, 2048, !dbg !31
  br i1 %cmp, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %a.addr, align 8, !dbg !33
  %2 = load i32, i32* %i, align 4, !dbg !34
  %idxprom = sext i32 %2 to i64, !dbg !33
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !33
  %3 = load i32, i32* %arrayidx, align 4, !dbg !33
  %4 = load i32, i32* %s.addr, align 4, !dbg !35
  %5 = load i32*, i32** %b.addr, align 8, !dbg !36
  %6 = load i32, i32* %i, align 4, !dbg !37
  %idxprom1 = sext i32 %6 to i64, !dbg !36
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1, !dbg !36
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !36
  %mul = mul nsw i32 %4, %7, !dbg !38
  %add = add nsw i32 %3, %mul, !dbg !39
  %8 = load i32*, i32** %c.addr, align 8, !dbg !40
  %9 = load i32, i32* %i, align 4, !dbg !41
  %idxprom3 = sext i32 %9 to i64, !dbg !40
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3, !dbg !40
  store i32 %add, i32* %arrayidx4, align 4, !dbg !42
  br label %for.inc, !dbg !40

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !43
  %inc = add nsw i32 %10, 1, !dbg !43
  store i32 %inc, i32* %i, align 4, !dbg !43
  br label %for.cond, !dbg !44, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  ret void, !dbg !47
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !48 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32*, align 8
  %i = alloca i32, align 4
  %output = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32** %a, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32** %b, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32** %c, metadata !55, metadata !DIExpression()), !dbg !56
  %call = call noalias i8* @malloc(i64 8192) #4, !dbg !57
  %0 = bitcast i8* %call to i32*, !dbg !58
  store i32* %0, i32** %a, align 8, !dbg !59
  %call1 = call noalias i8* @malloc(i64 8192) #4, !dbg !60
  %1 = bitcast i8* %call1 to i32*, !dbg !61
  store i32* %1, i32** %b, align 8, !dbg !62
  %call2 = call noalias i8* @malloc(i64 8192) #4, !dbg !63
  %2 = bitcast i8* %call2 to i32*, !dbg !64
  store i32* %2, i32** %c, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %i, metadata !66, metadata !DIExpression()), !dbg !67
  %call3 = call i64 @time(i64* null) #4, !dbg !68
  %conv = trunc i64 %call3 to i32, !dbg !68
  call void @srand(i32 %conv) #4, !dbg !69
  store i32 0, i32* %i, align 4, !dbg !70
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !73
  %cmp = icmp slt i32 %3, 2048, !dbg !75
  br i1 %cmp, label %for.body, label %for.end, !dbg !76

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %c, align 8, !dbg !77
  %5 = load i32, i32* %i, align 4, !dbg !79
  %idxprom = sext i32 %5 to i64, !dbg !77
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !77
  store i32 0, i32* %arrayidx, align 4, !dbg !80
  %call5 = call i32 @rand() #4, !dbg !81
  %6 = load i32*, i32** %a, align 8, !dbg !82
  %7 = load i32, i32* %i, align 4, !dbg !83
  %idxprom6 = sext i32 %7 to i64, !dbg !82
  %arrayidx7 = getelementptr inbounds i32, i32* %6, i64 %idxprom6, !dbg !82
  store i32 %call5, i32* %arrayidx7, align 4, !dbg !84
  %call8 = call i32 @rand() #4, !dbg !85
  %8 = load i32*, i32** %b, align 8, !dbg !86
  %9 = load i32, i32* %i, align 4, !dbg !87
  %idxprom9 = sext i32 %9 to i64, !dbg !86
  %arrayidx10 = getelementptr inbounds i32, i32* %8, i64 %idxprom9, !dbg !86
  store i32 %call8, i32* %arrayidx10, align 4, !dbg !88
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !90
  %inc = add nsw i32 %10, 1, !dbg !90
  store i32 %inc, i32* %i, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  %11 = load i32*, i32** %a, align 8, !dbg !94
  %arrayidx11 = getelementptr inbounds i32, i32* %11, i64 0, !dbg !94
  %12 = load i32*, i32** %b, align 8, !dbg !95
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 0, !dbg !95
  %13 = load i32*, i32** %c, align 8, !dbg !96
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 0, !dbg !96
  call void @triad(i32* %arrayidx11, i32* %arrayidx12, i32* %arrayidx13, i32 3), !dbg !97
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %output, metadata !98, metadata !DIExpression()), !dbg !161
  %call14 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !162
  store %struct._IO_FILE* %call14, %struct._IO_FILE** %output, align 8, !dbg !163
  store i32 0, i32* %i, align 4, !dbg !164
  br label %for.cond15, !dbg !166

for.cond15:                                       ; preds = %for.inc22, %for.end
  %14 = load i32, i32* %i, align 4, !dbg !167
  %cmp16 = icmp slt i32 %14, 2048, !dbg !169
  br i1 %cmp16, label %for.body18, label %for.end24, !dbg !170

for.body18:                                       ; preds = %for.cond15
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8, !dbg !171
  %16 = load i32*, i32** %c, align 8, !dbg !172
  %17 = load i32, i32* %i, align 4, !dbg !173
  %idxprom19 = sext i32 %17 to i64, !dbg !172
  %arrayidx20 = getelementptr inbounds i32, i32* %16, i64 %idxprom19, !dbg !172
  %18 = load i32, i32* %arrayidx20, align 4, !dbg !172
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %18), !dbg !174
  br label %for.inc22, !dbg !174

for.inc22:                                        ; preds = %for.body18
  %19 = load i32, i32* %i, align 4, !dbg !175
  %inc23 = add nsw i32 %19, 1, !dbg !175
  store i32 %inc23, i32* %i, align 4, !dbg !175
  br label %for.cond15, !dbg !176, !llvm.loop !177

for.end24:                                        ; preds = %for.cond15
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8, !dbg !179
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !180
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %output, align 8, !dbg !181
  %call26 = call i32 @fclose(%struct._IO_FILE* %21), !dbg !182
  ret i32 0, !dbg !183
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "triad.c", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/triad")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 10.0.1 "}
!10 = distinct !DISubprogram(name: "triad", scope: !1, file: !1, line: 7, type: !11, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !4, !4, !4, !5}
!13 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !1, line: 7, type: !4)
!14 = !DILocation(line: 7, column: 17, scope: !10)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !1, line: 7, type: !4)
!16 = !DILocation(line: 7, column: 24, scope: !10)
!17 = !DILocalVariable(name: "c", arg: 3, scope: !10, file: !1, line: 7, type: !4)
!18 = !DILocation(line: 7, column: 32, scope: !10)
!19 = !DILocalVariable(name: "s", arg: 4, scope: !10, file: !1, line: 7, type: !5)
!20 = !DILocation(line: 7, column: 39, scope: !10)
!21 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 14, type: !5)
!22 = !DILocation(line: 14, column: 7, scope: !10)
!23 = !DILocation(line: 14, column: 3, scope: !10)
!24 = !DILabel(scope: !10, name: "triad", file: !1, line: 15)
!25 = !DILocation(line: 15, column: 3, scope: !10)
!26 = !DILocation(line: 15, column: 14, scope: !27)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 15, column: 9)
!28 = !DILocation(line: 15, column: 13, scope: !27)
!29 = !DILocation(line: 15, column: 17, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !1, line: 15, column: 9)
!31 = !DILocation(line: 15, column: 18, scope: !30)
!32 = !DILocation(line: 15, column: 9, scope: !27)
!33 = !DILocation(line: 16, column: 12, scope: !30)
!34 = !DILocation(line: 16, column: 14, scope: !30)
!35 = !DILocation(line: 16, column: 19, scope: !30)
!36 = !DILocation(line: 16, column: 21, scope: !30)
!37 = !DILocation(line: 16, column: 23, scope: !30)
!38 = !DILocation(line: 16, column: 20, scope: !30)
!39 = !DILocation(line: 16, column: 17, scope: !30)
!40 = !DILocation(line: 16, column: 5, scope: !30)
!41 = !DILocation(line: 16, column: 7, scope: !30)
!42 = !DILocation(line: 16, column: 10, scope: !30)
!43 = !DILocation(line: 15, column: 24, scope: !30)
!44 = !DILocation(line: 15, column: 9, scope: !30)
!45 = distinct !{!45, !32, !46}
!46 = !DILocation(line: 16, column: 24, scope: !27)
!47 = !DILocation(line: 21, column: 1, scope: !10)
!48 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !49, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!49 = !DISubroutineType(types: !50)
!50 = !{!5}
!51 = !DILocalVariable(name: "a", scope: !48, file: !1, line: 24, type: !4)
!52 = !DILocation(line: 24, column: 7, scope: !48)
!53 = !DILocalVariable(name: "b", scope: !48, file: !1, line: 24, type: !4)
!54 = !DILocation(line: 24, column: 11, scope: !48)
!55 = !DILocalVariable(name: "c", scope: !48, file: !1, line: 24, type: !4)
!56 = !DILocation(line: 24, column: 15, scope: !48)
!57 = !DILocation(line: 25, column: 17, scope: !48)
!58 = !DILocation(line: 25, column: 9, scope: !48)
!59 = !DILocation(line: 25, column: 7, scope: !48)
!60 = !DILocation(line: 26, column: 17, scope: !48)
!61 = !DILocation(line: 26, column: 9, scope: !48)
!62 = !DILocation(line: 26, column: 7, scope: !48)
!63 = !DILocation(line: 27, column: 17, scope: !48)
!64 = !DILocation(line: 27, column: 9, scope: !48)
!65 = !DILocation(line: 27, column: 7, scope: !48)
!66 = !DILocalVariable(name: "i", scope: !48, file: !1, line: 28, type: !5)
!67 = !DILocation(line: 28, column: 6, scope: !48)
!68 = !DILocation(line: 29, column: 9, scope: !48)
!69 = !DILocation(line: 29, column: 3, scope: !48)
!70 = !DILocation(line: 30, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !48, file: !1, line: 30, column: 2)
!72 = !DILocation(line: 30, column: 6, scope: !71)
!73 = !DILocation(line: 30, column: 11, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 30, column: 2)
!75 = !DILocation(line: 30, column: 12, scope: !74)
!76 = !DILocation(line: 30, column: 2, scope: !71)
!77 = !DILocation(line: 31, column: 3, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 30, column: 22)
!79 = !DILocation(line: 31, column: 5, scope: !78)
!80 = !DILocation(line: 31, column: 8, scope: !78)
!81 = !DILocation(line: 32, column: 10, scope: !78)
!82 = !DILocation(line: 32, column: 3, scope: !78)
!83 = !DILocation(line: 32, column: 5, scope: !78)
!84 = !DILocation(line: 32, column: 8, scope: !78)
!85 = !DILocation(line: 33, column: 10, scope: !78)
!86 = !DILocation(line: 33, column: 3, scope: !78)
!87 = !DILocation(line: 33, column: 5, scope: !78)
!88 = !DILocation(line: 33, column: 8, scope: !78)
!89 = !DILocation(line: 34, column: 2, scope: !78)
!90 = !DILocation(line: 30, column: 19, scope: !74)
!91 = !DILocation(line: 30, column: 2, scope: !74)
!92 = distinct !{!92, !76, !93}
!93 = !DILocation(line: 34, column: 2, scope: !71)
!94 = !DILocation(line: 38, column: 9, scope: !48)
!95 = !DILocation(line: 38, column: 15, scope: !48)
!96 = !DILocation(line: 38, column: 21, scope: !48)
!97 = !DILocation(line: 38, column: 2, scope: !48)
!98 = !DILocalVariable(name: "output", scope: !48, file: !1, line: 42, type: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !101, line: 7, baseType: !102)
!101 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !103, line: 49, size: 1728, elements: !104)
!103 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!104 = !{!105, !106, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !122, !124, !125, !126, !130, !132, !134, !138, !141, !143, !146, !149, !150, !152, !156, !157}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !102, file: !103, line: 51, baseType: !5, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !102, file: !103, line: 54, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !102, file: !103, line: 55, baseType: !107, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !102, file: !103, line: 56, baseType: !107, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !102, file: !103, line: 57, baseType: !107, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !102, file: !103, line: 58, baseType: !107, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !102, file: !103, line: 59, baseType: !107, size: 64, offset: 384)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !102, file: !103, line: 60, baseType: !107, size: 64, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !102, file: !103, line: 61, baseType: !107, size: 64, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !102, file: !103, line: 64, baseType: !107, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !102, file: !103, line: 65, baseType: !107, size: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !102, file: !103, line: 66, baseType: !107, size: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !102, file: !103, line: 68, baseType: !120, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !103, line: 36, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !102, file: !103, line: 70, baseType: !123, size: 64, offset: 832)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !102, file: !103, line: 72, baseType: !5, size: 32, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !102, file: !103, line: 73, baseType: !5, size: 32, offset: 928)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !102, file: !103, line: 74, baseType: !127, size: 64, offset: 960)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !128, line: 152, baseType: !129)
!128 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!129 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !102, file: !103, line: 77, baseType: !131, size: 16, offset: 1024)
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !102, file: !103, line: 78, baseType: !133, size: 8, offset: 1040)
!133 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !102, file: !103, line: 79, baseType: !135, size: 8, offset: 1048)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 8, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 1)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !102, file: !103, line: 81, baseType: !139, size: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !103, line: 43, baseType: null)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !102, file: !103, line: 89, baseType: !142, size: 64, offset: 1152)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !128, line: 153, baseType: !129)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !102, file: !103, line: 91, baseType: !144, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !103, line: 37, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !102, file: !103, line: 92, baseType: !147, size: 64, offset: 1280)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !103, line: 38, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !102, file: !103, line: 93, baseType: !123, size: 64, offset: 1344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !102, file: !103, line: 94, baseType: !151, size: 64, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !102, file: !103, line: 95, baseType: !153, size: 64, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !154, line: 46, baseType: !155)
!154 = !DIFile(filename: "/usr/lib/clang/10.0.1/include/stddef.h", directory: "")
!155 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !102, file: !103, line: 96, baseType: !5, size: 32, offset: 1536)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !102, file: !103, line: 98, baseType: !158, size: 160, offset: 1568)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 160, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 20)
!161 = !DILocation(line: 42, column: 9, scope: !48)
!162 = !DILocation(line: 43, column: 12, scope: !48)
!163 = !DILocation(line: 43, column: 10, scope: !48)
!164 = !DILocation(line: 44, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !48, file: !1, line: 44, column: 2)
!166 = !DILocation(line: 44, column: 6, scope: !165)
!167 = !DILocation(line: 44, column: 11, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 44, column: 2)
!169 = !DILocation(line: 44, column: 12, scope: !168)
!170 = !DILocation(line: 44, column: 2, scope: !165)
!171 = !DILocation(line: 45, column: 13, scope: !168)
!172 = !DILocation(line: 45, column: 28, scope: !168)
!173 = !DILocation(line: 45, column: 30, scope: !168)
!174 = !DILocation(line: 45, column: 5, scope: !168)
!175 = !DILocation(line: 44, column: 19, scope: !168)
!176 = !DILocation(line: 44, column: 2, scope: !168)
!177 = distinct !{!177, !170, !178}
!178 = !DILocation(line: 45, column: 32, scope: !165)
!179 = !DILocation(line: 46, column: 11, scope: !48)
!180 = !DILocation(line: 46, column: 3, scope: !48)
!181 = !DILocation(line: 47, column: 10, scope: !48)
!182 = !DILocation(line: 47, column: 3, scope: !48)
!183 = !DILocation(line: 48, column: 2, scope: !48)
