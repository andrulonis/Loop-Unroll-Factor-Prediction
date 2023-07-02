; ModuleID = 'bb_gemm.c'
source_filename = "bb_gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bb_gemm(i32* %x, i32* %y, i32* %z) #0 !dbg !11 {
entry:
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %z.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %temp_x = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i32* %y, i32** %y.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %y.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32* %z, i32** %z.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %z.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %k, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %j, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %temp_x, metadata !26, metadata !DIExpression()), !dbg !27
  br label %loopi, !dbg !28

loopi:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !29), !dbg !30
  store i32 0, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc20, %loopi
  %0 = load i32, i32* %i, align 4, !dbg !34
  %cmp = icmp slt i32 %0, 32, !dbg !36
  br i1 %cmp, label %for.body, label %for.end22, !dbg !37

for.body:                                         ; preds = %for.cond
  br label %loopk, !dbg !38

loopk:                                            ; preds = %for.body
  call void @llvm.dbg.label(metadata !39), !dbg !41
  store i32 0, i32* %k, align 4, !dbg !42
  br label %for.cond1, !dbg !44

for.cond1:                                        ; preds = %for.inc17, %loopk
  %1 = load i32, i32* %k, align 4, !dbg !45
  %cmp2 = icmp slt i32 %1, 8, !dbg !47
  br i1 %cmp2, label %for.body3, label %for.end19, !dbg !48

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %x.addr, align 8, !dbg !49
  %3 = load i32, i32* %i, align 4, !dbg !51
  %mul = mul nsw i32 %3, 32, !dbg !52
  %4 = load i32, i32* %k, align 4, !dbg !53
  %add = add nsw i32 %mul, %4, !dbg !54
  %idxprom = sext i32 %add to i64, !dbg !49
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !49
  %5 = load i32, i32* %arrayidx, align 4, !dbg !49
  store i32 %5, i32* %temp_x, align 4, !dbg !55
  br label %loopj, !dbg !56

loopj:                                            ; preds = %for.body3
  call void @llvm.dbg.label(metadata !57), !dbg !58
  store i32 0, i32* %j, align 4, !dbg !59
  br label %for.cond4, !dbg !61

for.cond4:                                        ; preds = %for.inc, %loopj
  %6 = load i32, i32* %j, align 4, !dbg !62
  %cmp5 = icmp slt i32 %6, 8, !dbg !64
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !65

for.body6:                                        ; preds = %for.cond4
  %7 = load i32, i32* %temp_x, align 4, !dbg !66
  %8 = load i32*, i32** %y.addr, align 8, !dbg !68
  %9 = load i32, i32* %k, align 4, !dbg !69
  %mul7 = mul nsw i32 %9, 32, !dbg !70
  %10 = load i32, i32* %j, align 4, !dbg !71
  %add8 = add nsw i32 %mul7, %10, !dbg !72
  %idxprom9 = sext i32 %add8 to i64, !dbg !68
  %arrayidx10 = getelementptr inbounds i32, i32* %8, i64 %idxprom9, !dbg !68
  %11 = load i32, i32* %arrayidx10, align 4, !dbg !68
  %mul11 = mul nsw i32 %7, %11, !dbg !73
  %12 = load i32*, i32** %z.addr, align 8, !dbg !74
  %13 = load i32, i32* %i, align 4, !dbg !75
  %mul12 = mul nsw i32 %13, 32, !dbg !76
  %14 = load i32, i32* %j, align 4, !dbg !77
  %add13 = add nsw i32 %mul12, %14, !dbg !78
  %idxprom14 = sext i32 %add13 to i64, !dbg !74
  %arrayidx15 = getelementptr inbounds i32, i32* %12, i64 %idxprom14, !dbg !74
  %15 = load i32, i32* %arrayidx15, align 4, !dbg !79
  %add16 = add nsw i32 %15, %mul11, !dbg !79
  store i32 %add16, i32* %arrayidx15, align 4, !dbg !79
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body6
  %16 = load i32, i32* %j, align 4, !dbg !81
  %inc = add nsw i32 %16, 1, !dbg !81
  store i32 %inc, i32* %j, align 4, !dbg !81
  br label %for.cond4, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond4
  br label %for.inc17, !dbg !85

for.inc17:                                        ; preds = %for.end
  %17 = load i32, i32* %k, align 4, !dbg !86
  %inc18 = add nsw i32 %17, 1, !dbg !86
  store i32 %inc18, i32* %k, align 4, !dbg !86
  br label %for.cond1, !dbg !87, !llvm.loop !88

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20, !dbg !90

for.inc20:                                        ; preds = %for.end19
  %18 = load i32, i32* %i, align 4, !dbg !91
  %inc21 = add nsw i32 %18, 1, !dbg !91
  store i32 %inc21, i32* %i, align 4, !dbg !91
  br label %for.cond, !dbg !92, !llvm.loop !93

for.end22:                                        ; preds = %for.cond
  ret void, !dbg !95
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print(i32* %a, i32 %size) #0 !dbg !96 {
entry:
  %a.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !99, metadata !DIExpression()), !dbg !100
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !103, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %i, align 4, !dbg !105
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !108
  %1 = load i32, i32* %size.addr, align 4, !dbg !110
  %cmp = icmp slt i32 %0, %1, !dbg !111
  br i1 %cmp, label %for.body, label %for.end, !dbg !112

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %a.addr, align 8, !dbg !113
  %3 = load i32, i32* %i, align 4, !dbg !114
  %idxprom = sext i32 %3 to i64, !dbg !113
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !113
  %4 = load i32, i32* %arrayidx, align 4, !dbg !113
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4), !dbg !115
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !116
  %inc = add nsw i32 %5, 1, !dbg !116
  store i32 %inc, i32* %i, align 4, !dbg !116
  br label %for.cond, !dbg !117, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  ret void, !dbg !120
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !121 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32*, align 8
  %y = alloca i32*, align 8
  %z = alloca i32*, align 8
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32** %x, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32** %y, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i32** %z, metadata !130, metadata !DIExpression()), !dbg !131
  %call = call noalias i8* @malloc(i64 4096) #4, !dbg !132
  %0 = bitcast i8* %call to i32*, !dbg !133
  store i32* %0, i32** %x, align 8, !dbg !134
  %call1 = call noalias i8* @malloc(i64 4096) #4, !dbg !135
  %1 = bitcast i8* %call1 to i32*, !dbg !136
  store i32* %1, i32** %y, align 8, !dbg !137
  %call2 = call noalias i8* @malloc(i64 4096) #4, !dbg !138
  %2 = bitcast i8* %call2 to i32*, !dbg !139
  store i32* %2, i32** %z, align 8, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %max, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %min, metadata !143, metadata !DIExpression()), !dbg !144
  call void @srand(i32 8650341) #4, !dbg !145
  store i32 128, i32* %max, align 4, !dbg !146
  store i32 0, i32* %min, align 4, !dbg !147
  store i32 0, i32* %i, align 4, !dbg !148
  br label %for.cond, !dbg !150

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !151
  %cmp = icmp slt i32 %3, 1024, !dbg !153
  br i1 %cmp, label %for.body, label %for.end, !dbg !154

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand() #4, !dbg !155
  %conv = sitofp i32 %call3 to double, !dbg !157
  %div = fdiv double %conv, 0x41DFFFFFFFC00000, !dbg !158
  %4 = load i32, i32* %max, align 4, !dbg !159
  %5 = load i32, i32* %min, align 4, !dbg !160
  %sub = sub nsw i32 %4, %5, !dbg !161
  %conv4 = sitofp i32 %sub to double, !dbg !162
  %mul = fmul double %div, %conv4, !dbg !163
  %6 = load i32, i32* %min, align 4, !dbg !164
  %conv5 = sitofp i32 %6 to double, !dbg !164
  %add = fadd double %mul, %conv5, !dbg !165
  %conv6 = fptosi double %add to i32, !dbg !166
  %7 = load i32*, i32** %x, align 8, !dbg !167
  %8 = load i32, i32* %i, align 4, !dbg !168
  %idxprom = sext i32 %8 to i64, !dbg !167
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom, !dbg !167
  store i32 %conv6, i32* %arrayidx, align 4, !dbg !169
  %call7 = call i32 @rand() #4, !dbg !170
  %conv8 = sitofp i32 %call7 to double, !dbg !171
  %div9 = fdiv double %conv8, 0x41DFFFFFFFC00000, !dbg !172
  %9 = load i32, i32* %max, align 4, !dbg !173
  %10 = load i32, i32* %min, align 4, !dbg !174
  %sub10 = sub nsw i32 %9, %10, !dbg !175
  %conv11 = sitofp i32 %sub10 to double, !dbg !176
  %mul12 = fmul double %div9, %conv11, !dbg !177
  %11 = load i32, i32* %min, align 4, !dbg !178
  %conv13 = sitofp i32 %11 to double, !dbg !178
  %add14 = fadd double %mul12, %conv13, !dbg !179
  %conv15 = fptosi double %add14 to i32, !dbg !180
  %12 = load i32*, i32** %y, align 8, !dbg !181
  %13 = load i32, i32* %i, align 4, !dbg !182
  %idxprom16 = sext i32 %13 to i64, !dbg !181
  %arrayidx17 = getelementptr inbounds i32, i32* %12, i64 %idxprom16, !dbg !181
  store i32 %conv15, i32* %arrayidx17, align 4, !dbg !183
  %14 = load i32*, i32** %z, align 8, !dbg !184
  %15 = load i32, i32* %i, align 4, !dbg !185
  %idxprom18 = sext i32 %15 to i64, !dbg !184
  %arrayidx19 = getelementptr inbounds i32, i32* %14, i64 %idxprom18, !dbg !184
  store i32 0, i32* %arrayidx19, align 4, !dbg !186
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !188
  %inc = add nsw i32 %16, 1, !dbg !188
  store i32 %inc, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  %17 = load i32*, i32** %x, align 8, !dbg !192
  %18 = load i32*, i32** %y, align 8, !dbg !193
  %19 = load i32*, i32** %z, align 8, !dbg !194
  call void @bb_gemm(i32* %17, i32* %18, i32* %19), !dbg !195
  %20 = load i32*, i32** %z, align 8, !dbg !196
  call void @print(i32* %20, i32 1024), !dbg !197
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !198
  ret i32 0, !dbg !199
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bb_gemm.c", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/bb_gemm")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "bb_gemm", scope: !1, file: !1, line: 7, type: !12, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !4, !4, !4}
!14 = !DILocalVariable(name: "x", arg: 1, scope: !11, file: !1, line: 7, type: !4)
!15 = !DILocation(line: 7, column: 18, scope: !11)
!16 = !DILocalVariable(name: "y", arg: 2, scope: !11, file: !1, line: 7, type: !4)
!17 = !DILocation(line: 7, column: 28, scope: !11)
!18 = !DILocalVariable(name: "z", arg: 3, scope: !11, file: !1, line: 7, type: !4)
!19 = !DILocation(line: 7, column: 38, scope: !11)
!20 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 13, type: !5)
!21 = !DILocation(line: 13, column: 7, scope: !11)
!22 = !DILocalVariable(name: "k", scope: !11, file: !1, line: 13, type: !5)
!23 = !DILocation(line: 13, column: 10, scope: !11)
!24 = !DILocalVariable(name: "j", scope: !11, file: !1, line: 13, type: !5)
!25 = !DILocation(line: 13, column: 13, scope: !11)
!26 = !DILocalVariable(name: "temp_x", scope: !11, file: !1, line: 13, type: !5)
!27 = !DILocation(line: 13, column: 16, scope: !11)
!28 = !DILocation(line: 13, column: 3, scope: !11)
!29 = !DILabel(scope: !11, name: "loopi", file: !1, line: 14)
!30 = !DILocation(line: 14, column: 2, scope: !11)
!31 = !DILocation(line: 14, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !11, file: !1, line: 14, column: 8)
!33 = !DILocation(line: 14, column: 14, scope: !32)
!34 = !DILocation(line: 14, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 14, column: 8)
!36 = !DILocation(line: 14, column: 23, scope: !35)
!37 = !DILocation(line: 14, column: 8, scope: !32)
!38 = !DILocation(line: 14, column: 38, scope: !35)
!39 = !DILabel(scope: !40, name: "loopk", file: !1, line: 15)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 14, column: 38)
!41 = !DILocation(line: 15, column: 3, scope: !40)
!42 = !DILocation(line: 15, column: 16, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 15, column: 9)
!44 = !DILocation(line: 15, column: 14, scope: !43)
!45 = !DILocation(line: 15, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 9)
!47 = !DILocation(line: 15, column: 23, scope: !46)
!48 = !DILocation(line: 15, column: 9, scope: !43)
!49 = !DILocation(line: 16, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 15, column: 40)
!51 = !DILocation(line: 16, column: 21, scope: !50)
!52 = !DILocation(line: 16, column: 23, scope: !50)
!53 = !DILocation(line: 16, column: 35, scope: !50)
!54 = !DILocation(line: 16, column: 33, scope: !50)
!55 = !DILocation(line: 16, column: 17, scope: !50)
!56 = !DILocation(line: 16, column: 10, scope: !50)
!57 = !DILabel(scope: !50, name: "loopj", file: !1, line: 17)
!58 = !DILocation(line: 17, column: 4, scope: !50)
!59 = !DILocation(line: 17, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !50, file: !1, line: 17, column: 10)
!61 = !DILocation(line: 17, column: 15, scope: !60)
!62 = !DILocation(line: 17, column: 22, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 17, column: 10)
!64 = !DILocation(line: 17, column: 24, scope: !63)
!65 = !DILocation(line: 17, column: 10, scope: !60)
!66 = !DILocation(line: 18, column: 33, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 17, column: 41)
!68 = !DILocation(line: 18, column: 42, scope: !67)
!69 = !DILocation(line: 18, column: 44, scope: !67)
!70 = !DILocation(line: 18, column: 45, scope: !67)
!71 = !DILocation(line: 18, column: 56, scope: !67)
!72 = !DILocation(line: 18, column: 54, scope: !67)
!73 = !DILocation(line: 18, column: 40, scope: !67)
!74 = !DILocation(line: 18, column: 11, scope: !67)
!75 = !DILocation(line: 18, column: 13, scope: !67)
!76 = !DILocation(line: 18, column: 15, scope: !67)
!77 = !DILocation(line: 18, column: 27, scope: !67)
!78 = !DILocation(line: 18, column: 25, scope: !67)
!79 = !DILocation(line: 18, column: 30, scope: !67)
!80 = !DILocation(line: 19, column: 10, scope: !67)
!81 = !DILocation(line: 17, column: 37, scope: !63)
!82 = !DILocation(line: 17, column: 10, scope: !63)
!83 = distinct !{!83, !65, !84}
!84 = !DILocation(line: 19, column: 10, scope: !60)
!85 = !DILocation(line: 21, column: 9, scope: !50)
!86 = !DILocation(line: 15, column: 36, scope: !46)
!87 = !DILocation(line: 15, column: 9, scope: !46)
!88 = distinct !{!88, !48, !89}
!89 = !DILocation(line: 21, column: 9, scope: !43)
!90 = !DILocation(line: 22, column: 2, scope: !40)
!91 = !DILocation(line: 14, column: 34, scope: !35)
!92 = !DILocation(line: 14, column: 8, scope: !35)
!93 = distinct !{!93, !37, !94}
!94 = !DILocation(line: 22, column: 2, scope: !32)
!95 = !DILocation(line: 26, column: 1, scope: !11)
!96 = distinct !DISubprogram(name: "print", scope: !1, file: !1, line: 27, type: !97, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !4, !5}
!99 = !DILocalVariable(name: "a", arg: 1, scope: !96, file: !1, line: 27, type: !4)
!100 = !DILocation(line: 27, column: 17, scope: !96)
!101 = !DILocalVariable(name: "size", arg: 2, scope: !96, file: !1, line: 27, type: !5)
!102 = !DILocation(line: 27, column: 24, scope: !96)
!103 = !DILocalVariable(name: "i", scope: !96, file: !1, line: 29, type: !5)
!104 = !DILocation(line: 29, column: 6, scope: !96)
!105 = !DILocation(line: 31, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !96, file: !1, line: 31, column: 2)
!107 = !DILocation(line: 31, column: 7, scope: !106)
!108 = !DILocation(line: 31, column: 14, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 31, column: 2)
!110 = !DILocation(line: 31, column: 18, scope: !109)
!111 = !DILocation(line: 31, column: 16, scope: !109)
!112 = !DILocation(line: 31, column: 2, scope: !106)
!113 = !DILocation(line: 32, column: 18, scope: !109)
!114 = !DILocation(line: 32, column: 20, scope: !109)
!115 = !DILocation(line: 32, column: 3, scope: !109)
!116 = !DILocation(line: 31, column: 25, scope: !109)
!117 = !DILocation(line: 31, column: 2, scope: !109)
!118 = distinct !{!118, !112, !119}
!119 = !DILocation(line: 32, column: 22, scope: !106)
!120 = !DILocation(line: 33, column: 1, scope: !96)
!121 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !122, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!122 = !DISubroutineType(types: !123)
!123 = !{!5}
!124 = !DILocalVariable(name: "i", scope: !121, file: !1, line: 37, type: !5)
!125 = !DILocation(line: 37, column: 6, scope: !121)
!126 = !DILocalVariable(name: "x", scope: !121, file: !1, line: 38, type: !4)
!127 = !DILocation(line: 38, column: 9, scope: !121)
!128 = !DILocalVariable(name: "y", scope: !121, file: !1, line: 39, type: !4)
!129 = !DILocation(line: 39, column: 8, scope: !121)
!130 = !DILocalVariable(name: "z", scope: !121, file: !1, line: 40, type: !4)
!131 = !DILocation(line: 40, column: 8, scope: !121)
!132 = !DILocation(line: 41, column: 14, scope: !121)
!133 = !DILocation(line: 41, column: 7, scope: !121)
!134 = !DILocation(line: 41, column: 5, scope: !121)
!135 = !DILocation(line: 42, column: 14, scope: !121)
!136 = !DILocation(line: 42, column: 7, scope: !121)
!137 = !DILocation(line: 42, column: 5, scope: !121)
!138 = !DILocation(line: 43, column: 14, scope: !121)
!139 = !DILocation(line: 43, column: 7, scope: !121)
!140 = !DILocation(line: 43, column: 5, scope: !121)
!141 = !DILocalVariable(name: "max", scope: !121, file: !1, line: 45, type: !5)
!142 = !DILocation(line: 45, column: 7, scope: !121)
!143 = !DILocalVariable(name: "min", scope: !121, file: !1, line: 45, type: !5)
!144 = !DILocation(line: 45, column: 12, scope: !121)
!145 = !DILocation(line: 46, column: 2, scope: !121)
!146 = !DILocation(line: 47, column: 7, scope: !121)
!147 = !DILocation(line: 48, column: 7, scope: !121)
!148 = !DILocation(line: 49, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !121, file: !1, line: 49, column: 3)
!150 = !DILocation(line: 49, column: 7, scope: !149)
!151 = !DILocation(line: 49, column: 12, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 49, column: 3)
!153 = !DILocation(line: 49, column: 13, scope: !152)
!154 = !DILocation(line: 49, column: 3, scope: !149)
!155 = !DILocation(line: 50, column: 29, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 49, column: 21)
!157 = !DILocation(line: 50, column: 20, scope: !156)
!158 = !DILocation(line: 50, column: 36, scope: !156)
!159 = !DILocation(line: 50, column: 53, scope: !156)
!160 = !DILocation(line: 50, column: 57, scope: !156)
!161 = !DILocation(line: 50, column: 56, scope: !156)
!162 = !DILocation(line: 50, column: 52, scope: !156)
!163 = !DILocation(line: 50, column: 50, scope: !156)
!164 = !DILocation(line: 50, column: 64, scope: !156)
!165 = !DILocation(line: 50, column: 62, scope: !156)
!166 = !DILocation(line: 50, column: 12, scope: !156)
!167 = !DILocation(line: 50, column: 5, scope: !156)
!168 = !DILocation(line: 50, column: 7, scope: !156)
!169 = !DILocation(line: 50, column: 10, scope: !156)
!170 = !DILocation(line: 51, column: 29, scope: !156)
!171 = !DILocation(line: 51, column: 20, scope: !156)
!172 = !DILocation(line: 51, column: 36, scope: !156)
!173 = !DILocation(line: 51, column: 53, scope: !156)
!174 = !DILocation(line: 51, column: 57, scope: !156)
!175 = !DILocation(line: 51, column: 56, scope: !156)
!176 = !DILocation(line: 51, column: 52, scope: !156)
!177 = !DILocation(line: 51, column: 50, scope: !156)
!178 = !DILocation(line: 51, column: 64, scope: !156)
!179 = !DILocation(line: 51, column: 62, scope: !156)
!180 = !DILocation(line: 51, column: 12, scope: !156)
!181 = !DILocation(line: 51, column: 5, scope: !156)
!182 = !DILocation(line: 51, column: 7, scope: !156)
!183 = !DILocation(line: 51, column: 10, scope: !156)
!184 = !DILocation(line: 52, column: 5, scope: !156)
!185 = !DILocation(line: 52, column: 7, scope: !156)
!186 = !DILocation(line: 52, column: 10, scope: !156)
!187 = !DILocation(line: 53, column: 3, scope: !156)
!188 = !DILocation(line: 49, column: 18, scope: !152)
!189 = !DILocation(line: 49, column: 3, scope: !152)
!190 = distinct !{!190, !154, !191}
!191 = !DILocation(line: 53, column: 3, scope: !149)
!192 = !DILocation(line: 58, column: 10, scope: !121)
!193 = !DILocation(line: 58, column: 13, scope: !121)
!194 = !DILocation(line: 58, column: 16, scope: !121)
!195 = !DILocation(line: 58, column: 2, scope: !121)
!196 = !DILocation(line: 62, column: 9, scope: !121)
!197 = !DILocation(line: 62, column: 3, scope: !121)
!198 = !DILocation(line: 63, column: 2, scope: !121)
!199 = !DILocation(line: 65, column: 2, scope: !121)
