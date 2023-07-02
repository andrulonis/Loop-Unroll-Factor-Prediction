; ModuleID = 'viterbi.c'
source_filename = "viterbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @viterbi(double* %host_init, double* %host_transition, double* %host_emission, i8* %host_path, i8* %obs, double* %init, double* %transition, double* %emission, i8* %path) #0 !dbg !7 {
entry:
  %host_init.addr = alloca double*, align 8
  %host_transition.addr = alloca double*, align 8
  %host_emission.addr = alloca double*, align 8
  %host_path.addr = alloca i8*, align 8
  %obs.addr = alloca i8*, align 8
  %init.addr = alloca double*, align 8
  %transition.addr = alloca double*, align 8
  %emission.addr = alloca double*, align 8
  %path.addr = alloca i8*, align 8
  %llike = alloca [140 x [64 x double]], align 16
  %t = alloca i32, align 4
  %prev = alloca i8, align 1
  %curr = alloca i8, align 1
  %min_p = alloca double, align 8
  %p = alloca double, align 8
  %min_s = alloca i8, align 1
  %s = alloca i8, align 1
  store double* %host_init, double** %host_init.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_init.addr, metadata !24, metadata !DIExpression()), !dbg !25
  store double* %host_transition, double** %host_transition.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_transition.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store double* %host_emission, double** %host_emission.addr, align 8
  call void @llvm.dbg.declare(metadata double** %host_emission.addr, metadata !28, metadata !DIExpression()), !dbg !29
  store i8* %host_path, i8** %host_path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %host_path.addr, metadata !30, metadata !DIExpression()), !dbg !31
  store i8* %obs, i8** %obs.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %obs.addr, metadata !32, metadata !DIExpression()), !dbg !33
  store double* %init, double** %init.addr, align 8
  call void @llvm.dbg.declare(metadata double** %init.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store double* %transition, double** %transition.addr, align 8
  call void @llvm.dbg.declare(metadata double** %transition.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store double* %emission, double** %emission.addr, align 8
  call void @llvm.dbg.declare(metadata double** %emission.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata [140 x [64 x double]]* %llike, metadata !42, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %t, metadata !48, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i8* %prev, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8* %curr, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata double* %min_p, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata double* %p, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i8* %min_s, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i8* %s, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load double*, double** %host_init.addr, align 8, !dbg !66
  store double* %0, double** %init.addr, align 8, !dbg !67
  %1 = load double*, double** %host_transition.addr, align 8, !dbg !68
  store double* %1, double** %transition.addr, align 8, !dbg !69
  %2 = load double*, double** %host_emission.addr, align 8, !dbg !70
  store double* %2, double** %emission.addr, align 8, !dbg !71
  %3 = load i8*, i8** %host_path.addr, align 8, !dbg !72
  store i8* %3, i8** %path.addr, align 8, !dbg !73
  br label %L_init, !dbg !74

L_init:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !75), !dbg !76
  store i8 0, i8* %s, align 1, !dbg !77
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %L_init
  %4 = load i8, i8* %s, align 1, !dbg !80
  %conv = zext i8 %4 to i32, !dbg !80
  %cmp = icmp slt i32 %conv, 64, !dbg !82
  br i1 %cmp, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %for.cond
  %5 = load double*, double** %init.addr, align 8, !dbg !84
  %6 = load i8, i8* %s, align 1, !dbg !86
  %idxprom = zext i8 %6 to i64, !dbg !84
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom, !dbg !84
  %7 = load double, double* %arrayidx, align 8, !dbg !84
  %8 = load double*, double** %emission.addr, align 8, !dbg !87
  %9 = load i8, i8* %s, align 1, !dbg !88
  %conv2 = zext i8 %9 to i32, !dbg !88
  %mul = mul nsw i32 %conv2, 64, !dbg !89
  %10 = load i8*, i8** %obs.addr, align 8, !dbg !90
  %arrayidx3 = getelementptr inbounds i8, i8* %10, i64 0, !dbg !90
  %11 = load i8, i8* %arrayidx3, align 1, !dbg !90
  %conv4 = zext i8 %11 to i32, !dbg !90
  %add = add nsw i32 %mul, %conv4, !dbg !91
  %idxprom5 = sext i32 %add to i64, !dbg !87
  %arrayidx6 = getelementptr inbounds double, double* %8, i64 %idxprom5, !dbg !87
  %12 = load double, double* %arrayidx6, align 8, !dbg !87
  %add7 = fadd double %7, %12, !dbg !92
  %arrayidx8 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 0, !dbg !93
  %13 = load i8, i8* %s, align 1, !dbg !94
  %idxprom9 = zext i8 %13 to i64, !dbg !93
  %arrayidx10 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !93
  store double %add7, double* %arrayidx10, align 8, !dbg !95
  br label %for.inc, !dbg !96

for.inc:                                          ; preds = %for.body
  %14 = load i8, i8* %s, align 1, !dbg !97
  %inc = add i8 %14, 1, !dbg !97
  store i8 %inc, i8* %s, align 1, !dbg !97
  br label %for.cond, !dbg !98, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  br label %L_timestep, !dbg !100

L_timestep:                                       ; preds = %for.end
  call void @llvm.dbg.label(metadata !101), !dbg !102
  store i32 1, i32* %t, align 4, !dbg !103
  br label %for.cond11, !dbg !105

for.cond11:                                       ; preds = %for.inc78, %L_timestep
  %15 = load i32, i32* %t, align 4, !dbg !106
  %cmp12 = icmp slt i32 %15, 140, !dbg !108
  br i1 %cmp12, label %for.body14, label %for.end80, !dbg !109

for.body14:                                       ; preds = %for.cond11
  br label %L_curr_state, !dbg !110

L_curr_state:                                     ; preds = %for.body14
  call void @llvm.dbg.label(metadata !111), !dbg !113
  store i8 0, i8* %curr, align 1, !dbg !114
  br label %for.cond15, !dbg !116

for.cond15:                                       ; preds = %for.inc75, %L_curr_state
  %16 = load i8, i8* %curr, align 1, !dbg !117
  %conv16 = zext i8 %16 to i32, !dbg !117
  %cmp17 = icmp slt i32 %conv16, 64, !dbg !119
  br i1 %cmp17, label %for.body19, label %for.end77, !dbg !120

for.body19:                                       ; preds = %for.cond15
  store i8 0, i8* %prev, align 1, !dbg !121
  %17 = load i32, i32* %t, align 4, !dbg !123
  %sub = sub nsw i32 %17, 1, !dbg !124
  %idxprom20 = sext i32 %sub to i64, !dbg !125
  %arrayidx21 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %idxprom20, !dbg !125
  %18 = load i8, i8* %prev, align 1, !dbg !126
  %idxprom22 = zext i8 %18 to i64, !dbg !125
  %arrayidx23 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx21, i64 0, i64 %idxprom22, !dbg !125
  %19 = load double, double* %arrayidx23, align 8, !dbg !125
  %20 = load double*, double** %transition.addr, align 8, !dbg !127
  %21 = load i8, i8* %prev, align 1, !dbg !128
  %conv24 = zext i8 %21 to i32, !dbg !128
  %mul25 = mul nsw i32 %conv24, 64, !dbg !129
  %22 = load i8, i8* %curr, align 1, !dbg !130
  %conv26 = zext i8 %22 to i32, !dbg !130
  %add27 = add nsw i32 %mul25, %conv26, !dbg !131
  %idxprom28 = sext i32 %add27 to i64, !dbg !127
  %arrayidx29 = getelementptr inbounds double, double* %20, i64 %idxprom28, !dbg !127
  %23 = load double, double* %arrayidx29, align 8, !dbg !127
  %add30 = fadd double %19, %23, !dbg !132
  %24 = load double*, double** %emission.addr, align 8, !dbg !133
  %25 = load i8, i8* %curr, align 1, !dbg !134
  %conv31 = zext i8 %25 to i32, !dbg !134
  %mul32 = mul nsw i32 %conv31, 64, !dbg !135
  %26 = load i8*, i8** %obs.addr, align 8, !dbg !136
  %27 = load i32, i32* %t, align 4, !dbg !137
  %idxprom33 = sext i32 %27 to i64, !dbg !136
  %arrayidx34 = getelementptr inbounds i8, i8* %26, i64 %idxprom33, !dbg !136
  %28 = load i8, i8* %arrayidx34, align 1, !dbg !136
  %conv35 = zext i8 %28 to i32, !dbg !136
  %add36 = add nsw i32 %mul32, %conv35, !dbg !138
  %idxprom37 = sext i32 %add36 to i64, !dbg !133
  %arrayidx38 = getelementptr inbounds double, double* %24, i64 %idxprom37, !dbg !133
  %29 = load double, double* %arrayidx38, align 8, !dbg !133
  %add39 = fadd double %add30, %29, !dbg !139
  store double %add39, double* %min_p, align 8, !dbg !140
  br label %L_prev_state, !dbg !141

L_prev_state:                                     ; preds = %for.body19
  call void @llvm.dbg.label(metadata !142), !dbg !143
  store i8 1, i8* %prev, align 1, !dbg !144
  br label %for.cond40, !dbg !146

for.cond40:                                       ; preds = %for.inc68, %L_prev_state
  %30 = load i8, i8* %prev, align 1, !dbg !147
  %conv41 = zext i8 %30 to i32, !dbg !147
  %cmp42 = icmp slt i32 %conv41, 64, !dbg !149
  br i1 %cmp42, label %for.body44, label %for.end70, !dbg !150

for.body44:                                       ; preds = %for.cond40
  %31 = load i32, i32* %t, align 4, !dbg !151
  %sub45 = sub nsw i32 %31, 1, !dbg !153
  %idxprom46 = sext i32 %sub45 to i64, !dbg !154
  %arrayidx47 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %idxprom46, !dbg !154
  %32 = load i8, i8* %prev, align 1, !dbg !155
  %idxprom48 = zext i8 %32 to i64, !dbg !154
  %arrayidx49 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx47, i64 0, i64 %idxprom48, !dbg !154
  %33 = load double, double* %arrayidx49, align 8, !dbg !154
  %34 = load double*, double** %transition.addr, align 8, !dbg !156
  %35 = load i8, i8* %prev, align 1, !dbg !157
  %conv50 = zext i8 %35 to i32, !dbg !157
  %mul51 = mul nsw i32 %conv50, 64, !dbg !158
  %36 = load i8, i8* %curr, align 1, !dbg !159
  %conv52 = zext i8 %36 to i32, !dbg !159
  %add53 = add nsw i32 %mul51, %conv52, !dbg !160
  %idxprom54 = sext i32 %add53 to i64, !dbg !156
  %arrayidx55 = getelementptr inbounds double, double* %34, i64 %idxprom54, !dbg !156
  %37 = load double, double* %arrayidx55, align 8, !dbg !156
  %add56 = fadd double %33, %37, !dbg !161
  %38 = load double*, double** %emission.addr, align 8, !dbg !162
  %39 = load i8, i8* %curr, align 1, !dbg !163
  %conv57 = zext i8 %39 to i32, !dbg !163
  %mul58 = mul nsw i32 %conv57, 64, !dbg !164
  %40 = load i8*, i8** %obs.addr, align 8, !dbg !165
  %41 = load i32, i32* %t, align 4, !dbg !166
  %idxprom59 = sext i32 %41 to i64, !dbg !165
  %arrayidx60 = getelementptr inbounds i8, i8* %40, i64 %idxprom59, !dbg !165
  %42 = load i8, i8* %arrayidx60, align 1, !dbg !165
  %conv61 = zext i8 %42 to i32, !dbg !165
  %add62 = add nsw i32 %mul58, %conv61, !dbg !167
  %idxprom63 = sext i32 %add62 to i64, !dbg !162
  %arrayidx64 = getelementptr inbounds double, double* %38, i64 %idxprom63, !dbg !162
  %43 = load double, double* %arrayidx64, align 8, !dbg !162
  %add65 = fadd double %add56, %43, !dbg !168
  store double %add65, double* %p, align 8, !dbg !169
  %44 = load double, double* %p, align 8, !dbg !170
  %45 = load double, double* %min_p, align 8, !dbg !172
  %cmp66 = fcmp olt double %44, %45, !dbg !173
  br i1 %cmp66, label %if.then, label %if.end, !dbg !174

if.then:                                          ; preds = %for.body44
  %46 = load double, double* %p, align 8, !dbg !175
  store double %46, double* %min_p, align 8, !dbg !177
  br label %if.end, !dbg !178

if.end:                                           ; preds = %if.then, %for.body44
  br label %for.inc68, !dbg !179

for.inc68:                                        ; preds = %if.end
  %47 = load i8, i8* %prev, align 1, !dbg !180
  %inc69 = add i8 %47, 1, !dbg !180
  store i8 %inc69, i8* %prev, align 1, !dbg !180
  br label %for.cond40, !dbg !181, !llvm.loop !182

for.end70:                                        ; preds = %for.cond40
  %48 = load double, double* %min_p, align 8, !dbg !184
  %49 = load i32, i32* %t, align 4, !dbg !185
  %idxprom71 = sext i32 %49 to i64, !dbg !186
  %arrayidx72 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %idxprom71, !dbg !186
  %50 = load i8, i8* %curr, align 1, !dbg !187
  %idxprom73 = zext i8 %50 to i64, !dbg !186
  %arrayidx74 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx72, i64 0, i64 %idxprom73, !dbg !186
  store double %48, double* %arrayidx74, align 8, !dbg !188
  br label %for.inc75, !dbg !189

for.inc75:                                        ; preds = %for.end70
  %51 = load i8, i8* %curr, align 1, !dbg !190
  %inc76 = add i8 %51, 1, !dbg !190
  store i8 %inc76, i8* %curr, align 1, !dbg !190
  br label %for.cond15, !dbg !191, !llvm.loop !192

for.end77:                                        ; preds = %for.cond15
  br label %for.inc78, !dbg !194

for.inc78:                                        ; preds = %for.end77
  %52 = load i32, i32* %t, align 4, !dbg !195
  %inc79 = add nsw i32 %52, 1, !dbg !195
  store i32 %inc79, i32* %t, align 4, !dbg !195
  br label %for.cond11, !dbg !196, !llvm.loop !197

for.end80:                                        ; preds = %for.cond11
  store i8 0, i8* %min_s, align 1, !dbg !199
  %arrayidx81 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 139, !dbg !200
  %53 = load i8, i8* %min_s, align 1, !dbg !201
  %idxprom82 = zext i8 %53 to i64, !dbg !200
  %arrayidx83 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx81, i64 0, i64 %idxprom82, !dbg !200
  %54 = load double, double* %arrayidx83, align 8, !dbg !200
  store double %54, double* %min_p, align 8, !dbg !202
  br label %L_end, !dbg !203

L_end:                                            ; preds = %for.end80
  call void @llvm.dbg.label(metadata !204), !dbg !205
  store i8 1, i8* %s, align 1, !dbg !206
  br label %for.cond84, !dbg !208

for.cond84:                                       ; preds = %for.inc96, %L_end
  %55 = load i8, i8* %s, align 1, !dbg !209
  %conv85 = zext i8 %55 to i32, !dbg !209
  %cmp86 = icmp slt i32 %conv85, 64, !dbg !211
  br i1 %cmp86, label %for.body88, label %for.end98, !dbg !212

for.body88:                                       ; preds = %for.cond84
  %arrayidx89 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 139, !dbg !213
  %56 = load i8, i8* %s, align 1, !dbg !215
  %idxprom90 = zext i8 %56 to i64, !dbg !213
  %arrayidx91 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx89, i64 0, i64 %idxprom90, !dbg !213
  %57 = load double, double* %arrayidx91, align 8, !dbg !213
  store double %57, double* %p, align 8, !dbg !216
  %58 = load double, double* %p, align 8, !dbg !217
  %59 = load double, double* %min_p, align 8, !dbg !219
  %cmp92 = fcmp olt double %58, %59, !dbg !220
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !221

if.then94:                                        ; preds = %for.body88
  %60 = load double, double* %p, align 8, !dbg !222
  store double %60, double* %min_p, align 8, !dbg !224
  %61 = load i8, i8* %s, align 1, !dbg !225
  store i8 %61, i8* %min_s, align 1, !dbg !226
  br label %if.end95, !dbg !227

if.end95:                                         ; preds = %if.then94, %for.body88
  br label %for.inc96, !dbg !228

for.inc96:                                        ; preds = %if.end95
  %62 = load i8, i8* %s, align 1, !dbg !229
  %inc97 = add i8 %62, 1, !dbg !229
  store i8 %inc97, i8* %s, align 1, !dbg !229
  br label %for.cond84, !dbg !230, !llvm.loop !231

for.end98:                                        ; preds = %for.cond84
  %63 = load i8, i8* %min_s, align 1, !dbg !233
  %64 = load i8*, i8** %path.addr, align 8, !dbg !234
  %arrayidx99 = getelementptr inbounds i8, i8* %64, i64 139, !dbg !234
  store i8 %63, i8* %arrayidx99, align 1, !dbg !235
  br label %L_backtrack, !dbg !234

L_backtrack:                                      ; preds = %for.end98
  call void @llvm.dbg.label(metadata !236), !dbg !237
  store i32 138, i32* %t, align 4, !dbg !238
  br label %for.cond100, !dbg !240

for.cond100:                                      ; preds = %for.inc146, %L_backtrack
  %65 = load i32, i32* %t, align 4, !dbg !241
  %cmp101 = icmp sge i32 %65, 0, !dbg !243
  br i1 %cmp101, label %for.body103, label %for.end147, !dbg !244

for.body103:                                      ; preds = %for.cond100
  store i8 0, i8* %min_s, align 1, !dbg !245
  %66 = load i32, i32* %t, align 4, !dbg !247
  %idxprom104 = sext i32 %66 to i64, !dbg !248
  %arrayidx105 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %idxprom104, !dbg !248
  %67 = load i8, i8* %min_s, align 1, !dbg !249
  %idxprom106 = zext i8 %67 to i64, !dbg !248
  %arrayidx107 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx105, i64 0, i64 %idxprom106, !dbg !248
  %68 = load double, double* %arrayidx107, align 8, !dbg !248
  %69 = load double*, double** %transition.addr, align 8, !dbg !250
  %70 = load i8, i8* %min_s, align 1, !dbg !251
  %conv108 = zext i8 %70 to i32, !dbg !251
  %mul109 = mul nsw i32 %conv108, 64, !dbg !252
  %71 = load i8*, i8** %path.addr, align 8, !dbg !253
  %72 = load i32, i32* %t, align 4, !dbg !254
  %add110 = add nsw i32 %72, 1, !dbg !255
  %idxprom111 = sext i32 %add110 to i64, !dbg !253
  %arrayidx112 = getelementptr inbounds i8, i8* %71, i64 %idxprom111, !dbg !253
  %73 = load i8, i8* %arrayidx112, align 1, !dbg !253
  %conv113 = zext i8 %73 to i32, !dbg !253
  %add114 = add nsw i32 %mul109, %conv113, !dbg !256
  %idxprom115 = sext i32 %add114 to i64, !dbg !250
  %arrayidx116 = getelementptr inbounds double, double* %69, i64 %idxprom115, !dbg !250
  %74 = load double, double* %arrayidx116, align 8, !dbg !250
  %add117 = fadd double %68, %74, !dbg !257
  store double %add117, double* %min_p, align 8, !dbg !258
  br label %L_state, !dbg !259

L_state:                                          ; preds = %for.body103
  call void @llvm.dbg.label(metadata !260), !dbg !261
  store i8 1, i8* %s, align 1, !dbg !262
  br label %for.cond118, !dbg !264

for.cond118:                                      ; preds = %for.inc141, %L_state
  %75 = load i8, i8* %s, align 1, !dbg !265
  %conv119 = zext i8 %75 to i32, !dbg !265
  %cmp120 = icmp slt i32 %conv119, 64, !dbg !267
  br i1 %cmp120, label %for.body122, label %for.end143, !dbg !268

for.body122:                                      ; preds = %for.cond118
  %76 = load i32, i32* %t, align 4, !dbg !269
  %idxprom123 = sext i32 %76 to i64, !dbg !271
  %arrayidx124 = getelementptr inbounds [140 x [64 x double]], [140 x [64 x double]]* %llike, i64 0, i64 %idxprom123, !dbg !271
  %77 = load i8, i8* %s, align 1, !dbg !272
  %idxprom125 = zext i8 %77 to i64, !dbg !271
  %arrayidx126 = getelementptr inbounds [64 x double], [64 x double]* %arrayidx124, i64 0, i64 %idxprom125, !dbg !271
  %78 = load double, double* %arrayidx126, align 8, !dbg !271
  %79 = load double*, double** %transition.addr, align 8, !dbg !273
  %80 = load i8, i8* %s, align 1, !dbg !274
  %conv127 = zext i8 %80 to i32, !dbg !274
  %mul128 = mul nsw i32 %conv127, 64, !dbg !275
  %81 = load i8*, i8** %path.addr, align 8, !dbg !276
  %82 = load i32, i32* %t, align 4, !dbg !277
  %add129 = add nsw i32 %82, 1, !dbg !278
  %idxprom130 = sext i32 %add129 to i64, !dbg !276
  %arrayidx131 = getelementptr inbounds i8, i8* %81, i64 %idxprom130, !dbg !276
  %83 = load i8, i8* %arrayidx131, align 1, !dbg !276
  %conv132 = zext i8 %83 to i32, !dbg !276
  %add133 = add nsw i32 %mul128, %conv132, !dbg !279
  %idxprom134 = sext i32 %add133 to i64, !dbg !273
  %arrayidx135 = getelementptr inbounds double, double* %79, i64 %idxprom134, !dbg !273
  %84 = load double, double* %arrayidx135, align 8, !dbg !273
  %add136 = fadd double %78, %84, !dbg !280
  store double %add136, double* %p, align 8, !dbg !281
  %85 = load double, double* %p, align 8, !dbg !282
  %86 = load double, double* %min_p, align 8, !dbg !284
  %cmp137 = fcmp olt double %85, %86, !dbg !285
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !286

if.then139:                                       ; preds = %for.body122
  %87 = load double, double* %p, align 8, !dbg !287
  store double %87, double* %min_p, align 8, !dbg !289
  %88 = load i8, i8* %s, align 1, !dbg !290
  store i8 %88, i8* %min_s, align 1, !dbg !291
  br label %if.end140, !dbg !292

if.end140:                                        ; preds = %if.then139, %for.body122
  br label %for.inc141, !dbg !293

for.inc141:                                       ; preds = %if.end140
  %89 = load i8, i8* %s, align 1, !dbg !294
  %inc142 = add i8 %89, 1, !dbg !294
  store i8 %inc142, i8* %s, align 1, !dbg !294
  br label %for.cond118, !dbg !295, !llvm.loop !296

for.end143:                                       ; preds = %for.cond118
  %90 = load i8, i8* %min_s, align 1, !dbg !298
  %91 = load i8*, i8** %path.addr, align 8, !dbg !299
  %92 = load i32, i32* %t, align 4, !dbg !300
  %idxprom144 = sext i32 %92 to i64, !dbg !299
  %arrayidx145 = getelementptr inbounds i8, i8* %91, i64 %idxprom144, !dbg !299
  store i8 %90, i8* %arrayidx145, align 1, !dbg !301
  br label %for.inc146, !dbg !302

for.inc146:                                       ; preds = %for.end143
  %93 = load i32, i32* %t, align 4, !dbg !303
  %dec = add nsw i32 %93, -1, !dbg !303
  store i32 %dec, i32* %t, align 4, !dbg !303
  br label %for.cond100, !dbg !304, !llvm.loop !305

for.end147:                                       ; preds = %for.cond100
  ret i32 0, !dbg !307
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
!1 = !DIFile(filename: "viterbi.c", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/viterbi")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "viterbi", scope: !1, file: !1, line: 7, type: !8, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !15, !22, !11, !11, !11, !15}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "prob_t", file: !13, line: 14, baseType: !14)
!13 = !DIFile(filename: "./viterbi.h", directory: "/home/coco/work/LUF/hardware_ML/gather_loops_metrics/viterbi")
!14 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "state_t", file: !13, line: 15, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 24, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !20, line: 38, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "tok_t", file: !13, line: 13, baseType: !17)
!24 = !DILocalVariable(name: "host_init", arg: 1, scope: !7, file: !1, line: 7, type: !11)
!25 = !DILocation(line: 7, column: 21, scope: !7)
!26 = !DILocalVariable(name: "host_transition", arg: 2, scope: !7, file: !1, line: 8, type: !11)
!27 = !DILocation(line: 8, column: 21, scope: !7)
!28 = !DILocalVariable(name: "host_emission", arg: 3, scope: !7, file: !1, line: 9, type: !11)
!29 = !DILocation(line: 9, column: 21, scope: !7)
!30 = !DILocalVariable(name: "host_path", arg: 4, scope: !7, file: !1, line: 10, type: !15)
!31 = !DILocation(line: 10, column: 22, scope: !7)
!32 = !DILocalVariable(name: "obs", arg: 5, scope: !7, file: !1, line: 11, type: !22)
!33 = !DILocation(line: 11, column: 20, scope: !7)
!34 = !DILocalVariable(name: "init", arg: 6, scope: !7, file: !1, line: 12, type: !11)
!35 = !DILocation(line: 12, column: 21, scope: !7)
!36 = !DILocalVariable(name: "transition", arg: 7, scope: !7, file: !1, line: 13, type: !11)
!37 = !DILocation(line: 13, column: 21, scope: !7)
!38 = !DILocalVariable(name: "emission", arg: 8, scope: !7, file: !1, line: 14, type: !11)
!39 = !DILocation(line: 14, column: 21, scope: !7)
!40 = !DILocalVariable(name: "path", arg: 9, scope: !7, file: !1, line: 15, type: !15)
!41 = !DILocation(line: 15, column: 22, scope: !7)
!42 = !DILocalVariable(name: "llike", scope: !7, file: !1, line: 17, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 573440, elements: !44)
!44 = !{!45, !46}
!45 = !DISubrange(count: 140)
!46 = !DISubrange(count: 64)
!47 = !DILocation(line: 17, column: 10, scope: !7)
!48 = !DILocalVariable(name: "t", scope: !7, file: !1, line: 18, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "step_t", file: !13, line: 16, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !51, line: 26, baseType: !52)
!51 = !DIFile(filename: "/usr/include/bits/stdint-intn.h", directory: "")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 41, baseType: !10)
!53 = !DILocation(line: 18, column: 10, scope: !7)
!54 = !DILocalVariable(name: "prev", scope: !7, file: !1, line: 19, type: !16)
!55 = !DILocation(line: 19, column: 11, scope: !7)
!56 = !DILocalVariable(name: "curr", scope: !7, file: !1, line: 19, type: !16)
!57 = !DILocation(line: 19, column: 17, scope: !7)
!58 = !DILocalVariable(name: "min_p", scope: !7, file: !1, line: 20, type: !12)
!59 = !DILocation(line: 20, column: 10, scope: !7)
!60 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 20, type: !12)
!61 = !DILocation(line: 20, column: 17, scope: !7)
!62 = !DILocalVariable(name: "min_s", scope: !7, file: !1, line: 21, type: !16)
!63 = !DILocation(line: 21, column: 11, scope: !7)
!64 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 21, type: !16)
!65 = !DILocation(line: 21, column: 18, scope: !7)
!66 = !DILocation(line: 29, column: 10, scope: !7)
!67 = !DILocation(line: 29, column: 8, scope: !7)
!68 = !DILocation(line: 30, column: 16, scope: !7)
!69 = !DILocation(line: 30, column: 14, scope: !7)
!70 = !DILocation(line: 31, column: 14, scope: !7)
!71 = !DILocation(line: 31, column: 12, scope: !7)
!72 = !DILocation(line: 32, column: 10, scope: !7)
!73 = !DILocation(line: 32, column: 8, scope: !7)
!74 = !DILocation(line: 32, column: 3, scope: !7)
!75 = !DILabel(scope: !7, name: "L_init", file: !1, line: 36)
!76 = !DILocation(line: 36, column: 3, scope: !7)
!77 = !DILocation(line: 36, column: 17, scope: !78)
!78 = distinct !DILexicalBlock(scope: !7, file: !1, line: 36, column: 11)
!79 = !DILocation(line: 36, column: 16, scope: !78)
!80 = !DILocation(line: 36, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 36, column: 11)
!82 = !DILocation(line: 36, column: 22, scope: !81)
!83 = !DILocation(line: 36, column: 11, scope: !78)
!84 = !DILocation(line: 37, column: 19, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 36, column: 39)
!86 = !DILocation(line: 37, column: 24, scope: !85)
!87 = !DILocation(line: 37, column: 29, scope: !85)
!88 = !DILocation(line: 37, column: 38, scope: !85)
!89 = !DILocation(line: 37, column: 39, scope: !85)
!90 = !DILocation(line: 37, column: 49, scope: !85)
!91 = !DILocation(line: 37, column: 48, scope: !85)
!92 = !DILocation(line: 37, column: 27, scope: !85)
!93 = !DILocation(line: 37, column: 5, scope: !85)
!94 = !DILocation(line: 37, column: 14, scope: !85)
!95 = !DILocation(line: 37, column: 17, scope: !85)
!96 = !DILocation(line: 38, column: 3, scope: !85)
!97 = !DILocation(line: 36, column: 34, scope: !81)
!98 = !DILocation(line: 36, column: 11, scope: !81)
!99 = distinct !{!99, !83, !100}
!100 = !DILocation(line: 38, column: 3, scope: !78)
!101 = !DILabel(scope: !7, name: "L_timestep", file: !1, line: 41)
!102 = !DILocation(line: 41, column: 3, scope: !7)
!103 = !DILocation(line: 41, column: 21, scope: !104)
!104 = distinct !DILexicalBlock(scope: !7, file: !1, line: 41, column: 15)
!105 = !DILocation(line: 41, column: 20, scope: !104)
!106 = !DILocation(line: 41, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 41, column: 15)
!108 = !DILocation(line: 41, column: 26, scope: !107)
!109 = !DILocation(line: 41, column: 15, scope: !104)
!110 = !DILocation(line: 41, column: 40, scope: !107)
!111 = !DILabel(scope: !112, name: "L_curr_state", file: !1, line: 42)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 41, column: 40)
!113 = !DILocation(line: 42, column: 5, scope: !112)
!114 = !DILocation(line: 42, column: 28, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 42, column: 19)
!116 = !DILocation(line: 42, column: 24, scope: !115)
!117 = !DILocation(line: 42, column: 32, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 42, column: 19)
!119 = !DILocation(line: 42, column: 36, scope: !118)
!120 = !DILocation(line: 42, column: 19, scope: !115)
!121 = !DILocation(line: 44, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 42, column: 56)
!123 = !DILocation(line: 45, column: 21, scope: !122)
!124 = !DILocation(line: 45, column: 22, scope: !122)
!125 = !DILocation(line: 45, column: 15, scope: !122)
!126 = !DILocation(line: 45, column: 26, scope: !122)
!127 = !DILocation(line: 46, column: 15, scope: !122)
!128 = !DILocation(line: 46, column: 26, scope: !122)
!129 = !DILocation(line: 46, column: 30, scope: !122)
!130 = !DILocation(line: 46, column: 40, scope: !122)
!131 = !DILocation(line: 46, column: 39, scope: !122)
!132 = !DILocation(line: 45, column: 32, scope: !122)
!133 = !DILocation(line: 47, column: 15, scope: !122)
!134 = !DILocation(line: 47, column: 24, scope: !122)
!135 = !DILocation(line: 47, column: 28, scope: !122)
!136 = !DILocation(line: 47, column: 38, scope: !122)
!137 = !DILocation(line: 47, column: 42, scope: !122)
!138 = !DILocation(line: 47, column: 37, scope: !122)
!139 = !DILocation(line: 46, column: 46, scope: !122)
!140 = !DILocation(line: 45, column: 13, scope: !122)
!141 = !DILocation(line: 45, column: 7, scope: !122)
!142 = !DILabel(scope: !122, name: "L_prev_state", file: !1, line: 48)
!143 = !DILocation(line: 48, column: 7, scope: !122)
!144 = !DILocation(line: 48, column: 30, scope: !145)
!145 = distinct !DILexicalBlock(scope: !122, file: !1, line: 48, column: 21)
!146 = !DILocation(line: 48, column: 26, scope: !145)
!147 = !DILocation(line: 48, column: 34, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 48, column: 21)
!149 = !DILocation(line: 48, column: 38, scope: !148)
!150 = !DILocation(line: 48, column: 21, scope: !145)
!151 = !DILocation(line: 49, column: 19, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 48, column: 58)
!153 = !DILocation(line: 49, column: 20, scope: !152)
!154 = !DILocation(line: 49, column: 13, scope: !152)
!155 = !DILocation(line: 49, column: 24, scope: !152)
!156 = !DILocation(line: 50, column: 13, scope: !152)
!157 = !DILocation(line: 50, column: 24, scope: !152)
!158 = !DILocation(line: 50, column: 28, scope: !152)
!159 = !DILocation(line: 50, column: 38, scope: !152)
!160 = !DILocation(line: 50, column: 37, scope: !152)
!161 = !DILocation(line: 49, column: 30, scope: !152)
!162 = !DILocation(line: 51, column: 13, scope: !152)
!163 = !DILocation(line: 51, column: 22, scope: !152)
!164 = !DILocation(line: 51, column: 26, scope: !152)
!165 = !DILocation(line: 51, column: 36, scope: !152)
!166 = !DILocation(line: 51, column: 40, scope: !152)
!167 = !DILocation(line: 51, column: 35, scope: !152)
!168 = !DILocation(line: 50, column: 44, scope: !152)
!169 = !DILocation(line: 49, column: 11, scope: !152)
!170 = !DILocation(line: 52, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !152, file: !1, line: 52, column: 13)
!172 = !DILocation(line: 52, column: 15, scope: !171)
!173 = !DILocation(line: 52, column: 14, scope: !171)
!174 = !DILocation(line: 52, column: 13, scope: !152)
!175 = !DILocation(line: 53, column: 19, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 52, column: 23)
!177 = !DILocation(line: 53, column: 17, scope: !176)
!178 = !DILocation(line: 54, column: 9, scope: !176)
!179 = !DILocation(line: 55, column: 7, scope: !152)
!180 = !DILocation(line: 48, column: 53, scope: !148)
!181 = !DILocation(line: 48, column: 21, scope: !148)
!182 = distinct !{!182, !150, !183}
!183 = !DILocation(line: 55, column: 7, scope: !145)
!184 = !DILocation(line: 56, column: 24, scope: !122)
!185 = !DILocation(line: 56, column: 13, scope: !122)
!186 = !DILocation(line: 56, column: 7, scope: !122)
!187 = !DILocation(line: 56, column: 16, scope: !122)
!188 = !DILocation(line: 56, column: 22, scope: !122)
!189 = !DILocation(line: 57, column: 5, scope: !122)
!190 = !DILocation(line: 42, column: 51, scope: !118)
!191 = !DILocation(line: 42, column: 19, scope: !118)
!192 = distinct !{!192, !120, !193}
!193 = !DILocation(line: 57, column: 5, scope: !115)
!194 = !DILocation(line: 58, column: 3, scope: !112)
!195 = !DILocation(line: 41, column: 35, scope: !107)
!196 = !DILocation(line: 41, column: 15, scope: !107)
!197 = distinct !{!197, !109, !198}
!198 = !DILocation(line: 58, column: 3, scope: !104)
!199 = !DILocation(line: 61, column: 9, scope: !7)
!200 = !DILocation(line: 62, column: 11, scope: !7)
!201 = !DILocation(line: 62, column: 26, scope: !7)
!202 = !DILocation(line: 62, column: 9, scope: !7)
!203 = !DILocation(line: 62, column: 3, scope: !7)
!204 = !DILabel(scope: !7, name: "L_end", file: !1, line: 63)
!205 = !DILocation(line: 63, column: 3, scope: !7)
!206 = !DILocation(line: 63, column: 16, scope: !207)
!207 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 10)
!208 = !DILocation(line: 63, column: 15, scope: !207)
!209 = !DILocation(line: 63, column: 20, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !1, line: 63, column: 10)
!211 = !DILocation(line: 63, column: 21, scope: !210)
!212 = !DILocation(line: 63, column: 10, scope: !207)
!213 = !DILocation(line: 64, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !1, line: 63, column: 38)
!215 = !DILocation(line: 64, column: 24, scope: !214)
!216 = !DILocation(line: 64, column: 7, scope: !214)
!217 = !DILocation(line: 65, column: 9, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 65, column: 9)
!219 = !DILocation(line: 65, column: 11, scope: !218)
!220 = !DILocation(line: 65, column: 10, scope: !218)
!221 = !DILocation(line: 65, column: 9, scope: !214)
!222 = !DILocation(line: 66, column: 15, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !1, line: 65, column: 19)
!224 = !DILocation(line: 66, column: 13, scope: !223)
!225 = !DILocation(line: 67, column: 15, scope: !223)
!226 = !DILocation(line: 67, column: 13, scope: !223)
!227 = !DILocation(line: 68, column: 5, scope: !223)
!228 = !DILocation(line: 69, column: 3, scope: !214)
!229 = !DILocation(line: 63, column: 33, scope: !210)
!230 = !DILocation(line: 63, column: 10, scope: !210)
!231 = distinct !{!231, !212, !232}
!232 = !DILocation(line: 69, column: 3, scope: !207)
!233 = !DILocation(line: 70, column: 19, scope: !7)
!234 = !DILocation(line: 70, column: 3, scope: !7)
!235 = !DILocation(line: 70, column: 17, scope: !7)
!236 = !DILabel(scope: !7, name: "L_backtrack", file: !1, line: 73)
!237 = !DILocation(line: 73, column: 3, scope: !7)
!238 = !DILocation(line: 73, column: 22, scope: !239)
!239 = distinct !DILexicalBlock(scope: !7, file: !1, line: 73, column: 16)
!240 = !DILocation(line: 73, column: 21, scope: !239)
!241 = !DILocation(line: 73, column: 32, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 73, column: 16)
!243 = !DILocation(line: 73, column: 33, scope: !242)
!244 = !DILocation(line: 73, column: 16, scope: !239)
!245 = !DILocation(line: 74, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !242, file: !1, line: 73, column: 44)
!247 = !DILocation(line: 75, column: 19, scope: !246)
!248 = !DILocation(line: 75, column: 13, scope: !246)
!249 = !DILocation(line: 75, column: 22, scope: !246)
!250 = !DILocation(line: 75, column: 31, scope: !246)
!251 = !DILocation(line: 75, column: 42, scope: !246)
!252 = !DILocation(line: 75, column: 47, scope: !246)
!253 = !DILocation(line: 75, column: 57, scope: !246)
!254 = !DILocation(line: 75, column: 62, scope: !246)
!255 = !DILocation(line: 75, column: 63, scope: !246)
!256 = !DILocation(line: 75, column: 56, scope: !246)
!257 = !DILocation(line: 75, column: 29, scope: !246)
!258 = !DILocation(line: 75, column: 11, scope: !246)
!259 = !DILocation(line: 75, column: 5, scope: !246)
!260 = !DILabel(scope: !246, name: "L_state", file: !1, line: 76)
!261 = !DILocation(line: 76, column: 5, scope: !246)
!262 = !DILocation(line: 76, column: 20, scope: !263)
!263 = distinct !DILexicalBlock(scope: !246, file: !1, line: 76, column: 14)
!264 = !DILocation(line: 76, column: 19, scope: !263)
!265 = !DILocation(line: 76, column: 24, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !1, line: 76, column: 14)
!267 = !DILocation(line: 76, column: 25, scope: !266)
!268 = !DILocation(line: 76, column: 14, scope: !263)
!269 = !DILocation(line: 77, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 76, column: 42)
!271 = !DILocation(line: 77, column: 11, scope: !270)
!272 = !DILocation(line: 77, column: 20, scope: !270)
!273 = !DILocation(line: 77, column: 25, scope: !270)
!274 = !DILocation(line: 77, column: 36, scope: !270)
!275 = !DILocation(line: 77, column: 37, scope: !270)
!276 = !DILocation(line: 77, column: 47, scope: !270)
!277 = !DILocation(line: 77, column: 52, scope: !270)
!278 = !DILocation(line: 77, column: 53, scope: !270)
!279 = !DILocation(line: 77, column: 46, scope: !270)
!280 = !DILocation(line: 77, column: 23, scope: !270)
!281 = !DILocation(line: 77, column: 9, scope: !270)
!282 = !DILocation(line: 78, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !270, file: !1, line: 78, column: 11)
!284 = !DILocation(line: 78, column: 13, scope: !283)
!285 = !DILocation(line: 78, column: 12, scope: !283)
!286 = !DILocation(line: 78, column: 11, scope: !270)
!287 = !DILocation(line: 79, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !1, line: 78, column: 21)
!289 = !DILocation(line: 79, column: 15, scope: !288)
!290 = !DILocation(line: 80, column: 17, scope: !288)
!291 = !DILocation(line: 80, column: 15, scope: !288)
!292 = !DILocation(line: 81, column: 7, scope: !288)
!293 = !DILocation(line: 82, column: 5, scope: !270)
!294 = !DILocation(line: 76, column: 37, scope: !266)
!295 = !DILocation(line: 76, column: 14, scope: !266)
!296 = distinct !{!296, !268, !297}
!297 = !DILocation(line: 82, column: 5, scope: !263)
!298 = !DILocation(line: 83, column: 15, scope: !246)
!299 = !DILocation(line: 83, column: 5, scope: !246)
!300 = !DILocation(line: 83, column: 10, scope: !246)
!301 = !DILocation(line: 83, column: 13, scope: !246)
!302 = !DILocation(line: 84, column: 3, scope: !246)
!303 = !DILocation(line: 73, column: 39, scope: !242)
!304 = !DILocation(line: 73, column: 16, scope: !242)
!305 = distinct !{!305, !244, !306}
!306 = !DILocation(line: 84, column: 3, scope: !239)
!307 = !DILocation(line: 90, column: 3, scope: !7)
