; ModuleID = 'stencil.c'
source_filename = "stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil3d(i32* %host_orig, i32* %host_sol, i32* %C, i32* %orig, i32* %sol) #0 !dbg !7 {
entry:
  %host_orig.addr = alloca i32*, align 8
  %host_sol.addr = alloca i32*, align 8
  %C.addr = alloca i32*, align 8
  %orig.addr = alloca i32*, align 8
  %sol.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sum0 = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %mul0 = alloca i32, align 4
  %mul1 = alloca i32, align 4
  store i32* %host_orig, i32** %host_orig.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_orig.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32* %host_sol, i32** %host_sol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %host_sol.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32* %C, i32** %C.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %C.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store i32* %orig, i32** %orig.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %orig.addr, metadata !22, metadata !DIExpression()), !dbg !23
  store i32* %sol, i32** %sol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sol.addr, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %j, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %k, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %sum0, metadata !32, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %mul0, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %mul1, metadata !38, metadata !DIExpression()), !dbg !39
  %0 = load i32*, i32** %host_orig.addr, align 8, !dbg !40
  store i32* %0, i32** %orig.addr, align 8, !dbg !41
  %1 = load i32*, i32** %host_sol.addr, align 8, !dbg !42
  store i32* %1, i32** %sol.addr, align 8, !dbg !43
  br label %height_bound_col, !dbg !44

height_bound_col:                                 ; preds = %entry
  call void @llvm.dbg.label(metadata !45), !dbg !46
  store i32 0, i32* %j, align 4, !dbg !47
  br label %for.cond, !dbg !49

for.cond:                                         ; preds = %for.inc20, %height_bound_col
  %2 = load i32, i32* %j, align 4, !dbg !50
  %cmp = icmp slt i32 %2, 32, !dbg !52
  br i1 %cmp, label %for.body, label %for.end22, !dbg !53

for.body:                                         ; preds = %for.cond
  br label %height_bound_row, !dbg !54

height_bound_row:                                 ; preds = %for.body
  call void @llvm.dbg.label(metadata !55), !dbg !57
  store i32 0, i32* %k, align 4, !dbg !58
  br label %for.cond1, !dbg !60

for.cond1:                                        ; preds = %for.inc, %height_bound_row
  %3 = load i32, i32* %k, align 4, !dbg !61
  %cmp2 = icmp slt i32 %3, 16, !dbg !63
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !64

for.body3:                                        ; preds = %for.cond1
  %4 = load i32*, i32** %orig.addr, align 8, !dbg !65
  %5 = load i32, i32* %k, align 4, !dbg !67
  %6 = load i32, i32* %j, align 4, !dbg !67
  %add = add nsw i32 %6, 0, !dbg !67
  %mul = mul nsw i32 16, %add, !dbg !67
  %add4 = add nsw i32 %5, %mul, !dbg !67
  %idxprom = sext i32 %add4 to i64, !dbg !65
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !65
  %7 = load i32, i32* %arrayidx, align 4, !dbg !65
  %8 = load i32*, i32** %sol.addr, align 8, !dbg !68
  %9 = load i32, i32* %k, align 4, !dbg !69
  %10 = load i32, i32* %j, align 4, !dbg !69
  %add5 = add nsw i32 %10, 0, !dbg !69
  %mul6 = mul nsw i32 16, %add5, !dbg !69
  %add7 = add nsw i32 %9, %mul6, !dbg !69
  %idxprom8 = sext i32 %add7 to i64, !dbg !68
  %arrayidx9 = getelementptr inbounds i32, i32* %8, i64 %idxprom8, !dbg !68
  store i32 %7, i32* %arrayidx9, align 4, !dbg !70
  %11 = load i32*, i32** %orig.addr, align 8, !dbg !71
  %12 = load i32, i32* %k, align 4, !dbg !72
  %13 = load i32, i32* %j, align 4, !dbg !72
  %add10 = add nsw i32 %13, 992, !dbg !72
  %mul11 = mul nsw i32 16, %add10, !dbg !72
  %add12 = add nsw i32 %12, %mul11, !dbg !72
  %idxprom13 = sext i32 %add12 to i64, !dbg !71
  %arrayidx14 = getelementptr inbounds i32, i32* %11, i64 %idxprom13, !dbg !71
  %14 = load i32, i32* %arrayidx14, align 4, !dbg !71
  %15 = load i32*, i32** %sol.addr, align 8, !dbg !73
  %16 = load i32, i32* %k, align 4, !dbg !74
  %17 = load i32, i32* %j, align 4, !dbg !74
  %add15 = add nsw i32 %17, 992, !dbg !74
  %mul16 = mul nsw i32 16, %add15, !dbg !74
  %add17 = add nsw i32 %16, %mul16, !dbg !74
  %idxprom18 = sext i32 %add17 to i64, !dbg !73
  %arrayidx19 = getelementptr inbounds i32, i32* %15, i64 %idxprom18, !dbg !73
  store i32 %14, i32* %arrayidx19, align 4, !dbg !75
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body3
  %18 = load i32, i32* %k, align 4, !dbg !77
  %inc = add nsw i32 %18, 1, !dbg !77
  store i32 %inc, i32* %k, align 4, !dbg !77
  br label %for.cond1, !dbg !78, !llvm.loop !79

for.end:                                          ; preds = %for.cond1
  br label %for.inc20, !dbg !81

for.inc20:                                        ; preds = %for.end
  %19 = load i32, i32* %j, align 4, !dbg !82
  %inc21 = add nsw i32 %19, 1, !dbg !82
  store i32 %inc21, i32* %j, align 4, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end22:                                        ; preds = %for.cond
  br label %col_bound_height, !dbg !85

col_bound_height:                                 ; preds = %for.end22
  call void @llvm.dbg.label(metadata !86), !dbg !87
  store i32 1, i32* %i, align 4, !dbg !88
  br label %for.cond23, !dbg !90

for.cond23:                                       ; preds = %for.inc56, %col_bound_height
  %20 = load i32, i32* %i, align 4, !dbg !91
  %cmp24 = icmp slt i32 %20, 31, !dbg !93
  br i1 %cmp24, label %for.body25, label %for.end58, !dbg !94

for.body25:                                       ; preds = %for.cond23
  br label %col_bound_row, !dbg !95

col_bound_row:                                    ; preds = %for.body25
  call void @llvm.dbg.label(metadata !96), !dbg !98
  store i32 0, i32* %k, align 4, !dbg !99
  br label %for.cond26, !dbg !101

for.cond26:                                       ; preds = %for.inc53, %col_bound_row
  %21 = load i32, i32* %k, align 4, !dbg !102
  %cmp27 = icmp slt i32 %21, 16, !dbg !104
  br i1 %cmp27, label %for.body28, label %for.end55, !dbg !105

for.body28:                                       ; preds = %for.cond26
  %22 = load i32*, i32** %orig.addr, align 8, !dbg !106
  %23 = load i32, i32* %k, align 4, !dbg !108
  %24 = load i32, i32* %i, align 4, !dbg !108
  %mul29 = mul nsw i32 32, %24, !dbg !108
  %add30 = add nsw i32 0, %mul29, !dbg !108
  %mul31 = mul nsw i32 16, %add30, !dbg !108
  %add32 = add nsw i32 %23, %mul31, !dbg !108
  %idxprom33 = sext i32 %add32 to i64, !dbg !106
  %arrayidx34 = getelementptr inbounds i32, i32* %22, i64 %idxprom33, !dbg !106
  %25 = load i32, i32* %arrayidx34, align 4, !dbg !106
  %26 = load i32*, i32** %sol.addr, align 8, !dbg !109
  %27 = load i32, i32* %k, align 4, !dbg !110
  %28 = load i32, i32* %i, align 4, !dbg !110
  %mul35 = mul nsw i32 32, %28, !dbg !110
  %add36 = add nsw i32 0, %mul35, !dbg !110
  %mul37 = mul nsw i32 16, %add36, !dbg !110
  %add38 = add nsw i32 %27, %mul37, !dbg !110
  %idxprom39 = sext i32 %add38 to i64, !dbg !109
  %arrayidx40 = getelementptr inbounds i32, i32* %26, i64 %idxprom39, !dbg !109
  store i32 %25, i32* %arrayidx40, align 4, !dbg !111
  %29 = load i32*, i32** %orig.addr, align 8, !dbg !112
  %30 = load i32, i32* %k, align 4, !dbg !113
  %31 = load i32, i32* %i, align 4, !dbg !113
  %mul41 = mul nsw i32 32, %31, !dbg !113
  %add42 = add nsw i32 31, %mul41, !dbg !113
  %mul43 = mul nsw i32 16, %add42, !dbg !113
  %add44 = add nsw i32 %30, %mul43, !dbg !113
  %idxprom45 = sext i32 %add44 to i64, !dbg !112
  %arrayidx46 = getelementptr inbounds i32, i32* %29, i64 %idxprom45, !dbg !112
  %32 = load i32, i32* %arrayidx46, align 4, !dbg !112
  %33 = load i32*, i32** %sol.addr, align 8, !dbg !114
  %34 = load i32, i32* %k, align 4, !dbg !115
  %35 = load i32, i32* %i, align 4, !dbg !115
  %mul47 = mul nsw i32 32, %35, !dbg !115
  %add48 = add nsw i32 31, %mul47, !dbg !115
  %mul49 = mul nsw i32 16, %add48, !dbg !115
  %add50 = add nsw i32 %34, %mul49, !dbg !115
  %idxprom51 = sext i32 %add50 to i64, !dbg !114
  %arrayidx52 = getelementptr inbounds i32, i32* %33, i64 %idxprom51, !dbg !114
  store i32 %32, i32* %arrayidx52, align 4, !dbg !116
  br label %for.inc53, !dbg !117

for.inc53:                                        ; preds = %for.body28
  %36 = load i32, i32* %k, align 4, !dbg !118
  %inc54 = add nsw i32 %36, 1, !dbg !118
  store i32 %inc54, i32* %k, align 4, !dbg !118
  br label %for.cond26, !dbg !119, !llvm.loop !120

for.end55:                                        ; preds = %for.cond26
  br label %for.inc56, !dbg !122

for.inc56:                                        ; preds = %for.end55
  %37 = load i32, i32* %i, align 4, !dbg !123
  %inc57 = add nsw i32 %37, 1, !dbg !123
  store i32 %inc57, i32* %i, align 4, !dbg !123
  br label %for.cond23, !dbg !124, !llvm.loop !125

for.end58:                                        ; preds = %for.cond23
  br label %row_bound_height, !dbg !126

row_bound_height:                                 ; preds = %for.end58
  call void @llvm.dbg.label(metadata !127), !dbg !128
  store i32 1, i32* %i, align 4, !dbg !129
  br label %for.cond59, !dbg !131

for.cond59:                                       ; preds = %for.inc92, %row_bound_height
  %38 = load i32, i32* %i, align 4, !dbg !132
  %cmp60 = icmp slt i32 %38, 31, !dbg !134
  br i1 %cmp60, label %for.body61, label %for.end94, !dbg !135

for.body61:                                       ; preds = %for.cond59
  br label %row_bound_col, !dbg !136

row_bound_col:                                    ; preds = %for.body61
  call void @llvm.dbg.label(metadata !137), !dbg !139
  store i32 1, i32* %j, align 4, !dbg !140
  br label %for.cond62, !dbg !142

for.cond62:                                       ; preds = %for.inc89, %row_bound_col
  %39 = load i32, i32* %j, align 4, !dbg !143
  %cmp63 = icmp slt i32 %39, 31, !dbg !145
  br i1 %cmp63, label %for.body64, label %for.end91, !dbg !146

for.body64:                                       ; preds = %for.cond62
  %40 = load i32*, i32** %orig.addr, align 8, !dbg !147
  %41 = load i32, i32* %j, align 4, !dbg !149
  %42 = load i32, i32* %i, align 4, !dbg !149
  %mul65 = mul nsw i32 32, %42, !dbg !149
  %add66 = add nsw i32 %41, %mul65, !dbg !149
  %mul67 = mul nsw i32 16, %add66, !dbg !149
  %add68 = add nsw i32 0, %mul67, !dbg !149
  %idxprom69 = sext i32 %add68 to i64, !dbg !147
  %arrayidx70 = getelementptr inbounds i32, i32* %40, i64 %idxprom69, !dbg !147
  %43 = load i32, i32* %arrayidx70, align 4, !dbg !147
  %44 = load i32*, i32** %sol.addr, align 8, !dbg !150
  %45 = load i32, i32* %j, align 4, !dbg !151
  %46 = load i32, i32* %i, align 4, !dbg !151
  %mul71 = mul nsw i32 32, %46, !dbg !151
  %add72 = add nsw i32 %45, %mul71, !dbg !151
  %mul73 = mul nsw i32 16, %add72, !dbg !151
  %add74 = add nsw i32 0, %mul73, !dbg !151
  %idxprom75 = sext i32 %add74 to i64, !dbg !150
  %arrayidx76 = getelementptr inbounds i32, i32* %44, i64 %idxprom75, !dbg !150
  store i32 %43, i32* %arrayidx76, align 4, !dbg !152
  %47 = load i32*, i32** %orig.addr, align 8, !dbg !153
  %48 = load i32, i32* %j, align 4, !dbg !154
  %49 = load i32, i32* %i, align 4, !dbg !154
  %mul77 = mul nsw i32 32, %49, !dbg !154
  %add78 = add nsw i32 %48, %mul77, !dbg !154
  %mul79 = mul nsw i32 16, %add78, !dbg !154
  %add80 = add nsw i32 15, %mul79, !dbg !154
  %idxprom81 = sext i32 %add80 to i64, !dbg !153
  %arrayidx82 = getelementptr inbounds i32, i32* %47, i64 %idxprom81, !dbg !153
  %50 = load i32, i32* %arrayidx82, align 4, !dbg !153
  %51 = load i32*, i32** %sol.addr, align 8, !dbg !155
  %52 = load i32, i32* %j, align 4, !dbg !156
  %53 = load i32, i32* %i, align 4, !dbg !156
  %mul83 = mul nsw i32 32, %53, !dbg !156
  %add84 = add nsw i32 %52, %mul83, !dbg !156
  %mul85 = mul nsw i32 16, %add84, !dbg !156
  %add86 = add nsw i32 15, %mul85, !dbg !156
  %idxprom87 = sext i32 %add86 to i64, !dbg !155
  %arrayidx88 = getelementptr inbounds i32, i32* %51, i64 %idxprom87, !dbg !155
  store i32 %50, i32* %arrayidx88, align 4, !dbg !157
  br label %for.inc89, !dbg !158

for.inc89:                                        ; preds = %for.body64
  %54 = load i32, i32* %j, align 4, !dbg !159
  %inc90 = add nsw i32 %54, 1, !dbg !159
  store i32 %inc90, i32* %j, align 4, !dbg !159
  br label %for.cond62, !dbg !160, !llvm.loop !161

for.end91:                                        ; preds = %for.cond62
  br label %for.inc92, !dbg !163

for.inc92:                                        ; preds = %for.end91
  %55 = load i32, i32* %i, align 4, !dbg !164
  %inc93 = add nsw i32 %55, 1, !dbg !164
  store i32 %inc93, i32* %i, align 4, !dbg !164
  br label %for.cond59, !dbg !165, !llvm.loop !166

for.end94:                                        ; preds = %for.cond59
  br label %loop_height, !dbg !167

loop_height:                                      ; preds = %for.end94
  call void @llvm.dbg.label(metadata !168), !dbg !169
  store i32 1, i32* %i, align 4, !dbg !170
  br label %for.cond95, !dbg !172

for.cond95:                                       ; preds = %for.inc173, %loop_height
  %56 = load i32, i32* %i, align 4, !dbg !173
  %cmp96 = icmp slt i32 %56, 31, !dbg !175
  br i1 %cmp96, label %for.body97, label %for.end175, !dbg !176

for.body97:                                       ; preds = %for.cond95
  br label %loop_col, !dbg !177

loop_col:                                         ; preds = %for.body97
  call void @llvm.dbg.label(metadata !178), !dbg !180
  store i32 1, i32* %j, align 4, !dbg !181
  br label %for.cond98, !dbg !183

for.cond98:                                       ; preds = %for.inc170, %loop_col
  %57 = load i32, i32* %j, align 4, !dbg !184
  %cmp99 = icmp slt i32 %57, 31, !dbg !186
  br i1 %cmp99, label %for.body100, label %for.end172, !dbg !187

for.body100:                                      ; preds = %for.cond98
  br label %loop_row, !dbg !188

loop_row:                                         ; preds = %for.body100
  call void @llvm.dbg.label(metadata !189), !dbg !191
  store i32 1, i32* %k, align 4, !dbg !192
  br label %for.cond101, !dbg !194

for.cond101:                                      ; preds = %for.inc167, %loop_row
  %58 = load i32, i32* %k, align 4, !dbg !195
  %cmp102 = icmp slt i32 %58, 15, !dbg !197
  br i1 %cmp102, label %for.body103, label %for.end169, !dbg !198

for.body103:                                      ; preds = %for.cond101
  %59 = load i32*, i32** %orig.addr, align 8, !dbg !199
  %60 = load i32, i32* %k, align 4, !dbg !201
  %61 = load i32, i32* %j, align 4, !dbg !201
  %62 = load i32, i32* %i, align 4, !dbg !201
  %mul104 = mul nsw i32 32, %62, !dbg !201
  %add105 = add nsw i32 %61, %mul104, !dbg !201
  %mul106 = mul nsw i32 16, %add105, !dbg !201
  %add107 = add nsw i32 %60, %mul106, !dbg !201
  %idxprom108 = sext i32 %add107 to i64, !dbg !199
  %arrayidx109 = getelementptr inbounds i32, i32* %59, i64 %idxprom108, !dbg !199
  %63 = load i32, i32* %arrayidx109, align 4, !dbg !199
  store i32 %63, i32* %sum0, align 4, !dbg !202
  %64 = load i32*, i32** %orig.addr, align 8, !dbg !203
  %65 = load i32, i32* %k, align 4, !dbg !204
  %66 = load i32, i32* %j, align 4, !dbg !204
  %67 = load i32, i32* %i, align 4, !dbg !204
  %add110 = add nsw i32 %67, 1, !dbg !204
  %mul111 = mul nsw i32 32, %add110, !dbg !204
  %add112 = add nsw i32 %66, %mul111, !dbg !204
  %mul113 = mul nsw i32 16, %add112, !dbg !204
  %add114 = add nsw i32 %65, %mul113, !dbg !204
  %idxprom115 = sext i32 %add114 to i64, !dbg !203
  %arrayidx116 = getelementptr inbounds i32, i32* %64, i64 %idxprom115, !dbg !203
  %68 = load i32, i32* %arrayidx116, align 4, !dbg !203
  %69 = load i32*, i32** %orig.addr, align 8, !dbg !205
  %70 = load i32, i32* %k, align 4, !dbg !206
  %71 = load i32, i32* %j, align 4, !dbg !206
  %72 = load i32, i32* %i, align 4, !dbg !206
  %sub = sub nsw i32 %72, 1, !dbg !206
  %mul117 = mul nsw i32 32, %sub, !dbg !206
  %add118 = add nsw i32 %71, %mul117, !dbg !206
  %mul119 = mul nsw i32 16, %add118, !dbg !206
  %add120 = add nsw i32 %70, %mul119, !dbg !206
  %idxprom121 = sext i32 %add120 to i64, !dbg !205
  %arrayidx122 = getelementptr inbounds i32, i32* %69, i64 %idxprom121, !dbg !205
  %73 = load i32, i32* %arrayidx122, align 4, !dbg !205
  %add123 = add nsw i32 %68, %73, !dbg !207
  %74 = load i32*, i32** %orig.addr, align 8, !dbg !208
  %75 = load i32, i32* %k, align 4, !dbg !209
  %76 = load i32, i32* %j, align 4, !dbg !209
  %add124 = add nsw i32 %76, 1, !dbg !209
  %77 = load i32, i32* %i, align 4, !dbg !209
  %mul125 = mul nsw i32 32, %77, !dbg !209
  %add126 = add nsw i32 %add124, %mul125, !dbg !209
  %mul127 = mul nsw i32 16, %add126, !dbg !209
  %add128 = add nsw i32 %75, %mul127, !dbg !209
  %idxprom129 = sext i32 %add128 to i64, !dbg !208
  %arrayidx130 = getelementptr inbounds i32, i32* %74, i64 %idxprom129, !dbg !208
  %78 = load i32, i32* %arrayidx130, align 4, !dbg !208
  %add131 = add nsw i32 %add123, %78, !dbg !210
  %79 = load i32*, i32** %orig.addr, align 8, !dbg !211
  %80 = load i32, i32* %k, align 4, !dbg !212
  %81 = load i32, i32* %j, align 4, !dbg !212
  %sub132 = sub nsw i32 %81, 1, !dbg !212
  %82 = load i32, i32* %i, align 4, !dbg !212
  %mul133 = mul nsw i32 32, %82, !dbg !212
  %add134 = add nsw i32 %sub132, %mul133, !dbg !212
  %mul135 = mul nsw i32 16, %add134, !dbg !212
  %add136 = add nsw i32 %80, %mul135, !dbg !212
  %idxprom137 = sext i32 %add136 to i64, !dbg !211
  %arrayidx138 = getelementptr inbounds i32, i32* %79, i64 %idxprom137, !dbg !211
  %83 = load i32, i32* %arrayidx138, align 4, !dbg !211
  %add139 = add nsw i32 %add131, %83, !dbg !213
  %84 = load i32*, i32** %orig.addr, align 8, !dbg !214
  %85 = load i32, i32* %k, align 4, !dbg !215
  %add140 = add nsw i32 %85, 1, !dbg !215
  %86 = load i32, i32* %j, align 4, !dbg !215
  %87 = load i32, i32* %i, align 4, !dbg !215
  %mul141 = mul nsw i32 32, %87, !dbg !215
  %add142 = add nsw i32 %86, %mul141, !dbg !215
  %mul143 = mul nsw i32 16, %add142, !dbg !215
  %add144 = add nsw i32 %add140, %mul143, !dbg !215
  %idxprom145 = sext i32 %add144 to i64, !dbg !214
  %arrayidx146 = getelementptr inbounds i32, i32* %84, i64 %idxprom145, !dbg !214
  %88 = load i32, i32* %arrayidx146, align 4, !dbg !214
  %add147 = add nsw i32 %add139, %88, !dbg !216
  %89 = load i32*, i32** %orig.addr, align 8, !dbg !217
  %90 = load i32, i32* %k, align 4, !dbg !218
  %sub148 = sub nsw i32 %90, 1, !dbg !218
  %91 = load i32, i32* %j, align 4, !dbg !218
  %92 = load i32, i32* %i, align 4, !dbg !218
  %mul149 = mul nsw i32 32, %92, !dbg !218
  %add150 = add nsw i32 %91, %mul149, !dbg !218
  %mul151 = mul nsw i32 16, %add150, !dbg !218
  %add152 = add nsw i32 %sub148, %mul151, !dbg !218
  %idxprom153 = sext i32 %add152 to i64, !dbg !217
  %arrayidx154 = getelementptr inbounds i32, i32* %89, i64 %idxprom153, !dbg !217
  %93 = load i32, i32* %arrayidx154, align 4, !dbg !217
  %add155 = add nsw i32 %add147, %93, !dbg !219
  store i32 %add155, i32* %sum1, align 4, !dbg !220
  %94 = load i32, i32* %sum0, align 4, !dbg !221
  %95 = load i32*, i32** %C.addr, align 8, !dbg !222
  %arrayidx156 = getelementptr inbounds i32, i32* %95, i64 0, !dbg !222
  %96 = load i32, i32* %arrayidx156, align 4, !dbg !222
  %mul157 = mul nsw i32 %94, %96, !dbg !223
  store i32 %mul157, i32* %mul0, align 4, !dbg !224
  %97 = load i32, i32* %sum1, align 4, !dbg !225
  %98 = load i32*, i32** %C.addr, align 8, !dbg !226
  %arrayidx158 = getelementptr inbounds i32, i32* %98, i64 1, !dbg !226
  %99 = load i32, i32* %arrayidx158, align 4, !dbg !226
  %mul159 = mul nsw i32 %97, %99, !dbg !227
  store i32 %mul159, i32* %mul1, align 4, !dbg !228
  %100 = load i32, i32* %mul0, align 4, !dbg !229
  %101 = load i32, i32* %mul1, align 4, !dbg !230
  %add160 = add nsw i32 %100, %101, !dbg !231
  %102 = load i32*, i32** %sol.addr, align 8, !dbg !232
  %103 = load i32, i32* %k, align 4, !dbg !233
  %104 = load i32, i32* %j, align 4, !dbg !233
  %105 = load i32, i32* %i, align 4, !dbg !233
  %mul161 = mul nsw i32 32, %105, !dbg !233
  %add162 = add nsw i32 %104, %mul161, !dbg !233
  %mul163 = mul nsw i32 16, %add162, !dbg !233
  %add164 = add nsw i32 %103, %mul163, !dbg !233
  %idxprom165 = sext i32 %add164 to i64, !dbg !232
  %arrayidx166 = getelementptr inbounds i32, i32* %102, i64 %idxprom165, !dbg !232
  store i32 %add160, i32* %arrayidx166, align 4, !dbg !234
  br label %for.inc167, !dbg !235

for.inc167:                                       ; preds = %for.body103
  %106 = load i32, i32* %k, align 4, !dbg !236
  %inc168 = add nsw i32 %106, 1, !dbg !236
  store i32 %inc168, i32* %k, align 4, !dbg !236
  br label %for.cond101, !dbg !237, !llvm.loop !238

for.end169:                                       ; preds = %for.cond101
  br label %for.inc170, !dbg !240

for.inc170:                                       ; preds = %for.end169
  %107 = load i32, i32* %j, align 4, !dbg !241
  %inc171 = add nsw i32 %107, 1, !dbg !241
  store i32 %inc171, i32* %j, align 4, !dbg !241
  br label %for.cond98, !dbg !242, !llvm.loop !243

for.end172:                                       ; preds = %for.cond98
  br label %for.inc173, !dbg !245

for.inc173:                                       ; preds = %for.end172
  %108 = load i32, i32* %i, align 4, !dbg !246
  %inc174 = add nsw i32 %108, 1, !dbg !246
  store i32 %inc174, i32* %i, align 4, !dbg !246
  br label %for.cond95, !dbg !247, !llvm.loop !248

for.end175:                                       ; preds = %for.cond95
  ret void, !dbg !250
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
!1 = !DIFile(filename: "stencil.c", directory: "/home/coco/work/benchmark_codes/stencil-stencil3d")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "stencil3d", scope: !1, file: !1, line: 14, type: !8, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !10, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 26, baseType: !13)
!12 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !14, line: 41, baseType: !15)
!14 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "host_orig", arg: 1, scope: !7, file: !1, line: 14, type: !10)
!17 = !DILocation(line: 14, column: 22, scope: !7)
!18 = !DILocalVariable(name: "host_sol", arg: 2, scope: !7, file: !1, line: 15, type: !10)
!19 = !DILocation(line: 15, column: 22, scope: !7)
!20 = !DILocalVariable(name: "C", arg: 3, scope: !7, file: !1, line: 16, type: !10)
!21 = !DILocation(line: 16, column: 22, scope: !7)
!22 = !DILocalVariable(name: "orig", arg: 4, scope: !7, file: !1, line: 17, type: !10)
!23 = !DILocation(line: 17, column: 22, scope: !7)
!24 = !DILocalVariable(name: "sol", arg: 5, scope: !7, file: !1, line: 18, type: !10)
!25 = !DILocation(line: 18, column: 22, scope: !7)
!26 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 19, type: !15)
!27 = !DILocation(line: 19, column: 9, scope: !7)
!28 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 19, type: !15)
!29 = !DILocation(line: 19, column: 12, scope: !7)
!30 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 19, type: !15)
!31 = !DILocation(line: 19, column: 15, scope: !7)
!32 = !DILocalVariable(name: "sum0", scope: !7, file: !1, line: 20, type: !11)
!33 = !DILocation(line: 20, column: 10, scope: !7)
!34 = !DILocalVariable(name: "sum1", scope: !7, file: !1, line: 20, type: !11)
!35 = !DILocation(line: 20, column: 16, scope: !7)
!36 = !DILocalVariable(name: "mul0", scope: !7, file: !1, line: 20, type: !11)
!37 = !DILocation(line: 20, column: 22, scope: !7)
!38 = !DILocalVariable(name: "mul1", scope: !7, file: !1, line: 20, type: !11)
!39 = !DILocation(line: 20, column: 28, scope: !7)
!40 = !DILocation(line: 25, column: 12, scope: !7)
!41 = !DILocation(line: 25, column: 10, scope: !7)
!42 = !DILocation(line: 26, column: 11, scope: !7)
!43 = !DILocation(line: 26, column: 9, scope: !7)
!44 = !DILocation(line: 26, column: 5, scope: !7)
!45 = !DILabel(scope: !7, name: "height_bound_col", file: !1, line: 30)
!46 = !DILocation(line: 30, column: 5, scope: !7)
!47 = !DILocation(line: 30, column: 29, scope: !48)
!48 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 24)
!49 = !DILocation(line: 30, column: 28, scope: !48)
!50 = !DILocation(line: 30, column: 33, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 30, column: 24)
!52 = !DILocation(line: 30, column: 34, scope: !51)
!53 = !DILocation(line: 30, column: 24, scope: !48)
!54 = !DILocation(line: 30, column: 50, scope: !51)
!55 = !DILabel(scope: !56, name: "height_bound_row", file: !1, line: 31)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 30, column: 50)
!57 = !DILocation(line: 31, column: 9, scope: !56)
!58 = !DILocation(line: 31, column: 33, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 31, column: 28)
!60 = !DILocation(line: 31, column: 32, scope: !59)
!61 = !DILocation(line: 31, column: 37, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 31, column: 28)
!63 = !DILocation(line: 31, column: 38, scope: !62)
!64 = !DILocation(line: 31, column: 28, scope: !59)
!65 = !DILocation(line: 32, column: 54, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 31, column: 54)
!67 = !DILocation(line: 32, column: 59, scope: !66)
!68 = !DILocation(line: 32, column: 13, scope: !66)
!69 = !DILocation(line: 32, column: 17, scope: !66)
!70 = !DILocation(line: 32, column: 52, scope: !66)
!71 = !DILocation(line: 33, column: 66, scope: !66)
!72 = !DILocation(line: 33, column: 71, scope: !66)
!73 = !DILocation(line: 33, column: 13, scope: !66)
!74 = !DILocation(line: 33, column: 17, scope: !66)
!75 = !DILocation(line: 33, column: 64, scope: !66)
!76 = !DILocation(line: 34, column: 9, scope: !66)
!77 = !DILocation(line: 31, column: 50, scope: !62)
!78 = !DILocation(line: 31, column: 28, scope: !62)
!79 = distinct !{!79, !64, !80}
!80 = !DILocation(line: 34, column: 9, scope: !59)
!81 = !DILocation(line: 35, column: 5, scope: !56)
!82 = !DILocation(line: 30, column: 46, scope: !51)
!83 = !DILocation(line: 30, column: 24, scope: !51)
!84 = distinct !{!84, !53, !85}
!85 = !DILocation(line: 35, column: 5, scope: !48)
!86 = !DILabel(scope: !7, name: "col_bound_height", file: !1, line: 36)
!87 = !DILocation(line: 36, column: 5, scope: !7)
!88 = !DILocation(line: 36, column: 29, scope: !89)
!89 = distinct !DILexicalBlock(scope: !7, file: !1, line: 36, column: 24)
!90 = !DILocation(line: 36, column: 28, scope: !89)
!91 = !DILocation(line: 36, column: 33, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 36, column: 24)
!93 = !DILocation(line: 36, column: 34, scope: !92)
!94 = !DILocation(line: 36, column: 24, scope: !89)
!95 = !DILocation(line: 36, column: 55, scope: !92)
!96 = !DILabel(scope: !97, name: "col_bound_row", file: !1, line: 37)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 36, column: 55)
!98 = !DILocation(line: 37, column: 9, scope: !97)
!99 = !DILocation(line: 37, column: 30, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 37, column: 25)
!101 = !DILocation(line: 37, column: 29, scope: !100)
!102 = !DILocation(line: 37, column: 34, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 37, column: 25)
!104 = !DILocation(line: 37, column: 35, scope: !103)
!105 = !DILocation(line: 37, column: 25, scope: !100)
!106 = !DILocation(line: 38, column: 54, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 37, column: 51)
!108 = !DILocation(line: 38, column: 59, scope: !107)
!109 = !DILocation(line: 38, column: 13, scope: !107)
!110 = !DILocation(line: 38, column: 17, scope: !107)
!111 = !DILocation(line: 38, column: 52, scope: !107)
!112 = !DILocation(line: 39, column: 63, scope: !107)
!113 = !DILocation(line: 39, column: 68, scope: !107)
!114 = !DILocation(line: 39, column: 13, scope: !107)
!115 = !DILocation(line: 39, column: 17, scope: !107)
!116 = !DILocation(line: 39, column: 61, scope: !107)
!117 = !DILocation(line: 40, column: 9, scope: !107)
!118 = !DILocation(line: 37, column: 47, scope: !103)
!119 = !DILocation(line: 37, column: 25, scope: !103)
!120 = distinct !{!120, !105, !121}
!121 = !DILocation(line: 40, column: 9, scope: !100)
!122 = !DILocation(line: 41, column: 5, scope: !97)
!123 = !DILocation(line: 36, column: 51, scope: !92)
!124 = !DILocation(line: 36, column: 24, scope: !92)
!125 = distinct !{!125, !94, !126}
!126 = !DILocation(line: 41, column: 5, scope: !89)
!127 = !DILabel(scope: !7, name: "row_bound_height", file: !1, line: 42)
!128 = !DILocation(line: 42, column: 5, scope: !7)
!129 = !DILocation(line: 42, column: 29, scope: !130)
!130 = distinct !DILexicalBlock(scope: !7, file: !1, line: 42, column: 24)
!131 = !DILocation(line: 42, column: 28, scope: !130)
!132 = !DILocation(line: 42, column: 33, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 42, column: 24)
!134 = !DILocation(line: 42, column: 34, scope: !133)
!135 = !DILocation(line: 42, column: 24, scope: !130)
!136 = !DILocation(line: 42, column: 55, scope: !133)
!137 = !DILabel(scope: !138, name: "row_bound_col", file: !1, line: 43)
!138 = distinct !DILexicalBlock(scope: !133, file: !1, line: 42, column: 55)
!139 = !DILocation(line: 43, column: 9, scope: !138)
!140 = !DILocation(line: 43, column: 30, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 43, column: 25)
!142 = !DILocation(line: 43, column: 29, scope: !141)
!143 = !DILocation(line: 43, column: 34, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !1, line: 43, column: 25)
!145 = !DILocation(line: 43, column: 35, scope: !144)
!146 = !DILocation(line: 43, column: 25, scope: !141)
!147 = !DILocation(line: 44, column: 54, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 43, column: 53)
!149 = !DILocation(line: 44, column: 59, scope: !148)
!150 = !DILocation(line: 44, column: 13, scope: !148)
!151 = !DILocation(line: 44, column: 17, scope: !148)
!152 = !DILocation(line: 44, column: 52, scope: !148)
!153 = !DILocation(line: 45, column: 63, scope: !148)
!154 = !DILocation(line: 45, column: 68, scope: !148)
!155 = !DILocation(line: 45, column: 13, scope: !148)
!156 = !DILocation(line: 45, column: 17, scope: !148)
!157 = !DILocation(line: 45, column: 61, scope: !148)
!158 = !DILocation(line: 46, column: 9, scope: !148)
!159 = !DILocation(line: 43, column: 49, scope: !144)
!160 = !DILocation(line: 43, column: 25, scope: !144)
!161 = distinct !{!161, !146, !162}
!162 = !DILocation(line: 46, column: 9, scope: !141)
!163 = !DILocation(line: 47, column: 5, scope: !138)
!164 = !DILocation(line: 42, column: 51, scope: !133)
!165 = !DILocation(line: 42, column: 24, scope: !133)
!166 = distinct !{!166, !135, !167}
!167 = !DILocation(line: 47, column: 5, scope: !130)
!168 = !DILabel(scope: !7, name: "loop_height", file: !1, line: 51)
!169 = !DILocation(line: 51, column: 5, scope: !7)
!170 = !DILocation(line: 51, column: 25, scope: !171)
!171 = distinct !DILexicalBlock(scope: !7, file: !1, line: 51, column: 19)
!172 = !DILocation(line: 51, column: 23, scope: !171)
!173 = !DILocation(line: 51, column: 30, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 51, column: 19)
!175 = !DILocation(line: 51, column: 32, scope: !174)
!176 = !DILocation(line: 51, column: 19, scope: !171)
!177 = !DILocation(line: 51, column: 55, scope: !174)
!178 = !DILabel(scope: !179, name: "loop_col", file: !1, line: 52)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 51, column: 55)
!180 = !DILocation(line: 52, column: 9, scope: !179)
!181 = !DILocation(line: 52, column: 26, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 52, column: 20)
!183 = !DILocation(line: 52, column: 24, scope: !182)
!184 = !DILocation(line: 52, column: 31, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !1, line: 52, column: 20)
!186 = !DILocation(line: 52, column: 33, scope: !185)
!187 = !DILocation(line: 52, column: 20, scope: !182)
!188 = !DILocation(line: 52, column: 53, scope: !185)
!189 = !DILabel(scope: !190, name: "loop_row", file: !1, line: 53)
!190 = distinct !DILexicalBlock(scope: !185, file: !1, line: 52, column: 53)
!191 = !DILocation(line: 53, column: 13, scope: !190)
!192 = !DILocation(line: 53, column: 30, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 53, column: 24)
!194 = !DILocation(line: 53, column: 28, scope: !193)
!195 = !DILocation(line: 53, column: 35, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 53, column: 24)
!197 = !DILocation(line: 53, column: 37, scope: !196)
!198 = !DILocation(line: 53, column: 24, scope: !193)
!199 = !DILocation(line: 54, column: 24, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !1, line: 53, column: 57)
!201 = !DILocation(line: 54, column: 29, scope: !200)
!202 = !DILocation(line: 54, column: 22, scope: !200)
!203 = !DILocation(line: 55, column: 24, scope: !200)
!204 = !DILocation(line: 55, column: 29, scope: !200)
!205 = !DILocation(line: 56, column: 24, scope: !200)
!206 = !DILocation(line: 56, column: 29, scope: !200)
!207 = !DILocation(line: 55, column: 68, scope: !200)
!208 = !DILocation(line: 57, column: 24, scope: !200)
!209 = !DILocation(line: 57, column: 29, scope: !200)
!210 = !DILocation(line: 56, column: 68, scope: !200)
!211 = !DILocation(line: 58, column: 24, scope: !200)
!212 = !DILocation(line: 58, column: 29, scope: !200)
!213 = !DILocation(line: 57, column: 68, scope: !200)
!214 = !DILocation(line: 59, column: 24, scope: !200)
!215 = !DILocation(line: 59, column: 29, scope: !200)
!216 = !DILocation(line: 58, column: 68, scope: !200)
!217 = !DILocation(line: 60, column: 24, scope: !200)
!218 = !DILocation(line: 60, column: 29, scope: !200)
!219 = !DILocation(line: 59, column: 68, scope: !200)
!220 = !DILocation(line: 55, column: 22, scope: !200)
!221 = !DILocation(line: 61, column: 24, scope: !200)
!222 = !DILocation(line: 61, column: 31, scope: !200)
!223 = !DILocation(line: 61, column: 29, scope: !200)
!224 = !DILocation(line: 61, column: 22, scope: !200)
!225 = !DILocation(line: 62, column: 24, scope: !200)
!226 = !DILocation(line: 62, column: 31, scope: !200)
!227 = !DILocation(line: 62, column: 29, scope: !200)
!228 = !DILocation(line: 62, column: 22, scope: !200)
!229 = !DILocation(line: 63, column: 58, scope: !200)
!230 = !DILocation(line: 63, column: 65, scope: !200)
!231 = !DILocation(line: 63, column: 63, scope: !200)
!232 = !DILocation(line: 63, column: 17, scope: !200)
!233 = !DILocation(line: 63, column: 21, scope: !200)
!234 = !DILocation(line: 63, column: 56, scope: !200)
!235 = !DILocation(line: 64, column: 13, scope: !200)
!236 = !DILocation(line: 53, column: 54, scope: !196)
!237 = !DILocation(line: 53, column: 24, scope: !196)
!238 = distinct !{!238, !198, !239}
!239 = !DILocation(line: 64, column: 13, scope: !193)
!240 = !DILocation(line: 65, column: 9, scope: !190)
!241 = !DILocation(line: 52, column: 50, scope: !185)
!242 = !DILocation(line: 52, column: 20, scope: !185)
!243 = distinct !{!243, !187, !244}
!244 = !DILocation(line: 65, column: 9, scope: !182)
!245 = !DILocation(line: 66, column: 5, scope: !179)
!246 = !DILocation(line: 51, column: 52, scope: !174)
!247 = !DILocation(line: 51, column: 19, scope: !174)
!248 = distinct !{!248, !176, !249}
!249 = !DILocation(line: 66, column: 5, scope: !171)
!250 = !DILocation(line: 71, column: 1, scope: !7)
