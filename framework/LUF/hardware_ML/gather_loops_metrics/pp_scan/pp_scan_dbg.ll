; ModuleID = 'pp_scan.c'
source_filename = "pp_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%u\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print(i32* %a, i32 %size) #0 !dbg !11 {
entry:
  %a.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %i, align 4, !dbg !20
  br label %for.cond, !dbg !22

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !23
  %1 = load i32, i32* %size.addr, align 4, !dbg !25
  %cmp = icmp slt i32 %0, %1, !dbg !26
  br i1 %cmp, label %for.body, label %for.end, !dbg !27

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %a.addr, align 8, !dbg !28
  %3 = load i32, i32* %i, align 4, !dbg !29
  %idxprom = sext i32 %3 to i64, !dbg !28
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !28
  %4 = load i32, i32* %arrayidx, align 4, !dbg !28
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4), !dbg !30
  br label %for.inc, !dbg !30

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !31
  %inc = add nsw i32 %5, 1, !dbg !31
  store i32 %inc, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !32, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  ret void, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @local_scan(i32* %bucket) #0 !dbg !36 {
entry:
  %bucket.addr = alloca i32*, align 8
  %radixID = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %bucket, i32** %bucket.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bucket.addr, metadata !39, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %radixID, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !DIExpression()), !dbg !44
  br label %loop1_outer, !dbg !45

loop1_outer:                                      ; preds = %entry
  call void @llvm.dbg.label(metadata !46), !dbg !47
  store i32 0, i32* %radixID, align 4, !dbg !48
  br label %for.cond, !dbg !50

for.cond:                                         ; preds = %for.inc9, %loop1_outer
  %0 = load i32, i32* %radixID, align 4, !dbg !51
  %cmp = icmp slt i32 %0, 128, !dbg !53
  br i1 %cmp, label %for.body, label %for.end11, !dbg !54

for.body:                                         ; preds = %for.cond
  br label %loop1_inner, !dbg !54

loop1_inner:                                      ; preds = %for.body
  call void @llvm.dbg.label(metadata !55), !dbg !56
  store i32 1, i32* %i, align 4, !dbg !57
  br label %for.cond1, !dbg !59

for.cond1:                                        ; preds = %for.inc, %loop1_inner
  %1 = load i32, i32* %i, align 4, !dbg !60
  %cmp2 = icmp slt i32 %1, 16, !dbg !62
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !63

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %bucket.addr, align 8, !dbg !64
  %3 = load i32, i32* %radixID, align 4, !dbg !66
  %mul = mul nsw i32 %3, 16, !dbg !67
  %4 = load i32, i32* %i, align 4, !dbg !68
  %add = add nsw i32 %mul, %4, !dbg !69
  %sub = sub nsw i32 %add, 1, !dbg !70
  %idxprom = sext i32 %sub to i64, !dbg !64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !64
  %5 = load i32, i32* %arrayidx, align 4, !dbg !64
  %6 = load i32*, i32** %bucket.addr, align 8, !dbg !71
  %7 = load i32, i32* %radixID, align 4, !dbg !72
  %mul4 = mul nsw i32 %7, 16, !dbg !73
  %8 = load i32, i32* %i, align 4, !dbg !74
  %add5 = add nsw i32 %mul4, %8, !dbg !75
  %idxprom6 = sext i32 %add5 to i64, !dbg !71
  %arrayidx7 = getelementptr inbounds i32, i32* %6, i64 %idxprom6, !dbg !71
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !76
  %add8 = add nsw i32 %9, %5, !dbg !76
  store i32 %add8, i32* %arrayidx7, align 4, !dbg !76
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %i, align 4, !dbg !78
  %inc = add nsw i32 %10, 1, !dbg !78
  store i32 %inc, i32* %i, align 4, !dbg !78
  br label %for.cond1, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond1
  br label %for.inc9, !dbg !81

for.inc9:                                         ; preds = %for.end
  %11 = load i32, i32* %radixID, align 4, !dbg !82
  %inc10 = add nsw i32 %11, 1, !dbg !82
  store i32 %inc10, i32* %radixID, align 4, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end11:                                        ; preds = %for.cond
  ret void, !dbg !86
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sum_scan(i32* %sum, i32* %bucket) #0 !dbg !87 {
entry:
  %sum.addr = alloca i32*, align 8
  %bucket.addr = alloca i32*, align 8
  %radixID = alloca i32, align 4
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !90, metadata !DIExpression()), !dbg !91
  store i32* %bucket, i32** %bucket.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bucket.addr, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %radixID, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !96
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0, !dbg !96
  store i32 0, i32* %arrayidx, align 4, !dbg !97
  br label %loop2, !dbg !96

loop2:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !98), !dbg !99
  store i32 1, i32* %radixID, align 4, !dbg !100
  br label %for.cond, !dbg !102

for.cond:                                         ; preds = %for.inc, %loop2
  %1 = load i32, i32* %radixID, align 4, !dbg !103
  %cmp = icmp slt i32 %1, 128, !dbg !105
  br i1 %cmp, label %for.body, label %for.end, !dbg !106

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !107
  %3 = load i32, i32* %radixID, align 4, !dbg !108
  %sub = sub nsw i32 %3, 1, !dbg !109
  %idxprom = sext i32 %sub to i64, !dbg !107
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !107
  %4 = load i32, i32* %arrayidx1, align 4, !dbg !107
  %5 = load i32*, i32** %bucket.addr, align 8, !dbg !110
  %6 = load i32, i32* %radixID, align 4, !dbg !111
  %mul = mul nsw i32 %6, 16, !dbg !112
  %sub2 = sub nsw i32 %mul, 1, !dbg !113
  %idxprom3 = sext i32 %sub2 to i64, !dbg !110
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom3, !dbg !110
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !110
  %add = add nsw i32 %4, %7, !dbg !114
  %8 = load i32*, i32** %sum.addr, align 8, !dbg !115
  %9 = load i32, i32* %radixID, align 4, !dbg !116
  %idxprom5 = sext i32 %9 to i64, !dbg !115
  %arrayidx6 = getelementptr inbounds i32, i32* %8, i64 %idxprom5, !dbg !115
  store i32 %add, i32* %arrayidx6, align 4, !dbg !117
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %radixID, align 4, !dbg !118
  %inc = add nsw i32 %10, 1, !dbg !118
  store i32 %inc, i32* %radixID, align 4, !dbg !118
  br label %for.cond, !dbg !119, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  ret void, !dbg !122
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @last_step_scan(i32* %bucket, i32* %bucket2, i32* %sum) #0 !dbg !123 {
entry:
  %bucket.addr = alloca i32*, align 8
  %bucket2.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %radixID = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %bucket, i32** %bucket.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bucket.addr, metadata !126, metadata !DIExpression()), !dbg !127
  store i32* %bucket2, i32** %bucket2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bucket2.addr, metadata !128, metadata !DIExpression()), !dbg !129
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %radixID, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %i, metadata !134, metadata !DIExpression()), !dbg !135
  br label %loop3_outer, !dbg !136

loop3_outer:                                      ; preds = %entry
  call void @llvm.dbg.label(metadata !137), !dbg !138
  store i32 0, i32* %radixID, align 4, !dbg !139
  br label %for.cond, !dbg !141

for.cond:                                         ; preds = %for.inc11, %loop3_outer
  %0 = load i32, i32* %radixID, align 4, !dbg !142
  %cmp = icmp slt i32 %0, 128, !dbg !144
  br i1 %cmp, label %for.body, label %for.end13, !dbg !145

for.body:                                         ; preds = %for.cond
  br label %loop3_inner, !dbg !145

loop3_inner:                                      ; preds = %for.body
  call void @llvm.dbg.label(metadata !146), !dbg !147
  store i32 0, i32* %i, align 4, !dbg !148
  br label %for.cond1, !dbg !150

for.cond1:                                        ; preds = %for.inc, %loop3_inner
  %1 = load i32, i32* %i, align 4, !dbg !151
  %cmp2 = icmp slt i32 %1, 16, !dbg !153
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !154

for.body3:                                        ; preds = %for.cond1
  %2 = load i32*, i32** %bucket.addr, align 8, !dbg !155
  %3 = load i32, i32* %radixID, align 4, !dbg !157
  %mul = mul nsw i32 %3, 16, !dbg !158
  %4 = load i32, i32* %i, align 4, !dbg !159
  %add = add nsw i32 %mul, %4, !dbg !160
  %idxprom = sext i32 %add to i64, !dbg !155
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !155
  %5 = load i32, i32* %arrayidx, align 4, !dbg !155
  %6 = load i32*, i32** %sum.addr, align 8, !dbg !161
  %7 = load i32, i32* %radixID, align 4, !dbg !162
  %idxprom4 = sext i32 %7 to i64, !dbg !161
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4, !dbg !161
  %8 = load i32, i32* %arrayidx5, align 4, !dbg !161
  %add6 = add nsw i32 %5, %8, !dbg !163
  %9 = load i32*, i32** %bucket2.addr, align 8, !dbg !164
  %10 = load i32, i32* %radixID, align 4, !dbg !165
  %mul7 = mul nsw i32 %10, 16, !dbg !166
  %11 = load i32, i32* %i, align 4, !dbg !167
  %add8 = add nsw i32 %mul7, %11, !dbg !168
  %idxprom9 = sext i32 %add8 to i64, !dbg !164
  %arrayidx10 = getelementptr inbounds i32, i32* %9, i64 %idxprom9, !dbg !164
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !169
  br label %for.inc, !dbg !170

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %i, align 4, !dbg !171
  %inc = add nsw i32 %12, 1, !dbg !171
  store i32 %inc, i32* %i, align 4, !dbg !171
  br label %for.cond1, !dbg !172, !llvm.loop !173

for.end:                                          ; preds = %for.cond1
  br label %for.inc11, !dbg !174

for.inc11:                                        ; preds = %for.end
  %13 = load i32, i32* %radixID, align 4, !dbg !175
  %inc12 = add nsw i32 %13, 1, !dbg !175
  store i32 %inc12, i32* %radixID, align 4, !dbg !175
  br label %for.cond, !dbg !176, !llvm.loop !177

for.end13:                                        ; preds = %for.cond
  ret void, !dbg !179
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pp_scan(i32* %bucket, i32* %bucket2, i32* %sum) #0 !dbg !180 {
entry:
  %bucket.addr = alloca i32*, align 8
  %bucket2.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %bucket, i32** %bucket.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bucket.addr, metadata !181, metadata !DIExpression()), !dbg !182
  store i32* %bucket2, i32** %bucket2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bucket2.addr, metadata !183, metadata !DIExpression()), !dbg !184
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = load i32*, i32** %bucket.addr, align 8, !dbg !187
  call void @local_scan(i32* %0), !dbg !188
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !189
  %2 = load i32*, i32** %bucket.addr, align 8, !dbg !190
  call void @sum_scan(i32* %1, i32* %2), !dbg !191
  %3 = load i32*, i32** %bucket.addr, align 8, !dbg !192
  %4 = load i32*, i32** %bucket2.addr, align 8, !dbg !193
  %5 = load i32*, i32** %sum.addr, align 8, !dbg !194
  call void @last_step_scan(i32* %3, i32* %4, i32* %5), !dbg !195
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !197 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %bucket = alloca i32*, align 8
  %bucket2 = alloca i32*, align 8
  %sum = alloca [128 x i32], align 16
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata i32** %bucket, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i32** %bucket2, metadata !204, metadata !DIExpression()), !dbg !205
  %call = call noalias i8* @malloc(i64 8192) #4, !dbg !206
  %0 = bitcast i8* %call to i32*, !dbg !207
  store i32* %0, i32** %bucket, align 8, !dbg !208
  %call1 = call noalias i8* @malloc(i64 8192) #4, !dbg !209
  %1 = bitcast i8* %call1 to i32*, !dbg !210
  store i32* %1, i32** %bucket2, align 8, !dbg !211
  call void @llvm.dbg.declare(metadata [128 x i32]* %sum, metadata !212, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %max, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %min, metadata !219, metadata !DIExpression()), !dbg !220
  call void @srand(i32 8650341) #4, !dbg !221
  store i32 2048, i32* %max, align 4, !dbg !222
  store i32 0, i32* %min, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !224
  br label %for.cond, !dbg !226

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !227
  %cmp = icmp slt i32 %2, 2048, !dbg !229
  br i1 %cmp, label %for.body, label %for.end, !dbg !230

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #4, !dbg !231
  %conv = sitofp i32 %call2 to double, !dbg !233
  %div = fdiv double %conv, 0x41DFFFFFFFC00000, !dbg !234
  %3 = load i32, i32* %max, align 4, !dbg !235
  %4 = load i32, i32* %min, align 4, !dbg !236
  %sub = sub nsw i32 %3, %4, !dbg !237
  %conv3 = sitofp i32 %sub to double, !dbg !238
  %mul = fmul double %div, %conv3, !dbg !239
  %5 = load i32, i32* %min, align 4, !dbg !240
  %conv4 = sitofp i32 %5 to double, !dbg !240
  %add = fadd double %mul, %conv4, !dbg !241
  %conv5 = fptosi double %add to i32, !dbg !242
  %6 = load i32*, i32** %bucket, align 8, !dbg !243
  %7 = load i32, i32* %i, align 4, !dbg !244
  %idxprom = sext i32 %7 to i64, !dbg !243
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom, !dbg !243
  store i32 %conv5, i32* %arrayidx, align 4, !dbg !245
  %call6 = call i32 @rand() #4, !dbg !246
  %conv7 = sitofp i32 %call6 to double, !dbg !247
  %div8 = fdiv double %conv7, 0x41DFFFFFFFC00000, !dbg !248
  %8 = load i32, i32* %max, align 4, !dbg !249
  %9 = load i32, i32* %min, align 4, !dbg !250
  %sub9 = sub nsw i32 %8, %9, !dbg !251
  %conv10 = sitofp i32 %sub9 to double, !dbg !252
  %mul11 = fmul double %div8, %conv10, !dbg !253
  %10 = load i32, i32* %min, align 4, !dbg !254
  %conv12 = sitofp i32 %10 to double, !dbg !254
  %add13 = fadd double %mul11, %conv12, !dbg !255
  %conv14 = fptosi double %add13 to i32, !dbg !256
  %11 = load i32*, i32** %bucket2, align 8, !dbg !257
  %12 = load i32, i32* %i, align 4, !dbg !258
  %idxprom15 = sext i32 %12 to i64, !dbg !257
  %arrayidx16 = getelementptr inbounds i32, i32* %11, i64 %idxprom15, !dbg !257
  store i32 %conv14, i32* %arrayidx16, align 4, !dbg !259
  br label %for.inc, !dbg !260

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !261
  %inc = add nsw i32 %13, 1, !dbg !261
  store i32 %inc, i32* %i, align 4, !dbg !261
  br label %for.cond, !dbg !262, !llvm.loop !263

for.end:                                          ; preds = %for.cond
  %14 = load i32*, i32** %bucket, align 8, !dbg !265
  %arrayidx17 = getelementptr inbounds i32, i32* %14, i64 0, !dbg !265
  call void @print(i32* %arrayidx17, i32 1), !dbg !266
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !267
  %15 = load i32*, i32** %bucket, align 8, !dbg !268
  %16 = load i32*, i32** %bucket2, align 8, !dbg !269
  %arraydecay = getelementptr inbounds [128 x i32], [128 x i32]* %sum, i64 0, i64 0, !dbg !270
  call void @pp_scan(i32* %15, i32* %16, i32* %arraydecay), !dbg !271
  %17 = load i32*, i32** %bucket, align 8, !dbg !272
  %arrayidx19 = getelementptr inbounds i32, i32* %17, i64 0, !dbg !272
  call void @print(i32* %arrayidx19, i32 2), !dbg !273
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !274
  ret i32 0, !dbg !275
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
!1 = !DIFile(filename: "pp_scan.c", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/pp_scan")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "print", scope: !1, file: !1, line: 7, type: !12, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !4, !5}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !11, file: !1, line: 7, type: !4)
!15 = !DILocation(line: 7, column: 17, scope: !11)
!16 = !DILocalVariable(name: "size", arg: 2, scope: !11, file: !1, line: 7, type: !5)
!17 = !DILocation(line: 7, column: 24, scope: !11)
!18 = !DILocalVariable(name: "i", scope: !11, file: !1, line: 9, type: !5)
!19 = !DILocation(line: 9, column: 6, scope: !11)
!20 = !DILocation(line: 10, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !11, file: !1, line: 10, column: 2)
!22 = !DILocation(line: 10, column: 7, scope: !21)
!23 = !DILocation(line: 10, column: 14, scope: !24)
!24 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 2)
!25 = !DILocation(line: 10, column: 18, scope: !24)
!26 = !DILocation(line: 10, column: 16, scope: !24)
!27 = !DILocation(line: 10, column: 2, scope: !21)
!28 = !DILocation(line: 11, column: 18, scope: !24)
!29 = !DILocation(line: 11, column: 20, scope: !24)
!30 = !DILocation(line: 11, column: 3, scope: !24)
!31 = !DILocation(line: 10, column: 25, scope: !24)
!32 = !DILocation(line: 10, column: 2, scope: !24)
!33 = distinct !{!33, !27, !34}
!34 = !DILocation(line: 11, column: 22, scope: !21)
!35 = !DILocation(line: 12, column: 1, scope: !11)
!36 = distinct !DISubprogram(name: "local_scan", scope: !1, file: !1, line: 15, type: !37, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !4}
!39 = !DILocalVariable(name: "bucket", arg: 1, scope: !36, file: !1, line: 15, type: !4)
!40 = !DILocation(line: 15, column: 21, scope: !36)
!41 = !DILocalVariable(name: "radixID", scope: !36, file: !1, line: 17, type: !5)
!42 = !DILocation(line: 17, column: 7, scope: !36)
!43 = !DILocalVariable(name: "i", scope: !36, file: !1, line: 17, type: !5)
!44 = !DILocation(line: 17, column: 16, scope: !36)
!45 = !DILocation(line: 17, column: 3, scope: !36)
!46 = !DILabel(scope: !36, name: "loop1_outer", file: !1, line: 18)
!47 = !DILocation(line: 18, column: 3, scope: !36)
!48 = !DILocation(line: 18, column: 28, scope: !49)
!49 = distinct !DILexicalBlock(scope: !36, file: !1, line: 18, column: 15)
!50 = !DILocation(line: 18, column: 20, scope: !49)
!51 = !DILocation(line: 18, column: 33, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 15)
!53 = !DILocation(line: 18, column: 41, scope: !52)
!54 = !DILocation(line: 18, column: 15, scope: !49)
!55 = !DILabel(scope: !52, name: "loop1_inner", file: !1, line: 19)
!56 = !DILocation(line: 19, column: 5, scope: !52)
!57 = !DILocation(line: 19, column: 24, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !1, line: 19, column: 17)
!59 = !DILocation(line: 19, column: 22, scope: !58)
!60 = !DILocation(line: 19, column: 29, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 19, column: 17)
!62 = !DILocation(line: 19, column: 31, scope: !61)
!63 = !DILocation(line: 19, column: 17, scope: !58)
!64 = !DILocation(line: 21, column: 43, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 20, column: 5)
!66 = !DILocation(line: 21, column: 50, scope: !65)
!67 = !DILocation(line: 21, column: 58, scope: !65)
!68 = !DILocation(line: 21, column: 73, scope: !65)
!69 = !DILocation(line: 21, column: 71, scope: !65)
!70 = !DILocation(line: 21, column: 75, scope: !65)
!71 = !DILocation(line: 21, column: 7, scope: !65)
!72 = !DILocation(line: 21, column: 14, scope: !65)
!73 = !DILocation(line: 21, column: 22, scope: !65)
!74 = !DILocation(line: 21, column: 37, scope: !65)
!75 = !DILocation(line: 21, column: 35, scope: !65)
!76 = !DILocation(line: 21, column: 40, scope: !65)
!77 = !DILocation(line: 22, column: 5, scope: !65)
!78 = !DILocation(line: 19, column: 45, scope: !61)
!79 = !DILocation(line: 19, column: 17, scope: !61)
!80 = distinct !{!80, !63, !81}
!81 = !DILocation(line: 22, column: 5, scope: !58)
!82 = !DILocation(line: 18, column: 55, scope: !52)
!83 = !DILocation(line: 18, column: 15, scope: !52)
!84 = distinct !{!84, !54, !85}
!85 = !DILocation(line: 22, column: 5, scope: !49)
!86 = !DILocation(line: 23, column: 1, scope: !36)
!87 = distinct !DISubprogram(name: "sum_scan", scope: !1, file: !1, line: 25, type: !88, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !4, !4}
!90 = !DILocalVariable(name: "sum", arg: 1, scope: !87, file: !1, line: 25, type: !4)
!91 = !DILocation(line: 25, column: 19, scope: !87)
!92 = !DILocalVariable(name: "bucket", arg: 2, scope: !87, file: !1, line: 25, type: !4)
!93 = !DILocation(line: 25, column: 40, scope: !87)
!94 = !DILocalVariable(name: "radixID", scope: !87, file: !1, line: 27, type: !5)
!95 = !DILocation(line: 27, column: 7, scope: !87)
!96 = !DILocation(line: 28, column: 3, scope: !87)
!97 = !DILocation(line: 28, column: 10, scope: !87)
!98 = !DILabel(scope: !87, name: "loop2", file: !1, line: 29)
!99 = !DILocation(line: 29, column: 3, scope: !87)
!100 = !DILocation(line: 29, column: 22, scope: !101)
!101 = distinct !DILexicalBlock(scope: !87, file: !1, line: 29, column: 9)
!102 = !DILocation(line: 29, column: 14, scope: !101)
!103 = !DILocation(line: 29, column: 27, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 29, column: 9)
!105 = !DILocation(line: 29, column: 35, scope: !104)
!106 = !DILocation(line: 29, column: 9, scope: !101)
!107 = !DILocation(line: 30, column: 20, scope: !104)
!108 = !DILocation(line: 30, column: 24, scope: !104)
!109 = !DILocation(line: 30, column: 32, scope: !104)
!110 = !DILocation(line: 30, column: 38, scope: !104)
!111 = !DILocation(line: 30, column: 45, scope: !104)
!112 = !DILocation(line: 30, column: 53, scope: !104)
!113 = !DILocation(line: 30, column: 66, scope: !104)
!114 = !DILocation(line: 30, column: 36, scope: !104)
!115 = !DILocation(line: 30, column: 5, scope: !104)
!116 = !DILocation(line: 30, column: 9, scope: !104)
!117 = !DILocation(line: 30, column: 18, scope: !104)
!118 = !DILocation(line: 29, column: 49, scope: !104)
!119 = !DILocation(line: 29, column: 9, scope: !104)
!120 = distinct !{!120, !106, !121}
!121 = !DILocation(line: 30, column: 69, scope: !101)
!122 = !DILocation(line: 31, column: 1, scope: !87)
!123 = distinct !DISubprogram(name: "last_step_scan", scope: !1, file: !1, line: 33, type: !124, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !4, !4, !4}
!126 = !DILocalVariable(name: "bucket", arg: 1, scope: !123, file: !1, line: 33, type: !4)
!127 = !DILocation(line: 33, column: 25, scope: !123)
!128 = !DILocalVariable(name: "bucket2", arg: 2, scope: !123, file: !1, line: 33, type: !4)
!129 = !DILocation(line: 33, column: 49, scope: !123)
!130 = !DILocalVariable(name: "sum", arg: 3, scope: !123, file: !1, line: 33, type: !4)
!131 = !DILocation(line: 33, column: 74, scope: !123)
!132 = !DILocalVariable(name: "radixID", scope: !123, file: !1, line: 35, type: !5)
!133 = !DILocation(line: 35, column: 7, scope: !123)
!134 = !DILocalVariable(name: "i", scope: !123, file: !1, line: 35, type: !5)
!135 = !DILocation(line: 35, column: 16, scope: !123)
!136 = !DILocation(line: 35, column: 3, scope: !123)
!137 = !DILabel(scope: !123, name: "loop3_outer", file: !1, line: 36)
!138 = !DILocation(line: 36, column: 3, scope: !123)
!139 = !DILocation(line: 36, column: 28, scope: !140)
!140 = distinct !DILexicalBlock(scope: !123, file: !1, line: 36, column: 15)
!141 = !DILocation(line: 36, column: 20, scope: !140)
!142 = !DILocation(line: 36, column: 33, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !1, line: 36, column: 15)
!144 = !DILocation(line: 36, column: 41, scope: !143)
!145 = !DILocation(line: 36, column: 15, scope: !140)
!146 = !DILabel(scope: !143, name: "loop3_inner", file: !1, line: 37)
!147 = !DILocation(line: 37, column: 5, scope: !143)
!148 = !DILocation(line: 37, column: 24, scope: !149)
!149 = distinct !DILexicalBlock(scope: !143, file: !1, line: 37, column: 17)
!150 = !DILocation(line: 37, column: 22, scope: !149)
!151 = !DILocation(line: 37, column: 29, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 37, column: 17)
!153 = !DILocation(line: 37, column: 31, scope: !152)
!154 = !DILocation(line: 37, column: 17, scope: !149)
!155 = !DILocation(line: 40, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 38, column: 5)
!157 = !DILocation(line: 40, column: 16, scope: !156)
!158 = !DILocation(line: 40, column: 24, scope: !156)
!159 = !DILocation(line: 40, column: 39, scope: !156)
!160 = !DILocation(line: 40, column: 37, scope: !156)
!161 = !DILocation(line: 40, column: 45, scope: !156)
!162 = !DILocation(line: 40, column: 49, scope: !156)
!163 = !DILocation(line: 40, column: 43, scope: !156)
!164 = !DILocation(line: 39, column: 7, scope: !156)
!165 = !DILocation(line: 39, column: 15, scope: !156)
!166 = !DILocation(line: 39, column: 23, scope: !156)
!167 = !DILocation(line: 39, column: 38, scope: !156)
!168 = !DILocation(line: 39, column: 36, scope: !156)
!169 = !DILocation(line: 39, column: 41, scope: !156)
!170 = !DILocation(line: 41, column: 5, scope: !156)
!171 = !DILocation(line: 37, column: 45, scope: !152)
!172 = !DILocation(line: 37, column: 17, scope: !152)
!173 = distinct !{!173, !154, !174}
!174 = !DILocation(line: 41, column: 5, scope: !149)
!175 = !DILocation(line: 36, column: 55, scope: !143)
!176 = !DILocation(line: 36, column: 15, scope: !143)
!177 = distinct !{!177, !145, !178}
!178 = !DILocation(line: 41, column: 5, scope: !140)
!179 = !DILocation(line: 43, column: 1, scope: !123)
!180 = distinct !DISubprogram(name: "pp_scan", scope: !1, file: !1, line: 44, type: !124, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!181 = !DILocalVariable(name: "bucket", arg: 1, scope: !180, file: !1, line: 44, type: !4)
!182 = !DILocation(line: 44, column: 18, scope: !180)
!183 = !DILocalVariable(name: "bucket2", arg: 2, scope: !180, file: !1, line: 44, type: !4)
!184 = !DILocation(line: 44, column: 42, scope: !180)
!185 = !DILocalVariable(name: "sum", arg: 3, scope: !180, file: !1, line: 45, type: !4)
!186 = !DILocation(line: 45, column: 7, scope: !180)
!187 = !DILocation(line: 51, column: 14, scope: !180)
!188 = !DILocation(line: 51, column: 3, scope: !180)
!189 = !DILocation(line: 52, column: 12, scope: !180)
!190 = !DILocation(line: 52, column: 17, scope: !180)
!191 = !DILocation(line: 52, column: 3, scope: !180)
!192 = !DILocation(line: 53, column: 18, scope: !180)
!193 = !DILocation(line: 53, column: 26, scope: !180)
!194 = !DILocation(line: 53, column: 35, scope: !180)
!195 = !DILocation(line: 53, column: 3, scope: !180)
!196 = !DILocation(line: 58, column: 1, scope: !180)
!197 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !198, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!198 = !DISubroutineType(types: !199)
!199 = !{!5}
!200 = !DILocalVariable(name: "i", scope: !197, file: !1, line: 62, type: !5)
!201 = !DILocation(line: 62, column: 6, scope: !197)
!202 = !DILocalVariable(name: "bucket", scope: !197, file: !1, line: 63, type: !4)
!203 = !DILocation(line: 63, column: 9, scope: !197)
!204 = !DILocalVariable(name: "bucket2", scope: !197, file: !1, line: 64, type: !4)
!205 = !DILocation(line: 64, column: 9, scope: !197)
!206 = !DILocation(line: 65, column: 19, scope: !197)
!207 = !DILocation(line: 65, column: 12, scope: !197)
!208 = !DILocation(line: 65, column: 10, scope: !197)
!209 = !DILocation(line: 66, column: 20, scope: !197)
!210 = !DILocation(line: 66, column: 13, scope: !197)
!211 = !DILocation(line: 66, column: 11, scope: !197)
!212 = !DILocalVariable(name: "sum", scope: !197, file: !1, line: 67, type: !213)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 4096, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 128)
!216 = !DILocation(line: 67, column: 7, scope: !197)
!217 = !DILocalVariable(name: "max", scope: !197, file: !1, line: 68, type: !5)
!218 = !DILocation(line: 68, column: 7, scope: !197)
!219 = !DILocalVariable(name: "min", scope: !197, file: !1, line: 68, type: !5)
!220 = !DILocation(line: 68, column: 12, scope: !197)
!221 = !DILocation(line: 69, column: 2, scope: !197)
!222 = !DILocation(line: 70, column: 7, scope: !197)
!223 = !DILocation(line: 71, column: 7, scope: !197)
!224 = !DILocation(line: 72, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !197, file: !1, line: 72, column: 3)
!226 = !DILocation(line: 72, column: 7, scope: !225)
!227 = !DILocation(line: 72, column: 12, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 72, column: 3)
!229 = !DILocation(line: 72, column: 13, scope: !228)
!230 = !DILocation(line: 72, column: 3, scope: !225)
!231 = !DILocation(line: 73, column: 34, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !1, line: 72, column: 21)
!233 = !DILocation(line: 73, column: 25, scope: !232)
!234 = !DILocation(line: 73, column: 41, scope: !232)
!235 = !DILocation(line: 73, column: 58, scope: !232)
!236 = !DILocation(line: 73, column: 62, scope: !232)
!237 = !DILocation(line: 73, column: 61, scope: !232)
!238 = !DILocation(line: 73, column: 57, scope: !232)
!239 = !DILocation(line: 73, column: 55, scope: !232)
!240 = !DILocation(line: 73, column: 69, scope: !232)
!241 = !DILocation(line: 73, column: 67, scope: !232)
!242 = !DILocation(line: 73, column: 17, scope: !232)
!243 = !DILocation(line: 73, column: 5, scope: !232)
!244 = !DILocation(line: 73, column: 12, scope: !232)
!245 = !DILocation(line: 73, column: 15, scope: !232)
!246 = !DILocation(line: 74, column: 35, scope: !232)
!247 = !DILocation(line: 74, column: 26, scope: !232)
!248 = !DILocation(line: 74, column: 42, scope: !232)
!249 = !DILocation(line: 74, column: 59, scope: !232)
!250 = !DILocation(line: 74, column: 63, scope: !232)
!251 = !DILocation(line: 74, column: 62, scope: !232)
!252 = !DILocation(line: 74, column: 58, scope: !232)
!253 = !DILocation(line: 74, column: 56, scope: !232)
!254 = !DILocation(line: 74, column: 70, scope: !232)
!255 = !DILocation(line: 74, column: 68, scope: !232)
!256 = !DILocation(line: 74, column: 18, scope: !232)
!257 = !DILocation(line: 74, column: 5, scope: !232)
!258 = !DILocation(line: 74, column: 13, scope: !232)
!259 = !DILocation(line: 74, column: 16, scope: !232)
!260 = !DILocation(line: 75, column: 3, scope: !232)
!261 = !DILocation(line: 72, column: 18, scope: !228)
!262 = !DILocation(line: 72, column: 3, scope: !228)
!263 = distinct !{!263, !230, !264}
!264 = !DILocation(line: 75, column: 3, scope: !225)
!265 = !DILocation(line: 77, column: 9, scope: !197)
!266 = !DILocation(line: 77, column: 2, scope: !197)
!267 = !DILocation(line: 78, column: 2, scope: !197)
!268 = !DILocation(line: 83, column: 10, scope: !197)
!269 = !DILocation(line: 83, column: 18, scope: !197)
!270 = !DILocation(line: 83, column: 27, scope: !197)
!271 = !DILocation(line: 83, column: 2, scope: !197)
!272 = !DILocation(line: 88, column: 9, scope: !197)
!273 = !DILocation(line: 88, column: 2, scope: !197)
!274 = !DILocation(line: 89, column: 2, scope: !197)
!275 = !DILocation(line: 91, column: 2, scope: !197)
