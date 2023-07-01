; ModuleID = 'bfs.c'
source_filename = "bfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node_t_struct = type { i64, i64 }
%struct.edge_t_struct = type { i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bfs(%struct.node_t_struct* %host_nodes, %struct.edge_t_struct* %host_edges, i8* %host_level, i64* %host_level_counts, %struct.node_t_struct* %nodes, %struct.edge_t_struct* %edges, i8* %level, i64* %level_counts, i64 %starting_node) #0 !dbg !7 {
entry:
  %host_nodes.addr = alloca %struct.node_t_struct*, align 8
  %host_edges.addr = alloca %struct.edge_t_struct*, align 8
  %host_level.addr = alloca i8*, align 8
  %host_level_counts.addr = alloca i64*, align 8
  %nodes.addr = alloca %struct.node_t_struct*, align 8
  %edges.addr = alloca %struct.edge_t_struct*, align 8
  %level.addr = alloca i8*, align 8
  %level_counts.addr = alloca i64*, align 8
  %starting_node.addr = alloca i64, align 8
  %n = alloca i64, align 8
  %e = alloca i64, align 8
  %horizon = alloca i8, align 1
  %cnt = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp_begin = alloca i64, align 8
  %tmp_end = alloca i64, align 8
  %tmp_dst = alloca i64, align 8
  %tmp_level = alloca i8, align 1
  store %struct.node_t_struct* %host_nodes, %struct.node_t_struct** %host_nodes.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.node_t_struct** %host_nodes.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store %struct.edge_t_struct* %host_edges, %struct.edge_t_struct** %host_edges.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.edge_t_struct** %host_edges.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %host_level, i8** %host_level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %host_level.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store i64* %host_level_counts, i64** %host_level_counts.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %host_level_counts.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store %struct.node_t_struct* %nodes, %struct.node_t_struct** %nodes.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.node_t_struct** %nodes.addr, metadata !44, metadata !DIExpression()), !dbg !45
  store %struct.edge_t_struct* %edges, %struct.edge_t_struct** %edges.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.edge_t_struct** %edges.addr, metadata !46, metadata !DIExpression()), !dbg !47
  store i8* %level, i8** %level.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %level.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store i64* %level_counts, i64** %level_counts.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %level_counts.addr, metadata !50, metadata !DIExpression()), !dbg !51
  store i64 %starting_node, i64* %starting_node.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %starting_node.addr, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i64* %n, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i64* %e, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i8* %horizon, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i64* %cnt, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !64
  %0 = load %struct.node_t_struct*, %struct.node_t_struct** %host_nodes.addr, align 8, !dbg !65
  store %struct.node_t_struct* %0, %struct.node_t_struct** %nodes.addr, align 8, !dbg !66
  %1 = load %struct.edge_t_struct*, %struct.edge_t_struct** %host_edges.addr, align 8, !dbg !67
  store %struct.edge_t_struct* %1, %struct.edge_t_struct** %edges.addr, align 8, !dbg !68
  %2 = load i8*, i8** %host_level.addr, align 8, !dbg !69
  store i8* %2, i8** %level.addr, align 8, !dbg !70
  %3 = load i64*, i64** %host_level_counts.addr, align 8, !dbg !71
  store i64* %3, i64** %level_counts.addr, align 8, !dbg !72
  %4 = load i8*, i8** %level.addr, align 8, !dbg !73
  %5 = load i64, i64* %starting_node.addr, align 8, !dbg !74
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !73
  store i8 0, i8* %arrayidx, align 1, !dbg !75
  br label %init_horizons, !dbg !73

init_horizons:                                    ; preds = %entry
  call void @llvm.dbg.label(metadata !76), !dbg !77
  store i32 0, i32* %i, align 4, !dbg !78
  br label %for.cond, !dbg !80

for.cond:                                         ; preds = %for.inc, %init_horizons
  %6 = load i32, i32* %i, align 4, !dbg !81
  %cmp = icmp slt i32 %6, 10, !dbg !83
  br i1 %cmp, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %7 = load i64*, i64** %level_counts.addr, align 8, !dbg !85
  %8 = load i32, i32* %i, align 4, !dbg !86
  %idxprom = sext i32 %8 to i64, !dbg !85
  %arrayidx1 = getelementptr inbounds i64, i64* %7, i64 %idxprom, !dbg !85
  store i64 0, i64* %arrayidx1, align 8, !dbg !87
  br label %for.inc, !dbg !85

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !88
  %inc = add nsw i32 %9, 1, !dbg !88
  store i32 %inc, i32* %i, align 4, !dbg !88
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %10 = load i64*, i64** %level_counts.addr, align 8, !dbg !92
  %arrayidx2 = getelementptr inbounds i64, i64* %10, i64 0, !dbg !92
  store i64 1, i64* %arrayidx2, align 8, !dbg !93
  br label %loop_horizons, !dbg !92

loop_horizons:                                    ; preds = %for.end
  call void @llvm.dbg.label(metadata !94), !dbg !95
  store i8 0, i8* %horizon, align 1, !dbg !96
  br label %for.cond3, !dbg !98

for.cond3:                                        ; preds = %for.inc47, %loop_horizons
  %11 = load i8, i8* %horizon, align 1, !dbg !99
  %conv = sext i8 %11 to i32, !dbg !99
  %cmp4 = icmp slt i32 %conv, 10, !dbg !101
  br i1 %cmp4, label %for.body6, label %for.end49, !dbg !102

for.body6:                                        ; preds = %for.cond3
  store i64 0, i64* %cnt, align 8, !dbg !103
  br label %loop_nodes, !dbg !105

loop_nodes:                                       ; preds = %for.body6
  call void @llvm.dbg.label(metadata !106), !dbg !107
  store i64 0, i64* %n, align 8, !dbg !108
  br label %for.cond7, !dbg !110

for.cond7:                                        ; preds = %for.inc36, %loop_nodes
  %12 = load i64, i64* %n, align 8, !dbg !111
  %cmp8 = icmp ult i64 %12, 256, !dbg !113
  br i1 %cmp8, label %for.body10, label %for.end38, !dbg !114

for.body10:                                       ; preds = %for.cond7
  %13 = load i8*, i8** %level.addr, align 8, !dbg !115
  %14 = load i64, i64* %n, align 8, !dbg !118
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !115
  %15 = load i8, i8* %arrayidx11, align 1, !dbg !115
  %conv12 = sext i8 %15 to i32, !dbg !115
  %16 = load i8, i8* %horizon, align 1, !dbg !119
  %conv13 = sext i8 %16 to i32, !dbg !119
  %cmp14 = icmp eq i32 %conv12, %conv13, !dbg !120
  br i1 %cmp14, label %if.then, label %if.end35, !dbg !121

if.then:                                          ; preds = %for.body10
  call void @llvm.dbg.declare(metadata i64* %tmp_begin, metadata !122, metadata !DIExpression()), !dbg !124
  %17 = load %struct.node_t_struct*, %struct.node_t_struct** %nodes.addr, align 8, !dbg !125
  %18 = load i64, i64* %n, align 8, !dbg !126
  %arrayidx16 = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %17, i64 %18, !dbg !125
  %edge_begin = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %arrayidx16, i32 0, i32 0, !dbg !127
  %19 = load i64, i64* %edge_begin, align 8, !dbg !127
  store i64 %19, i64* %tmp_begin, align 8, !dbg !124
  call void @llvm.dbg.declare(metadata i64* %tmp_end, metadata !128, metadata !DIExpression()), !dbg !129
  %20 = load %struct.node_t_struct*, %struct.node_t_struct** %nodes.addr, align 8, !dbg !130
  %21 = load i64, i64* %n, align 8, !dbg !131
  %arrayidx17 = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %20, i64 %21, !dbg !130
  %edge_end = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %arrayidx17, i32 0, i32 1, !dbg !132
  %22 = load i64, i64* %edge_end, align 8, !dbg !132
  store i64 %22, i64* %tmp_end, align 8, !dbg !129
  br label %loop_neighbors, !dbg !133

loop_neighbors:                                   ; preds = %if.then
  call void @llvm.dbg.label(metadata !134), !dbg !135
  %23 = load i64, i64* %tmp_begin, align 8, !dbg !136
  store i64 %23, i64* %e, align 8, !dbg !138
  br label %for.cond18, !dbg !139

for.cond18:                                       ; preds = %for.inc32, %loop_neighbors
  %24 = load i64, i64* %e, align 8, !dbg !140
  %25 = load i64, i64* %tmp_end, align 8, !dbg !142
  %cmp19 = icmp ult i64 %24, %25, !dbg !143
  br i1 %cmp19, label %for.body21, label %for.end34, !dbg !144

for.body21:                                       ; preds = %for.cond18
  call void @llvm.dbg.declare(metadata i64* %tmp_dst, metadata !145, metadata !DIExpression()), !dbg !147
  %26 = load %struct.edge_t_struct*, %struct.edge_t_struct** %edges.addr, align 8, !dbg !148
  %27 = load i64, i64* %e, align 8, !dbg !149
  %arrayidx22 = getelementptr inbounds %struct.edge_t_struct, %struct.edge_t_struct* %26, i64 %27, !dbg !148
  %dst = getelementptr inbounds %struct.edge_t_struct, %struct.edge_t_struct* %arrayidx22, i32 0, i32 0, !dbg !150
  %28 = load i64, i64* %dst, align 8, !dbg !150
  store i64 %28, i64* %tmp_dst, align 8, !dbg !147
  call void @llvm.dbg.declare(metadata i8* %tmp_level, metadata !151, metadata !DIExpression()), !dbg !152
  %29 = load i8*, i8** %level.addr, align 8, !dbg !153
  %30 = load i64, i64* %tmp_dst, align 8, !dbg !154
  %arrayidx23 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !153
  %31 = load i8, i8* %arrayidx23, align 1, !dbg !153
  store i8 %31, i8* %tmp_level, align 1, !dbg !152
  %32 = load i8, i8* %tmp_level, align 1, !dbg !155
  %conv24 = sext i8 %32 to i32, !dbg !155
  %cmp25 = icmp eq i32 %conv24, 127, !dbg !157
  br i1 %cmp25, label %if.then27, label %if.end, !dbg !158

if.then27:                                        ; preds = %for.body21
  %33 = load i8, i8* %horizon, align 1, !dbg !159
  %conv28 = sext i8 %33 to i32, !dbg !159
  %add = add nsw i32 %conv28, 1, !dbg !161
  %conv29 = trunc i32 %add to i8, !dbg !159
  %34 = load i8*, i8** %level.addr, align 8, !dbg !162
  %35 = load i64, i64* %tmp_dst, align 8, !dbg !163
  %arrayidx30 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !162
  store i8 %conv29, i8* %arrayidx30, align 1, !dbg !164
  %36 = load i64, i64* %cnt, align 8, !dbg !165
  %inc31 = add i64 %36, 1, !dbg !165
  store i64 %inc31, i64* %cnt, align 8, !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then27, %for.body21
  br label %for.inc32, !dbg !167

for.inc32:                                        ; preds = %if.end
  %37 = load i64, i64* %e, align 8, !dbg !168
  %inc33 = add i64 %37, 1, !dbg !168
  store i64 %inc33, i64* %e, align 8, !dbg !168
  br label %for.cond18, !dbg !169, !llvm.loop !170

for.end34:                                        ; preds = %for.cond18
  br label %if.end35, !dbg !172

if.end35:                                         ; preds = %for.end34, %for.body10
  br label %for.inc36, !dbg !173

for.inc36:                                        ; preds = %if.end35
  %38 = load i64, i64* %n, align 8, !dbg !174
  %inc37 = add i64 %38, 1, !dbg !174
  store i64 %inc37, i64* %n, align 8, !dbg !174
  br label %for.cond7, !dbg !175, !llvm.loop !176

for.end38:                                        ; preds = %for.cond7
  %39 = load i64, i64* %cnt, align 8, !dbg !178
  %40 = load i64*, i64** %level_counts.addr, align 8, !dbg !180
  %41 = load i8, i8* %horizon, align 1, !dbg !181
  %conv39 = sext i8 %41 to i32, !dbg !181
  %add40 = add nsw i32 %conv39, 1, !dbg !182
  %idxprom41 = sext i32 %add40 to i64, !dbg !180
  %arrayidx42 = getelementptr inbounds i64, i64* %40, i64 %idxprom41, !dbg !180
  store i64 %39, i64* %arrayidx42, align 8, !dbg !183
  %cmp43 = icmp eq i64 %39, 0, !dbg !184
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !185

if.then45:                                        ; preds = %for.end38
  br label %for.end49, !dbg !186

if.end46:                                         ; preds = %for.end38
  br label %for.inc47, !dbg !187

for.inc47:                                        ; preds = %if.end46
  %42 = load i8, i8* %horizon, align 1, !dbg !188
  %inc48 = add i8 %42, 1, !dbg !188
  store i8 %inc48, i8* %horizon, align 1, !dbg !188
  br label %for.cond3, !dbg !189, !llvm.loop !190

for.end49:                                        ; preds = %if.then45, %for.cond3
  ret void, !dbg !192
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
!1 = !DIFile(filename: "bfs.c", directory: "/home/coco/work/benchmark_codes/bfs-bulk")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "bfs", scope: !1, file: !1, line: 13, type: !8, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !23, !29, !35, !10, !23, !29, !35, !28}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !12, line: 38, baseType: !13)
!12 = !DIFile(filename: "./bfs.h", directory: "/home/coco/work/benchmark_codes/bfs-bulk")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node_t_struct", file: !12, line: 35, size: 128, elements: !14)
!14 = !{!15, !22}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "edge_begin", scope: !13, file: !12, line: 36, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_index_t", file: !12, line: 25, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !20, line: 45, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "edge_end", scope: !13, file: !12, line: 37, baseType: !16, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_t", file: !12, line: 33, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_t_struct", file: !12, line: 28, size: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !25, file: !12, line: 32, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_index_t", file: !12, line: 26, baseType: !17)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "level_t", file: !12, line: 40, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !20, line: 37, baseType: !34)
!34 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!36 = !DILocalVariable(name: "host_nodes", arg: 1, scope: !7, file: !1, line: 13, type: !10)
!37 = !DILocation(line: 13, column: 18, scope: !7)
!38 = !DILocalVariable(name: "host_edges", arg: 2, scope: !7, file: !1, line: 14, type: !23)
!39 = !DILocation(line: 14, column: 18, scope: !7)
!40 = !DILocalVariable(name: "host_level", arg: 3, scope: !7, file: !1, line: 15, type: !29)
!41 = !DILocation(line: 15, column: 19, scope: !7)
!42 = !DILocalVariable(name: "host_level_counts", arg: 4, scope: !7, file: !1, line: 16, type: !35)
!43 = !DILocation(line: 16, column: 24, scope: !7)
!44 = !DILocalVariable(name: "nodes", arg: 5, scope: !7, file: !1, line: 17, type: !10)
!45 = !DILocation(line: 17, column: 18, scope: !7)
!46 = !DILocalVariable(name: "edges", arg: 6, scope: !7, file: !1, line: 18, type: !23)
!47 = !DILocation(line: 18, column: 18, scope: !7)
!48 = !DILocalVariable(name: "level", arg: 7, scope: !7, file: !1, line: 19, type: !29)
!49 = !DILocation(line: 19, column: 19, scope: !7)
!50 = !DILocalVariable(name: "level_counts", arg: 8, scope: !7, file: !1, line: 20, type: !35)
!51 = !DILocation(line: 20, column: 24, scope: !7)
!52 = !DILocalVariable(name: "starting_node", arg: 9, scope: !7, file: !1, line: 21, type: !28)
!53 = !DILocation(line: 21, column: 23, scope: !7)
!54 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 23, type: !28)
!55 = !DILocation(line: 23, column: 16, scope: !7)
!56 = !DILocalVariable(name: "e", scope: !7, file: !1, line: 24, type: !16)
!57 = !DILocation(line: 24, column: 16, scope: !7)
!58 = !DILocalVariable(name: "horizon", scope: !7, file: !1, line: 25, type: !30)
!59 = !DILocation(line: 25, column: 11, scope: !7)
!60 = !DILocalVariable(name: "cnt", scope: !7, file: !1, line: 26, type: !16)
!61 = !DILocation(line: 26, column: 16, scope: !7)
!62 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 27, type: !63)
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !DILocation(line: 27, column: 7, scope: !7)
!65 = !DILocation(line: 34, column: 11, scope: !7)
!66 = !DILocation(line: 34, column: 9, scope: !7)
!67 = !DILocation(line: 35, column: 11, scope: !7)
!68 = !DILocation(line: 35, column: 9, scope: !7)
!69 = !DILocation(line: 36, column: 11, scope: !7)
!70 = !DILocation(line: 36, column: 9, scope: !7)
!71 = !DILocation(line: 37, column: 18, scope: !7)
!72 = !DILocation(line: 37, column: 16, scope: !7)
!73 = !DILocation(line: 40, column: 3, scope: !7)
!74 = !DILocation(line: 40, column: 9, scope: !7)
!75 = !DILocation(line: 40, column: 24, scope: !7)
!76 = !DILabel(scope: !7, name: "init_horizons", file: !1, line: 41)
!77 = !DILocation(line: 41, column: 3, scope: !7)
!78 = !DILocation(line: 41, column: 24, scope: !79)
!79 = distinct !DILexicalBlock(scope: !7, file: !1, line: 41, column: 18)
!80 = !DILocation(line: 41, column: 23, scope: !79)
!81 = !DILocation(line: 41, column: 28, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 41, column: 18)
!83 = !DILocation(line: 41, column: 29, scope: !82)
!84 = !DILocation(line: 41, column: 18, scope: !79)
!85 = !DILocation(line: 42, column: 5, scope: !82)
!86 = !DILocation(line: 42, column: 18, scope: !82)
!87 = !DILocation(line: 42, column: 21, scope: !82)
!88 = !DILocation(line: 41, column: 41, scope: !82)
!89 = !DILocation(line: 41, column: 18, scope: !82)
!90 = distinct !{!90, !84, !91}
!91 = !DILocation(line: 42, column: 23, scope: !79)
!92 = !DILocation(line: 43, column: 3, scope: !7)
!93 = !DILocation(line: 43, column: 19, scope: !7)
!94 = !DILabel(scope: !7, name: "loop_horizons", file: !1, line: 45)
!95 = !DILocation(line: 45, column: 3, scope: !7)
!96 = !DILocation(line: 45, column: 30, scope: !97)
!97 = distinct !DILexicalBlock(scope: !7, file: !1, line: 45, column: 18)
!98 = !DILocation(line: 45, column: 23, scope: !97)
!99 = !DILocation(line: 45, column: 34, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 45, column: 18)
!101 = !DILocation(line: 45, column: 41, scope: !100)
!102 = !DILocation(line: 45, column: 18, scope: !97)
!103 = !DILocation(line: 46, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 45, column: 64)
!105 = !DILocation(line: 46, column: 5, scope: !104)
!106 = !DILabel(scope: !104, name: "loop_nodes", file: !1, line: 48)
!107 = !DILocation(line: 48, column: 5, scope: !104)
!108 = !DILocation(line: 48, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 48, column: 17)
!110 = !DILocation(line: 48, column: 22, scope: !109)
!111 = !DILocation(line: 48, column: 27, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 48, column: 17)
!113 = !DILocation(line: 48, column: 28, scope: !112)
!114 = !DILocation(line: 48, column: 17, scope: !109)
!115 = !DILocation(line: 49, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 49, column: 11)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 48, column: 44)
!118 = !DILocation(line: 49, column: 17, scope: !116)
!119 = !DILocation(line: 49, column: 21, scope: !116)
!120 = !DILocation(line: 49, column: 19, scope: !116)
!121 = !DILocation(line: 49, column: 11, scope: !117)
!122 = !DILocalVariable(name: "tmp_begin", scope: !123, file: !1, line: 50, type: !16)
!123 = distinct !DILexicalBlock(scope: !116, file: !1, line: 49, column: 31)
!124 = !DILocation(line: 50, column: 22, scope: !123)
!125 = !DILocation(line: 50, column: 34, scope: !123)
!126 = !DILocation(line: 50, column: 40, scope: !123)
!127 = !DILocation(line: 50, column: 43, scope: !123)
!128 = !DILocalVariable(name: "tmp_end", scope: !123, file: !1, line: 51, type: !16)
!129 = !DILocation(line: 51, column: 22, scope: !123)
!130 = !DILocation(line: 51, column: 32, scope: !123)
!131 = !DILocation(line: 51, column: 38, scope: !123)
!132 = !DILocation(line: 51, column: 41, scope: !123)
!133 = !DILocation(line: 51, column: 9, scope: !123)
!134 = !DILabel(scope: !123, name: "loop_neighbors", file: !1, line: 52)
!135 = !DILocation(line: 52, column: 9, scope: !123)
!136 = !DILocation(line: 52, column: 32, scope: !137)
!137 = distinct !DILexicalBlock(scope: !123, file: !1, line: 52, column: 25)
!138 = !DILocation(line: 52, column: 31, scope: !137)
!139 = !DILocation(line: 52, column: 30, scope: !137)
!140 = !DILocation(line: 52, column: 43, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 52, column: 25)
!142 = !DILocation(line: 52, column: 45, scope: !141)
!143 = !DILocation(line: 52, column: 44, scope: !141)
!144 = !DILocation(line: 52, column: 25, scope: !137)
!145 = !DILocalVariable(name: "tmp_dst", scope: !146, file: !1, line: 53, type: !28)
!146 = distinct !DILexicalBlock(scope: !141, file: !1, line: 52, column: 60)
!147 = !DILocation(line: 53, column: 24, scope: !146)
!148 = !DILocation(line: 53, column: 34, scope: !146)
!149 = !DILocation(line: 53, column: 40, scope: !146)
!150 = !DILocation(line: 53, column: 43, scope: !146)
!151 = !DILocalVariable(name: "tmp_level", scope: !146, file: !1, line: 54, type: !30)
!152 = !DILocation(line: 54, column: 19, scope: !146)
!153 = !DILocation(line: 54, column: 31, scope: !146)
!154 = !DILocation(line: 54, column: 37, scope: !146)
!155 = !DILocation(line: 56, column: 15, scope: !156)
!156 = distinct !DILexicalBlock(scope: !146, file: !1, line: 56, column: 15)
!157 = !DILocation(line: 56, column: 25, scope: !156)
!158 = !DILocation(line: 56, column: 15, scope: !146)
!159 = !DILocation(line: 57, column: 30, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 56, column: 39)
!161 = !DILocation(line: 57, column: 37, scope: !160)
!162 = !DILocation(line: 57, column: 13, scope: !160)
!163 = !DILocation(line: 57, column: 19, scope: !160)
!164 = !DILocation(line: 57, column: 28, scope: !160)
!165 = !DILocation(line: 58, column: 13, scope: !160)
!166 = !DILocation(line: 59, column: 11, scope: !160)
!167 = !DILocation(line: 60, column: 9, scope: !146)
!168 = !DILocation(line: 52, column: 55, scope: !141)
!169 = !DILocation(line: 52, column: 25, scope: !141)
!170 = distinct !{!170, !144, !171}
!171 = !DILocation(line: 60, column: 9, scope: !137)
!172 = !DILocation(line: 61, column: 7, scope: !123)
!173 = !DILocation(line: 62, column: 5, scope: !117)
!174 = !DILocation(line: 48, column: 39, scope: !112)
!175 = !DILocation(line: 48, column: 17, scope: !112)
!176 = distinct !{!176, !114, !177}
!177 = !DILocation(line: 62, column: 5, scope: !109)
!178 = !DILocation(line: 63, column: 34, scope: !179)
!179 = distinct !DILexicalBlock(scope: !104, file: !1, line: 63, column: 9)
!180 = !DILocation(line: 63, column: 10, scope: !179)
!181 = !DILocation(line: 63, column: 23, scope: !179)
!182 = !DILocation(line: 63, column: 30, scope: !179)
!183 = !DILocation(line: 63, column: 33, scope: !179)
!184 = !DILocation(line: 63, column: 38, scope: !179)
!185 = !DILocation(line: 63, column: 9, scope: !104)
!186 = !DILocation(line: 64, column: 7, scope: !179)
!187 = !DILocation(line: 65, column: 3, scope: !104)
!188 = !DILocation(line: 45, column: 59, scope: !100)
!189 = !DILocation(line: 45, column: 18, scope: !100)
!190 = distinct !{!190, !102, !191}
!191 = !DILocation(line: 65, column: 3, scope: !97)
!192 = !DILocation(line: 69, column: 1, scope: !7)
