; ModuleID = 'aes.ll'
source_filename = "aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aes256_context = type { [32 x i8], [32 x i8], [32 x i8] }

@sbox = dso_local constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @rj_xtime(i8 zeroext %x) #0 {
entry:
  %tobool = icmp slt i8 %x, 0
  %shl = shl i8 %x, 1
  %xor = xor i8 %shl, 27
  %cond = select i1 %tobool, i8 %xor, i8 %shl
  ret i8 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_subBytes(i8* %buf) #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 15, %entry ]
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1
  %idxprom1 = zext i8 %0 to i64
  %arrayidx2 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom1
  %1 = load i8, i8* %arrayidx2, align 1
  %arrayidx4 = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv
  store i8 %1, i8* %arrayidx4, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %tobool = icmp eq i64 %indvars.iv, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_addRoundKey(i8* %buf, i8* %key) #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 15, %entry ]
  %arrayidx = getelementptr inbounds i8, i8* %key, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx2, align 1
  %xor2 = xor i8 %1, %0
  store i8 %xor2, i8* %arrayidx2, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %tobool = icmp eq i64 %indvars.iv, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 15, %entry ]
  %arrayidx = getelementptr inbounds i8, i8* %key, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1
  %arrayidx2 = getelementptr inbounds i8, i8* %cpk, i64 %indvars.iv
  store i8 %0, i8* %arrayidx2, align 1
  %arrayidx4 = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv
  %1 = load i8, i8* %arrayidx4, align 1
  %xor2 = xor i8 %1, %0
  store i8 %xor2, i8* %arrayidx4, align 1
  %add = add nuw nsw i64 %indvars.iv, 16
  %arrayidx9 = getelementptr inbounds i8, i8* %key, i64 %add
  %2 = load i8, i8* %arrayidx9, align 1
  %add11 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx13 = getelementptr inbounds i8, i8* %cpk, i64 %add11
  store i8 %2, i8* %arrayidx13, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %tobool = icmp eq i64 %indvars.iv, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_shiftRows(i8* %buf) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 1
  %0 = load i8, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds i8, i8* %buf, i64 5
  %1 = load i8, i8* %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds i8, i8* %buf, i64 1
  store i8 %1, i8* %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds i8, i8* %buf, i64 9
  %2 = load i8, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds i8, i8* %buf, i64 5
  store i8 %2, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds i8, i8* %buf, i64 13
  %3 = load i8, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds i8, i8* %buf, i64 9
  store i8 %3, i8* %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds i8, i8* %buf, i64 13
  store i8 %0, i8* %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds i8, i8* %buf, i64 10
  %4 = load i8, i8* %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds i8, i8* %buf, i64 2
  %5 = load i8, i8* %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds i8, i8* %buf, i64 10
  store i8 %5, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds i8, i8* %buf, i64 2
  store i8 %4, i8* %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds i8, i8* %buf, i64 3
  %6 = load i8, i8* %arrayidx12, align 1
  %arrayidx13 = getelementptr inbounds i8, i8* %buf, i64 15
  %7 = load i8, i8* %arrayidx13, align 1
  %arrayidx14 = getelementptr inbounds i8, i8* %buf, i64 3
  store i8 %7, i8* %arrayidx14, align 1
  %arrayidx15 = getelementptr inbounds i8, i8* %buf, i64 11
  %8 = load i8, i8* %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds i8, i8* %buf, i64 15
  store i8 %8, i8* %arrayidx16, align 1
  %arrayidx17 = getelementptr inbounds i8, i8* %buf, i64 7
  %9 = load i8, i8* %arrayidx17, align 1
  %arrayidx18 = getelementptr inbounds i8, i8* %buf, i64 11
  store i8 %9, i8* %arrayidx18, align 1
  %arrayidx19 = getelementptr inbounds i8, i8* %buf, i64 7
  store i8 %6, i8* %arrayidx19, align 1
  %arrayidx20 = getelementptr inbounds i8, i8* %buf, i64 14
  %10 = load i8, i8* %arrayidx20, align 1
  %arrayidx21 = getelementptr inbounds i8, i8* %buf, i64 6
  %11 = load i8, i8* %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds i8, i8* %buf, i64 14
  store i8 %11, i8* %arrayidx22, align 1
  %arrayidx23 = getelementptr inbounds i8, i8* %buf, i64 6
  store i8 %10, i8* %arrayidx23, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes_mixColumns(i8* %buf) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1
  %1 = or i64 %indvars.iv, 1
  %arrayidx4 = getelementptr inbounds i8, i8* %buf, i64 %1
  %2 = load i8, i8* %arrayidx4, align 1
  %3 = or i64 %indvars.iv, 2
  %arrayidx8 = getelementptr inbounds i8, i8* %buf, i64 %3
  %4 = load i8, i8* %arrayidx8, align 1
  %5 = or i64 %indvars.iv, 3
  %arrayidx12 = getelementptr inbounds i8, i8* %buf, i64 %5
  %6 = load i8, i8* %arrayidx12, align 1
  %xor2 = xor i8 %0, %2
  %xor163 = xor i8 %xor2, %4
  %xor184 = xor i8 %xor163, %6
  %xor235 = xor i8 %0, %2
  %call = call zeroext i8 @rj_xtime(i8 zeroext %xor235)
  %xor266 = xor i8 %xor184, %call
  %arrayidx28 = getelementptr inbounds i8, i8* %buf, i64 %indvars.iv
  %7 = load i8, i8* %arrayidx28, align 1
  %xor307 = xor i8 %7, %xor266
  store i8 %xor307, i8* %arrayidx28, align 1
  %xor358 = xor i8 %2, %4
  %call37 = call zeroext i8 @rj_xtime(i8 zeroext %xor358)
  %xor399 = xor i8 %xor184, %call37
  %8 = or i64 %indvars.iv, 1
  %arrayidx43 = getelementptr inbounds i8, i8* %buf, i64 %8
  %9 = load i8, i8* %arrayidx43, align 1
  %xor4510 = xor i8 %9, %xor399
  store i8 %xor4510, i8* %arrayidx43, align 1
  %xor5011 = xor i8 %4, %6
  %call52 = call zeroext i8 @rj_xtime(i8 zeroext %xor5011)
  %xor5412 = xor i8 %xor184, %call52
  %10 = or i64 %indvars.iv, 2
  %arrayidx58 = getelementptr inbounds i8, i8* %buf, i64 %10
  %11 = load i8, i8* %arrayidx58, align 1
  %xor6013 = xor i8 %11, %xor5412
  store i8 %xor6013, i8* %arrayidx58, align 1
  %xor6514 = xor i8 %6, %0
  %call67 = call zeroext i8 @rj_xtime(i8 zeroext %xor6514)
  %xor6915 = xor i8 %xor184, %call67
  %12 = or i64 %indvars.iv, 3
  %arrayidx73 = getelementptr inbounds i8, i8* %buf, i64 %12
  %13 = load i8, i8* %arrayidx73, align 1
  %xor7516 = xor i8 %13, %xor6915
  store i8 %xor7516, i8* %arrayidx73, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %cmp = icmp ult i64 %indvars.iv.next, 16
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @aes_expandEncKey(i8* %k, i8 zeroext %rc) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %k, i64 29
  %0 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %0 to i64
  %arrayidx1 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx1, align 1
  %xor3 = xor i8 %1, %rc
  %2 = load i8, i8* %k, align 1
  %xor54 = xor i8 %2, %xor3
  store i8 %xor54, i8* %k, align 1
  %arrayidx7 = getelementptr inbounds i8, i8* %k, i64 30
  %3 = load i8, i8* %arrayidx7, align 1
  %idxprom8 = zext i8 %3 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom8
  %4 = load i8, i8* %arrayidx9, align 1
  %arrayidx11 = getelementptr inbounds i8, i8* %k, i64 1
  %5 = load i8, i8* %arrayidx11, align 1
  %xor135 = xor i8 %5, %4
  store i8 %xor135, i8* %arrayidx11, align 1
  %arrayidx15 = getelementptr inbounds i8, i8* %k, i64 31
  %6 = load i8, i8* %arrayidx15, align 1
  %idxprom16 = zext i8 %6 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom16
  %7 = load i8, i8* %arrayidx17, align 1
  %arrayidx19 = getelementptr inbounds i8, i8* %k, i64 2
  %8 = load i8, i8* %arrayidx19, align 1
  %xor216 = xor i8 %8, %7
  store i8 %xor216, i8* %arrayidx19, align 1
  %arrayidx23 = getelementptr inbounds i8, i8* %k, i64 28
  %9 = load i8, i8* %arrayidx23, align 1
  %idxprom24 = zext i8 %9 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom24
  %10 = load i8, i8* %arrayidx25, align 1
  %arrayidx27 = getelementptr inbounds i8, i8* %k, i64 3
  %11 = load i8, i8* %arrayidx27, align 1
  %xor297 = xor i8 %11, %10
  store i8 %xor297, i8* %arrayidx27, align 1
  %12 = ashr i8 %rc, 7
  %narrow = and i8 %12, 27
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv20 = phi i64 [ 4, %entry ], [ %indvars.iv.next21, %for.body ]
  %sub = add nsw i64 %indvars.iv20, -4
  %arrayidx39 = getelementptr inbounds i8, i8* %k, i64 %sub
  %13 = load i8, i8* %arrayidx39, align 1
  %arrayidx42 = getelementptr inbounds i8, i8* %k, i64 %indvars.iv20
  %14 = load i8, i8* %arrayidx42, align 1
  %xor448 = xor i8 %14, %13
  store i8 %xor448, i8* %arrayidx42, align 1
  %sub47 = add nsw i64 %indvars.iv20, -3
  %arrayidx49 = getelementptr inbounds i8, i8* %k, i64 %sub47
  %15 = load i8, i8* %arrayidx49, align 1
  %16 = or i64 %indvars.iv20, 1
  %arrayidx53 = getelementptr inbounds i8, i8* %k, i64 %16
  %17 = load i8, i8* %arrayidx53, align 1
  %xor559 = xor i8 %17, %15
  store i8 %xor559, i8* %arrayidx53, align 1
  %sub58 = add nsw i64 %indvars.iv20, -2
  %arrayidx60 = getelementptr inbounds i8, i8* %k, i64 %sub58
  %18 = load i8, i8* %arrayidx60, align 1
  %19 = or i64 %indvars.iv20, 2
  %arrayidx65 = getelementptr inbounds i8, i8* %k, i64 %19
  %20 = load i8, i8* %arrayidx65, align 1
  %xor6710 = xor i8 %20, %18
  store i8 %xor6710, i8* %arrayidx65, align 1
  %sub70 = add nsw i64 %indvars.iv20, -1
  %arrayidx72 = getelementptr inbounds i8, i8* %k, i64 %sub70
  %21 = load i8, i8* %arrayidx72, align 1
  %22 = or i64 %indvars.iv20, 3
  %arrayidx77 = getelementptr inbounds i8, i8* %k, i64 %22
  %23 = load i8, i8* %arrayidx77, align 1
  %xor7911 = xor i8 %23, %21
  store i8 %xor7911, i8* %arrayidx77, align 1
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 4
  %cmp = icmp ult i64 %indvars.iv.next21, 16
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %shl = shl i8 %rc, 1
  %xor33 = xor i8 %shl, %narrow
  %arrayidx84 = getelementptr inbounds i8, i8* %k, i64 12
  %24 = load i8, i8* %arrayidx84, align 1
  %idxprom85 = zext i8 %24 to i64
  %arrayidx86 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom85
  %25 = load i8, i8* %arrayidx86, align 1
  %arrayidx88 = getelementptr inbounds i8, i8* %k, i64 16
  %26 = load i8, i8* %arrayidx88, align 1
  %xor9012 = xor i8 %26, %25
  store i8 %xor9012, i8* %arrayidx88, align 1
  %arrayidx92 = getelementptr inbounds i8, i8* %k, i64 13
  %27 = load i8, i8* %arrayidx92, align 1
  %idxprom93 = zext i8 %27 to i64
  %arrayidx94 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom93
  %28 = load i8, i8* %arrayidx94, align 1
  %arrayidx96 = getelementptr inbounds i8, i8* %k, i64 17
  %29 = load i8, i8* %arrayidx96, align 1
  %xor9813 = xor i8 %29, %28
  store i8 %xor9813, i8* %arrayidx96, align 1
  %arrayidx100 = getelementptr inbounds i8, i8* %k, i64 14
  %30 = load i8, i8* %arrayidx100, align 1
  %idxprom101 = zext i8 %30 to i64
  %arrayidx102 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom101
  %31 = load i8, i8* %arrayidx102, align 1
  %arrayidx104 = getelementptr inbounds i8, i8* %k, i64 18
  %32 = load i8, i8* %arrayidx104, align 1
  %xor10614 = xor i8 %32, %31
  store i8 %xor10614, i8* %arrayidx104, align 1
  %arrayidx108 = getelementptr inbounds i8, i8* %k, i64 15
  %33 = load i8, i8* %arrayidx108, align 1
  %idxprom109 = zext i8 %33 to i64
  %arrayidx110 = getelementptr inbounds [256 x i8], [256 x i8]* @sbox, i64 0, i64 %idxprom109
  %34 = load i8, i8* %arrayidx110, align 1
  %arrayidx112 = getelementptr inbounds i8, i8* %k, i64 19
  %35 = load i8, i8* %arrayidx112, align 1
  %xor11415 = xor i8 %35, %34
  store i8 %xor11415, i8* %arrayidx112, align 1
  br label %for.body120

for.body120:                                      ; preds = %for.end, %for.body120
  %indvars.iv = phi i64 [ 20, %for.end ], [ %indvars.iv.next, %for.body120 ]
  %sub122 = add nsw i64 %indvars.iv, -4
  %arrayidx124 = getelementptr inbounds i8, i8* %k, i64 %sub122
  %36 = load i8, i8* %arrayidx124, align 1
  %arrayidx127 = getelementptr inbounds i8, i8* %k, i64 %indvars.iv
  %37 = load i8, i8* %arrayidx127, align 1
  %xor12916 = xor i8 %37, %36
  store i8 %xor12916, i8* %arrayidx127, align 1
  %sub132 = add nsw i64 %indvars.iv, -3
  %arrayidx134 = getelementptr inbounds i8, i8* %k, i64 %sub132
  %38 = load i8, i8* %arrayidx134, align 1
  %39 = or i64 %indvars.iv, 1
  %arrayidx139 = getelementptr inbounds i8, i8* %k, i64 %39
  %40 = load i8, i8* %arrayidx139, align 1
  %xor14117 = xor i8 %40, %38
  store i8 %xor14117, i8* %arrayidx139, align 1
  %sub144 = add nsw i64 %indvars.iv, -2
  %arrayidx146 = getelementptr inbounds i8, i8* %k, i64 %sub144
  %41 = load i8, i8* %arrayidx146, align 1
  %42 = or i64 %indvars.iv, 2
  %arrayidx151 = getelementptr inbounds i8, i8* %k, i64 %42
  %43 = load i8, i8* %arrayidx151, align 1
  %xor15318 = xor i8 %43, %41
  store i8 %xor15318, i8* %arrayidx151, align 1
  %sub156 = add nsw i64 %indvars.iv, -1
  %arrayidx158 = getelementptr inbounds i8, i8* %k, i64 %sub156
  %44 = load i8, i8* %arrayidx158, align 1
  %45 = or i64 %indvars.iv, 3
  %arrayidx163 = getelementptr inbounds i8, i8* %k, i64 %45
  %46 = load i8, i8* %arrayidx163, align 1
  %xor16519 = xor i8 %46, %44
  store i8 %xor16519, i8* %arrayidx163, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %cmp118 = icmp ult i64 %indvars.iv.next, 32
  br i1 %cmp118, label %for.body120, label %for.end171

for.end171:                                       ; preds = %for.body120
  ret i8 %xor33
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @aes256_encrypt_ecb(%struct.aes256_context* %host_ctx, i8* %host_k, i8* %host_buf, %struct.aes256_context* %ctx, i8* %k, i8* %buf) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i8, i8* %host_k, i64 %indvars.iv
  %0 = load i8, i8* %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 2, i64 %indvars.iv
  store i8 %0, i8* %arrayidx3, align 1
  %arrayidx5 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 1, i64 %indvars.iv
  store i8 %0, i8* %arrayidx5, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond6 = icmp ne i64 %indvars.iv.next, 32
  br i1 %exitcond6, label %for.body, label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.body
  %dec4.ph = phi i8 [ 7, %for.body ]
  %rcon.03.ph = phi i8 [ 1, %for.body ]
  br label %for.body7

for.body7:                                        ; preds = %for.body7.preheader, %for.body7
  %dec4 = phi i8 [ %dec, %for.body7 ], [ %dec4.ph, %for.body7.preheader ]
  %rcon.03 = phi i8 [ %call, %for.body7 ], [ %rcon.03.ph, %for.body7.preheader ]
  %arraydecay = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 2, i64 0
  %call = call zeroext i8 @aes_expandEncKey(i8* nonnull %arraydecay, i8 zeroext %rcon.03)
  %dec = add nsw i8 %dec4, -1
  %tobool = icmp eq i8 %dec, 0
  br i1 %tobool, label %for.end9, label %for.body7

for.end9:                                         ; preds = %for.body7
  %arraydecay11 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 1, i64 0
  %arraydecay12 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 0, i64 0
  call void @aes_addRoundKey_cpy(i8* %host_buf, i8* nonnull %arraydecay11, i8* %arraydecay12)
  br label %for.body17

for.body17:                                       ; preds = %for.end9, %for.inc27
  %i.22 = phi i8 [ 1, %for.end9 ], [ %inc28, %for.inc27 ]
  %rcon.11 = phi i8 [ 1, %for.end9 ], [ %rcon.2, %for.inc27 ]
  call void @aes_subBytes(i8* %host_buf)
  call void @aes_shiftRows(i8* %host_buf)
  call void @aes_mixColumns(i8* %host_buf)
  %1 = and i8 %i.22, 1
  %tobool19 = icmp eq i8 %1, 0
  br i1 %tobool19, label %if.else, label %if.then

if.then:                                          ; preds = %for.body17
  %arrayidx21 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 0, i64 16
  call void @aes_addRoundKey(i8* %host_buf, i8* nonnull %arrayidx21)
  br label %for.inc27

if.else:                                          ; preds = %for.body17
  %arraydecay23 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 0, i64 0
  %call24 = call zeroext i8 @aes_expandEncKey(i8* %arraydecay23, i8 zeroext %rcon.11)
  %arraydecay26 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 0, i64 0
  call void @aes_addRoundKey(i8* %host_buf, i8* %arraydecay26)
  br label %for.inc27

for.inc27:                                        ; preds = %if.then, %if.else
  %rcon.2 = phi i8 [ %rcon.11, %if.then ], [ %call24, %if.else ]
  %inc28 = add nuw nsw i8 %i.22, 1
  %exitcond = icmp ne i8 %inc28, 14
  br i1 %exitcond, label %for.body17, label %for.end29

for.end29:                                        ; preds = %for.inc27
  %rcon.2.lcssa = phi i8 [ %rcon.2, %for.inc27 ]
  call void @aes_subBytes(i8* %host_buf)
  call void @aes_shiftRows(i8* %host_buf)
  %arraydecay31 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 0, i64 0
  %call32 = call zeroext i8 @aes_expandEncKey(i8* %arraydecay31, i8 zeroext %rcon.2.lcssa)
  %arraydecay34 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %host_ctx, i64 0, i32 0, i64 0
  call void @aes_addRoundKey(i8* %host_buf, i8* %arraydecay34)
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
