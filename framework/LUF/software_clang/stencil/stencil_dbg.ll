; ModuleID = 'stencil.c'
source_filename = "stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d, %d, %d,%d\0A \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Success!!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil(i32* %orig, i32* %sol, i32* %filter) #0 !dbg !10 {
entry:
  %orig.addr = alloca i32*, align 8
  %sol.addr = alloca i32*, align 8
  %filter.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %sidx = alloca i32, align 4
  %didx = alloca i32, align 4
  %fidx = alloca i32, align 4
  %tmp = alloca i32, align 4
  %Si = alloca i32, align 4
  %SI = alloca i32, align 4
  %Di = alloca i32, align 4
  %Ti = alloca i32, align 4
  store i32* %orig, i32** %orig.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %orig.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32* %sol, i32** %sol.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sol.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i32* %filter, i32** %filter.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %filter.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %j, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %k1, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %k2, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %sidx, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %didx, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %fidx, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %Si, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %SI, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %Di, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %Ti, metadata !43, metadata !DIExpression()), !dbg !44
  br label %outer, !dbg !45

outer:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !46), !dbg !47
  store i32 0, i32* %i, align 4, !dbg !48
  br label %for.cond, !dbg !50

for.cond:                                         ; preds = %for.inc78, %outer
  %0 = load i32, i32* %i, align 4, !dbg !51
  %cmp = icmp slt i32 %0, 30, !dbg !53
  br i1 %cmp, label %for.body, label %for.end80, !dbg !54

for.body:                                         ; preds = %for.cond
  br label %inner, !dbg !55

inner:                                            ; preds = %for.body
  call void @llvm.dbg.label(metadata !56), !dbg !58
  store i32 0, i32* %j, align 4, !dbg !59
  br label %for.cond1, !dbg !61

for.cond1:                                        ; preds = %for.inc, %inner
  %1 = load i32, i32* %j, align 4, !dbg !62
  %cmp2 = icmp slt i32 %1, 30, !dbg !64
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !65

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %Si, align 4, !dbg !66
  store i32 0, i32* %SI, align 4, !dbg !68
  store i32 0, i32* %tmp, align 4, !dbg !69
  store i32 0, i32* %fidx, align 4, !dbg !70
  %2 = load i32, i32* %i, align 4, !dbg !71
  %mul = mul nsw i32 %2, 32, !dbg !72
  store i32 %mul, i32* %SI, align 4, !dbg !73
  %3 = load i32, i32* %SI, align 4, !dbg !74
  %4 = load i32, i32* %j, align 4, !dbg !75
  %add = add nsw i32 %3, %4, !dbg !76
  store i32 %add, i32* %sidx, align 4, !dbg !77
  %5 = load i32, i32* %sidx, align 4, !dbg !78
  store i32 %5, i32* %didx, align 4, !dbg !79
  %6 = load i32*, i32** %filter.addr, align 8, !dbg !80
  %7 = load i32, i32* %fidx, align 4, !dbg !81
  %idxprom = sext i32 %7 to i64, !dbg !80
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom, !dbg !80
  %8 = load i32, i32* %arrayidx, align 4, !dbg !80
  %9 = load i32*, i32** %orig.addr, align 8, !dbg !82
  %10 = load i32, i32* %sidx, align 4, !dbg !83
  %idxprom4 = sext i32 %10 to i64, !dbg !82
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4, !dbg !82
  %11 = load i32, i32* %arrayidx5, align 4, !dbg !82
  %mul6 = mul nsw i32 %8, %11, !dbg !84
  store i32 %mul6, i32* %Si, align 4, !dbg !85
  %12 = load i32, i32* %tmp, align 4, !dbg !86
  %13 = load i32, i32* %Si, align 4, !dbg !87
  %add7 = add nsw i32 %12, %13, !dbg !88
  store i32 %add7, i32* %tmp, align 4, !dbg !89
  %14 = load i32, i32* %sidx, align 4, !dbg !90
  %inc = add nsw i32 %14, 1, !dbg !90
  store i32 %inc, i32* %sidx, align 4, !dbg !90
  %15 = load i32, i32* %fidx, align 4, !dbg !91
  %inc8 = add nsw i32 %15, 1, !dbg !91
  store i32 %inc8, i32* %fidx, align 4, !dbg !91
  %16 = load i32*, i32** %filter.addr, align 8, !dbg !92
  %17 = load i32, i32* %fidx, align 4, !dbg !93
  %idxprom9 = sext i32 %17 to i64, !dbg !92
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9, !dbg !92
  %18 = load i32, i32* %arrayidx10, align 4, !dbg !92
  %19 = load i32*, i32** %orig.addr, align 8, !dbg !94
  %20 = load i32, i32* %sidx, align 4, !dbg !95
  %idxprom11 = sext i32 %20 to i64, !dbg !94
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom11, !dbg !94
  %21 = load i32, i32* %arrayidx12, align 4, !dbg !94
  %mul13 = mul nsw i32 %18, %21, !dbg !96
  store i32 %mul13, i32* %Si, align 4, !dbg !97
  %22 = load i32, i32* %tmp, align 4, !dbg !98
  %23 = load i32, i32* %Si, align 4, !dbg !99
  %add14 = add nsw i32 %22, %23, !dbg !100
  store i32 %add14, i32* %tmp, align 4, !dbg !101
  %24 = load i32, i32* %sidx, align 4, !dbg !102
  %inc15 = add nsw i32 %24, 1, !dbg !102
  store i32 %inc15, i32* %sidx, align 4, !dbg !102
  %25 = load i32, i32* %fidx, align 4, !dbg !103
  %inc16 = add nsw i32 %25, 1, !dbg !103
  store i32 %inc16, i32* %fidx, align 4, !dbg !103
  %26 = load i32*, i32** %filter.addr, align 8, !dbg !104
  %27 = load i32, i32* %fidx, align 4, !dbg !105
  %idxprom17 = sext i32 %27 to i64, !dbg !104
  %arrayidx18 = getelementptr inbounds i32, i32* %26, i64 %idxprom17, !dbg !104
  %28 = load i32, i32* %arrayidx18, align 4, !dbg !104
  %29 = load i32*, i32** %orig.addr, align 8, !dbg !106
  %30 = load i32, i32* %sidx, align 4, !dbg !107
  %idxprom19 = sext i32 %30 to i64, !dbg !106
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 %idxprom19, !dbg !106
  %31 = load i32, i32* %arrayidx20, align 4, !dbg !106
  %mul21 = mul nsw i32 %28, %31, !dbg !108
  store i32 %mul21, i32* %Si, align 4, !dbg !109
  %32 = load i32, i32* %tmp, align 4, !dbg !110
  %33 = load i32, i32* %Si, align 4, !dbg !111
  %add22 = add nsw i32 %32, %33, !dbg !112
  store i32 %add22, i32* %tmp, align 4, !dbg !113
  %34 = load i32, i32* %sidx, align 4, !dbg !114
  %inc23 = add nsw i32 %34, 1, !dbg !114
  store i32 %inc23, i32* %sidx, align 4, !dbg !114
  %35 = load i32, i32* %fidx, align 4, !dbg !115
  %inc24 = add nsw i32 %35, 1, !dbg !115
  store i32 %inc24, i32* %fidx, align 4, !dbg !115
  %36 = load i32, i32* %sidx, align 4, !dbg !116
  %add25 = add nsw i32 %36, 29, !dbg !116
  store i32 %add25, i32* %sidx, align 4, !dbg !116
  %37 = load i32*, i32** %filter.addr, align 8, !dbg !117
  %38 = load i32, i32* %fidx, align 4, !dbg !118
  %idxprom26 = sext i32 %38 to i64, !dbg !117
  %arrayidx27 = getelementptr inbounds i32, i32* %37, i64 %idxprom26, !dbg !117
  %39 = load i32, i32* %arrayidx27, align 4, !dbg !117
  %40 = load i32*, i32** %orig.addr, align 8, !dbg !119
  %41 = load i32, i32* %sidx, align 4, !dbg !120
  %idxprom28 = sext i32 %41 to i64, !dbg !119
  %arrayidx29 = getelementptr inbounds i32, i32* %40, i64 %idxprom28, !dbg !119
  %42 = load i32, i32* %arrayidx29, align 4, !dbg !119
  %mul30 = mul nsw i32 %39, %42, !dbg !121
  store i32 %mul30, i32* %Si, align 4, !dbg !122
  %43 = load i32, i32* %tmp, align 4, !dbg !123
  %44 = load i32, i32* %Si, align 4, !dbg !124
  %add31 = add nsw i32 %43, %44, !dbg !125
  store i32 %add31, i32* %tmp, align 4, !dbg !126
  %45 = load i32, i32* %sidx, align 4, !dbg !127
  %inc32 = add nsw i32 %45, 1, !dbg !127
  store i32 %inc32, i32* %sidx, align 4, !dbg !127
  %46 = load i32, i32* %fidx, align 4, !dbg !128
  %inc33 = add nsw i32 %46, 1, !dbg !128
  store i32 %inc33, i32* %fidx, align 4, !dbg !128
  %47 = load i32*, i32** %filter.addr, align 8, !dbg !129
  %48 = load i32, i32* %fidx, align 4, !dbg !130
  %idxprom34 = sext i32 %48 to i64, !dbg !129
  %arrayidx35 = getelementptr inbounds i32, i32* %47, i64 %idxprom34, !dbg !129
  %49 = load i32, i32* %arrayidx35, align 4, !dbg !129
  %50 = load i32*, i32** %orig.addr, align 8, !dbg !131
  %51 = load i32, i32* %sidx, align 4, !dbg !132
  %idxprom36 = sext i32 %51 to i64, !dbg !131
  %arrayidx37 = getelementptr inbounds i32, i32* %50, i64 %idxprom36, !dbg !131
  %52 = load i32, i32* %arrayidx37, align 4, !dbg !131
  %mul38 = mul nsw i32 %49, %52, !dbg !133
  store i32 %mul38, i32* %Si, align 4, !dbg !134
  %53 = load i32, i32* %tmp, align 4, !dbg !135
  %54 = load i32, i32* %Si, align 4, !dbg !136
  %add39 = add nsw i32 %53, %54, !dbg !137
  store i32 %add39, i32* %tmp, align 4, !dbg !138
  %55 = load i32, i32* %sidx, align 4, !dbg !139
  %inc40 = add nsw i32 %55, 1, !dbg !139
  store i32 %inc40, i32* %sidx, align 4, !dbg !139
  %56 = load i32, i32* %fidx, align 4, !dbg !140
  %inc41 = add nsw i32 %56, 1, !dbg !140
  store i32 %inc41, i32* %fidx, align 4, !dbg !140
  %57 = load i32*, i32** %filter.addr, align 8, !dbg !141
  %58 = load i32, i32* %fidx, align 4, !dbg !142
  %idxprom42 = sext i32 %58 to i64, !dbg !141
  %arrayidx43 = getelementptr inbounds i32, i32* %57, i64 %idxprom42, !dbg !141
  %59 = load i32, i32* %arrayidx43, align 4, !dbg !141
  %60 = load i32*, i32** %orig.addr, align 8, !dbg !143
  %61 = load i32, i32* %sidx, align 4, !dbg !144
  %idxprom44 = sext i32 %61 to i64, !dbg !143
  %arrayidx45 = getelementptr inbounds i32, i32* %60, i64 %idxprom44, !dbg !143
  %62 = load i32, i32* %arrayidx45, align 4, !dbg !143
  %mul46 = mul nsw i32 %59, %62, !dbg !145
  store i32 %mul46, i32* %Si, align 4, !dbg !146
  %63 = load i32, i32* %tmp, align 4, !dbg !147
  %64 = load i32, i32* %Si, align 4, !dbg !148
  %add47 = add nsw i32 %63, %64, !dbg !149
  store i32 %add47, i32* %tmp, align 4, !dbg !150
  %65 = load i32, i32* %sidx, align 4, !dbg !151
  %inc48 = add nsw i32 %65, 1, !dbg !151
  store i32 %inc48, i32* %sidx, align 4, !dbg !151
  %66 = load i32, i32* %fidx, align 4, !dbg !152
  %inc49 = add nsw i32 %66, 1, !dbg !152
  store i32 %inc49, i32* %fidx, align 4, !dbg !152
  %67 = load i32, i32* %sidx, align 4, !dbg !153
  %add50 = add nsw i32 %67, 32, !dbg !154
  %sub = sub nsw i32 %add50, 3, !dbg !155
  store i32 %sub, i32* %sidx, align 4, !dbg !156
  %68 = load i32*, i32** %filter.addr, align 8, !dbg !157
  %69 = load i32, i32* %fidx, align 4, !dbg !158
  %idxprom51 = sext i32 %69 to i64, !dbg !157
  %arrayidx52 = getelementptr inbounds i32, i32* %68, i64 %idxprom51, !dbg !157
  %70 = load i32, i32* %arrayidx52, align 4, !dbg !157
  %71 = load i32*, i32** %orig.addr, align 8, !dbg !159
  %72 = load i32, i32* %sidx, align 4, !dbg !160
  %idxprom53 = sext i32 %72 to i64, !dbg !159
  %arrayidx54 = getelementptr inbounds i32, i32* %71, i64 %idxprom53, !dbg !159
  %73 = load i32, i32* %arrayidx54, align 4, !dbg !159
  %mul55 = mul nsw i32 %70, %73, !dbg !161
  store i32 %mul55, i32* %Si, align 4, !dbg !162
  %74 = load i32, i32* %tmp, align 4, !dbg !163
  %75 = load i32, i32* %Si, align 4, !dbg !164
  %add56 = add nsw i32 %74, %75, !dbg !165
  store i32 %add56, i32* %tmp, align 4, !dbg !166
  %76 = load i32, i32* %sidx, align 4, !dbg !167
  %inc57 = add nsw i32 %76, 1, !dbg !167
  store i32 %inc57, i32* %sidx, align 4, !dbg !167
  %77 = load i32, i32* %fidx, align 4, !dbg !168
  %inc58 = add nsw i32 %77, 1, !dbg !168
  store i32 %inc58, i32* %fidx, align 4, !dbg !168
  %78 = load i32*, i32** %filter.addr, align 8, !dbg !169
  %79 = load i32, i32* %fidx, align 4, !dbg !170
  %idxprom59 = sext i32 %79 to i64, !dbg !169
  %arrayidx60 = getelementptr inbounds i32, i32* %78, i64 %idxprom59, !dbg !169
  %80 = load i32, i32* %arrayidx60, align 4, !dbg !169
  %81 = load i32*, i32** %orig.addr, align 8, !dbg !171
  %82 = load i32, i32* %sidx, align 4, !dbg !172
  %idxprom61 = sext i32 %82 to i64, !dbg !171
  %arrayidx62 = getelementptr inbounds i32, i32* %81, i64 %idxprom61, !dbg !171
  %83 = load i32, i32* %arrayidx62, align 4, !dbg !171
  %mul63 = mul nsw i32 %80, %83, !dbg !173
  store i32 %mul63, i32* %Si, align 4, !dbg !174
  %84 = load i32, i32* %tmp, align 4, !dbg !175
  %85 = load i32, i32* %Si, align 4, !dbg !176
  %add64 = add nsw i32 %84, %85, !dbg !177
  store i32 %add64, i32* %tmp, align 4, !dbg !178
  %86 = load i32, i32* %sidx, align 4, !dbg !179
  %inc65 = add nsw i32 %86, 1, !dbg !179
  store i32 %inc65, i32* %sidx, align 4, !dbg !179
  %87 = load i32, i32* %fidx, align 4, !dbg !180
  %inc66 = add nsw i32 %87, 1, !dbg !180
  store i32 %inc66, i32* %fidx, align 4, !dbg !180
  %88 = load i32*, i32** %filter.addr, align 8, !dbg !181
  %89 = load i32, i32* %fidx, align 4, !dbg !182
  %idxprom67 = sext i32 %89 to i64, !dbg !181
  %arrayidx68 = getelementptr inbounds i32, i32* %88, i64 %idxprom67, !dbg !181
  %90 = load i32, i32* %arrayidx68, align 4, !dbg !181
  %91 = load i32*, i32** %orig.addr, align 8, !dbg !183
  %92 = load i32, i32* %sidx, align 4, !dbg !184
  %idxprom69 = sext i32 %92 to i64, !dbg !183
  %arrayidx70 = getelementptr inbounds i32, i32* %91, i64 %idxprom69, !dbg !183
  %93 = load i32, i32* %arrayidx70, align 4, !dbg !183
  %mul71 = mul nsw i32 %90, %93, !dbg !185
  store i32 %mul71, i32* %Si, align 4, !dbg !186
  %94 = load i32, i32* %tmp, align 4, !dbg !187
  %95 = load i32, i32* %Si, align 4, !dbg !188
  %add72 = add nsw i32 %94, %95, !dbg !189
  store i32 %add72, i32* %tmp, align 4, !dbg !190
  %96 = load i32, i32* %sidx, align 4, !dbg !191
  %inc73 = add nsw i32 %96, 1, !dbg !191
  store i32 %inc73, i32* %sidx, align 4, !dbg !191
  %97 = load i32, i32* %fidx, align 4, !dbg !192
  %inc74 = add nsw i32 %97, 1, !dbg !192
  store i32 %inc74, i32* %fidx, align 4, !dbg !192
  %98 = load i32, i32* %tmp, align 4, !dbg !193
  %99 = load i32*, i32** %sol.addr, align 8, !dbg !194
  %100 = load i32, i32* %didx, align 4, !dbg !195
  %idxprom75 = sext i32 %100 to i64, !dbg !194
  %arrayidx76 = getelementptr inbounds i32, i32* %99, i64 %idxprom75, !dbg !194
  store i32 %98, i32* %arrayidx76, align 4, !dbg !196
  br label %for.inc, !dbg !197

for.inc:                                          ; preds = %for.body3
  %101 = load i32, i32* %j, align 4, !dbg !198
  %inc77 = add nsw i32 %101, 1, !dbg !198
  store i32 %inc77, i32* %j, align 4, !dbg !198
  br label %for.cond1, !dbg !199, !llvm.loop !200

for.end:                                          ; preds = %for.cond1
  br label %for.inc78, !dbg !202

for.inc78:                                        ; preds = %for.end
  %102 = load i32, i32* %i, align 4, !dbg !203
  %inc79 = add nsw i32 %102, 1, !dbg !203
  store i32 %inc79, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !204, !llvm.loop !205

for.end80:                                        ; preds = %for.cond
  ret void, !dbg !207
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !208 {
entry:
  %retval = alloca i32, align 4
  %OrigImg = alloca i32*, align 8
  %Solution = alloca i32*, align 8
  %Filter = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32** %OrigImg, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32** %Solution, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32** %Filter, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %i, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %j, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i32* %k, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %max, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %min, metadata !225, metadata !DIExpression()), !dbg !226
  call void @srand(i32 8650341) #4, !dbg !227
  store i32 2147483646, i32* %max, align 4, !dbg !228
  store i32 0, i32* %min, align 4, !dbg !229
  %call = call noalias i8* @malloc(i64 4096) #4, !dbg !230
  %0 = bitcast i8* %call to i32*, !dbg !231
  store i32* %0, i32** %OrigImg, align 8, !dbg !232
  %call1 = call noalias i8* @malloc(i64 4096) #4, !dbg !233
  %1 = bitcast i8* %call1 to i32*, !dbg !234
  store i32* %1, i32** %Solution, align 8, !dbg !235
  %call2 = call noalias i8* @malloc(i64 36) #4, !dbg !236
  %2 = bitcast i8* %call2 to i32*, !dbg !237
  store i32* %2, i32** %Filter, align 8, !dbg !238
  store i32 0, i32* %i, align 4, !dbg !239
  br label %for.cond, !dbg !241

for.cond:                                         ; preds = %for.inc17, %entry
  %3 = load i32, i32* %i, align 4, !dbg !242
  %cmp = icmp slt i32 %3, 32, !dbg !244
  br i1 %cmp, label %for.body, label %for.end19, !dbg !245

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !246
  br label %for.cond3, !dbg !249

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !dbg !250
  %cmp4 = icmp slt i32 %4, 32, !dbg !252
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !253

for.body5:                                        ; preds = %for.cond3
  %call6 = call i32 @rand() #4, !dbg !254
  %conv = sitofp i32 %call6 to double, !dbg !254
  %mul = fmul double %conv, 1.000000e+00, !dbg !256
  %5 = load i32, i32* %max, align 4, !dbg !257
  %6 = load i32, i32* %min, align 4, !dbg !258
  %sub = sub nsw i32 %5, %6, !dbg !259
  %conv7 = sitofp i32 %sub to double, !dbg !260
  %mul8 = fmul double %mul, %conv7, !dbg !261
  %div = fdiv double %mul8, 0x41DFFFFFFFC00000, !dbg !262
  %7 = load i32, i32* %min, align 4, !dbg !263
  %conv9 = sitofp i32 %7 to double, !dbg !263
  %add = fadd double %div, %conv9, !dbg !264
  %conv10 = fptosi double %add to i32, !dbg !265
  %8 = load i32*, i32** %OrigImg, align 8, !dbg !266
  %9 = load i32, i32* %i, align 4, !dbg !267
  %mul11 = mul nsw i32 %9, 32, !dbg !268
  %10 = load i32, i32* %j, align 4, !dbg !269
  %add12 = add nsw i32 %mul11, %10, !dbg !270
  %idxprom = sext i32 %add12 to i64, !dbg !266
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom, !dbg !266
  store i32 %conv10, i32* %arrayidx, align 4, !dbg !271
  %11 = load i32*, i32** %Solution, align 8, !dbg !272
  %12 = load i32, i32* %i, align 4, !dbg !273
  %mul13 = mul nsw i32 %12, 32, !dbg !274
  %13 = load i32, i32* %j, align 4, !dbg !275
  %add14 = add nsw i32 %mul13, %13, !dbg !276
  %idxprom15 = sext i32 %add14 to i64, !dbg !272
  %arrayidx16 = getelementptr inbounds i32, i32* %11, i64 %idxprom15, !dbg !272
  store i32 0, i32* %arrayidx16, align 4, !dbg !277
  br label %for.inc, !dbg !278

for.inc:                                          ; preds = %for.body5
  %14 = load i32, i32* %j, align 4, !dbg !279
  %inc = add nsw i32 %14, 1, !dbg !279
  store i32 %inc, i32* %j, align 4, !dbg !279
  br label %for.cond3, !dbg !280, !llvm.loop !281

for.end:                                          ; preds = %for.cond3
  br label %for.inc17, !dbg !283

for.inc17:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4, !dbg !284
  %inc18 = add nsw i32 %15, 1, !dbg !284
  store i32 %inc18, i32* %i, align 4, !dbg !284
  br label %for.cond, !dbg !285, !llvm.loop !286

for.end19:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !288
  br label %for.cond20, !dbg !290

for.cond20:                                       ; preds = %for.inc45, %for.end19
  %16 = load i32, i32* %i, align 4, !dbg !291
  %cmp21 = icmp slt i32 %16, 3, !dbg !293
  br i1 %cmp21, label %for.body23, label %for.end47, !dbg !294

for.body23:                                       ; preds = %for.cond20
  store i32 0, i32* %j, align 4, !dbg !295
  br label %for.cond24, !dbg !298

for.cond24:                                       ; preds = %for.inc42, %for.body23
  %17 = load i32, i32* %j, align 4, !dbg !299
  %cmp25 = icmp slt i32 %17, 3, !dbg !301
  br i1 %cmp25, label %for.body27, label %for.end44, !dbg !302

for.body27:                                       ; preds = %for.cond24
  %call28 = call i32 @rand() #4, !dbg !303
  %conv29 = sitofp i32 %call28 to double, !dbg !303
  %mul30 = fmul double %conv29, 1.000000e+00, !dbg !305
  %18 = load i32, i32* %max, align 4, !dbg !306
  %19 = load i32, i32* %min, align 4, !dbg !307
  %sub31 = sub nsw i32 %18, %19, !dbg !308
  %conv32 = sitofp i32 %sub31 to double, !dbg !309
  %mul33 = fmul double %mul30, %conv32, !dbg !310
  %div34 = fdiv double %mul33, 0x41DFFFFFFFC00000, !dbg !311
  %20 = load i32, i32* %min, align 4, !dbg !312
  %conv35 = sitofp i32 %20 to double, !dbg !312
  %add36 = fadd double %div34, %conv35, !dbg !313
  %conv37 = fptosi double %add36 to i32, !dbg !314
  %21 = load i32*, i32** %Filter, align 8, !dbg !315
  %22 = load i32, i32* %i, align 4, !dbg !316
  %mul38 = mul nsw i32 %22, 3, !dbg !317
  %23 = load i32, i32* %j, align 4, !dbg !318
  %add39 = add nsw i32 %mul38, %23, !dbg !319
  %idxprom40 = sext i32 %add39 to i64, !dbg !315
  %arrayidx41 = getelementptr inbounds i32, i32* %21, i64 %idxprom40, !dbg !315
  store i32 %conv37, i32* %arrayidx41, align 4, !dbg !320
  br label %for.inc42, !dbg !321

for.inc42:                                        ; preds = %for.body27
  %24 = load i32, i32* %j, align 4, !dbg !322
  %inc43 = add nsw i32 %24, 1, !dbg !322
  store i32 %inc43, i32* %j, align 4, !dbg !322
  br label %for.cond24, !dbg !323, !llvm.loop !324

for.end44:                                        ; preds = %for.cond24
  br label %for.inc45, !dbg !326

for.inc45:                                        ; preds = %for.end44
  %25 = load i32, i32* %i, align 4, !dbg !327
  %inc46 = add nsw i32 %25, 1, !dbg !327
  store i32 %inc46, i32* %i, align 4, !dbg !327
  br label %for.cond20, !dbg !328, !llvm.loop !329

for.end47:                                        ; preds = %for.cond20
  %26 = load i32*, i32** %OrigImg, align 8, !dbg !331
  %arrayidx48 = getelementptr inbounds i32, i32* %26, i64 0, !dbg !331
  %27 = load i32*, i32** %Solution, align 8, !dbg !332
  %arrayidx49 = getelementptr inbounds i32, i32* %27, i64 0, !dbg !332
  %28 = load i32*, i32** %Filter, align 8, !dbg !333
  %arrayidx50 = getelementptr inbounds i32, i32* %28, i64 0, !dbg !333
  call void @stencil(i32* %arrayidx48, i32* %arrayidx49, i32* %arrayidx50), !dbg !334
  store i32 0, i32* %i, align 4, !dbg !335
  br label %for.cond51, !dbg !337

for.cond51:                                       ; preds = %for.inc71, %for.end47
  %29 = load i32, i32* %i, align 4, !dbg !338
  %cmp52 = icmp slt i32 %29, 4, !dbg !340
  br i1 %cmp52, label %for.body54, label %for.end73, !dbg !341

for.body54:                                       ; preds = %for.cond51
  store i32 0, i32* %j, align 4, !dbg !342
  br label %for.cond55, !dbg !345

for.cond55:                                       ; preds = %for.inc68, %for.body54
  %30 = load i32, i32* %j, align 4, !dbg !346
  %cmp56 = icmp slt i32 %30, 4, !dbg !348
  br i1 %cmp56, label %for.body58, label %for.end70, !dbg !349

for.body58:                                       ; preds = %for.cond55
  %31 = load i32, i32* %i, align 4, !dbg !350
  %32 = load i32, i32* %j, align 4, !dbg !352
  %33 = load i32*, i32** %OrigImg, align 8, !dbg !353
  %34 = load i32, i32* %i, align 4, !dbg !354
  %mul59 = mul nsw i32 %34, 32, !dbg !355
  %35 = load i32, i32* %j, align 4, !dbg !356
  %add60 = add nsw i32 %mul59, %35, !dbg !357
  %idxprom61 = sext i32 %add60 to i64, !dbg !353
  %arrayidx62 = getelementptr inbounds i32, i32* %33, i64 %idxprom61, !dbg !353
  %36 = load i32, i32* %arrayidx62, align 4, !dbg !353
  %37 = load i32*, i32** %Solution, align 8, !dbg !358
  %38 = load i32, i32* %i, align 4, !dbg !359
  %mul63 = mul nsw i32 %38, 32, !dbg !360
  %39 = load i32, i32* %j, align 4, !dbg !361
  %add64 = add nsw i32 %mul63, %39, !dbg !362
  %idxprom65 = sext i32 %add64 to i64, !dbg !358
  %arrayidx66 = getelementptr inbounds i32, i32* %37, i64 %idxprom65, !dbg !358
  %40 = load i32, i32* %arrayidx66, align 4, !dbg !358
  %call67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %36, i32 %40), !dbg !363
  br label %for.inc68, !dbg !364

for.inc68:                                        ; preds = %for.body58
  %41 = load i32, i32* %j, align 4, !dbg !365
  %inc69 = add nsw i32 %41, 1, !dbg !365
  store i32 %inc69, i32* %j, align 4, !dbg !365
  br label %for.cond55, !dbg !366, !llvm.loop !367

for.end70:                                        ; preds = %for.cond55
  br label %for.inc71, !dbg !369

for.inc71:                                        ; preds = %for.end70
  %42 = load i32, i32* %i, align 4, !dbg !370
  %inc72 = add nsw i32 %42, 1, !dbg !370
  store i32 %inc72, i32* %i, align 4, !dbg !370
  br label %for.cond51, !dbg !371, !llvm.loop !372

for.end73:                                        ; preds = %for.cond51
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !374
  ret i32 0, !dbg !375
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stencil.c", directory: "/home/coco/work/benchmark_codes/stencil")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 10.0.1 "}
!10 = distinct !DISubprogram(name: "stencil", scope: !1, file: !1, line: 7, type: !11, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !4, !4, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!15 = !DILocalVariable(name: "orig", arg: 1, scope: !10, file: !1, line: 7, type: !4)
!16 = !DILocation(line: 7, column: 20, scope: !10)
!17 = !DILocalVariable(name: "sol", arg: 2, scope: !10, file: !1, line: 7, type: !4)
!18 = !DILocation(line: 7, column: 31, scope: !10)
!19 = !DILocalVariable(name: "filter", arg: 3, scope: !10, file: !1, line: 7, type: !13)
!20 = !DILocation(line: 7, column: 47, scope: !10)
!21 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 12, type: !5)
!22 = !DILocation(line: 12, column: 6, scope: !10)
!23 = !DILocalVariable(name: "j", scope: !10, file: !1, line: 12, type: !5)
!24 = !DILocation(line: 12, column: 9, scope: !10)
!25 = !DILocalVariable(name: "k1", scope: !10, file: !1, line: 12, type: !5)
!26 = !DILocation(line: 12, column: 11, scope: !10)
!27 = !DILocalVariable(name: "k2", scope: !10, file: !1, line: 12, type: !5)
!28 = !DILocation(line: 12, column: 15, scope: !10)
!29 = !DILocalVariable(name: "sidx", scope: !10, file: !1, line: 12, type: !5)
!30 = !DILocation(line: 12, column: 19, scope: !10)
!31 = !DILocalVariable(name: "didx", scope: !10, file: !1, line: 12, type: !5)
!32 = !DILocation(line: 12, column: 25, scope: !10)
!33 = !DILocalVariable(name: "fidx", scope: !10, file: !1, line: 12, type: !5)
!34 = !DILocation(line: 12, column: 31, scope: !10)
!35 = !DILocalVariable(name: "tmp", scope: !10, file: !1, line: 13, type: !5)
!36 = !DILocation(line: 13, column: 6, scope: !10)
!37 = !DILocalVariable(name: "Si", scope: !10, file: !1, line: 13, type: !5)
!38 = !DILocation(line: 13, column: 11, scope: !10)
!39 = !DILocalVariable(name: "SI", scope: !10, file: !1, line: 13, type: !5)
!40 = !DILocation(line: 13, column: 15, scope: !10)
!41 = !DILocalVariable(name: "Di", scope: !10, file: !1, line: 13, type: !5)
!42 = !DILocation(line: 13, column: 19, scope: !10)
!43 = !DILocalVariable(name: "Ti", scope: !10, file: !1, line: 13, type: !5)
!44 = !DILocation(line: 13, column: 23, scope: !10)
!45 = !DILocation(line: 13, column: 2, scope: !10)
!46 = !DILabel(scope: !10, name: "outer", file: !1, line: 14)
!47 = !DILocation(line: 14, column: 3, scope: !10)
!48 = !DILocation(line: 14, column: 15, scope: !49)
!49 = distinct !DILexicalBlock(scope: !10, file: !1, line: 14, column: 9)
!50 = !DILocation(line: 14, column: 14, scope: !49)
!51 = !DILocation(line: 14, column: 19, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 14, column: 9)
!53 = !DILocation(line: 14, column: 20, scope: !52)
!54 = !DILocation(line: 14, column: 9, scope: !49)
!55 = !DILocation(line: 14, column: 31, scope: !52)
!56 = !DILabel(scope: !57, name: "inner", file: !1, line: 15)
!57 = distinct !DILexicalBlock(scope: !52, file: !1, line: 14, column: 31)
!58 = !DILocation(line: 15, column: 5, scope: !57)
!59 = !DILocation(line: 15, column: 17, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 15, column: 11)
!61 = !DILocation(line: 15, column: 16, scope: !60)
!62 = !DILocation(line: 15, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 15, column: 11)
!64 = !DILocation(line: 15, column: 22, scope: !63)
!65 = !DILocation(line: 15, column: 11, scope: !60)
!66 = !DILocation(line: 16, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 15, column: 33)
!68 = !DILocation(line: 17, column: 7, scope: !67)
!69 = !DILocation(line: 18, column: 8, scope: !67)
!70 = !DILocation(line: 19, column: 9, scope: !67)
!71 = !DILocation(line: 20, column: 9, scope: !67)
!72 = !DILocation(line: 20, column: 11, scope: !67)
!73 = !DILocation(line: 20, column: 7, scope: !67)
!74 = !DILocation(line: 21, column: 11, scope: !67)
!75 = !DILocation(line: 21, column: 16, scope: !67)
!76 = !DILocation(line: 21, column: 14, scope: !67)
!77 = !DILocation(line: 21, column: 9, scope: !67)
!78 = !DILocation(line: 22, column: 11, scope: !67)
!79 = !DILocation(line: 22, column: 9, scope: !67)
!80 = !DILocation(line: 24, column: 9, scope: !67)
!81 = !DILocation(line: 24, column: 16, scope: !67)
!82 = !DILocation(line: 24, column: 24, scope: !67)
!83 = !DILocation(line: 24, column: 29, scope: !67)
!84 = !DILocation(line: 24, column: 22, scope: !67)
!85 = !DILocation(line: 24, column: 7, scope: !67)
!86 = !DILocation(line: 25, column: 10, scope: !67)
!87 = !DILocation(line: 25, column: 16, scope: !67)
!88 = !DILocation(line: 25, column: 14, scope: !67)
!89 = !DILocation(line: 25, column: 8, scope: !67)
!90 = !DILocation(line: 26, column: 9, scope: !67)
!91 = !DILocation(line: 27, column: 9, scope: !67)
!92 = !DILocation(line: 29, column: 9, scope: !67)
!93 = !DILocation(line: 29, column: 16, scope: !67)
!94 = !DILocation(line: 29, column: 24, scope: !67)
!95 = !DILocation(line: 29, column: 29, scope: !67)
!96 = !DILocation(line: 29, column: 22, scope: !67)
!97 = !DILocation(line: 29, column: 7, scope: !67)
!98 = !DILocation(line: 30, column: 10, scope: !67)
!99 = !DILocation(line: 30, column: 16, scope: !67)
!100 = !DILocation(line: 30, column: 14, scope: !67)
!101 = !DILocation(line: 30, column: 8, scope: !67)
!102 = !DILocation(line: 31, column: 9, scope: !67)
!103 = !DILocation(line: 32, column: 9, scope: !67)
!104 = !DILocation(line: 34, column: 9, scope: !67)
!105 = !DILocation(line: 34, column: 16, scope: !67)
!106 = !DILocation(line: 34, column: 24, scope: !67)
!107 = !DILocation(line: 34, column: 29, scope: !67)
!108 = !DILocation(line: 34, column: 22, scope: !67)
!109 = !DILocation(line: 34, column: 7, scope: !67)
!110 = !DILocation(line: 35, column: 10, scope: !67)
!111 = !DILocation(line: 35, column: 16, scope: !67)
!112 = !DILocation(line: 35, column: 14, scope: !67)
!113 = !DILocation(line: 35, column: 8, scope: !67)
!114 = !DILocation(line: 36, column: 9, scope: !67)
!115 = !DILocation(line: 37, column: 9, scope: !67)
!116 = !DILocation(line: 39, column: 9, scope: !67)
!117 = !DILocation(line: 41, column: 9, scope: !67)
!118 = !DILocation(line: 41, column: 16, scope: !67)
!119 = !DILocation(line: 41, column: 24, scope: !67)
!120 = !DILocation(line: 41, column: 29, scope: !67)
!121 = !DILocation(line: 41, column: 22, scope: !67)
!122 = !DILocation(line: 41, column: 7, scope: !67)
!123 = !DILocation(line: 42, column: 10, scope: !67)
!124 = !DILocation(line: 42, column: 16, scope: !67)
!125 = !DILocation(line: 42, column: 14, scope: !67)
!126 = !DILocation(line: 42, column: 8, scope: !67)
!127 = !DILocation(line: 43, column: 9, scope: !67)
!128 = !DILocation(line: 44, column: 9, scope: !67)
!129 = !DILocation(line: 46, column: 9, scope: !67)
!130 = !DILocation(line: 46, column: 16, scope: !67)
!131 = !DILocation(line: 46, column: 24, scope: !67)
!132 = !DILocation(line: 46, column: 29, scope: !67)
!133 = !DILocation(line: 46, column: 22, scope: !67)
!134 = !DILocation(line: 46, column: 7, scope: !67)
!135 = !DILocation(line: 47, column: 10, scope: !67)
!136 = !DILocation(line: 47, column: 16, scope: !67)
!137 = !DILocation(line: 47, column: 14, scope: !67)
!138 = !DILocation(line: 47, column: 8, scope: !67)
!139 = !DILocation(line: 48, column: 9, scope: !67)
!140 = !DILocation(line: 49, column: 9, scope: !67)
!141 = !DILocation(line: 51, column: 9, scope: !67)
!142 = !DILocation(line: 51, column: 16, scope: !67)
!143 = !DILocation(line: 51, column: 24, scope: !67)
!144 = !DILocation(line: 51, column: 29, scope: !67)
!145 = !DILocation(line: 51, column: 22, scope: !67)
!146 = !DILocation(line: 51, column: 7, scope: !67)
!147 = !DILocation(line: 52, column: 10, scope: !67)
!148 = !DILocation(line: 52, column: 16, scope: !67)
!149 = !DILocation(line: 52, column: 14, scope: !67)
!150 = !DILocation(line: 52, column: 8, scope: !67)
!151 = !DILocation(line: 53, column: 9, scope: !67)
!152 = !DILocation(line: 54, column: 9, scope: !67)
!153 = !DILocation(line: 56, column: 11, scope: !67)
!154 = !DILocation(line: 56, column: 16, scope: !67)
!155 = !DILocation(line: 56, column: 23, scope: !67)
!156 = !DILocation(line: 56, column: 9, scope: !67)
!157 = !DILocation(line: 58, column: 9, scope: !67)
!158 = !DILocation(line: 58, column: 16, scope: !67)
!159 = !DILocation(line: 58, column: 24, scope: !67)
!160 = !DILocation(line: 58, column: 29, scope: !67)
!161 = !DILocation(line: 58, column: 22, scope: !67)
!162 = !DILocation(line: 58, column: 7, scope: !67)
!163 = !DILocation(line: 59, column: 10, scope: !67)
!164 = !DILocation(line: 59, column: 16, scope: !67)
!165 = !DILocation(line: 59, column: 14, scope: !67)
!166 = !DILocation(line: 59, column: 8, scope: !67)
!167 = !DILocation(line: 60, column: 9, scope: !67)
!168 = !DILocation(line: 61, column: 9, scope: !67)
!169 = !DILocation(line: 63, column: 9, scope: !67)
!170 = !DILocation(line: 63, column: 16, scope: !67)
!171 = !DILocation(line: 63, column: 24, scope: !67)
!172 = !DILocation(line: 63, column: 29, scope: !67)
!173 = !DILocation(line: 63, column: 22, scope: !67)
!174 = !DILocation(line: 63, column: 7, scope: !67)
!175 = !DILocation(line: 64, column: 10, scope: !67)
!176 = !DILocation(line: 64, column: 16, scope: !67)
!177 = !DILocation(line: 64, column: 14, scope: !67)
!178 = !DILocation(line: 64, column: 8, scope: !67)
!179 = !DILocation(line: 65, column: 9, scope: !67)
!180 = !DILocation(line: 66, column: 9, scope: !67)
!181 = !DILocation(line: 68, column: 9, scope: !67)
!182 = !DILocation(line: 68, column: 16, scope: !67)
!183 = !DILocation(line: 68, column: 24, scope: !67)
!184 = !DILocation(line: 68, column: 29, scope: !67)
!185 = !DILocation(line: 68, column: 22, scope: !67)
!186 = !DILocation(line: 68, column: 7, scope: !67)
!187 = !DILocation(line: 69, column: 10, scope: !67)
!188 = !DILocation(line: 69, column: 16, scope: !67)
!189 = !DILocation(line: 69, column: 14, scope: !67)
!190 = !DILocation(line: 69, column: 8, scope: !67)
!191 = !DILocation(line: 70, column: 9, scope: !67)
!192 = !DILocation(line: 71, column: 9, scope: !67)
!193 = !DILocation(line: 72, column: 16, scope: !67)
!194 = !DILocation(line: 72, column: 4, scope: !67)
!195 = !DILocation(line: 72, column: 8, scope: !67)
!196 = !DILocation(line: 72, column: 14, scope: !67)
!197 = !DILocation(line: 73, column: 3, scope: !67)
!198 = !DILocation(line: 15, column: 29, scope: !63)
!199 = !DILocation(line: 15, column: 11, scope: !63)
!200 = distinct !{!200, !65, !201}
!201 = !DILocation(line: 73, column: 3, scope: !60)
!202 = !DILocation(line: 74, column: 2, scope: !57)
!203 = !DILocation(line: 14, column: 27, scope: !52)
!204 = !DILocation(line: 14, column: 9, scope: !52)
!205 = distinct !{!205, !54, !206}
!206 = !DILocation(line: 74, column: 2, scope: !49)
!207 = !DILocation(line: 78, column: 1, scope: !10)
!208 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 80, type: !209, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!209 = !DISubroutineType(types: !210)
!210 = !{!5}
!211 = !DILocalVariable(name: "OrigImg", scope: !208, file: !1, line: 82, type: !4)
!212 = !DILocation(line: 82, column: 7, scope: !208)
!213 = !DILocalVariable(name: "Solution", scope: !208, file: !1, line: 83, type: !4)
!214 = !DILocation(line: 83, column: 7, scope: !208)
!215 = !DILocalVariable(name: "Filter", scope: !208, file: !1, line: 84, type: !4)
!216 = !DILocation(line: 84, column: 7, scope: !208)
!217 = !DILocalVariable(name: "i", scope: !208, file: !1, line: 85, type: !5)
!218 = !DILocation(line: 85, column: 9, scope: !208)
!219 = !DILocalVariable(name: "j", scope: !208, file: !1, line: 85, type: !5)
!220 = !DILocation(line: 85, column: 12, scope: !208)
!221 = !DILocalVariable(name: "k", scope: !208, file: !1, line: 85, type: !5)
!222 = !DILocation(line: 85, column: 15, scope: !208)
!223 = !DILocalVariable(name: "max", scope: !208, file: !1, line: 86, type: !5)
!224 = !DILocation(line: 86, column: 9, scope: !208)
!225 = !DILocalVariable(name: "min", scope: !208, file: !1, line: 86, type: !5)
!226 = !DILocation(line: 86, column: 14, scope: !208)
!227 = !DILocation(line: 88, column: 3, scope: !208)
!228 = !DILocation(line: 89, column: 13, scope: !208)
!229 = !DILocation(line: 90, column: 13, scope: !208)
!230 = !DILocation(line: 91, column: 20, scope: !208)
!231 = !DILocation(line: 91, column: 13, scope: !208)
!232 = !DILocation(line: 91, column: 11, scope: !208)
!233 = !DILocation(line: 92, column: 21, scope: !208)
!234 = !DILocation(line: 92, column: 14, scope: !208)
!235 = !DILocation(line: 92, column: 12, scope: !208)
!236 = !DILocation(line: 93, column: 20, scope: !208)
!237 = !DILocation(line: 93, column: 12, scope: !208)
!238 = !DILocation(line: 93, column: 10, scope: !208)
!239 = !DILocation(line: 94, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !208, file: !1, line: 94, column: 2)
!241 = !DILocation(line: 94, column: 6, scope: !240)
!242 = !DILocation(line: 94, column: 10, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !1, line: 94, column: 2)
!244 = !DILocation(line: 94, column: 11, scope: !243)
!245 = !DILocation(line: 94, column: 2, scope: !240)
!246 = !DILocation(line: 96, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 96, column: 3)
!248 = distinct !DILexicalBlock(scope: !243, file: !1, line: 95, column: 2)
!249 = !DILocation(line: 96, column: 7, scope: !247)
!250 = !DILocation(line: 96, column: 11, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !1, line: 96, column: 3)
!252 = !DILocation(line: 96, column: 12, scope: !251)
!253 = !DILocation(line: 96, column: 3, scope: !247)
!254 = !DILocation(line: 98, column: 36, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !1, line: 97, column: 3)
!256 = !DILocation(line: 98, column: 43, scope: !255)
!257 = !DILocation(line: 98, column: 53, scope: !255)
!258 = !DILocation(line: 98, column: 57, scope: !255)
!259 = !DILocation(line: 98, column: 56, scope: !255)
!260 = !DILocation(line: 98, column: 51, scope: !255)
!261 = !DILocation(line: 98, column: 49, scope: !255)
!262 = !DILocation(line: 98, column: 62, scope: !255)
!263 = !DILocation(line: 98, column: 78, scope: !255)
!264 = !DILocation(line: 98, column: 76, scope: !255)
!265 = !DILocation(line: 98, column: 28, scope: !255)
!266 = !DILocation(line: 98, column: 4, scope: !255)
!267 = !DILocation(line: 98, column: 12, scope: !255)
!268 = !DILocation(line: 98, column: 14, scope: !255)
!269 = !DILocation(line: 98, column: 23, scope: !255)
!270 = !DILocation(line: 98, column: 21, scope: !255)
!271 = !DILocation(line: 98, column: 26, scope: !255)
!272 = !DILocation(line: 99, column: 4, scope: !255)
!273 = !DILocation(line: 99, column: 13, scope: !255)
!274 = !DILocation(line: 99, column: 15, scope: !255)
!275 = !DILocation(line: 99, column: 24, scope: !255)
!276 = !DILocation(line: 99, column: 22, scope: !255)
!277 = !DILocation(line: 99, column: 27, scope: !255)
!278 = !DILocation(line: 101, column: 3, scope: !255)
!279 = !DILocation(line: 96, column: 17, scope: !251)
!280 = !DILocation(line: 96, column: 3, scope: !251)
!281 = distinct !{!281, !253, !282}
!282 = !DILocation(line: 101, column: 3, scope: !247)
!283 = !DILocation(line: 102, column: 2, scope: !248)
!284 = !DILocation(line: 94, column: 16, scope: !243)
!285 = !DILocation(line: 94, column: 2, scope: !243)
!286 = distinct !{!286, !245, !287}
!287 = !DILocation(line: 102, column: 2, scope: !240)
!288 = !DILocation(line: 104, column: 7, scope: !289)
!289 = distinct !DILexicalBlock(scope: !208, file: !1, line: 104, column: 2)
!290 = !DILocation(line: 104, column: 6, scope: !289)
!291 = !DILocation(line: 104, column: 10, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 104, column: 2)
!293 = !DILocation(line: 104, column: 11, scope: !292)
!294 = !DILocation(line: 104, column: 2, scope: !289)
!295 = !DILocation(line: 106, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !1, line: 106, column: 3)
!297 = distinct !DILexicalBlock(scope: !292, file: !1, line: 105, column: 2)
!298 = !DILocation(line: 106, column: 7, scope: !296)
!299 = !DILocation(line: 106, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !1, line: 106, column: 3)
!301 = !DILocation(line: 106, column: 12, scope: !300)
!302 = !DILocation(line: 106, column: 3, scope: !296)
!303 = !DILocation(line: 108, column: 30, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !1, line: 107, column: 3)
!305 = !DILocation(line: 108, column: 37, scope: !304)
!306 = !DILocation(line: 108, column: 46, scope: !304)
!307 = !DILocation(line: 108, column: 52, scope: !304)
!308 = !DILocation(line: 108, column: 50, scope: !304)
!309 = !DILocation(line: 108, column: 45, scope: !304)
!310 = !DILocation(line: 108, column: 43, scope: !304)
!311 = !DILocation(line: 108, column: 58, scope: !304)
!312 = !DILocation(line: 108, column: 74, scope: !304)
!313 = !DILocation(line: 108, column: 72, scope: !304)
!314 = !DILocation(line: 108, column: 22, scope: !304)
!315 = !DILocation(line: 108, column: 4, scope: !304)
!316 = !DILocation(line: 108, column: 11, scope: !304)
!317 = !DILocation(line: 108, column: 12, scope: !304)
!318 = !DILocation(line: 108, column: 17, scope: !304)
!319 = !DILocation(line: 108, column: 15, scope: !304)
!320 = !DILocation(line: 108, column: 20, scope: !304)
!321 = !DILocation(line: 113, column: 3, scope: !304)
!322 = !DILocation(line: 106, column: 16, scope: !300)
!323 = !DILocation(line: 106, column: 3, scope: !300)
!324 = distinct !{!324, !302, !325}
!325 = !DILocation(line: 113, column: 3, scope: !296)
!326 = !DILocation(line: 114, column: 2, scope: !297)
!327 = !DILocation(line: 104, column: 15, scope: !292)
!328 = !DILocation(line: 104, column: 2, scope: !292)
!329 = distinct !{!329, !294, !330}
!330 = !DILocation(line: 114, column: 2, scope: !289)
!331 = !DILocation(line: 119, column: 11, scope: !208)
!332 = !DILocation(line: 119, column: 24, scope: !208)
!333 = !DILocation(line: 119, column: 38, scope: !208)
!334 = !DILocation(line: 119, column: 2, scope: !208)
!335 = !DILocation(line: 124, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !208, file: !1, line: 124, column: 2)
!337 = !DILocation(line: 124, column: 6, scope: !336)
!338 = !DILocation(line: 124, column: 10, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !1, line: 124, column: 2)
!340 = !DILocation(line: 124, column: 11, scope: !339)
!341 = !DILocation(line: 124, column: 2, scope: !336)
!342 = !DILocation(line: 126, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 126, column: 4)
!344 = distinct !DILexicalBlock(scope: !339, file: !1, line: 125, column: 3)
!345 = !DILocation(line: 126, column: 8, scope: !343)
!346 = !DILocation(line: 126, column: 12, scope: !347)
!347 = distinct !DILexicalBlock(scope: !343, file: !1, line: 126, column: 4)
!348 = !DILocation(line: 126, column: 13, scope: !347)
!349 = !DILocation(line: 126, column: 4, scope: !343)
!350 = !DILocation(line: 128, column: 32, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 127, column: 4)
!352 = !DILocation(line: 128, column: 35, scope: !351)
!353 = !DILocation(line: 128, column: 38, scope: !351)
!354 = !DILocation(line: 128, column: 46, scope: !351)
!355 = !DILocation(line: 128, column: 47, scope: !351)
!356 = !DILocation(line: 128, column: 55, scope: !351)
!357 = !DILocation(line: 128, column: 53, scope: !351)
!358 = !DILocation(line: 128, column: 59, scope: !351)
!359 = !DILocation(line: 128, column: 68, scope: !351)
!360 = !DILocation(line: 128, column: 70, scope: !351)
!361 = !DILocation(line: 129, column: 15, scope: !351)
!362 = !DILocation(line: 129, column: 13, scope: !351)
!363 = !DILocation(line: 128, column: 5, scope: !351)
!364 = !DILocation(line: 130, column: 4, scope: !351)
!365 = !DILocation(line: 126, column: 17, scope: !347)
!366 = !DILocation(line: 126, column: 4, scope: !347)
!367 = distinct !{!367, !349, !368}
!368 = !DILocation(line: 130, column: 4, scope: !343)
!369 = !DILocation(line: 131, column: 3, scope: !344)
!370 = !DILocation(line: 124, column: 17, scope: !339)
!371 = !DILocation(line: 124, column: 2, scope: !339)
!372 = distinct !{!372, !341, !373}
!373 = !DILocation(line: 131, column: 3, scope: !336)
!374 = !DILocation(line: 132, column: 2, scope: !208)
!375 = !DILocation(line: 134, column: 2, scope: !208)
