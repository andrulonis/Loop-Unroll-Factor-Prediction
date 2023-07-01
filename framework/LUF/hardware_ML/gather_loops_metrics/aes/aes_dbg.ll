; ModuleID = 'aes.c'
source_filename = "aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aes256_context = type { [32 x i8], [32 x i8], [32 x i8] }

@sbox = dso_local constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @rj_xtime(i8 zeroext %x) #0 !dbg !19 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %x.addr, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i8, i8* %x.addr, align 1, !dbg !24
  %conv = zext i8 %0 to i32, !dbg !24
  %and = and i32 %conv, 128, !dbg !25
  %tobool = icmp ne i32 %and, 0, !dbg !25
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !26

cond.true:                                        ; preds = %entry
  %1 = load i8, i8* %x.addr, align 1, !dbg !27
  %conv1 = zext i8 %1 to i32, !dbg !27
  %shl = shl i32 %conv1, 1, !dbg !28
  %xor = xor i32 %shl, 27, !dbg !29
  br label %cond.end, !dbg !26

cond.false:                                       ; preds = %entry
  %2 = load i8, i8* %x.addr, align 1, !dbg !30
  %conv2 = zext i8 %2 to i32, !dbg !30
  %shl3 = shl i32 %conv2, 1, !dbg !31
  br label %cond.end, !dbg !26

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %shl3, %cond.false ], !dbg !26
  %conv4 = trunc i32 %cond to i8, !dbg !26
  ret i8 %conv4, !dbg !32
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_subBytes(i8* %buf) #0 !dbg !33 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !37, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i8* %i, metadata !39, metadata !DIExpression()), !dbg !40
  store i8 16, i8* %i, align 1, !dbg !40
  br label %sub, !dbg !41

sub:                                              ; preds = %entry
  call void @llvm.dbg.label(metadata !42), !dbg !43
  br label %while.cond, !dbg !44

while.cond:                                       ; preds = %while.body, %sub
  %0 = load i8, i8* %i, align 1, !dbg !45
  %dec = add i8 %0, -1, !dbg !45
  store i8 %dec, i8* %i, align 1, !dbg !45
  %tobool = icmp ne i8 %0, 0, !dbg !44
  br i1 %tobool, label %while.body, label %while.end, !dbg !44

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !46
  %2 = load i8, i8* %i, align 1, !dbg !46
  %idxprom = zext i8 %2 to i64, !dbg !46
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !46
  %3 = load i8, i8* %arrayidx, align 1, !dbg !46
  %idxprom1 = zext i8 %3 to i64, !dbg !46
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom1, !dbg !46
  %4 = load i8, i8* %arrayidx2, align 1, !dbg !46
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !47
  %6 = load i8, i8* %i, align 1, !dbg !48
  %idxprom3 = zext i8 %6 to i64, !dbg !47
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3, !dbg !47
  store i8 %4, i8* %arrayidx4, align 1, !dbg !49
  br label %while.cond, !dbg !44, !llvm.loop !50

while.end:                                        ; preds = %while.cond
  ret void, !dbg !51
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_addRoundKey(i8* %buf, i8* %key) #0 !dbg !52 {
entry:
  %buf.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8* %i, metadata !59, metadata !DIExpression()), !dbg !60
  store i8 16, i8* %i, align 1, !dbg !60
  br label %addkey, !dbg !61

addkey:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !62), !dbg !63
  br label %while.cond, !dbg !64

while.cond:                                       ; preds = %while.body, %addkey
  %0 = load i8, i8* %i, align 1, !dbg !65
  %dec = add i8 %0, -1, !dbg !65
  store i8 %dec, i8* %i, align 1, !dbg !65
  %tobool = icmp ne i8 %0, 0, !dbg !64
  br i1 %tobool, label %while.body, label %while.end, !dbg !64

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %key.addr, align 8, !dbg !66
  %2 = load i8, i8* %i, align 1, !dbg !67
  %idxprom = zext i8 %2 to i64, !dbg !66
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !66
  %3 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv = zext i8 %3 to i32, !dbg !66
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !68
  %5 = load i8, i8* %i, align 1, !dbg !69
  %idxprom1 = zext i8 %5 to i64, !dbg !68
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1, !dbg !68
  %6 = load i8, i8* %arrayidx2, align 1, !dbg !70
  %conv3 = zext i8 %6 to i32, !dbg !70
  %xor = xor i32 %conv3, %conv, !dbg !70
  %conv4 = trunc i32 %xor to i8, !dbg !70
  store i8 %conv4, i8* %arrayidx2, align 1, !dbg !70
  br label %while.cond, !dbg !64, !llvm.loop !71

while.end:                                        ; preds = %while.cond
  ret void, !dbg !73
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) #0 !dbg !74 {
entry:
  %buf.addr = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %cpk.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !77, metadata !DIExpression()), !dbg !78
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !79, metadata !DIExpression()), !dbg !80
  store i8* %cpk, i8** %cpk.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cpk.addr, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i8* %i, metadata !83, metadata !DIExpression()), !dbg !84
  store i8 16, i8* %i, align 1, !dbg !84
  br label %cpkey, !dbg !85

cpkey:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !86), !dbg !87
  br label %while.cond, !dbg !88

while.cond:                                       ; preds = %while.body, %cpkey
  %0 = load i8, i8* %i, align 1, !dbg !89
  %dec = add i8 %0, -1, !dbg !89
  store i8 %dec, i8* %i, align 1, !dbg !89
  %tobool = icmp ne i8 %0, 0, !dbg !88
  br i1 %tobool, label %while.body, label %while.end, !dbg !88

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %key.addr, align 8, !dbg !90
  %2 = load i8, i8* %i, align 1, !dbg !91
  %idxprom = zext i8 %2 to i64, !dbg !90
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !90
  %3 = load i8, i8* %arrayidx, align 1, !dbg !90
  %4 = load i8*, i8** %cpk.addr, align 8, !dbg !92
  %5 = load i8, i8* %i, align 1, !dbg !93
  %idxprom1 = zext i8 %5 to i64, !dbg !92
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1, !dbg !92
  store i8 %3, i8* %arrayidx2, align 1, !dbg !94
  %conv = zext i8 %3 to i32, !dbg !95
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !96
  %7 = load i8, i8* %i, align 1, !dbg !97
  %idxprom3 = zext i8 %7 to i64, !dbg !96
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3, !dbg !96
  %8 = load i8, i8* %arrayidx4, align 1, !dbg !98
  %conv5 = zext i8 %8 to i32, !dbg !98
  %xor = xor i32 %conv5, %conv, !dbg !98
  %conv6 = trunc i32 %xor to i8, !dbg !98
  store i8 %conv6, i8* %arrayidx4, align 1, !dbg !98
  %9 = load i8*, i8** %key.addr, align 8, !dbg !99
  %10 = load i8, i8* %i, align 1, !dbg !100
  %conv7 = zext i8 %10 to i32, !dbg !100
  %add = add nsw i32 16, %conv7, !dbg !101
  %idxprom8 = sext i32 %add to i64, !dbg !99
  %arrayidx9 = getelementptr inbounds i8, i8* %9, i64 %idxprom8, !dbg !99
  %11 = load i8, i8* %arrayidx9, align 1, !dbg !99
  %12 = load i8*, i8** %cpk.addr, align 8, !dbg !102
  %13 = load i8, i8* %i, align 1, !dbg !103
  %conv10 = zext i8 %13 to i32, !dbg !103
  %add11 = add nsw i32 16, %conv10, !dbg !104
  %idxprom12 = sext i32 %add11 to i64, !dbg !102
  %arrayidx13 = getelementptr inbounds i8, i8* %12, i64 %idxprom12, !dbg !102
  store i8 %11, i8* %arrayidx13, align 1, !dbg !105
  br label %while.cond, !dbg !88, !llvm.loop !106

while.end:                                        ; preds = %while.cond
  ret void, !dbg !108
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_shiftRows(i8* %buf) #0 !dbg !109 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %j = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i8* %i, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i8* %j, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !116
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1, !dbg !116
  %1 = load i8, i8* %arrayidx, align 1, !dbg !116
  store i8 %1, i8* %i, align 1, !dbg !117
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !118
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 5, !dbg !118
  %3 = load i8, i8* %arrayidx1, align 1, !dbg !118
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !119
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !119
  store i8 %3, i8* %arrayidx2, align 1, !dbg !120
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !121
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 9, !dbg !121
  %6 = load i8, i8* %arrayidx3, align 1, !dbg !121
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !122
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 5, !dbg !122
  store i8 %6, i8* %arrayidx4, align 1, !dbg !123
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !124
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 13, !dbg !124
  %9 = load i8, i8* %arrayidx5, align 1, !dbg !124
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !125
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 9, !dbg !125
  store i8 %9, i8* %arrayidx6, align 1, !dbg !126
  %11 = load i8, i8* %i, align 1, !dbg !127
  %12 = load i8*, i8** %buf.addr, align 8, !dbg !128
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 13, !dbg !128
  store i8 %11, i8* %arrayidx7, align 1, !dbg !129
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !130
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 10, !dbg !130
  %14 = load i8, i8* %arrayidx8, align 1, !dbg !130
  store i8 %14, i8* %i, align 1, !dbg !131
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !132
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !132
  %16 = load i8, i8* %arrayidx9, align 1, !dbg !132
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !133
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 10, !dbg !133
  store i8 %16, i8* %arrayidx10, align 1, !dbg !134
  %18 = load i8, i8* %i, align 1, !dbg !135
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !136
  %arrayidx11 = getelementptr inbounds i8, i8* %19, i64 2, !dbg !136
  store i8 %18, i8* %arrayidx11, align 1, !dbg !137
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !138
  %arrayidx12 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !138
  %21 = load i8, i8* %arrayidx12, align 1, !dbg !138
  store i8 %21, i8* %j, align 1, !dbg !139
  %22 = load i8*, i8** %buf.addr, align 8, !dbg !140
  %arrayidx13 = getelementptr inbounds i8, i8* %22, i64 15, !dbg !140
  %23 = load i8, i8* %arrayidx13, align 1, !dbg !140
  %24 = load i8*, i8** %buf.addr, align 8, !dbg !141
  %arrayidx14 = getelementptr inbounds i8, i8* %24, i64 3, !dbg !141
  store i8 %23, i8* %arrayidx14, align 1, !dbg !142
  %25 = load i8*, i8** %buf.addr, align 8, !dbg !143
  %arrayidx15 = getelementptr inbounds i8, i8* %25, i64 11, !dbg !143
  %26 = load i8, i8* %arrayidx15, align 1, !dbg !143
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !144
  %arrayidx16 = getelementptr inbounds i8, i8* %27, i64 15, !dbg !144
  store i8 %26, i8* %arrayidx16, align 1, !dbg !145
  %28 = load i8*, i8** %buf.addr, align 8, !dbg !146
  %arrayidx17 = getelementptr inbounds i8, i8* %28, i64 7, !dbg !146
  %29 = load i8, i8* %arrayidx17, align 1, !dbg !146
  %30 = load i8*, i8** %buf.addr, align 8, !dbg !147
  %arrayidx18 = getelementptr inbounds i8, i8* %30, i64 11, !dbg !147
  store i8 %29, i8* %arrayidx18, align 1, !dbg !148
  %31 = load i8, i8* %j, align 1, !dbg !149
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !150
  %arrayidx19 = getelementptr inbounds i8, i8* %32, i64 7, !dbg !150
  store i8 %31, i8* %arrayidx19, align 1, !dbg !151
  %33 = load i8*, i8** %buf.addr, align 8, !dbg !152
  %arrayidx20 = getelementptr inbounds i8, i8* %33, i64 14, !dbg !152
  %34 = load i8, i8* %arrayidx20, align 1, !dbg !152
  store i8 %34, i8* %j, align 1, !dbg !153
  %35 = load i8*, i8** %buf.addr, align 8, !dbg !154
  %arrayidx21 = getelementptr inbounds i8, i8* %35, i64 6, !dbg !154
  %36 = load i8, i8* %arrayidx21, align 1, !dbg !154
  %37 = load i8*, i8** %buf.addr, align 8, !dbg !155
  %arrayidx22 = getelementptr inbounds i8, i8* %37, i64 14, !dbg !155
  store i8 %36, i8* %arrayidx22, align 1, !dbg !156
  %38 = load i8, i8* %j, align 1, !dbg !157
  %39 = load i8*, i8** %buf.addr, align 8, !dbg !158
  %arrayidx23 = getelementptr inbounds i8, i8* %39, i64 6, !dbg !158
  store i8 %38, i8* %arrayidx23, align 1, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_mixColumns(i8* %buf) #0 !dbg !161 {
entry:
  %buf.addr = alloca i8*, align 8
  %i = alloca i8, align 1
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  %c = alloca i8, align 1
  %d = alloca i8, align 1
  %e = alloca i8, align 1
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i8* %i, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i8* %a, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i8* %b, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i8* %c, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i8* %d, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i8* %e, metadata !174, metadata !DIExpression()), !dbg !175
  br label %mix, !dbg !176

mix:                                              ; preds = %entry
  call void @llvm.dbg.label(metadata !177), !dbg !178
  store i8 0, i8* %i, align 1, !dbg !179
  br label %for.cond, !dbg !181

for.cond:                                         ; preds = %for.inc, %mix
  %0 = load i8, i8* %i, align 1, !dbg !182
  %conv = zext i8 %0 to i32, !dbg !182
  %cmp = icmp slt i32 %conv, 16, !dbg !184
  br i1 %cmp, label %for.body, label %for.end, !dbg !185

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !186
  %2 = load i8, i8* %i, align 1, !dbg !188
  %idxprom = zext i8 %2 to i64, !dbg !186
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom, !dbg !186
  %3 = load i8, i8* %arrayidx, align 1, !dbg !186
  store i8 %3, i8* %a, align 1, !dbg !189
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !190
  %5 = load i8, i8* %i, align 1, !dbg !191
  %conv2 = zext i8 %5 to i32, !dbg !191
  %add = add nsw i32 %conv2, 1, !dbg !192
  %idxprom3 = sext i32 %add to i64, !dbg !190
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 %idxprom3, !dbg !190
  %6 = load i8, i8* %arrayidx4, align 1, !dbg !190
  store i8 %6, i8* %b, align 1, !dbg !193
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !194
  %8 = load i8, i8* %i, align 1, !dbg !195
  %conv5 = zext i8 %8 to i32, !dbg !195
  %add6 = add nsw i32 %conv5, 2, !dbg !196
  %idxprom7 = sext i32 %add6 to i64, !dbg !194
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 %idxprom7, !dbg !194
  %9 = load i8, i8* %arrayidx8, align 1, !dbg !194
  store i8 %9, i8* %c, align 1, !dbg !197
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !198
  %11 = load i8, i8* %i, align 1, !dbg !199
  %conv9 = zext i8 %11 to i32, !dbg !199
  %add10 = add nsw i32 %conv9, 3, !dbg !200
  %idxprom11 = sext i32 %add10 to i64, !dbg !198
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %idxprom11, !dbg !198
  %12 = load i8, i8* %arrayidx12, align 1, !dbg !198
  store i8 %12, i8* %d, align 1, !dbg !201
  %13 = load i8, i8* %a, align 1, !dbg !202
  %conv13 = zext i8 %13 to i32, !dbg !202
  %14 = load i8, i8* %b, align 1, !dbg !203
  %conv14 = zext i8 %14 to i32, !dbg !203
  %xor = xor i32 %conv13, %conv14, !dbg !204
  %15 = load i8, i8* %c, align 1, !dbg !205
  %conv15 = zext i8 %15 to i32, !dbg !205
  %xor16 = xor i32 %xor, %conv15, !dbg !206
  %16 = load i8, i8* %d, align 1, !dbg !207
  %conv17 = zext i8 %16 to i32, !dbg !207
  %xor18 = xor i32 %xor16, %conv17, !dbg !208
  %conv19 = trunc i32 %xor18 to i8, !dbg !202
  store i8 %conv19, i8* %e, align 1, !dbg !209
  %17 = load i8, i8* %e, align 1, !dbg !210
  %conv20 = zext i8 %17 to i32, !dbg !210
  %18 = load i8, i8* %a, align 1, !dbg !211
  %conv21 = zext i8 %18 to i32, !dbg !211
  %19 = load i8, i8* %b, align 1, !dbg !212
  %conv22 = zext i8 %19 to i32, !dbg !212
  %xor23 = xor i32 %conv21, %conv22, !dbg !213
  %conv24 = trunc i32 %xor23 to i8, !dbg !211
  %call = call zeroext i8 @rj_xtime(i8 zeroext %conv24), !dbg !214
  %conv25 = zext i8 %call to i32, !dbg !214
  %xor26 = xor i32 %conv20, %conv25, !dbg !215
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !216
  %21 = load i8, i8* %i, align 1, !dbg !217
  %idxprom27 = zext i8 %21 to i64, !dbg !216
  %arrayidx28 = getelementptr inbounds i8, i8* %20, i64 %idxprom27, !dbg !216
  %22 = load i8, i8* %arrayidx28, align 1, !dbg !218
  %conv29 = zext i8 %22 to i32, !dbg !218
  %xor30 = xor i32 %conv29, %xor26, !dbg !218
  %conv31 = trunc i32 %xor30 to i8, !dbg !218
  store i8 %conv31, i8* %arrayidx28, align 1, !dbg !218
  %23 = load i8, i8* %e, align 1, !dbg !219
  %conv32 = zext i8 %23 to i32, !dbg !219
  %24 = load i8, i8* %b, align 1, !dbg !220
  %conv33 = zext i8 %24 to i32, !dbg !220
  %25 = load i8, i8* %c, align 1, !dbg !221
  %conv34 = zext i8 %25 to i32, !dbg !221
  %xor35 = xor i32 %conv33, %conv34, !dbg !222
  %conv36 = trunc i32 %xor35 to i8, !dbg !220
  %call37 = call zeroext i8 @rj_xtime(i8 zeroext %conv36), !dbg !223
  %conv38 = zext i8 %call37 to i32, !dbg !223
  %xor39 = xor i32 %conv32, %conv38, !dbg !224
  %26 = load i8*, i8** %buf.addr, align 8, !dbg !225
  %27 = load i8, i8* %i, align 1, !dbg !226
  %conv40 = zext i8 %27 to i32, !dbg !226
  %add41 = add nsw i32 %conv40, 1, !dbg !227
  %idxprom42 = sext i32 %add41 to i64, !dbg !225
  %arrayidx43 = getelementptr inbounds i8, i8* %26, i64 %idxprom42, !dbg !225
  %28 = load i8, i8* %arrayidx43, align 1, !dbg !228
  %conv44 = zext i8 %28 to i32, !dbg !228
  %xor45 = xor i32 %conv44, %xor39, !dbg !228
  %conv46 = trunc i32 %xor45 to i8, !dbg !228
  store i8 %conv46, i8* %arrayidx43, align 1, !dbg !228
  %29 = load i8, i8* %e, align 1, !dbg !229
  %conv47 = zext i8 %29 to i32, !dbg !229
  %30 = load i8, i8* %c, align 1, !dbg !230
  %conv48 = zext i8 %30 to i32, !dbg !230
  %31 = load i8, i8* %d, align 1, !dbg !231
  %conv49 = zext i8 %31 to i32, !dbg !231
  %xor50 = xor i32 %conv48, %conv49, !dbg !232
  %conv51 = trunc i32 %xor50 to i8, !dbg !230
  %call52 = call zeroext i8 @rj_xtime(i8 zeroext %conv51), !dbg !233
  %conv53 = zext i8 %call52 to i32, !dbg !233
  %xor54 = xor i32 %conv47, %conv53, !dbg !234
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !235
  %33 = load i8, i8* %i, align 1, !dbg !236
  %conv55 = zext i8 %33 to i32, !dbg !236
  %add56 = add nsw i32 %conv55, 2, !dbg !237
  %idxprom57 = sext i32 %add56 to i64, !dbg !235
  %arrayidx58 = getelementptr inbounds i8, i8* %32, i64 %idxprom57, !dbg !235
  %34 = load i8, i8* %arrayidx58, align 1, !dbg !238
  %conv59 = zext i8 %34 to i32, !dbg !238
  %xor60 = xor i32 %conv59, %xor54, !dbg !238
  %conv61 = trunc i32 %xor60 to i8, !dbg !238
  store i8 %conv61, i8* %arrayidx58, align 1, !dbg !238
  %35 = load i8, i8* %e, align 1, !dbg !239
  %conv62 = zext i8 %35 to i32, !dbg !239
  %36 = load i8, i8* %d, align 1, !dbg !240
  %conv63 = zext i8 %36 to i32, !dbg !240
  %37 = load i8, i8* %a, align 1, !dbg !241
  %conv64 = zext i8 %37 to i32, !dbg !241
  %xor65 = xor i32 %conv63, %conv64, !dbg !242
  %conv66 = trunc i32 %xor65 to i8, !dbg !240
  %call67 = call zeroext i8 @rj_xtime(i8 zeroext %conv66), !dbg !243
  %conv68 = zext i8 %call67 to i32, !dbg !243
  %xor69 = xor i32 %conv62, %conv68, !dbg !244
  %38 = load i8*, i8** %buf.addr, align 8, !dbg !245
  %39 = load i8, i8* %i, align 1, !dbg !246
  %conv70 = zext i8 %39 to i32, !dbg !246
  %add71 = add nsw i32 %conv70, 3, !dbg !247
  %idxprom72 = sext i32 %add71 to i64, !dbg !245
  %arrayidx73 = getelementptr inbounds i8, i8* %38, i64 %idxprom72, !dbg !245
  %40 = load i8, i8* %arrayidx73, align 1, !dbg !248
  %conv74 = zext i8 %40 to i32, !dbg !248
  %xor75 = xor i32 %conv74, %xor69, !dbg !248
  %conv76 = trunc i32 %xor75 to i8, !dbg !248
  store i8 %conv76, i8* %arrayidx73, align 1, !dbg !248
  br label %for.inc, !dbg !249

for.inc:                                          ; preds = %for.body
  %41 = load i8, i8* %i, align 1, !dbg !250
  %conv77 = zext i8 %41 to i32, !dbg !250
  %add78 = add nsw i32 %conv77, 4, !dbg !250
  %conv79 = trunc i32 %add78 to i8, !dbg !250
  store i8 %conv79, i8* %i, align 1, !dbg !250
  br label %for.cond, !dbg !251, !llvm.loop !252

for.end:                                          ; preds = %for.cond
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @aes_expandEncKey(i8* %k, i8 zeroext %rc) #0 !dbg !255 {
entry:
  %k.addr = alloca i8*, align 8
  %rc.addr = alloca i8, align 1
  %i = alloca i8, align 1
  store i8* %k, i8** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %k.addr, metadata !258, metadata !DIExpression()), !dbg !259
  store i8 %rc, i8* %rc.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %rc.addr, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata i8* %i, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i8*, i8** %k.addr, align 8, !dbg !264
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 29, !dbg !264
  %1 = load i8, i8* %arrayidx, align 1, !dbg !264
  %idxprom = zext i8 %1 to i64, !dbg !264
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom, !dbg !264
  %2 = load i8, i8* %arrayidx1, align 1, !dbg !264
  %conv = zext i8 %2 to i32, !dbg !264
  %3 = load i8, i8* %rc.addr, align 1, !dbg !265
  %conv2 = zext i8 %3 to i32, !dbg !266
  %xor = xor i32 %conv, %conv2, !dbg !267
  %4 = load i8*, i8** %k.addr, align 8, !dbg !268
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !268
  %5 = load i8, i8* %arrayidx3, align 1, !dbg !269
  %conv4 = zext i8 %5 to i32, !dbg !269
  %xor5 = xor i32 %conv4, %xor, !dbg !269
  %conv6 = trunc i32 %xor5 to i8, !dbg !269
  store i8 %conv6, i8* %arrayidx3, align 1, !dbg !269
  %6 = load i8*, i8** %k.addr, align 8, !dbg !270
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 30, !dbg !270
  %7 = load i8, i8* %arrayidx7, align 1, !dbg !270
  %idxprom8 = zext i8 %7 to i64, !dbg !270
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom8, !dbg !270
  %8 = load i8, i8* %arrayidx9, align 1, !dbg !270
  %conv10 = zext i8 %8 to i32, !dbg !270
  %9 = load i8*, i8** %k.addr, align 8, !dbg !271
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !271
  %10 = load i8, i8* %arrayidx11, align 1, !dbg !272
  %conv12 = zext i8 %10 to i32, !dbg !272
  %xor13 = xor i32 %conv12, %conv10, !dbg !272
  %conv14 = trunc i32 %xor13 to i8, !dbg !272
  store i8 %conv14, i8* %arrayidx11, align 1, !dbg !272
  %11 = load i8*, i8** %k.addr, align 8, !dbg !273
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 31, !dbg !273
  %12 = load i8, i8* %arrayidx15, align 1, !dbg !273
  %idxprom16 = zext i8 %12 to i64, !dbg !273
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom16, !dbg !273
  %13 = load i8, i8* %arrayidx17, align 1, !dbg !273
  %conv18 = zext i8 %13 to i32, !dbg !273
  %14 = load i8*, i8** %k.addr, align 8, !dbg !274
  %arrayidx19 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !274
  %15 = load i8, i8* %arrayidx19, align 1, !dbg !275
  %conv20 = zext i8 %15 to i32, !dbg !275
  %xor21 = xor i32 %conv20, %conv18, !dbg !275
  %conv22 = trunc i32 %xor21 to i8, !dbg !275
  store i8 %conv22, i8* %arrayidx19, align 1, !dbg !275
  %16 = load i8*, i8** %k.addr, align 8, !dbg !276
  %arrayidx23 = getelementptr inbounds i8, i8* %16, i64 28, !dbg !276
  %17 = load i8, i8* %arrayidx23, align 1, !dbg !276
  %idxprom24 = zext i8 %17 to i64, !dbg !276
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom24, !dbg !276
  %18 = load i8, i8* %arrayidx25, align 1, !dbg !276
  %conv26 = zext i8 %18 to i32, !dbg !276
  %19 = load i8*, i8** %k.addr, align 8, !dbg !277
  %arrayidx27 = getelementptr inbounds i8, i8* %19, i64 3, !dbg !277
  %20 = load i8, i8* %arrayidx27, align 1, !dbg !278
  %conv28 = zext i8 %20 to i32, !dbg !278
  %xor29 = xor i32 %conv28, %conv26, !dbg !278
  %conv30 = trunc i32 %xor29 to i8, !dbg !278
  store i8 %conv30, i8* %arrayidx27, align 1, !dbg !278
  %21 = load i8, i8* %rc.addr, align 1, !dbg !279
  %conv31 = zext i8 %21 to i32, !dbg !279
  %shl = shl i32 %conv31, 1, !dbg !279
  %22 = load i8, i8* %rc.addr, align 1, !dbg !279
  %conv32 = zext i8 %22 to i32, !dbg !279
  %shr = ashr i32 %conv32, 7, !dbg !279
  %and = and i32 %shr, 1, !dbg !279
  %mul = mul nsw i32 %and, 27, !dbg !279
  %xor33 = xor i32 %shl, %mul, !dbg !279
  %conv34 = trunc i32 %xor33 to i8, !dbg !279
  store i8 %conv34, i8* %rc.addr, align 1, !dbg !280
  br label %exp1, !dbg !281

exp1:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !282), !dbg !283
  store i8 4, i8* %i, align 1, !dbg !284
  br label %for.cond, !dbg !286

for.cond:                                         ; preds = %for.inc, %exp1
  %23 = load i8, i8* %i, align 1, !dbg !287
  %conv35 = zext i8 %23 to i32, !dbg !287
  %cmp = icmp slt i32 %conv35, 16, !dbg !289
  br i1 %cmp, label %for.body, label %for.end, !dbg !290

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %k.addr, align 8, !dbg !291
  %25 = load i8, i8* %i, align 1, !dbg !292
  %conv37 = zext i8 %25 to i32, !dbg !292
  %sub = sub nsw i32 %conv37, 4, !dbg !293
  %idxprom38 = sext i32 %sub to i64, !dbg !291
  %arrayidx39 = getelementptr inbounds i8, i8* %24, i64 %idxprom38, !dbg !291
  %26 = load i8, i8* %arrayidx39, align 1, !dbg !291
  %conv40 = zext i8 %26 to i32, !dbg !291
  %27 = load i8*, i8** %k.addr, align 8, !dbg !294
  %28 = load i8, i8* %i, align 1, !dbg !295
  %idxprom41 = zext i8 %28 to i64, !dbg !294
  %arrayidx42 = getelementptr inbounds i8, i8* %27, i64 %idxprom41, !dbg !294
  %29 = load i8, i8* %arrayidx42, align 1, !dbg !296
  %conv43 = zext i8 %29 to i32, !dbg !296
  %xor44 = xor i32 %conv43, %conv40, !dbg !296
  %conv45 = trunc i32 %xor44 to i8, !dbg !296
  store i8 %conv45, i8* %arrayidx42, align 1, !dbg !296
  %30 = load i8*, i8** %k.addr, align 8, !dbg !297
  %31 = load i8, i8* %i, align 1, !dbg !298
  %conv46 = zext i8 %31 to i32, !dbg !298
  %sub47 = sub nsw i32 %conv46, 3, !dbg !299
  %idxprom48 = sext i32 %sub47 to i64, !dbg !297
  %arrayidx49 = getelementptr inbounds i8, i8* %30, i64 %idxprom48, !dbg !297
  %32 = load i8, i8* %arrayidx49, align 1, !dbg !297
  %conv50 = zext i8 %32 to i32, !dbg !297
  %33 = load i8*, i8** %k.addr, align 8, !dbg !300
  %34 = load i8, i8* %i, align 1, !dbg !301
  %conv51 = zext i8 %34 to i32, !dbg !301
  %add = add nsw i32 %conv51, 1, !dbg !302
  %idxprom52 = sext i32 %add to i64, !dbg !300
  %arrayidx53 = getelementptr inbounds i8, i8* %33, i64 %idxprom52, !dbg !300
  %35 = load i8, i8* %arrayidx53, align 1, !dbg !303
  %conv54 = zext i8 %35 to i32, !dbg !303
  %xor55 = xor i32 %conv54, %conv50, !dbg !303
  %conv56 = trunc i32 %xor55 to i8, !dbg !303
  store i8 %conv56, i8* %arrayidx53, align 1, !dbg !303
  %36 = load i8*, i8** %k.addr, align 8, !dbg !304
  %37 = load i8, i8* %i, align 1, !dbg !305
  %conv57 = zext i8 %37 to i32, !dbg !305
  %sub58 = sub nsw i32 %conv57, 2, !dbg !306
  %idxprom59 = sext i32 %sub58 to i64, !dbg !304
  %arrayidx60 = getelementptr inbounds i8, i8* %36, i64 %idxprom59, !dbg !304
  %38 = load i8, i8* %arrayidx60, align 1, !dbg !304
  %conv61 = zext i8 %38 to i32, !dbg !304
  %39 = load i8*, i8** %k.addr, align 8, !dbg !307
  %40 = load i8, i8* %i, align 1, !dbg !308
  %conv62 = zext i8 %40 to i32, !dbg !308
  %add63 = add nsw i32 %conv62, 2, !dbg !309
  %idxprom64 = sext i32 %add63 to i64, !dbg !307
  %arrayidx65 = getelementptr inbounds i8, i8* %39, i64 %idxprom64, !dbg !307
  %41 = load i8, i8* %arrayidx65, align 1, !dbg !310
  %conv66 = zext i8 %41 to i32, !dbg !310
  %xor67 = xor i32 %conv66, %conv61, !dbg !310
  %conv68 = trunc i32 %xor67 to i8, !dbg !310
  store i8 %conv68, i8* %arrayidx65, align 1, !dbg !310
  %42 = load i8*, i8** %k.addr, align 8, !dbg !311
  %43 = load i8, i8* %i, align 1, !dbg !312
  %conv69 = zext i8 %43 to i32, !dbg !312
  %sub70 = sub nsw i32 %conv69, 1, !dbg !313
  %idxprom71 = sext i32 %sub70 to i64, !dbg !311
  %arrayidx72 = getelementptr inbounds i8, i8* %42, i64 %idxprom71, !dbg !311
  %44 = load i8, i8* %arrayidx72, align 1, !dbg !311
  %conv73 = zext i8 %44 to i32, !dbg !311
  %45 = load i8*, i8** %k.addr, align 8, !dbg !314
  %46 = load i8, i8* %i, align 1, !dbg !315
  %conv74 = zext i8 %46 to i32, !dbg !315
  %add75 = add nsw i32 %conv74, 3, !dbg !316
  %idxprom76 = sext i32 %add75 to i64, !dbg !314
  %arrayidx77 = getelementptr inbounds i8, i8* %45, i64 %idxprom76, !dbg !314
  %47 = load i8, i8* %arrayidx77, align 1, !dbg !317
  %conv78 = zext i8 %47 to i32, !dbg !317
  %xor79 = xor i32 %conv78, %conv73, !dbg !317
  %conv80 = trunc i32 %xor79 to i8, !dbg !317
  store i8 %conv80, i8* %arrayidx77, align 1, !dbg !317
  br label %for.inc, !dbg !294

for.inc:                                          ; preds = %for.body
  %48 = load i8, i8* %i, align 1, !dbg !318
  %conv81 = zext i8 %48 to i32, !dbg !318
  %add82 = add nsw i32 %conv81, 4, !dbg !318
  %conv83 = trunc i32 %add82 to i8, !dbg !318
  store i8 %conv83, i8* %i, align 1, !dbg !318
  br label %for.cond, !dbg !319, !llvm.loop !320

for.end:                                          ; preds = %for.cond
  %49 = load i8*, i8** %k.addr, align 8, !dbg !322
  %arrayidx84 = getelementptr inbounds i8, i8* %49, i64 12, !dbg !322
  %50 = load i8, i8* %arrayidx84, align 1, !dbg !322
  %idxprom85 = zext i8 %50 to i64, !dbg !322
  %arrayidx86 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom85, !dbg !322
  %51 = load i8, i8* %arrayidx86, align 1, !dbg !322
  %conv87 = zext i8 %51 to i32, !dbg !322
  %52 = load i8*, i8** %k.addr, align 8, !dbg !323
  %arrayidx88 = getelementptr inbounds i8, i8* %52, i64 16, !dbg !323
  %53 = load i8, i8* %arrayidx88, align 1, !dbg !324
  %conv89 = zext i8 %53 to i32, !dbg !324
  %xor90 = xor i32 %conv89, %conv87, !dbg !324
  %conv91 = trunc i32 %xor90 to i8, !dbg !324
  store i8 %conv91, i8* %arrayidx88, align 1, !dbg !324
  %54 = load i8*, i8** %k.addr, align 8, !dbg !325
  %arrayidx92 = getelementptr inbounds i8, i8* %54, i64 13, !dbg !325
  %55 = load i8, i8* %arrayidx92, align 1, !dbg !325
  %idxprom93 = zext i8 %55 to i64, !dbg !325
  %arrayidx94 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom93, !dbg !325
  %56 = load i8, i8* %arrayidx94, align 1, !dbg !325
  %conv95 = zext i8 %56 to i32, !dbg !325
  %57 = load i8*, i8** %k.addr, align 8, !dbg !326
  %arrayidx96 = getelementptr inbounds i8, i8* %57, i64 17, !dbg !326
  %58 = load i8, i8* %arrayidx96, align 1, !dbg !327
  %conv97 = zext i8 %58 to i32, !dbg !327
  %xor98 = xor i32 %conv97, %conv95, !dbg !327
  %conv99 = trunc i32 %xor98 to i8, !dbg !327
  store i8 %conv99, i8* %arrayidx96, align 1, !dbg !327
  %59 = load i8*, i8** %k.addr, align 8, !dbg !328
  %arrayidx100 = getelementptr inbounds i8, i8* %59, i64 14, !dbg !328
  %60 = load i8, i8* %arrayidx100, align 1, !dbg !328
  %idxprom101 = zext i8 %60 to i64, !dbg !328
  %arrayidx102 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom101, !dbg !328
  %61 = load i8, i8* %arrayidx102, align 1, !dbg !328
  %conv103 = zext i8 %61 to i32, !dbg !328
  %62 = load i8*, i8** %k.addr, align 8, !dbg !329
  %arrayidx104 = getelementptr inbounds i8, i8* %62, i64 18, !dbg !329
  %63 = load i8, i8* %arrayidx104, align 1, !dbg !330
  %conv105 = zext i8 %63 to i32, !dbg !330
  %xor106 = xor i32 %conv105, %conv103, !dbg !330
  %conv107 = trunc i32 %xor106 to i8, !dbg !330
  store i8 %conv107, i8* %arrayidx104, align 1, !dbg !330
  %64 = load i8*, i8** %k.addr, align 8, !dbg !331
  %arrayidx108 = getelementptr inbounds i8, i8* %64, i64 15, !dbg !331
  %65 = load i8, i8* %arrayidx108, align 1, !dbg !331
  %idxprom109 = zext i8 %65 to i64, !dbg !331
  %arrayidx110 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom109, !dbg !331
  %66 = load i8, i8* %arrayidx110, align 1, !dbg !331
  %conv111 = zext i8 %66 to i32, !dbg !331
  %67 = load i8*, i8** %k.addr, align 8, !dbg !332
  %arrayidx112 = getelementptr inbounds i8, i8* %67, i64 19, !dbg !332
  %68 = load i8, i8* %arrayidx112, align 1, !dbg !333
  %conv113 = zext i8 %68 to i32, !dbg !333
  %xor114 = xor i32 %conv113, %conv111, !dbg !333
  %conv115 = trunc i32 %xor114 to i8, !dbg !333
  store i8 %conv115, i8* %arrayidx112, align 1, !dbg !333
  br label %exp2, !dbg !332

exp2:                                             ; preds = %for.end
  call void @llvm.dbg.label(metadata !334), !dbg !335
  store i8 20, i8* %i, align 1, !dbg !336
  br label %for.cond116, !dbg !338

for.cond116:                                      ; preds = %for.inc167, %exp2
  %69 = load i8, i8* %i, align 1, !dbg !339
  %conv117 = zext i8 %69 to i32, !dbg !339
  %cmp118 = icmp slt i32 %conv117, 32, !dbg !341
  br i1 %cmp118, label %for.body120, label %for.end171, !dbg !342

for.body120:                                      ; preds = %for.cond116
  %70 = load i8*, i8** %k.addr, align 8, !dbg !343
  %71 = load i8, i8* %i, align 1, !dbg !344
  %conv121 = zext i8 %71 to i32, !dbg !344
  %sub122 = sub nsw i32 %conv121, 4, !dbg !345
  %idxprom123 = sext i32 %sub122 to i64, !dbg !343
  %arrayidx124 = getelementptr inbounds i8, i8* %70, i64 %idxprom123, !dbg !343
  %72 = load i8, i8* %arrayidx124, align 1, !dbg !343
  %conv125 = zext i8 %72 to i32, !dbg !343
  %73 = load i8*, i8** %k.addr, align 8, !dbg !346
  %74 = load i8, i8* %i, align 1, !dbg !347
  %idxprom126 = zext i8 %74 to i64, !dbg !346
  %arrayidx127 = getelementptr inbounds i8, i8* %73, i64 %idxprom126, !dbg !346
  %75 = load i8, i8* %arrayidx127, align 1, !dbg !348
  %conv128 = zext i8 %75 to i32, !dbg !348
  %xor129 = xor i32 %conv128, %conv125, !dbg !348
  %conv130 = trunc i32 %xor129 to i8, !dbg !348
  store i8 %conv130, i8* %arrayidx127, align 1, !dbg !348
  %76 = load i8*, i8** %k.addr, align 8, !dbg !349
  %77 = load i8, i8* %i, align 1, !dbg !350
  %conv131 = zext i8 %77 to i32, !dbg !350
  %sub132 = sub nsw i32 %conv131, 3, !dbg !351
  %idxprom133 = sext i32 %sub132 to i64, !dbg !349
  %arrayidx134 = getelementptr inbounds i8, i8* %76, i64 %idxprom133, !dbg !349
  %78 = load i8, i8* %arrayidx134, align 1, !dbg !349
  %conv135 = zext i8 %78 to i32, !dbg !349
  %79 = load i8*, i8** %k.addr, align 8, !dbg !352
  %80 = load i8, i8* %i, align 1, !dbg !353
  %conv136 = zext i8 %80 to i32, !dbg !353
  %add137 = add nsw i32 %conv136, 1, !dbg !354
  %idxprom138 = sext i32 %add137 to i64, !dbg !352
  %arrayidx139 = getelementptr inbounds i8, i8* %79, i64 %idxprom138, !dbg !352
  %81 = load i8, i8* %arrayidx139, align 1, !dbg !355
  %conv140 = zext i8 %81 to i32, !dbg !355
  %xor141 = xor i32 %conv140, %conv135, !dbg !355
  %conv142 = trunc i32 %xor141 to i8, !dbg !355
  store i8 %conv142, i8* %arrayidx139, align 1, !dbg !355
  %82 = load i8*, i8** %k.addr, align 8, !dbg !356
  %83 = load i8, i8* %i, align 1, !dbg !357
  %conv143 = zext i8 %83 to i32, !dbg !357
  %sub144 = sub nsw i32 %conv143, 2, !dbg !358
  %idxprom145 = sext i32 %sub144 to i64, !dbg !356
  %arrayidx146 = getelementptr inbounds i8, i8* %82, i64 %idxprom145, !dbg !356
  %84 = load i8, i8* %arrayidx146, align 1, !dbg !356
  %conv147 = zext i8 %84 to i32, !dbg !356
  %85 = load i8*, i8** %k.addr, align 8, !dbg !359
  %86 = load i8, i8* %i, align 1, !dbg !360
  %conv148 = zext i8 %86 to i32, !dbg !360
  %add149 = add nsw i32 %conv148, 2, !dbg !361
  %idxprom150 = sext i32 %add149 to i64, !dbg !359
  %arrayidx151 = getelementptr inbounds i8, i8* %85, i64 %idxprom150, !dbg !359
  %87 = load i8, i8* %arrayidx151, align 1, !dbg !362
  %conv152 = zext i8 %87 to i32, !dbg !362
  %xor153 = xor i32 %conv152, %conv147, !dbg !362
  %conv154 = trunc i32 %xor153 to i8, !dbg !362
  store i8 %conv154, i8* %arrayidx151, align 1, !dbg !362
  %88 = load i8*, i8** %k.addr, align 8, !dbg !363
  %89 = load i8, i8* %i, align 1, !dbg !364
  %conv155 = zext i8 %89 to i32, !dbg !364
  %sub156 = sub nsw i32 %conv155, 1, !dbg !365
  %idxprom157 = sext i32 %sub156 to i64, !dbg !363
  %arrayidx158 = getelementptr inbounds i8, i8* %88, i64 %idxprom157, !dbg !363
  %90 = load i8, i8* %arrayidx158, align 1, !dbg !363
  %conv159 = zext i8 %90 to i32, !dbg !363
  %91 = load i8*, i8** %k.addr, align 8, !dbg !366
  %92 = load i8, i8* %i, align 1, !dbg !367
  %conv160 = zext i8 %92 to i32, !dbg !367
  %add161 = add nsw i32 %conv160, 3, !dbg !368
  %idxprom162 = sext i32 %add161 to i64, !dbg !366
  %arrayidx163 = getelementptr inbounds i8, i8* %91, i64 %idxprom162, !dbg !366
  %93 = load i8, i8* %arrayidx163, align 1, !dbg !369
  %conv164 = zext i8 %93 to i32, !dbg !369
  %xor165 = xor i32 %conv164, %conv159, !dbg !369
  %conv166 = trunc i32 %xor165 to i8, !dbg !369
  store i8 %conv166, i8* %arrayidx163, align 1, !dbg !369
  br label %for.inc167, !dbg !346

for.inc167:                                       ; preds = %for.body120
  %94 = load i8, i8* %i, align 1, !dbg !370
  %conv168 = zext i8 %94 to i32, !dbg !370
  %add169 = add nsw i32 %conv168, 4, !dbg !370
  %conv170 = trunc i32 %add169 to i8, !dbg !370
  store i8 %conv170, i8* %i, align 1, !dbg !370
  br label %for.cond116, !dbg !371, !llvm.loop !372

for.end171:                                       ; preds = %for.cond116
  %95 = load i8, i8* %rc.addr, align 1, !dbg !374
  ret i8 %95, !dbg !375
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes256_encrypt_ecb(%struct.aes256_context* %host_ctx, i8* %host_k, i8* %host_buf, %struct.aes256_context* %ctx, i8* %k, i8* %buf) #0 !dbg !376 {
entry:
  %host_ctx.addr = alloca %struct.aes256_context*, align 8
  %host_k.addr = alloca i8*, align 8
  %host_buf.addr = alloca i8*, align 8
  %ctx.addr = alloca %struct.aes256_context*, align 8
  %k.addr = alloca i8*, align 8
  %buf.addr = alloca i8*, align 8
  %rcon = alloca i8, align 1
  %i = alloca i8, align 1
  store %struct.aes256_context* %host_ctx, %struct.aes256_context** %host_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.aes256_context** %host_ctx.addr, metadata !390, metadata !DIExpression()), !dbg !391
  store i8* %host_k, i8** %host_k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %host_k.addr, metadata !392, metadata !DIExpression()), !dbg !393
  store i8* %host_buf, i8** %host_buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %host_buf.addr, metadata !394, metadata !DIExpression()), !dbg !395
  store %struct.aes256_context* %ctx, %struct.aes256_context** %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.aes256_context** %ctx.addr, metadata !396, metadata !DIExpression()), !dbg !397
  store i8* %k, i8** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %k.addr, metadata !398, metadata !DIExpression()), !dbg !399
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.declare(metadata i8* %rcon, metadata !402, metadata !DIExpression()), !dbg !403
  store i8 1, i8* %rcon, align 1, !dbg !403
  call void @llvm.dbg.declare(metadata i8* %i, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i8*, i8** %host_k.addr, align 8, !dbg !406
  store i8* %0, i8** %k.addr, align 8, !dbg !407
  %1 = load i8*, i8** %host_buf.addr, align 8, !dbg !408
  store i8* %1, i8** %buf.addr, align 8, !dbg !409
  %2 = load %struct.aes256_context*, %struct.aes256_context** %host_ctx.addr, align 8, !dbg !410
  store %struct.aes256_context* %2, %struct.aes256_context** %ctx.addr, align 8, !dbg !411
  br label %ecb1, !dbg !412

ecb1:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !413), !dbg !414
  store i8 0, i8* %i, align 1, !dbg !415
  br label %for.cond, !dbg !417

for.cond:                                         ; preds = %for.inc, %ecb1
  %3 = load i8, i8* %i, align 1, !dbg !418
  %conv = zext i8 %3 to i64, !dbg !418
  %cmp = icmp ult i64 %conv, 32, !dbg !420
  br i1 %cmp, label %for.body, label %for.end, !dbg !421

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %k.addr, align 8, !dbg !422
  %5 = load i8, i8* %i, align 1, !dbg !424
  %idxprom = zext i8 %5 to i64, !dbg !422
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom, !dbg !422
  %6 = load i8, i8* %arrayidx, align 1, !dbg !422
  %7 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !425
  %deckey = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %7, i32 0, i32 2, !dbg !426
  %8 = load i8, i8* %i, align 1, !dbg !427
  %idxprom2 = zext i8 %8 to i64, !dbg !425
  %arrayidx3 = getelementptr inbounds [32 x i8], [32 x i8]* %deckey, i64 0, i64 %idxprom2, !dbg !425
  store i8 %6, i8* %arrayidx3, align 1, !dbg !428
  %9 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !429
  %enckey = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %9, i32 0, i32 1, !dbg !430
  %10 = load i8, i8* %i, align 1, !dbg !431
  %idxprom4 = zext i8 %10 to i64, !dbg !429
  %arrayidx5 = getelementptr inbounds [32 x i8], [32 x i8]* %enckey, i64 0, i64 %idxprom4, !dbg !429
  store i8 %6, i8* %arrayidx5, align 1, !dbg !432
  br label %for.inc, !dbg !433

for.inc:                                          ; preds = %for.body
  %11 = load i8, i8* %i, align 1, !dbg !434
  %inc = add i8 %11, 1, !dbg !434
  store i8 %inc, i8* %i, align 1, !dbg !434
  br label %for.cond, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %for.cond
  br label %ecb2, !dbg !437

ecb2:                                             ; preds = %for.end
  call void @llvm.dbg.label(metadata !438), !dbg !439
  store i8 8, i8* %i, align 1, !dbg !440
  br label %for.cond6, !dbg !442

for.cond6:                                        ; preds = %for.body7, %ecb2
  %12 = load i8, i8* %i, align 1, !dbg !443
  %dec = add i8 %12, -1, !dbg !443
  store i8 %dec, i8* %i, align 1, !dbg !443
  %tobool = icmp ne i8 %dec, 0, !dbg !445
  br i1 %tobool, label %for.body7, label %for.end9, !dbg !445

for.body7:                                        ; preds = %for.cond6
  %13 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !446
  %deckey8 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %13, i32 0, i32 2, !dbg !448
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %deckey8, i64 0, i64 0, !dbg !446
  %14 = load i8, i8* %rcon, align 1, !dbg !449
  %call = call zeroext i8 @aes_expandEncKey(i8* %arraydecay, i8 zeroext %14), !dbg !450
  store i8 %call, i8* %rcon, align 1, !dbg !451
  br label %for.cond6, !dbg !452, !llvm.loop !453

for.end9:                                         ; preds = %for.cond6
  %15 = load i8*, i8** %buf.addr, align 8, !dbg !455
  %16 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !456
  %enckey10 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %16, i32 0, i32 1, !dbg !457
  %arraydecay11 = getelementptr inbounds [32 x i8], [32 x i8]* %enckey10, i64 0, i64 0, !dbg !456
  %17 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !458
  %key = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %17, i32 0, i32 0, !dbg !459
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %key, i64 0, i64 0, !dbg !458
  call void @aes_addRoundKey_cpy(i8* %15, i8* %arraydecay11, i8* %arraydecay12), !dbg !460
  br label %ecb3, !dbg !460

ecb3:                                             ; preds = %for.end9
  call void @llvm.dbg.label(metadata !461), !dbg !462
  store i8 1, i8* %i, align 1, !dbg !463
  store i8 1, i8* %rcon, align 1, !dbg !465
  br label %for.cond13, !dbg !466

for.cond13:                                       ; preds = %for.inc27, %ecb3
  %18 = load i8, i8* %i, align 1, !dbg !467
  %conv14 = zext i8 %18 to i32, !dbg !467
  %cmp15 = icmp slt i32 %conv14, 14, !dbg !469
  br i1 %cmp15, label %for.body17, label %for.end29, !dbg !470

for.body17:                                       ; preds = %for.cond13
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !471
  call void @aes_subBytes(i8* %19), !dbg !473
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !474
  call void @aes_shiftRows(i8* %20), !dbg !475
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !476
  call void @aes_mixColumns(i8* %21), !dbg !477
  %22 = load i8, i8* %i, align 1, !dbg !478
  %conv18 = zext i8 %22 to i32, !dbg !478
  %and = and i32 %conv18, 1, !dbg !480
  %tobool19 = icmp ne i32 %and, 0, !dbg !480
  br i1 %tobool19, label %if.then, label %if.else, !dbg !481

if.then:                                          ; preds = %for.body17
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !482
  %24 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !484
  %key20 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %24, i32 0, i32 0, !dbg !485
  %arrayidx21 = getelementptr inbounds [32 x i8], [32 x i8]* %key20, i64 0, i64 16, !dbg !484
  call void @aes_addRoundKey(i8* %23, i8* %arrayidx21), !dbg !486
  br label %if.end, !dbg !487

if.else:                                          ; preds = %for.body17
  %25 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !488
  %key22 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %25, i32 0, i32 0, !dbg !490
  %arraydecay23 = getelementptr inbounds [32 x i8], [32 x i8]* %key22, i64 0, i64 0, !dbg !488
  %26 = load i8, i8* %rcon, align 1, !dbg !491
  %call24 = call zeroext i8 @aes_expandEncKey(i8* %arraydecay23, i8 zeroext %26), !dbg !492
  store i8 %call24, i8* %rcon, align 1, !dbg !493
  %27 = load i8*, i8** %buf.addr, align 8, !dbg !494
  %28 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !495
  %key25 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %28, i32 0, i32 0, !dbg !496
  %arraydecay26 = getelementptr inbounds [32 x i8], [32 x i8]* %key25, i64 0, i64 0, !dbg !495
  call void @aes_addRoundKey(i8* %27, i8* %arraydecay26), !dbg !497
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc27, !dbg !498

for.inc27:                                        ; preds = %if.end
  %29 = load i8, i8* %i, align 1, !dbg !499
  %inc28 = add i8 %29, 1, !dbg !499
  store i8 %inc28, i8* %i, align 1, !dbg !499
  br label %for.cond13, !dbg !500, !llvm.loop !501

for.end29:                                        ; preds = %for.cond13
  %30 = load i8*, i8** %buf.addr, align 8, !dbg !503
  call void @aes_subBytes(i8* %30), !dbg !504
  %31 = load i8*, i8** %buf.addr, align 8, !dbg !505
  call void @aes_shiftRows(i8* %31), !dbg !506
  %32 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !507
  %key30 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %32, i32 0, i32 0, !dbg !508
  %arraydecay31 = getelementptr inbounds [32 x i8], [32 x i8]* %key30, i64 0, i64 0, !dbg !507
  %33 = load i8, i8* %rcon, align 1, !dbg !509
  %call32 = call zeroext i8 @aes_expandEncKey(i8* %arraydecay31, i8 zeroext %33), !dbg !510
  store i8 %call32, i8* %rcon, align 1, !dbg !511
  %34 = load i8*, i8** %buf.addr, align 8, !dbg !512
  %35 = load %struct.aes256_context*, %struct.aes256_context** %ctx.addr, align 8, !dbg !513
  %key33 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %35, i32 0, i32 0, !dbg !514
  %arraydecay34 = getelementptr inbounds [32 x i8], [32 x i8]* %key33, i64 0, i64 0, !dbg !513
  call void @aes_addRoundKey(i8* %34, i8* %arraydecay34), !dbg !515
  ret void, !dbg !516
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sbox", scope: !2, file: !3, line: 17, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "aes.c", directory: "/home/coco/work/benchmark_codes/aes")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !13)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 24, baseType: !10)
!9 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !11, line: 38, baseType: !12)
!11 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{!14}
!14 = !DISubrange(count: 256)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 10.0.1 "}
!19 = distinct !DISubprogram(name: "rj_xtime", scope: !3, file: !3, line: 100, type: !20, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{!8, !8}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !19, file: !3, line: 100, type: !8)
!23 = !DILocation(line: 100, column: 26, scope: !19)
!24 = !DILocation(line: 102, column: 13, scope: !19)
!25 = !DILocation(line: 102, column: 15, scope: !19)
!26 = !DILocation(line: 102, column: 12, scope: !19)
!27 = !DILocation(line: 102, column: 27, scope: !19)
!28 = !DILocation(line: 102, column: 29, scope: !19)
!29 = !DILocation(line: 102, column: 35, scope: !19)
!30 = !DILocation(line: 102, column: 46, scope: !19)
!31 = !DILocation(line: 102, column: 48, scope: !19)
!32 = !DILocation(line: 102, column: 5, scope: !19)
!33 = distinct !DISubprogram(name: "aes_subBytes", scope: !3, file: !3, line: 106, type: !34, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!37 = !DILocalVariable(name: "buf", arg: 1, scope: !33, file: !3, line: 106, type: !36)
!38 = !DILocation(line: 106, column: 28, scope: !33)
!39 = !DILocalVariable(name: "i", scope: !33, file: !3, line: 108, type: !8)
!40 = !DILocation(line: 108, column: 22, scope: !33)
!41 = !DILocation(line: 108, column: 5, scope: !33)
!42 = !DILabel(scope: !33, name: "sub", file: !3, line: 110)
!43 = !DILocation(line: 110, column: 5, scope: !33)
!44 = !DILocation(line: 110, column: 11, scope: !33)
!45 = !DILocation(line: 110, column: 19, scope: !33)
!46 = !DILocation(line: 110, column: 32, scope: !33)
!47 = !DILocation(line: 110, column: 23, scope: !33)
!48 = !DILocation(line: 110, column: 27, scope: !33)
!49 = !DILocation(line: 110, column: 30, scope: !33)
!50 = distinct !{!50, !44, !46}
!51 = !DILocation(line: 111, column: 1, scope: !33)
!52 = distinct !DISubprogram(name: "aes_addRoundKey", scope: !3, file: !3, line: 114, type: !53, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !36, !36}
!55 = !DILocalVariable(name: "buf", arg: 1, scope: !52, file: !3, line: 114, type: !36)
!56 = !DILocation(line: 114, column: 31, scope: !52)
!57 = !DILocalVariable(name: "key", arg: 2, scope: !52, file: !3, line: 114, type: !36)
!58 = !DILocation(line: 114, column: 45, scope: !52)
!59 = !DILocalVariable(name: "i", scope: !52, file: !3, line: 116, type: !8)
!60 = !DILocation(line: 116, column: 22, scope: !52)
!61 = !DILocation(line: 116, column: 5, scope: !52)
!62 = !DILabel(scope: !52, name: "addkey", file: !3, line: 118)
!63 = !DILocation(line: 118, column: 5, scope: !52)
!64 = !DILocation(line: 118, column: 14, scope: !52)
!65 = !DILocation(line: 118, column: 22, scope: !52)
!66 = !DILocation(line: 118, column: 36, scope: !52)
!67 = !DILocation(line: 118, column: 40, scope: !52)
!68 = !DILocation(line: 118, column: 26, scope: !52)
!69 = !DILocation(line: 118, column: 30, scope: !52)
!70 = !DILocation(line: 118, column: 33, scope: !52)
!71 = distinct !{!71, !64, !72}
!72 = !DILocation(line: 118, column: 41, scope: !52)
!73 = !DILocation(line: 119, column: 1, scope: !52)
!74 = distinct !DISubprogram(name: "aes_addRoundKey_cpy", scope: !3, file: !3, line: 122, type: !75, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !36, !36, !36}
!77 = !DILocalVariable(name: "buf", arg: 1, scope: !74, file: !3, line: 122, type: !36)
!78 = !DILocation(line: 122, column: 35, scope: !74)
!79 = !DILocalVariable(name: "key", arg: 2, scope: !74, file: !3, line: 122, type: !36)
!80 = !DILocation(line: 122, column: 49, scope: !74)
!81 = !DILocalVariable(name: "cpk", arg: 3, scope: !74, file: !3, line: 122, type: !36)
!82 = !DILocation(line: 122, column: 63, scope: !74)
!83 = !DILocalVariable(name: "i", scope: !74, file: !3, line: 124, type: !8)
!84 = !DILocation(line: 124, column: 22, scope: !74)
!85 = !DILocation(line: 124, column: 5, scope: !74)
!86 = !DILabel(scope: !74, name: "cpkey", file: !3, line: 126)
!87 = !DILocation(line: 126, column: 5, scope: !74)
!88 = !DILocation(line: 126, column: 13, scope: !74)
!89 = !DILocation(line: 126, column: 21, scope: !74)
!90 = !DILocation(line: 126, column: 46, scope: !74)
!91 = !DILocation(line: 126, column: 50, scope: !74)
!92 = !DILocation(line: 126, column: 37, scope: !74)
!93 = !DILocation(line: 126, column: 41, scope: !74)
!94 = !DILocation(line: 126, column: 44, scope: !74)
!95 = !DILocation(line: 126, column: 36, scope: !74)
!96 = !DILocation(line: 126, column: 26, scope: !74)
!97 = !DILocation(line: 126, column: 30, scope: !74)
!98 = !DILocation(line: 126, column: 33, scope: !74)
!99 = !DILocation(line: 126, column: 67, scope: !74)
!100 = !DILocation(line: 126, column: 76, scope: !74)
!101 = !DILocation(line: 126, column: 74, scope: !74)
!102 = !DILocation(line: 126, column: 55, scope: !74)
!103 = !DILocation(line: 126, column: 62, scope: !74)
!104 = !DILocation(line: 126, column: 61, scope: !74)
!105 = !DILocation(line: 126, column: 65, scope: !74)
!106 = distinct !{!106, !88, !107}
!107 = !DILocation(line: 126, column: 77, scope: !74)
!108 = !DILocation(line: 127, column: 1, scope: !74)
!109 = distinct !DISubprogram(name: "aes_shiftRows", scope: !3, file: !3, line: 131, type: !34, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!110 = !DILocalVariable(name: "buf", arg: 1, scope: !109, file: !3, line: 131, type: !36)
!111 = !DILocation(line: 131, column: 29, scope: !109)
!112 = !DILocalVariable(name: "i", scope: !109, file: !3, line: 133, type: !8)
!113 = !DILocation(line: 133, column: 22, scope: !109)
!114 = !DILocalVariable(name: "j", scope: !109, file: !3, line: 133, type: !8)
!115 = !DILocation(line: 133, column: 25, scope: !109)
!116 = !DILocation(line: 135, column: 9, scope: !109)
!117 = !DILocation(line: 135, column: 7, scope: !109)
!118 = !DILocation(line: 135, column: 26, scope: !109)
!119 = !DILocation(line: 135, column: 17, scope: !109)
!120 = !DILocation(line: 135, column: 24, scope: !109)
!121 = !DILocation(line: 135, column: 43, scope: !109)
!122 = !DILocation(line: 135, column: 34, scope: !109)
!123 = !DILocation(line: 135, column: 41, scope: !109)
!124 = !DILocation(line: 135, column: 60, scope: !109)
!125 = !DILocation(line: 135, column: 51, scope: !109)
!126 = !DILocation(line: 135, column: 58, scope: !109)
!127 = !DILocation(line: 135, column: 79, scope: !109)
!128 = !DILocation(line: 135, column: 69, scope: !109)
!129 = !DILocation(line: 135, column: 77, scope: !109)
!130 = !DILocation(line: 136, column: 9, scope: !109)
!131 = !DILocation(line: 136, column: 7, scope: !109)
!132 = !DILocation(line: 136, column: 28, scope: !109)
!133 = !DILocation(line: 136, column: 18, scope: !109)
!134 = !DILocation(line: 136, column: 26, scope: !109)
!135 = !DILocation(line: 136, column: 45, scope: !109)
!136 = !DILocation(line: 136, column: 36, scope: !109)
!137 = !DILocation(line: 136, column: 43, scope: !109)
!138 = !DILocation(line: 137, column: 9, scope: !109)
!139 = !DILocation(line: 137, column: 7, scope: !109)
!140 = !DILocation(line: 137, column: 26, scope: !109)
!141 = !DILocation(line: 137, column: 17, scope: !109)
!142 = !DILocation(line: 137, column: 24, scope: !109)
!143 = !DILocation(line: 137, column: 45, scope: !109)
!144 = !DILocation(line: 137, column: 35, scope: !109)
!145 = !DILocation(line: 137, column: 43, scope: !109)
!146 = !DILocation(line: 137, column: 64, scope: !109)
!147 = !DILocation(line: 137, column: 54, scope: !109)
!148 = !DILocation(line: 137, column: 62, scope: !109)
!149 = !DILocation(line: 137, column: 81, scope: !109)
!150 = !DILocation(line: 137, column: 72, scope: !109)
!151 = !DILocation(line: 137, column: 79, scope: !109)
!152 = !DILocation(line: 138, column: 9, scope: !109)
!153 = !DILocation(line: 138, column: 7, scope: !109)
!154 = !DILocation(line: 138, column: 28, scope: !109)
!155 = !DILocation(line: 138, column: 18, scope: !109)
!156 = !DILocation(line: 138, column: 26, scope: !109)
!157 = !DILocation(line: 138, column: 46, scope: !109)
!158 = !DILocation(line: 138, column: 36, scope: !109)
!159 = !DILocation(line: 138, column: 44, scope: !109)
!160 = !DILocation(line: 140, column: 1, scope: !109)
!161 = distinct !DISubprogram(name: "aes_mixColumns", scope: !3, file: !3, line: 143, type: !34, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!162 = !DILocalVariable(name: "buf", arg: 1, scope: !161, file: !3, line: 143, type: !36)
!163 = !DILocation(line: 143, column: 30, scope: !161)
!164 = !DILocalVariable(name: "i", scope: !161, file: !3, line: 145, type: !8)
!165 = !DILocation(line: 145, column: 22, scope: !161)
!166 = !DILocalVariable(name: "a", scope: !161, file: !3, line: 145, type: !8)
!167 = !DILocation(line: 145, column: 25, scope: !161)
!168 = !DILocalVariable(name: "b", scope: !161, file: !3, line: 145, type: !8)
!169 = !DILocation(line: 145, column: 28, scope: !161)
!170 = !DILocalVariable(name: "c", scope: !161, file: !3, line: 145, type: !8)
!171 = !DILocation(line: 145, column: 31, scope: !161)
!172 = !DILocalVariable(name: "d", scope: !161, file: !3, line: 145, type: !8)
!173 = !DILocation(line: 145, column: 34, scope: !161)
!174 = !DILocalVariable(name: "e", scope: !161, file: !3, line: 145, type: !8)
!175 = !DILocation(line: 145, column: 37, scope: !161)
!176 = !DILocation(line: 145, column: 5, scope: !161)
!177 = !DILabel(scope: !161, name: "mix", file: !3, line: 147)
!178 = !DILocation(line: 147, column: 5, scope: !161)
!179 = !DILocation(line: 147, column: 18, scope: !180)
!180 = distinct !DILexicalBlock(scope: !161, file: !3, line: 147, column: 11)
!181 = !DILocation(line: 147, column: 16, scope: !180)
!182 = !DILocation(line: 147, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !3, line: 147, column: 11)
!184 = !DILocation(line: 147, column: 25, scope: !183)
!185 = !DILocation(line: 147, column: 11, scope: !180)
!186 = !DILocation(line: 149, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !3, line: 148, column: 5)
!188 = !DILocation(line: 149, column: 17, scope: !187)
!189 = !DILocation(line: 149, column: 11, scope: !187)
!190 = !DILocation(line: 149, column: 25, scope: !187)
!191 = !DILocation(line: 149, column: 29, scope: !187)
!192 = !DILocation(line: 149, column: 31, scope: !187)
!193 = !DILocation(line: 149, column: 23, scope: !187)
!194 = !DILocation(line: 149, column: 41, scope: !187)
!195 = !DILocation(line: 149, column: 45, scope: !187)
!196 = !DILocation(line: 149, column: 47, scope: !187)
!197 = !DILocation(line: 149, column: 39, scope: !187)
!198 = !DILocation(line: 149, column: 57, scope: !187)
!199 = !DILocation(line: 149, column: 61, scope: !187)
!200 = !DILocation(line: 149, column: 63, scope: !187)
!201 = !DILocation(line: 149, column: 55, scope: !187)
!202 = !DILocation(line: 150, column: 13, scope: !187)
!203 = !DILocation(line: 150, column: 17, scope: !187)
!204 = !DILocation(line: 150, column: 15, scope: !187)
!205 = !DILocation(line: 150, column: 21, scope: !187)
!206 = !DILocation(line: 150, column: 19, scope: !187)
!207 = !DILocation(line: 150, column: 25, scope: !187)
!208 = !DILocation(line: 150, column: 23, scope: !187)
!209 = !DILocation(line: 150, column: 11, scope: !187)
!210 = !DILocation(line: 151, column: 19, scope: !187)
!211 = !DILocation(line: 151, column: 32, scope: !187)
!212 = !DILocation(line: 151, column: 34, scope: !187)
!213 = !DILocation(line: 151, column: 33, scope: !187)
!214 = !DILocation(line: 151, column: 23, scope: !187)
!215 = !DILocation(line: 151, column: 21, scope: !187)
!216 = !DILocation(line: 151, column: 9, scope: !187)
!217 = !DILocation(line: 151, column: 13, scope: !187)
!218 = !DILocation(line: 151, column: 16, scope: !187)
!219 = !DILocation(line: 151, column: 52, scope: !187)
!220 = !DILocation(line: 151, column: 65, scope: !187)
!221 = !DILocation(line: 151, column: 67, scope: !187)
!222 = !DILocation(line: 151, column: 66, scope: !187)
!223 = !DILocation(line: 151, column: 56, scope: !187)
!224 = !DILocation(line: 151, column: 54, scope: !187)
!225 = !DILocation(line: 151, column: 40, scope: !187)
!226 = !DILocation(line: 151, column: 44, scope: !187)
!227 = !DILocation(line: 151, column: 45, scope: !187)
!228 = !DILocation(line: 151, column: 49, scope: !187)
!229 = !DILocation(line: 152, column: 21, scope: !187)
!230 = !DILocation(line: 152, column: 34, scope: !187)
!231 = !DILocation(line: 152, column: 36, scope: !187)
!232 = !DILocation(line: 152, column: 35, scope: !187)
!233 = !DILocation(line: 152, column: 25, scope: !187)
!234 = !DILocation(line: 152, column: 23, scope: !187)
!235 = !DILocation(line: 152, column: 9, scope: !187)
!236 = !DILocation(line: 152, column: 13, scope: !187)
!237 = !DILocation(line: 152, column: 14, scope: !187)
!238 = !DILocation(line: 152, column: 18, scope: !187)
!239 = !DILocation(line: 152, column: 52, scope: !187)
!240 = !DILocation(line: 152, column: 65, scope: !187)
!241 = !DILocation(line: 152, column: 67, scope: !187)
!242 = !DILocation(line: 152, column: 66, scope: !187)
!243 = !DILocation(line: 152, column: 56, scope: !187)
!244 = !DILocation(line: 152, column: 54, scope: !187)
!245 = !DILocation(line: 152, column: 40, scope: !187)
!246 = !DILocation(line: 152, column: 44, scope: !187)
!247 = !DILocation(line: 152, column: 45, scope: !187)
!248 = !DILocation(line: 152, column: 49, scope: !187)
!249 = !DILocation(line: 153, column: 5, scope: !187)
!250 = !DILocation(line: 147, column: 33, scope: !183)
!251 = !DILocation(line: 147, column: 11, scope: !183)
!252 = distinct !{!252, !185, !253}
!253 = !DILocation(line: 153, column: 5, scope: !180)
!254 = !DILocation(line: 154, column: 1, scope: !161)
!255 = distinct !DISubprogram(name: "aes_expandEncKey", scope: !3, file: !3, line: 157, type: !256, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!256 = !DISubroutineType(types: !257)
!257 = !{!8, !36, !8}
!258 = !DILocalVariable(name: "k", arg: 1, scope: !255, file: !3, line: 157, type: !36)
!259 = !DILocation(line: 157, column: 35, scope: !255)
!260 = !DILocalVariable(name: "rc", arg: 2, scope: !255, file: !3, line: 157, type: !8)
!261 = !DILocation(line: 157, column: 46, scope: !255)
!262 = !DILocalVariable(name: "i", scope: !255, file: !3, line: 159, type: !8)
!263 = !DILocation(line: 159, column: 22, scope: !255)
!264 = !DILocation(line: 161, column: 13, scope: !255)
!265 = !DILocation(line: 161, column: 31, scope: !255)
!266 = !DILocation(line: 161, column: 30, scope: !255)
!267 = !DILocation(line: 161, column: 28, scope: !255)
!268 = !DILocation(line: 161, column: 5, scope: !255)
!269 = !DILocation(line: 161, column: 10, scope: !255)
!270 = !DILocation(line: 162, column: 13, scope: !255)
!271 = !DILocation(line: 162, column: 5, scope: !255)
!272 = !DILocation(line: 162, column: 10, scope: !255)
!273 = !DILocation(line: 163, column: 13, scope: !255)
!274 = !DILocation(line: 163, column: 5, scope: !255)
!275 = !DILocation(line: 163, column: 10, scope: !255)
!276 = !DILocation(line: 164, column: 13, scope: !255)
!277 = !DILocation(line: 164, column: 5, scope: !255)
!278 = !DILocation(line: 164, column: 10, scope: !255)
!279 = !DILocation(line: 165, column: 10, scope: !255)
!280 = !DILocation(line: 165, column: 8, scope: !255)
!281 = !DILocation(line: 165, column: 5, scope: !255)
!282 = !DILabel(scope: !255, name: "exp1", file: !3, line: 167)
!283 = !DILocation(line: 167, column: 5, scope: !255)
!284 = !DILocation(line: 167, column: 18, scope: !285)
!285 = distinct !DILexicalBlock(scope: !255, file: !3, line: 167, column: 12)
!286 = !DILocation(line: 167, column: 16, scope: !285)
!287 = !DILocation(line: 167, column: 23, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !3, line: 167, column: 12)
!289 = !DILocation(line: 167, column: 25, scope: !288)
!290 = !DILocation(line: 167, column: 12, scope: !285)
!291 = !DILocation(line: 167, column: 48, scope: !288)
!292 = !DILocation(line: 167, column: 50, scope: !288)
!293 = !DILocation(line: 167, column: 51, scope: !288)
!294 = !DILocation(line: 167, column: 40, scope: !288)
!295 = !DILocation(line: 167, column: 42, scope: !288)
!296 = !DILocation(line: 167, column: 45, scope: !288)
!297 = !DILocation(line: 167, column: 68, scope: !288)
!298 = !DILocation(line: 167, column: 70, scope: !288)
!299 = !DILocation(line: 167, column: 71, scope: !288)
!300 = !DILocation(line: 167, column: 58, scope: !288)
!301 = !DILocation(line: 167, column: 60, scope: !288)
!302 = !DILocation(line: 167, column: 61, scope: !288)
!303 = !DILocation(line: 167, column: 65, scope: !288)
!304 = !DILocation(line: 168, column: 19, scope: !288)
!305 = !DILocation(line: 168, column: 21, scope: !288)
!306 = !DILocation(line: 168, column: 22, scope: !288)
!307 = !DILocation(line: 168, column: 9, scope: !288)
!308 = !DILocation(line: 168, column: 11, scope: !288)
!309 = !DILocation(line: 168, column: 12, scope: !288)
!310 = !DILocation(line: 168, column: 16, scope: !288)
!311 = !DILocation(line: 168, column: 37, scope: !288)
!312 = !DILocation(line: 168, column: 39, scope: !288)
!313 = !DILocation(line: 168, column: 40, scope: !288)
!314 = !DILocation(line: 168, column: 27, scope: !288)
!315 = !DILocation(line: 168, column: 29, scope: !288)
!316 = !DILocation(line: 168, column: 30, scope: !288)
!317 = !DILocation(line: 168, column: 34, scope: !288)
!318 = !DILocation(line: 167, column: 33, scope: !288)
!319 = !DILocation(line: 167, column: 12, scope: !288)
!320 = distinct !{!320, !290, !321}
!321 = !DILocation(line: 168, column: 42, scope: !285)
!322 = !DILocation(line: 169, column: 14, scope: !255)
!323 = !DILocation(line: 169, column: 5, scope: !255)
!324 = !DILocation(line: 169, column: 11, scope: !255)
!325 = !DILocation(line: 170, column: 14, scope: !255)
!326 = !DILocation(line: 170, column: 5, scope: !255)
!327 = !DILocation(line: 170, column: 11, scope: !255)
!328 = !DILocation(line: 171, column: 14, scope: !255)
!329 = !DILocation(line: 171, column: 5, scope: !255)
!330 = !DILocation(line: 171, column: 11, scope: !255)
!331 = !DILocation(line: 172, column: 14, scope: !255)
!332 = !DILocation(line: 172, column: 5, scope: !255)
!333 = !DILocation(line: 172, column: 11, scope: !255)
!334 = !DILabel(scope: !255, name: "exp2", file: !3, line: 174)
!335 = !DILocation(line: 174, column: 5, scope: !255)
!336 = !DILocation(line: 174, column: 18, scope: !337)
!337 = distinct !DILexicalBlock(scope: !255, file: !3, line: 174, column: 12)
!338 = !DILocation(line: 174, column: 16, scope: !337)
!339 = !DILocation(line: 174, column: 24, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !3, line: 174, column: 12)
!341 = !DILocation(line: 174, column: 26, scope: !340)
!342 = !DILocation(line: 174, column: 12, scope: !337)
!343 = !DILocation(line: 174, column: 48, scope: !340)
!344 = !DILocation(line: 174, column: 50, scope: !340)
!345 = !DILocation(line: 174, column: 51, scope: !340)
!346 = !DILocation(line: 174, column: 40, scope: !340)
!347 = !DILocation(line: 174, column: 42, scope: !340)
!348 = !DILocation(line: 174, column: 45, scope: !340)
!349 = !DILocation(line: 174, column: 68, scope: !340)
!350 = !DILocation(line: 174, column: 70, scope: !340)
!351 = !DILocation(line: 174, column: 71, scope: !340)
!352 = !DILocation(line: 174, column: 58, scope: !340)
!353 = !DILocation(line: 174, column: 60, scope: !340)
!354 = !DILocation(line: 174, column: 61, scope: !340)
!355 = !DILocation(line: 174, column: 65, scope: !340)
!356 = !DILocation(line: 175, column: 19, scope: !340)
!357 = !DILocation(line: 175, column: 21, scope: !340)
!358 = !DILocation(line: 175, column: 22, scope: !340)
!359 = !DILocation(line: 175, column: 9, scope: !340)
!360 = !DILocation(line: 175, column: 11, scope: !340)
!361 = !DILocation(line: 175, column: 12, scope: !340)
!362 = !DILocation(line: 175, column: 16, scope: !340)
!363 = !DILocation(line: 175, column: 37, scope: !340)
!364 = !DILocation(line: 175, column: 39, scope: !340)
!365 = !DILocation(line: 175, column: 40, scope: !340)
!366 = !DILocation(line: 175, column: 27, scope: !340)
!367 = !DILocation(line: 175, column: 29, scope: !340)
!368 = !DILocation(line: 175, column: 30, scope: !340)
!369 = !DILocation(line: 175, column: 34, scope: !340)
!370 = !DILocation(line: 174, column: 34, scope: !340)
!371 = !DILocation(line: 174, column: 12, scope: !340)
!372 = distinct !{!372, !342, !373}
!373 = !DILocation(line: 175, column: 42, scope: !337)
!374 = !DILocation(line: 177, column: 12, scope: !255)
!375 = !DILocation(line: 177, column: 5, scope: !255)
!376 = distinct !DISubprogram(name: "aes256_encrypt_ecb", scope: !3, file: !3, line: 181, type: !377, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !36, !36, !379, !36, !36}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256_context", file: !381, line: 12, baseType: !382)
!381 = !DIFile(filename: "./aes.h", directory: "/home/coco/work/benchmark_codes/aes")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 8, size: 768, elements: !383)
!383 = !{!384, !388, !389}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !382, file: !381, line: 9, baseType: !385, size: 256)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "enckey", scope: !382, file: !381, line: 10, baseType: !385, size: 256, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "deckey", scope: !382, file: !381, line: 11, baseType: !385, size: 256, offset: 512)
!390 = !DILocalVariable(name: "host_ctx", arg: 1, scope: !376, file: !3, line: 182, type: !379)
!391 = !DILocation(line: 182, column: 21, scope: !376)
!392 = !DILocalVariable(name: "host_k", arg: 2, scope: !376, file: !3, line: 182, type: !36)
!393 = !DILocation(line: 182, column: 40, scope: !376)
!394 = !DILocalVariable(name: "host_buf", arg: 3, scope: !376, file: !3, line: 182, type: !36)
!395 = !DILocation(line: 182, column: 57, scope: !376)
!396 = !DILocalVariable(name: "ctx", arg: 4, scope: !376, file: !3, line: 183, type: !379)
!397 = !DILocation(line: 183, column: 21, scope: !376)
!398 = !DILocalVariable(name: "k", arg: 5, scope: !376, file: !3, line: 183, type: !36)
!399 = !DILocation(line: 183, column: 35, scope: !376)
!400 = !DILocalVariable(name: "buf", arg: 6, scope: !376, file: !3, line: 183, type: !36)
!401 = !DILocation(line: 183, column: 47, scope: !376)
!402 = !DILocalVariable(name: "rcon", scope: !376, file: !3, line: 186, type: !8)
!403 = !DILocation(line: 186, column: 13, scope: !376)
!404 = !DILocalVariable(name: "i", scope: !376, file: !3, line: 187, type: !8)
!405 = !DILocation(line: 187, column: 13, scope: !376)
!406 = !DILocation(line: 194, column: 9, scope: !376)
!407 = !DILocation(line: 194, column: 7, scope: !376)
!408 = !DILocation(line: 195, column: 11, scope: !376)
!409 = !DILocation(line: 195, column: 9, scope: !376)
!410 = !DILocation(line: 196, column: 11, scope: !376)
!411 = !DILocation(line: 196, column: 9, scope: !376)
!412 = !DILocation(line: 196, column: 5, scope: !376)
!413 = !DILabel(scope: !376, name: "ecb1", file: !3, line: 199)
!414 = !DILocation(line: 199, column: 5, scope: !376)
!415 = !DILocation(line: 199, column: 19, scope: !416)
!416 = distinct !DILexicalBlock(scope: !376, file: !3, line: 199, column: 12)
!417 = !DILocation(line: 199, column: 17, scope: !416)
!418 = !DILocation(line: 199, column: 24, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 199, column: 12)
!420 = !DILocation(line: 199, column: 26, scope: !419)
!421 = !DILocation(line: 199, column: 12, scope: !416)
!422 = !DILocation(line: 200, column: 43, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !3, line: 199, column: 50)
!424 = !DILocation(line: 200, column: 45, scope: !423)
!425 = !DILocation(line: 200, column: 26, scope: !423)
!426 = !DILocation(line: 200, column: 31, scope: !423)
!427 = !DILocation(line: 200, column: 38, scope: !423)
!428 = !DILocation(line: 200, column: 41, scope: !423)
!429 = !DILocation(line: 200, column: 9, scope: !423)
!430 = !DILocation(line: 200, column: 14, scope: !423)
!431 = !DILocation(line: 200, column: 21, scope: !423)
!432 = !DILocation(line: 200, column: 24, scope: !423)
!433 = !DILocation(line: 201, column: 5, scope: !423)
!434 = !DILocation(line: 199, column: 47, scope: !419)
!435 = !DILocation(line: 199, column: 12, scope: !419)
!436 = distinct !{!436, !421, !437}
!437 = !DILocation(line: 201, column: 5, scope: !416)
!438 = !DILabel(scope: !376, name: "ecb2", file: !3, line: 202)
!439 = !DILocation(line: 202, column: 5, scope: !376)
!440 = !DILocation(line: 202, column: 19, scope: !441)
!441 = distinct !DILexicalBlock(scope: !376, file: !3, line: 202, column: 12)
!442 = !DILocation(line: 202, column: 17, scope: !441)
!443 = !DILocation(line: 202, column: 23, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !3, line: 202, column: 12)
!445 = !DILocation(line: 202, column: 12, scope: !441)
!446 = !DILocation(line: 203, column: 33, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !3, line: 202, column: 28)
!448 = !DILocation(line: 203, column: 38, scope: !447)
!449 = !DILocation(line: 203, column: 46, scope: !447)
!450 = !DILocation(line: 203, column: 16, scope: !447)
!451 = !DILocation(line: 203, column: 14, scope: !447)
!452 = !DILocation(line: 202, column: 12, scope: !444)
!453 = distinct !{!453, !445, !454}
!454 = !DILocation(line: 204, column: 5, scope: !441)
!455 = !DILocation(line: 207, column: 25, scope: !376)
!456 = !DILocation(line: 207, column: 30, scope: !376)
!457 = !DILocation(line: 207, column: 35, scope: !376)
!458 = !DILocation(line: 207, column: 43, scope: !376)
!459 = !DILocation(line: 207, column: 48, scope: !376)
!460 = !DILocation(line: 207, column: 5, scope: !376)
!461 = !DILabel(scope: !376, name: "ecb3", file: !3, line: 208)
!462 = !DILocation(line: 208, column: 5, scope: !376)
!463 = !DILocation(line: 208, column: 18, scope: !464)
!464 = distinct !DILexicalBlock(scope: !376, file: !3, line: 208, column: 12)
!465 = !DILocation(line: 208, column: 28, scope: !464)
!466 = !DILocation(line: 208, column: 16, scope: !464)
!467 = !DILocation(line: 208, column: 33, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !3, line: 208, column: 12)
!469 = !DILocation(line: 208, column: 35, scope: !468)
!470 = !DILocation(line: 208, column: 12, scope: !464)
!471 = !DILocation(line: 210, column: 22, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !3, line: 209, column: 5)
!473 = !DILocation(line: 210, column: 9, scope: !472)
!474 = !DILocation(line: 211, column: 23, scope: !472)
!475 = !DILocation(line: 211, column: 9, scope: !472)
!476 = !DILocation(line: 212, column: 24, scope: !472)
!477 = !DILocation(line: 212, column: 9, scope: !472)
!478 = !DILocation(line: 213, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !3, line: 213, column: 13)
!480 = !DILocation(line: 213, column: 15, scope: !479)
!481 = !DILocation(line: 213, column: 13, scope: !472)
!482 = !DILocation(line: 214, column: 28, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !3, line: 213, column: 21)
!484 = !DILocation(line: 214, column: 34, scope: !483)
!485 = !DILocation(line: 214, column: 39, scope: !483)
!486 = !DILocation(line: 214, column: 11, scope: !483)
!487 = !DILocation(line: 215, column: 9, scope: !483)
!488 = !DILocation(line: 216, column: 35, scope: !489)
!489 = distinct !DILexicalBlock(scope: !479, file: !3, line: 215, column: 16)
!490 = !DILocation(line: 216, column: 40, scope: !489)
!491 = !DILocation(line: 216, column: 45, scope: !489)
!492 = !DILocation(line: 216, column: 18, scope: !489)
!493 = !DILocation(line: 216, column: 16, scope: !489)
!494 = !DILocation(line: 217, column: 27, scope: !489)
!495 = !DILocation(line: 217, column: 32, scope: !489)
!496 = !DILocation(line: 217, column: 37, scope: !489)
!497 = !DILocation(line: 217, column: 11, scope: !489)
!498 = !DILocation(line: 219, column: 5, scope: !472)
!499 = !DILocation(line: 208, column: 41, scope: !468)
!500 = !DILocation(line: 208, column: 12, scope: !468)
!501 = distinct !{!501, !470, !502}
!502 = !DILocation(line: 219, column: 5, scope: !464)
!503 = !DILocation(line: 220, column: 18, scope: !376)
!504 = !DILocation(line: 220, column: 5, scope: !376)
!505 = !DILocation(line: 221, column: 19, scope: !376)
!506 = !DILocation(line: 221, column: 5, scope: !376)
!507 = !DILocation(line: 222, column: 29, scope: !376)
!508 = !DILocation(line: 222, column: 34, scope: !376)
!509 = !DILocation(line: 222, column: 39, scope: !376)
!510 = !DILocation(line: 222, column: 12, scope: !376)
!511 = !DILocation(line: 222, column: 10, scope: !376)
!512 = !DILocation(line: 223, column: 21, scope: !376)
!513 = !DILocation(line: 223, column: 26, scope: !376)
!514 = !DILocation(line: 223, column: 31, scope: !376)
!515 = !DILocation(line: 223, column: 5, scope: !376)
!516 = !DILocation(line: 227, column: 1, scope: !376)
