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
  %queue = alloca [256 x i64], align 16
  %q_in = alloca i64, align 8
  %q_out = alloca i64, align 8
  %dummy = alloca i64, align 8
  %n = alloca i64, align 8
  %e = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp_begin = alloca i64, align 8
  %tmp_end = alloca i64, align 8
  %tmp_dst = alloca i64, align 8
  %tmp_level = alloca i8, align 1
  %tmp_level28 = alloca i8, align 1
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
  call void @llvm.dbg.declare(metadata [256 x i64]* %queue, metadata !54, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i64* %q_in, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i64* %q_out, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i64* %dummy, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i64* %n, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %e, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !71
  %0 = load %struct.node_t_struct*, %struct.node_t_struct** %host_nodes.addr, align 8, !dbg !72
  store %struct.node_t_struct* %0, %struct.node_t_struct** %nodes.addr, align 8, !dbg !73
  %1 = load %struct.edge_t_struct*, %struct.edge_t_struct** %host_edges.addr, align 8, !dbg !74
  store %struct.edge_t_struct* %1, %struct.edge_t_struct** %edges.addr, align 8, !dbg !75
  %2 = load i8*, i8** %host_level.addr, align 8, !dbg !76
  store i8* %2, i8** %level.addr, align 8, !dbg !77
  %3 = load i64*, i64** %host_level_counts.addr, align 8, !dbg !78
  store i64* %3, i64** %level_counts.addr, align 8, !dbg !79
  br label %init_horizons, !dbg !80

init_horizons:                                    ; preds = %entry
  call void @llvm.dbg.label(metadata !81), !dbg !82
  store i32 0, i32* %i, align 4, !dbg !83
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %init_horizons
  %4 = load i32, i32* %i, align 4, !dbg !86
  %cmp = icmp ult i32 %4, 10, !dbg !88
  br i1 %cmp, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  %5 = load i64*, i64** %level_counts.addr, align 8, !dbg !90
  %6 = load i32, i32* %i, align 4, !dbg !91
  %idxprom = zext i32 %6 to i64, !dbg !90
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %idxprom, !dbg !90
  store i64 0, i64* %arrayidx, align 8, !dbg !92
  br label %for.inc, !dbg !90

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !93
  %inc = add i32 %7, 1, !dbg !93
  store i32 %inc, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  store i64 1, i64* %q_in, align 8, !dbg !97
  store i64 0, i64* %q_out, align 8, !dbg !98
  %8 = load i8*, i8** %level.addr, align 8, !dbg !99
  %9 = load i64, i64* %starting_node.addr, align 8, !dbg !100
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !99
  store i8 0, i8* %arrayidx1, align 1, !dbg !101
  %10 = load i64*, i64** %level_counts.addr, align 8, !dbg !102
  %arrayidx2 = getelementptr inbounds i64, i64* %10, i64 0, !dbg !102
  store i64 1, i64* %arrayidx2, align 8, !dbg !103
  %11 = load i64, i64* %starting_node.addr, align 8, !dbg !104
  %12 = load i64, i64* %q_in, align 8, !dbg !104
  %cmp3 = icmp eq i64 %12, 0, !dbg !104
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !104

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !104

cond.false:                                       ; preds = %for.end
  %13 = load i64, i64* %q_in, align 8, !dbg !104
  %sub = sub i64 %13, 1, !dbg !104
  br label %cond.end, !dbg !104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 255, %cond.true ], [ %sub, %cond.false ], !dbg !104
  %arrayidx4 = getelementptr inbounds [256 x i64], [256 x i64]* %queue, i64 0, i64 %cond, !dbg !104
  store i64 %11, i64* %arrayidx4, align 8, !dbg !104
  %14 = load i64, i64* %q_in, align 8, !dbg !104
  %add = add i64 %14, 1, !dbg !104
  %rem = urem i64 %add, 256, !dbg !104
  store i64 %rem, i64* %q_in, align 8, !dbg !104
  br label %loop_queue, !dbg !104

loop_queue:                                       ; preds = %cond.end
  call void @llvm.dbg.label(metadata !106), !dbg !107
  store i64 0, i64* %dummy, align 8, !dbg !108
  br label %for.cond5, !dbg !110

for.cond5:                                        ; preds = %for.inc51, %loop_queue
  %15 = load i64, i64* %dummy, align 8, !dbg !111
  %cmp6 = icmp ult i64 %15, 256, !dbg !113
  br i1 %cmp6, label %for.body7, label %for.end53, !dbg !114

for.body7:                                        ; preds = %for.cond5
  %16 = load i64, i64* %q_in, align 8, !dbg !115
  %17 = load i64, i64* %q_out, align 8, !dbg !115
  %cmp8 = icmp ugt i64 %16, %17, !dbg !115
  br i1 %cmp8, label %cond.true9, label %cond.false12, !dbg !118

cond.true9:                                       ; preds = %for.body7
  %18 = load i64, i64* %q_in, align 8, !dbg !115
  %19 = load i64, i64* %q_out, align 8, !dbg !115
  %add10 = add i64 %19, 1, !dbg !115
  %cmp11 = icmp eq i64 %18, %add10, !dbg !115
  br i1 %cmp11, label %if.then, label %if.end, !dbg !115

cond.false12:                                     ; preds = %for.body7
  %20 = load i64, i64* %q_in, align 8, !dbg !115
  %cmp13 = icmp eq i64 %20, 0, !dbg !115
  br i1 %cmp13, label %land.lhs.true, label %if.end, !dbg !115

land.lhs.true:                                    ; preds = %cond.false12
  %21 = load i64, i64* %q_out, align 8, !dbg !115
  %cmp14 = icmp eq i64 %21, 255, !dbg !115
  br i1 %cmp14, label %if.then, label %if.end, !dbg !118

if.then:                                          ; preds = %land.lhs.true, %cond.true9
  br label %for.end53, !dbg !119

if.end:                                           ; preds = %land.lhs.true, %cond.false12, %cond.true9
  %22 = load i64, i64* %q_out, align 8, !dbg !120
  %arrayidx15 = getelementptr inbounds [256 x i64], [256 x i64]* %queue, i64 0, i64 %22, !dbg !120
  %23 = load i64, i64* %arrayidx15, align 8, !dbg !120
  store i64 %23, i64* %n, align 8, !dbg !121
  %24 = load i64, i64* %q_out, align 8, !dbg !122
  %add16 = add i64 %24, 1, !dbg !122
  %rem17 = urem i64 %add16, 256, !dbg !122
  store i64 %rem17, i64* %q_out, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i64* %tmp_begin, metadata !124, metadata !DIExpression()), !dbg !125
  %25 = load %struct.node_t_struct*, %struct.node_t_struct** %nodes.addr, align 8, !dbg !126
  %26 = load i64, i64* %n, align 8, !dbg !127
  %arrayidx18 = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %25, i64 %26, !dbg !126
  %edge_begin = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %arrayidx18, i32 0, i32 0, !dbg !128
  %27 = load i64, i64* %edge_begin, align 8, !dbg !128
  store i64 %27, i64* %tmp_begin, align 8, !dbg !125
  call void @llvm.dbg.declare(metadata i64* %tmp_end, metadata !129, metadata !DIExpression()), !dbg !130
  %28 = load %struct.node_t_struct*, %struct.node_t_struct** %nodes.addr, align 8, !dbg !131
  %29 = load i64, i64* %n, align 8, !dbg !132
  %arrayidx19 = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %28, i64 %29, !dbg !131
  %edge_end = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %arrayidx19, i32 0, i32 1, !dbg !133
  %30 = load i64, i64* %edge_end, align 8, !dbg !133
  store i64 %30, i64* %tmp_end, align 8, !dbg !130
  br label %loop_neighbors, !dbg !134

loop_neighbors:                                   ; preds = %if.end
  call void @llvm.dbg.label(metadata !135), !dbg !136
  %31 = load i64, i64* %tmp_begin, align 8, !dbg !137
  store i64 %31, i64* %e, align 8, !dbg !139
  br label %for.cond20, !dbg !140

for.cond20:                                       ; preds = %for.inc48, %loop_neighbors
  %32 = load i64, i64* %e, align 8, !dbg !141
  %33 = load i64, i64* %tmp_end, align 8, !dbg !143
  %cmp21 = icmp ult i64 %32, %33, !dbg !144
  br i1 %cmp21, label %for.body22, label %for.end50, !dbg !145

for.body22:                                       ; preds = %for.cond20
  call void @llvm.dbg.declare(metadata i64* %tmp_dst, metadata !146, metadata !DIExpression()), !dbg !148
  %34 = load %struct.edge_t_struct*, %struct.edge_t_struct** %edges.addr, align 8, !dbg !149
  %35 = load i64, i64* %e, align 8, !dbg !150
  %arrayidx23 = getelementptr inbounds %struct.edge_t_struct, %struct.edge_t_struct* %34, i64 %35, !dbg !149
  %dst = getelementptr inbounds %struct.edge_t_struct, %struct.edge_t_struct* %arrayidx23, i32 0, i32 0, !dbg !151
  %36 = load i64, i64* %dst, align 8, !dbg !151
  store i64 %36, i64* %tmp_dst, align 8, !dbg !148
  call void @llvm.dbg.declare(metadata i8* %tmp_level, metadata !152, metadata !DIExpression()), !dbg !153
  %37 = load i8*, i8** %level.addr, align 8, !dbg !154
  %38 = load i64, i64* %tmp_dst, align 8, !dbg !155
  %arrayidx24 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !154
  %39 = load i8, i8* %arrayidx24, align 1, !dbg !154
  store i8 %39, i8* %tmp_level, align 1, !dbg !153
  %40 = load i8, i8* %tmp_level, align 1, !dbg !156
  %conv = sext i8 %40 to i32, !dbg !156
  %cmp25 = icmp eq i32 %conv, 127, !dbg !158
  br i1 %cmp25, label %if.then27, label %if.end47, !dbg !159

if.then27:                                        ; preds = %for.body22
  call void @llvm.dbg.declare(metadata i8* %tmp_level28, metadata !160, metadata !DIExpression()), !dbg !162
  %41 = load i8*, i8** %level.addr, align 8, !dbg !163
  %42 = load i64, i64* %n, align 8, !dbg !164
  %arrayidx29 = getelementptr inbounds i8, i8* %41, i64 %42, !dbg !163
  %43 = load i8, i8* %arrayidx29, align 1, !dbg !163
  %conv30 = sext i8 %43 to i32, !dbg !163
  %add31 = add nsw i32 %conv30, 1, !dbg !165
  %conv32 = trunc i32 %add31 to i8, !dbg !163
  store i8 %conv32, i8* %tmp_level28, align 1, !dbg !162
  %44 = load i8, i8* %tmp_level28, align 1, !dbg !166
  %45 = load i8*, i8** %level.addr, align 8, !dbg !167
  %46 = load i64, i64* %tmp_dst, align 8, !dbg !168
  %arrayidx33 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !167
  store i8 %44, i8* %arrayidx33, align 1, !dbg !169
  %47 = load i64*, i64** %level_counts.addr, align 8, !dbg !170
  %48 = load i8, i8* %tmp_level28, align 1, !dbg !171
  %idxprom34 = sext i8 %48 to i64, !dbg !170
  %arrayidx35 = getelementptr inbounds i64, i64* %47, i64 %idxprom34, !dbg !170
  %49 = load i64, i64* %arrayidx35, align 8, !dbg !172
  %inc36 = add i64 %49, 1, !dbg !172
  store i64 %inc36, i64* %arrayidx35, align 8, !dbg !172
  %50 = load i64, i64* %tmp_dst, align 8, !dbg !173
  %51 = load i64, i64* %q_in, align 8, !dbg !173
  %cmp37 = icmp eq i64 %51, 0, !dbg !173
  br i1 %cmp37, label %cond.true39, label %cond.false40, !dbg !173

cond.true39:                                      ; preds = %if.then27
  br label %cond.end42, !dbg !173

cond.false40:                                     ; preds = %if.then27
  %52 = load i64, i64* %q_in, align 8, !dbg !173
  %sub41 = sub i64 %52, 1, !dbg !173
  br label %cond.end42, !dbg !173

cond.end42:                                       ; preds = %cond.false40, %cond.true39
  %cond43 = phi i64 [ 255, %cond.true39 ], [ %sub41, %cond.false40 ], !dbg !173
  %arrayidx44 = getelementptr inbounds [256 x i64], [256 x i64]* %queue, i64 0, i64 %cond43, !dbg !173
  store i64 %50, i64* %arrayidx44, align 8, !dbg !173
  %53 = load i64, i64* %q_in, align 8, !dbg !173
  %add45 = add i64 %53, 1, !dbg !173
  %rem46 = urem i64 %add45, 256, !dbg !173
  store i64 %rem46, i64* %q_in, align 8, !dbg !173
  br label %if.end47, !dbg !175

if.end47:                                         ; preds = %cond.end42, %for.body22
  br label %for.inc48, !dbg !176

for.inc48:                                        ; preds = %if.end47
  %54 = load i64, i64* %e, align 8, !dbg !177
  %inc49 = add i64 %54, 1, !dbg !177
  store i64 %inc49, i64* %e, align 8, !dbg !177
  br label %for.cond20, !dbg !178, !llvm.loop !179

for.end50:                                        ; preds = %for.cond20
  br label %for.inc51, !dbg !181

for.inc51:                                        ; preds = %for.end50
  %55 = load i64, i64* %dummy, align 8, !dbg !182
  %inc52 = add i64 %55, 1, !dbg !182
  store i64 %inc52, i64* %dummy, align 8, !dbg !182
  br label %for.cond5, !dbg !183, !llvm.loop !184

for.end53:                                        ; preds = %if.then, %for.cond5
  ret void, !dbg !186
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
!1 = !DIFile(filename: "bfs.c", directory: "/home/coco/work/benchmark_codes/bfs-queue")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "bfs", scope: !1, file: !1, line: 17, type: !8, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !23, !29, !35, !10, !23, !29, !35, !28}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !12, line: 37, baseType: !13)
!12 = !DIFile(filename: "./bfs.h", directory: "/home/coco/work/benchmark_codes/bfs-queue")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node_t_struct", file: !12, line: 34, size: 128, elements: !14)
!14 = !{!15, !22}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "edge_begin", scope: !13, file: !12, line: 35, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_index_t", file: !12, line: 24, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !20, line: 45, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "edge_end", scope: !13, file: !12, line: 36, baseType: !16, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_t", file: !12, line: 32, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_t_struct", file: !12, line: 27, size: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !25, file: !12, line: 31, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_index_t", file: !12, line: 25, baseType: !17)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "level_t", file: !12, line: 39, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !20, line: 37, baseType: !34)
!34 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!36 = !DILocalVariable(name: "host_nodes", arg: 1, scope: !7, file: !1, line: 17, type: !10)
!37 = !DILocation(line: 17, column: 18, scope: !7)
!38 = !DILocalVariable(name: "host_edges", arg: 2, scope: !7, file: !1, line: 18, type: !23)
!39 = !DILocation(line: 18, column: 18, scope: !7)
!40 = !DILocalVariable(name: "host_level", arg: 3, scope: !7, file: !1, line: 19, type: !29)
!41 = !DILocation(line: 19, column: 19, scope: !7)
!42 = !DILocalVariable(name: "host_level_counts", arg: 4, scope: !7, file: !1, line: 20, type: !35)
!43 = !DILocation(line: 20, column: 24, scope: !7)
!44 = !DILocalVariable(name: "nodes", arg: 5, scope: !7, file: !1, line: 21, type: !10)
!45 = !DILocation(line: 21, column: 18, scope: !7)
!46 = !DILocalVariable(name: "edges", arg: 6, scope: !7, file: !1, line: 22, type: !23)
!47 = !DILocation(line: 22, column: 18, scope: !7)
!48 = !DILocalVariable(name: "level", arg: 7, scope: !7, file: !1, line: 23, type: !29)
!49 = !DILocation(line: 23, column: 19, scope: !7)
!50 = !DILocalVariable(name: "level_counts", arg: 8, scope: !7, file: !1, line: 24, type: !35)
!51 = !DILocation(line: 24, column: 24, scope: !7)
!52 = !DILocalVariable(name: "starting_node", arg: 9, scope: !7, file: !1, line: 25, type: !28)
!53 = !DILocation(line: 25, column: 23, scope: !7)
!54 = !DILocalVariable(name: "queue", scope: !7, file: !1, line: 27, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 16384, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 256)
!58 = !DILocation(line: 27, column: 16, scope: !7)
!59 = !DILocalVariable(name: "q_in", scope: !7, file: !1, line: 28, type: !28)
!60 = !DILocation(line: 28, column: 16, scope: !7)
!61 = !DILocalVariable(name: "q_out", scope: !7, file: !1, line: 28, type: !28)
!62 = !DILocation(line: 28, column: 22, scope: !7)
!63 = !DILocalVariable(name: "dummy", scope: !7, file: !1, line: 29, type: !28)
!64 = !DILocation(line: 29, column: 16, scope: !7)
!65 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 30, type: !28)
!66 = !DILocation(line: 30, column: 16, scope: !7)
!67 = !DILocalVariable(name: "e", scope: !7, file: !1, line: 31, type: !16)
!68 = !DILocation(line: 31, column: 16, scope: !7)
!69 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 32, type: !70)
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 32, column: 12, scope: !7)
!72 = !DILocation(line: 39, column: 11, scope: !7)
!73 = !DILocation(line: 39, column: 9, scope: !7)
!74 = !DILocation(line: 40, column: 11, scope: !7)
!75 = !DILocation(line: 40, column: 9, scope: !7)
!76 = !DILocation(line: 41, column: 11, scope: !7)
!77 = !DILocation(line: 41, column: 9, scope: !7)
!78 = !DILocation(line: 42, column: 18, scope: !7)
!79 = !DILocation(line: 42, column: 16, scope: !7)
!80 = !DILocation(line: 42, column: 3, scope: !7)
!81 = !DILabel(scope: !7, name: "init_horizons", file: !1, line: 47)
!82 = !DILocation(line: 47, column: 3, scope: !7)
!83 = !DILocation(line: 47, column: 24, scope: !84)
!84 = distinct !DILexicalBlock(scope: !7, file: !1, line: 47, column: 18)
!85 = !DILocation(line: 47, column: 23, scope: !84)
!86 = !DILocation(line: 47, column: 28, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 47, column: 18)
!88 = !DILocation(line: 47, column: 29, scope: !87)
!89 = !DILocation(line: 47, column: 18, scope: !84)
!90 = !DILocation(line: 48, column: 5, scope: !87)
!91 = !DILocation(line: 48, column: 18, scope: !87)
!92 = !DILocation(line: 48, column: 21, scope: !87)
!93 = !DILocation(line: 47, column: 41, scope: !87)
!94 = !DILocation(line: 47, column: 18, scope: !87)
!95 = distinct !{!95, !89, !96}
!96 = !DILocation(line: 48, column: 23, scope: !84)
!97 = !DILocation(line: 50, column: 8, scope: !7)
!98 = !DILocation(line: 51, column: 9, scope: !7)
!99 = !DILocation(line: 52, column: 3, scope: !7)
!100 = !DILocation(line: 52, column: 9, scope: !7)
!101 = !DILocation(line: 52, column: 24, scope: !7)
!102 = !DILocation(line: 53, column: 3, scope: !7)
!103 = !DILocation(line: 53, column: 19, scope: !7)
!104 = !DILocation(line: 54, column: 3, scope: !105)
!105 = distinct !DILexicalBlock(scope: !7, file: !1, line: 54, column: 3)
!106 = !DILabel(scope: !7, name: "loop_queue", file: !1, line: 56)
!107 = !DILocation(line: 56, column: 3, scope: !7)
!108 = !DILocation(line: 56, column: 25, scope: !109)
!109 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 15)
!110 = !DILocation(line: 56, column: 20, scope: !109)
!111 = !DILocation(line: 56, column: 29, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 56, column: 15)
!113 = !DILocation(line: 56, column: 34, scope: !112)
!114 = !DILocation(line: 56, column: 15, scope: !109)
!115 = !DILocation(line: 57, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 57, column: 9)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 56, column: 54)
!118 = !DILocation(line: 57, column: 9, scope: !117)
!119 = !DILocation(line: 58, column: 7, scope: !116)
!120 = !DILocation(line: 59, column: 9, scope: !117)
!121 = !DILocation(line: 59, column: 7, scope: !117)
!122 = !DILocation(line: 60, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !1, line: 60, column: 5)
!124 = !DILocalVariable(name: "tmp_begin", scope: !117, file: !1, line: 61, type: !16)
!125 = !DILocation(line: 61, column: 18, scope: !117)
!126 = !DILocation(line: 61, column: 30, scope: !117)
!127 = !DILocation(line: 61, column: 36, scope: !117)
!128 = !DILocation(line: 61, column: 39, scope: !117)
!129 = !DILocalVariable(name: "tmp_end", scope: !117, file: !1, line: 62, type: !16)
!130 = !DILocation(line: 62, column: 18, scope: !117)
!131 = !DILocation(line: 62, column: 28, scope: !117)
!132 = !DILocation(line: 62, column: 34, scope: !117)
!133 = !DILocation(line: 62, column: 37, scope: !117)
!134 = !DILocation(line: 62, column: 5, scope: !117)
!135 = !DILabel(scope: !117, name: "loop_neighbors", file: !1, line: 63)
!136 = !DILocation(line: 63, column: 5, scope: !117)
!137 = !DILocation(line: 63, column: 28, scope: !138)
!138 = distinct !DILexicalBlock(scope: !117, file: !1, line: 63, column: 21)
!139 = !DILocation(line: 63, column: 27, scope: !138)
!140 = !DILocation(line: 63, column: 26, scope: !138)
!141 = !DILocation(line: 63, column: 39, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 63, column: 21)
!143 = !DILocation(line: 63, column: 41, scope: !142)
!144 = !DILocation(line: 63, column: 40, scope: !142)
!145 = !DILocation(line: 63, column: 21, scope: !138)
!146 = !DILocalVariable(name: "tmp_dst", scope: !147, file: !1, line: 64, type: !28)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 63, column: 56)
!148 = !DILocation(line: 64, column: 20, scope: !147)
!149 = !DILocation(line: 64, column: 30, scope: !147)
!150 = !DILocation(line: 64, column: 36, scope: !147)
!151 = !DILocation(line: 64, column: 39, scope: !147)
!152 = !DILocalVariable(name: "tmp_level", scope: !147, file: !1, line: 65, type: !30)
!153 = !DILocation(line: 65, column: 15, scope: !147)
!154 = !DILocation(line: 65, column: 27, scope: !147)
!155 = !DILocation(line: 65, column: 33, scope: !147)
!156 = !DILocation(line: 67, column: 11, scope: !157)
!157 = distinct !DILexicalBlock(scope: !147, file: !1, line: 67, column: 11)
!158 = !DILocation(line: 67, column: 21, scope: !157)
!159 = !DILocation(line: 67, column: 11, scope: !147)
!160 = !DILocalVariable(name: "tmp_level", scope: !161, file: !1, line: 68, type: !30)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 67, column: 35)
!162 = !DILocation(line: 68, column: 17, scope: !161)
!163 = !DILocation(line: 68, column: 29, scope: !161)
!164 = !DILocation(line: 68, column: 35, scope: !161)
!165 = !DILocation(line: 68, column: 37, scope: !161)
!166 = !DILocation(line: 69, column: 26, scope: !161)
!167 = !DILocation(line: 69, column: 9, scope: !161)
!168 = !DILocation(line: 69, column: 15, scope: !161)
!169 = !DILocation(line: 69, column: 24, scope: !161)
!170 = !DILocation(line: 70, column: 11, scope: !161)
!171 = !DILocation(line: 70, column: 24, scope: !161)
!172 = !DILocation(line: 70, column: 9, scope: !161)
!173 = !DILocation(line: 71, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !161, file: !1, line: 71, column: 9)
!175 = !DILocation(line: 72, column: 7, scope: !161)
!176 = !DILocation(line: 73, column: 5, scope: !147)
!177 = !DILocation(line: 63, column: 51, scope: !142)
!178 = !DILocation(line: 63, column: 21, scope: !142)
!179 = distinct !{!179, !145, !180}
!180 = !DILocation(line: 73, column: 5, scope: !138)
!181 = !DILocation(line: 74, column: 3, scope: !117)
!182 = !DILocation(line: 56, column: 49, scope: !112)
!183 = !DILocation(line: 56, column: 15, scope: !112)
!184 = distinct !{!184, !114, !185}
!185 = !DILocation(line: 74, column: 3, scope: !109)
!186 = !DILocation(line: 85, column: 1, scope: !7)
