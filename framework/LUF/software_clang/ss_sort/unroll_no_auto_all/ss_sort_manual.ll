; ModuleID = 'unroll_no_auto_all/ss_sort_manual.ll'
source_filename = "ss_sort_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print(i32* %a, i32 %size) #0 {
entry:
  %cmp1 = icmp sgt i32 %size, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %size to i64
  %0 = add i32 %size, -1
  %xtraiter = and i32 %size, 63
  %1 = icmp ult i32 %0, 63
  br i1 %1, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub i32 %size, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.63, %for.body ]
  %niter = phi i32 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.63, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %niter.nsub = sub i32 %niter, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next
  %3 = load i32, i32* %arrayidx.1, align 4
  %call.1 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3) #3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %niter.nsub.1 = sub i32 %niter.nsub, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.1
  %4 = load i32, i32* %arrayidx.2, align 4
  %call.2 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4) #3
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %niter.nsub.2 = sub i32 %niter.nsub.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.2
  %5 = load i32, i32* %arrayidx.3, align 4
  %call.3 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5) #3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %niter.nsub.3 = sub i32 %niter.nsub.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.3
  %6 = load i32, i32* %arrayidx.4, align 4
  %call.4 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6) #3
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %niter.nsub.4 = sub i32 %niter.nsub.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.4
  %7 = load i32, i32* %arrayidx.5, align 4
  %call.5 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7) #3
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %niter.nsub.5 = sub i32 %niter.nsub.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.5
  %8 = load i32, i32* %arrayidx.6, align 4
  %call.6 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8) #3
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %niter.nsub.6 = sub i32 %niter.nsub.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.6
  %9 = load i32, i32* %arrayidx.7, align 4
  %call.7 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9) #3
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %niter.nsub.7 = sub i32 %niter.nsub.6, 1
  %arrayidx.8 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.7
  %10 = load i32, i32* %arrayidx.8, align 4
  %call.8 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10) #3
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %niter.nsub.8 = sub i32 %niter.nsub.7, 1
  %arrayidx.9 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.8
  %11 = load i32, i32* %arrayidx.9, align 4
  %call.9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11) #3
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %niter.nsub.9 = sub i32 %niter.nsub.8, 1
  %arrayidx.10 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.9
  %12 = load i32, i32* %arrayidx.10, align 4
  %call.10 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12) #3
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %niter.nsub.10 = sub i32 %niter.nsub.9, 1
  %arrayidx.11 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.10
  %13 = load i32, i32* %arrayidx.11, align 4
  %call.11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13) #3
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %niter.nsub.11 = sub i32 %niter.nsub.10, 1
  %arrayidx.12 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.11
  %14 = load i32, i32* %arrayidx.12, align 4
  %call.12 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14) #3
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %niter.nsub.12 = sub i32 %niter.nsub.11, 1
  %arrayidx.13 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.12
  %15 = load i32, i32* %arrayidx.13, align 4
  %call.13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15) #3
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %niter.nsub.13 = sub i32 %niter.nsub.12, 1
  %arrayidx.14 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.13
  %16 = load i32, i32* %arrayidx.14, align 4
  %call.14 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16) #3
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %niter.nsub.14 = sub i32 %niter.nsub.13, 1
  %arrayidx.15 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.14
  %17 = load i32, i32* %arrayidx.15, align 4
  %call.15 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17) #3
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %niter.nsub.15 = sub i32 %niter.nsub.14, 1
  %arrayidx.16 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.15
  %18 = load i32, i32* %arrayidx.16, align 4
  %call.16 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18) #3
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %niter.nsub.16 = sub i32 %niter.nsub.15, 1
  %arrayidx.17 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.16
  %19 = load i32, i32* %arrayidx.17, align 4
  %call.17 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19) #3
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %niter.nsub.17 = sub i32 %niter.nsub.16, 1
  %arrayidx.18 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.17
  %20 = load i32, i32* %arrayidx.18, align 4
  %call.18 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20) #3
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %niter.nsub.18 = sub i32 %niter.nsub.17, 1
  %arrayidx.19 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.18
  %21 = load i32, i32* %arrayidx.19, align 4
  %call.19 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21) #3
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %niter.nsub.19 = sub i32 %niter.nsub.18, 1
  %arrayidx.20 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.19
  %22 = load i32, i32* %arrayidx.20, align 4
  %call.20 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %22) #3
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %niter.nsub.20 = sub i32 %niter.nsub.19, 1
  %arrayidx.21 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.20
  %23 = load i32, i32* %arrayidx.21, align 4
  %call.21 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23) #3
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %niter.nsub.21 = sub i32 %niter.nsub.20, 1
  %arrayidx.22 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.21
  %24 = load i32, i32* %arrayidx.22, align 4
  %call.22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24) #3
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %niter.nsub.22 = sub i32 %niter.nsub.21, 1
  %arrayidx.23 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.22
  %25 = load i32, i32* %arrayidx.23, align 4
  %call.23 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25) #3
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %niter.nsub.23 = sub i32 %niter.nsub.22, 1
  %arrayidx.24 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.23
  %26 = load i32, i32* %arrayidx.24, align 4
  %call.24 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26) #3
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %niter.nsub.24 = sub i32 %niter.nsub.23, 1
  %arrayidx.25 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.24
  %27 = load i32, i32* %arrayidx.25, align 4
  %call.25 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27) #3
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %niter.nsub.25 = sub i32 %niter.nsub.24, 1
  %arrayidx.26 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.25
  %28 = load i32, i32* %arrayidx.26, align 4
  %call.26 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28) #3
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %niter.nsub.26 = sub i32 %niter.nsub.25, 1
  %arrayidx.27 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.26
  %29 = load i32, i32* %arrayidx.27, align 4
  %call.27 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29) #3
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %niter.nsub.27 = sub i32 %niter.nsub.26, 1
  %arrayidx.28 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.27
  %30 = load i32, i32* %arrayidx.28, align 4
  %call.28 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30) #3
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %niter.nsub.28 = sub i32 %niter.nsub.27, 1
  %arrayidx.29 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.28
  %31 = load i32, i32* %arrayidx.29, align 4
  %call.29 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31) #3
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %niter.nsub.29 = sub i32 %niter.nsub.28, 1
  %arrayidx.30 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.29
  %32 = load i32, i32* %arrayidx.30, align 4
  %call.30 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32) #3
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %niter.nsub.30 = sub i32 %niter.nsub.29, 1
  %arrayidx.31 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.30
  %33 = load i32, i32* %arrayidx.31, align 4
  %call.31 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33) #3
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %niter.nsub.31 = sub i32 %niter.nsub.30, 1
  %arrayidx.32 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.31
  %34 = load i32, i32* %arrayidx.32, align 4
  %call.32 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34) #3
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %niter.nsub.32 = sub i32 %niter.nsub.31, 1
  %arrayidx.33 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.32
  %35 = load i32, i32* %arrayidx.33, align 4
  %call.33 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35) #3
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %niter.nsub.33 = sub i32 %niter.nsub.32, 1
  %arrayidx.34 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.33
  %36 = load i32, i32* %arrayidx.34, align 4
  %call.34 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %36) #3
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %niter.nsub.34 = sub i32 %niter.nsub.33, 1
  %arrayidx.35 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.34
  %37 = load i32, i32* %arrayidx.35, align 4
  %call.35 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %37) #3
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %niter.nsub.35 = sub i32 %niter.nsub.34, 1
  %arrayidx.36 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.35
  %38 = load i32, i32* %arrayidx.36, align 4
  %call.36 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38) #3
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %niter.nsub.36 = sub i32 %niter.nsub.35, 1
  %arrayidx.37 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.36
  %39 = load i32, i32* %arrayidx.37, align 4
  %call.37 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39) #3
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %niter.nsub.37 = sub i32 %niter.nsub.36, 1
  %arrayidx.38 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.37
  %40 = load i32, i32* %arrayidx.38, align 4
  %call.38 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40) #3
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %niter.nsub.38 = sub i32 %niter.nsub.37, 1
  %arrayidx.39 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.38
  %41 = load i32, i32* %arrayidx.39, align 4
  %call.39 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41) #3
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %niter.nsub.39 = sub i32 %niter.nsub.38, 1
  %arrayidx.40 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.39
  %42 = load i32, i32* %arrayidx.40, align 4
  %call.40 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42) #3
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %niter.nsub.40 = sub i32 %niter.nsub.39, 1
  %arrayidx.41 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.40
  %43 = load i32, i32* %arrayidx.41, align 4
  %call.41 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43) #3
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %niter.nsub.41 = sub i32 %niter.nsub.40, 1
  %arrayidx.42 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.41
  %44 = load i32, i32* %arrayidx.42, align 4
  %call.42 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44) #3
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %niter.nsub.42 = sub i32 %niter.nsub.41, 1
  %arrayidx.43 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.42
  %45 = load i32, i32* %arrayidx.43, align 4
  %call.43 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45) #3
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %niter.nsub.43 = sub i32 %niter.nsub.42, 1
  %arrayidx.44 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.43
  %46 = load i32, i32* %arrayidx.44, align 4
  %call.44 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %46) #3
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %niter.nsub.44 = sub i32 %niter.nsub.43, 1
  %arrayidx.45 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.44
  %47 = load i32, i32* %arrayidx.45, align 4
  %call.45 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47) #3
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %niter.nsub.45 = sub i32 %niter.nsub.44, 1
  %arrayidx.46 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.45
  %48 = load i32, i32* %arrayidx.46, align 4
  %call.46 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %48) #3
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %niter.nsub.46 = sub i32 %niter.nsub.45, 1
  %arrayidx.47 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.46
  %49 = load i32, i32* %arrayidx.47, align 4
  %call.47 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %49) #3
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %niter.nsub.47 = sub i32 %niter.nsub.46, 1
  %arrayidx.48 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.47
  %50 = load i32, i32* %arrayidx.48, align 4
  %call.48 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %50) #3
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %niter.nsub.48 = sub i32 %niter.nsub.47, 1
  %arrayidx.49 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.48
  %51 = load i32, i32* %arrayidx.49, align 4
  %call.49 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51) #3
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %niter.nsub.49 = sub i32 %niter.nsub.48, 1
  %arrayidx.50 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.49
  %52 = load i32, i32* %arrayidx.50, align 4
  %call.50 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52) #3
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %niter.nsub.50 = sub i32 %niter.nsub.49, 1
  %arrayidx.51 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.50
  %53 = load i32, i32* %arrayidx.51, align 4
  %call.51 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53) #3
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %niter.nsub.51 = sub i32 %niter.nsub.50, 1
  %arrayidx.52 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.51
  %54 = load i32, i32* %arrayidx.52, align 4
  %call.52 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54) #3
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %niter.nsub.52 = sub i32 %niter.nsub.51, 1
  %arrayidx.53 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.52
  %55 = load i32, i32* %arrayidx.53, align 4
  %call.53 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55) #3
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %niter.nsub.53 = sub i32 %niter.nsub.52, 1
  %arrayidx.54 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.53
  %56 = load i32, i32* %arrayidx.54, align 4
  %call.54 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %56) #3
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %niter.nsub.54 = sub i32 %niter.nsub.53, 1
  %arrayidx.55 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.54
  %57 = load i32, i32* %arrayidx.55, align 4
  %call.55 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57) #3
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %niter.nsub.55 = sub i32 %niter.nsub.54, 1
  %arrayidx.56 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.55
  %58 = load i32, i32* %arrayidx.56, align 4
  %call.56 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %58) #3
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %niter.nsub.56 = sub i32 %niter.nsub.55, 1
  %arrayidx.57 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.56
  %59 = load i32, i32* %arrayidx.57, align 4
  %call.57 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59) #3
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %niter.nsub.57 = sub i32 %niter.nsub.56, 1
  %arrayidx.58 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.57
  %60 = load i32, i32* %arrayidx.58, align 4
  %call.58 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %60) #3
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %niter.nsub.58 = sub i32 %niter.nsub.57, 1
  %arrayidx.59 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.58
  %61 = load i32, i32* %arrayidx.59, align 4
  %call.59 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %61) #3
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %niter.nsub.59 = sub i32 %niter.nsub.58, 1
  %arrayidx.60 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.59
  %62 = load i32, i32* %arrayidx.60, align 4
  %call.60 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %62) #3
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %niter.nsub.60 = sub i32 %niter.nsub.59, 1
  %arrayidx.61 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.60
  %63 = load i32, i32* %arrayidx.61, align 4
  %call.61 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %63) #3
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %niter.nsub.61 = sub i32 %niter.nsub.60, 1
  %arrayidx.62 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.61
  %64 = load i32, i32* %arrayidx.62, align 4
  %call.62 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %64) #3
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %niter.nsub.62 = sub i32 %niter.nsub.61, 1
  %arrayidx.63 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.62
  %65 = load i32, i32* %arrayidx.63, align 4
  %call.63 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %65) #3
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %niter.nsub.63 = sub i32 %niter.nsub.62, 1
  %niter.ncmp.63 = icmp ne i32 %niter.nsub.63, 0
  br i1 %niter.ncmp.63, label %for.body, label %for.end.loopexit.unr-lcssa.loopexit, !llvm.loop !2

for.end.loopexit.unr-lcssa.loopexit:              ; preds = %for.body
  %indvars.iv.unr.ph = phi i64 [ %indvars.iv.next.63, %for.body ]
  br label %for.end.loopexit.unr-lcssa

for.end.loopexit.unr-lcssa:                       ; preds = %for.end.loopexit.unr-lcssa.loopexit, %for.body.preheader
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.unr.ph, %for.end.loopexit.unr-lcssa.loopexit ]
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.epil.preheader, label %for.end.loopexit

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.unr, %for.body.epil.preheader ], [ %indvars.iv.next.epil, %for.body.epil ]
  %epil.iter = phi i32 [ %xtraiter, %for.body.epil.preheader ], [ %epil.iter.sub, %for.body.epil ]
  %arrayidx.epil = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.epil
  %66 = load i32, i32* %arrayidx.epil, align 4
  %call.epil = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %66) #3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %exitcond.epil = icmp ne i64 %indvars.iv.next.epil, %wide.trip.count
  %epil.iter.sub = sub i32 %epil.iter, 1
  %epil.iter.cmp = icmp ne i32 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.body.epil, label %for.end.loopexit.epilog-lcssa, !llvm.loop !4

for.end.loopexit.epilog-lcssa:                    ; preds = %for.body.epil
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.end.loopexit.unr-lcssa, %for.end.loopexit.epilog-lcssa
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @local_scan(i32* %bucket) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body3 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %0 = shl nsw i64 %indvars.iv, 4
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = shl nsw i64 %indvars.iv, 4
  %3 = add nuw nsw i64 %2, 1
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %3
  %4 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %4, %1
  store i32 %add8, i32* %arrayidx7, align 4
  %5 = shl nsw i64 %indvars.iv, 4
  %6 = add nuw nsw i64 %5, 2
  %7 = add nsw i64 %6, -1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %7
  %8 = load i32, i32* %arrayidx.1, align 4
  %9 = shl nsw i64 %indvars.iv, 4
  %10 = add nuw nsw i64 %9, 2
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %10
  %11 = load i32, i32* %arrayidx7.1, align 4
  %add8.1 = add nsw i32 %11, %8
  store i32 %add8.1, i32* %arrayidx7.1, align 4
  %12 = shl nsw i64 %indvars.iv, 4
  %13 = add nuw nsw i64 %12, 3
  %14 = add nsw i64 %13, -1
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %14
  %15 = load i32, i32* %arrayidx.2, align 4
  %16 = shl nsw i64 %indvars.iv, 4
  %17 = add nuw nsw i64 %16, 3
  %arrayidx7.2 = getelementptr inbounds i32, i32* %bucket, i64 %17
  %18 = load i32, i32* %arrayidx7.2, align 4
  %add8.2 = add nsw i32 %18, %15
  store i32 %add8.2, i32* %arrayidx7.2, align 4
  %19 = shl nsw i64 %indvars.iv, 4
  %20 = add nuw nsw i64 %19, 4
  %21 = add nsw i64 %20, -1
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %21
  %22 = load i32, i32* %arrayidx.3, align 4
  %23 = shl nsw i64 %indvars.iv, 4
  %24 = add nuw nsw i64 %23, 4
  %arrayidx7.3 = getelementptr inbounds i32, i32* %bucket, i64 %24
  %25 = load i32, i32* %arrayidx7.3, align 4
  %add8.3 = add nsw i32 %25, %22
  store i32 %add8.3, i32* %arrayidx7.3, align 4
  %26 = shl nsw i64 %indvars.iv, 4
  %27 = add nuw nsw i64 %26, 5
  %28 = add nsw i64 %27, -1
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %28
  %29 = load i32, i32* %arrayidx.4, align 4
  %30 = shl nsw i64 %indvars.iv, 4
  %31 = add nuw nsw i64 %30, 5
  %arrayidx7.4 = getelementptr inbounds i32, i32* %bucket, i64 %31
  %32 = load i32, i32* %arrayidx7.4, align 4
  %add8.4 = add nsw i32 %32, %29
  store i32 %add8.4, i32* %arrayidx7.4, align 4
  %33 = shl nsw i64 %indvars.iv, 4
  %34 = add nuw nsw i64 %33, 6
  %35 = add nsw i64 %34, -1
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %35
  %36 = load i32, i32* %arrayidx.5, align 4
  %37 = shl nsw i64 %indvars.iv, 4
  %38 = add nuw nsw i64 %37, 6
  %arrayidx7.5 = getelementptr inbounds i32, i32* %bucket, i64 %38
  %39 = load i32, i32* %arrayidx7.5, align 4
  %add8.5 = add nsw i32 %39, %36
  store i32 %add8.5, i32* %arrayidx7.5, align 4
  %40 = shl nsw i64 %indvars.iv, 4
  %41 = add nuw nsw i64 %40, 7
  %42 = add nsw i64 %41, -1
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %42
  %43 = load i32, i32* %arrayidx.6, align 4
  %44 = shl nsw i64 %indvars.iv, 4
  %45 = add nuw nsw i64 %44, 7
  %arrayidx7.6 = getelementptr inbounds i32, i32* %bucket, i64 %45
  %46 = load i32, i32* %arrayidx7.6, align 4
  %add8.6 = add nsw i32 %46, %43
  store i32 %add8.6, i32* %arrayidx7.6, align 4
  %47 = shl nsw i64 %indvars.iv, 4
  %48 = add nuw nsw i64 %47, 8
  %49 = add nsw i64 %48, -1
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %49
  %50 = load i32, i32* %arrayidx.7, align 4
  %51 = shl nsw i64 %indvars.iv, 4
  %52 = add nuw nsw i64 %51, 8
  %arrayidx7.7 = getelementptr inbounds i32, i32* %bucket, i64 %52
  %53 = load i32, i32* %arrayidx7.7, align 4
  %add8.7 = add nsw i32 %53, %50
  store i32 %add8.7, i32* %arrayidx7.7, align 4
  %54 = shl nsw i64 %indvars.iv, 4
  %55 = add nuw nsw i64 %54, 9
  %56 = add nsw i64 %55, -1
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %56
  %57 = load i32, i32* %arrayidx.8, align 4
  %58 = shl nsw i64 %indvars.iv, 4
  %59 = add nuw nsw i64 %58, 9
  %arrayidx7.8 = getelementptr inbounds i32, i32* %bucket, i64 %59
  %60 = load i32, i32* %arrayidx7.8, align 4
  %add8.8 = add nsw i32 %60, %57
  store i32 %add8.8, i32* %arrayidx7.8, align 4
  %61 = shl nsw i64 %indvars.iv, 4
  %62 = add nuw nsw i64 %61, 10
  %63 = add nsw i64 %62, -1
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %63
  %64 = load i32, i32* %arrayidx.9, align 4
  %65 = shl nsw i64 %indvars.iv, 4
  %66 = add nuw nsw i64 %65, 10
  %arrayidx7.9 = getelementptr inbounds i32, i32* %bucket, i64 %66
  %67 = load i32, i32* %arrayidx7.9, align 4
  %add8.9 = add nsw i32 %67, %64
  store i32 %add8.9, i32* %arrayidx7.9, align 4
  %68 = shl nsw i64 %indvars.iv, 4
  %69 = add nuw nsw i64 %68, 11
  %70 = add nsw i64 %69, -1
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %70
  %71 = load i32, i32* %arrayidx.10, align 4
  %72 = shl nsw i64 %indvars.iv, 4
  %73 = add nuw nsw i64 %72, 11
  %arrayidx7.10 = getelementptr inbounds i32, i32* %bucket, i64 %73
  %74 = load i32, i32* %arrayidx7.10, align 4
  %add8.10 = add nsw i32 %74, %71
  store i32 %add8.10, i32* %arrayidx7.10, align 4
  %75 = shl nsw i64 %indvars.iv, 4
  %76 = add nuw nsw i64 %75, 12
  %77 = add nsw i64 %76, -1
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %77
  %78 = load i32, i32* %arrayidx.11, align 4
  %79 = shl nsw i64 %indvars.iv, 4
  %80 = add nuw nsw i64 %79, 12
  %arrayidx7.11 = getelementptr inbounds i32, i32* %bucket, i64 %80
  %81 = load i32, i32* %arrayidx7.11, align 4
  %add8.11 = add nsw i32 %81, %78
  store i32 %add8.11, i32* %arrayidx7.11, align 4
  %82 = shl nsw i64 %indvars.iv, 4
  %83 = add nuw nsw i64 %82, 13
  %84 = add nsw i64 %83, -1
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %84
  %85 = load i32, i32* %arrayidx.12, align 4
  %86 = shl nsw i64 %indvars.iv, 4
  %87 = add nuw nsw i64 %86, 13
  %arrayidx7.12 = getelementptr inbounds i32, i32* %bucket, i64 %87
  %88 = load i32, i32* %arrayidx7.12, align 4
  %add8.12 = add nsw i32 %88, %85
  store i32 %add8.12, i32* %arrayidx7.12, align 4
  %89 = shl nsw i64 %indvars.iv, 4
  %90 = add nuw nsw i64 %89, 14
  %91 = add nsw i64 %90, -1
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %91
  %92 = load i32, i32* %arrayidx.13, align 4
  %93 = shl nsw i64 %indvars.iv, 4
  %94 = add nuw nsw i64 %93, 14
  %arrayidx7.13 = getelementptr inbounds i32, i32* %bucket, i64 %94
  %95 = load i32, i32* %arrayidx7.13, align 4
  %add8.13 = add nsw i32 %95, %92
  store i32 %add8.13, i32* %arrayidx7.13, align 4
  %96 = shl nsw i64 %indvars.iv, 4
  %97 = add nuw nsw i64 %96, 15
  %98 = add nsw i64 %97, -1
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %98
  %99 = load i32, i32* %arrayidx.14, align 4
  %100 = shl nsw i64 %indvars.iv, 4
  %101 = add nuw nsw i64 %100, 15
  %arrayidx7.14 = getelementptr inbounds i32, i32* %bucket, i64 %101
  %102 = load i32, i32* %arrayidx7.14, align 4
  %add8.14 = add nsw i32 %102, %99
  store i32 %add8.14, i32* %arrayidx7.14, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 128
  br i1 %exitcond, label %for.body, label %for.end11, !llvm.loop !5

for.end11:                                        ; preds = %for.body3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sum_scan(i32* %sum, i32* %bucket) #0 {
entry:
  store i32 0, i32* %sum, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.63, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next.63, %for.body.63 ]
  %0 = add nsw i64 %indvars.iv, -1
  %arrayidx1 = getelementptr inbounds i32, i32* %sum, i64 %0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = shl nsw i64 %indvars.iv, 4
  %3 = add nsw i64 %2, -1
  %arrayidx4 = getelementptr inbounds i32, i32* %bucket, i64 %3
  %4 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %1, %4
  %arrayidx6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  store i32 %add, i32* %arrayidx6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx1.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx1.1, align 4
  %6 = shl nsw i64 %indvars.iv.next, 4
  %7 = add nsw i64 %6, -1
  %arrayidx4.1 = getelementptr inbounds i32, i32* %bucket, i64 %7
  %8 = load i32, i32* %arrayidx4.1, align 4
  %add.1 = add nsw i32 %5, %8
  %arrayidx6.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next
  store i32 %add.1, i32* %arrayidx6.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx1.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next
  %9 = load i32, i32* %arrayidx1.2, align 4
  %10 = shl nsw i64 %indvars.iv.next.1, 4
  %11 = add nsw i64 %10, -1
  %arrayidx4.2 = getelementptr inbounds i32, i32* %bucket, i64 %11
  %12 = load i32, i32* %arrayidx4.2, align 4
  %add.2 = add nsw i32 %9, %12
  %arrayidx6.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.1
  store i32 %add.2, i32* %arrayidx6.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx1.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.1
  %13 = load i32, i32* %arrayidx1.3, align 4
  %14 = shl nsw i64 %indvars.iv.next.2, 4
  %15 = add nsw i64 %14, -1
  %arrayidx4.3 = getelementptr inbounds i32, i32* %bucket, i64 %15
  %16 = load i32, i32* %arrayidx4.3, align 4
  %add.3 = add nsw i32 %13, %16
  %arrayidx6.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.2
  store i32 %add.3, i32* %arrayidx6.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx1.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.2
  %17 = load i32, i32* %arrayidx1.4, align 4
  %18 = shl nsw i64 %indvars.iv.next.3, 4
  %19 = add nsw i64 %18, -1
  %arrayidx4.4 = getelementptr inbounds i32, i32* %bucket, i64 %19
  %20 = load i32, i32* %arrayidx4.4, align 4
  %add.4 = add nsw i32 %17, %20
  %arrayidx6.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.3
  store i32 %add.4, i32* %arrayidx6.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx1.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.3
  %21 = load i32, i32* %arrayidx1.5, align 4
  %22 = shl nsw i64 %indvars.iv.next.4, 4
  %23 = add nsw i64 %22, -1
  %arrayidx4.5 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx4.5, align 4
  %add.5 = add nsw i32 %21, %24
  %arrayidx6.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.4
  store i32 %add.5, i32* %arrayidx6.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx1.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.4
  %25 = load i32, i32* %arrayidx1.6, align 4
  %26 = shl nsw i64 %indvars.iv.next.5, 4
  %27 = add nsw i64 %26, -1
  %arrayidx4.6 = getelementptr inbounds i32, i32* %bucket, i64 %27
  %28 = load i32, i32* %arrayidx4.6, align 4
  %add.6 = add nsw i32 %25, %28
  %arrayidx6.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.5
  store i32 %add.6, i32* %arrayidx6.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %arrayidx1.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.5
  %29 = load i32, i32* %arrayidx1.7, align 4
  %30 = shl nsw i64 %indvars.iv.next.6, 4
  %31 = add nsw i64 %30, -1
  %arrayidx4.7 = getelementptr inbounds i32, i32* %bucket, i64 %31
  %32 = load i32, i32* %arrayidx4.7, align 4
  %add.7 = add nsw i32 %29, %32
  %arrayidx6.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.6
  store i32 %add.7, i32* %arrayidx6.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %arrayidx1.8 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.6
  %33 = load i32, i32* %arrayidx1.8, align 4
  %34 = shl nsw i64 %indvars.iv.next.7, 4
  %35 = add nsw i64 %34, -1
  %arrayidx4.8 = getelementptr inbounds i32, i32* %bucket, i64 %35
  %36 = load i32, i32* %arrayidx4.8, align 4
  %add.8 = add nsw i32 %33, %36
  %arrayidx6.8 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.7
  store i32 %add.8, i32* %arrayidx6.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %arrayidx1.9 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.7
  %37 = load i32, i32* %arrayidx1.9, align 4
  %38 = shl nsw i64 %indvars.iv.next.8, 4
  %39 = add nsw i64 %38, -1
  %arrayidx4.9 = getelementptr inbounds i32, i32* %bucket, i64 %39
  %40 = load i32, i32* %arrayidx4.9, align 4
  %add.9 = add nsw i32 %37, %40
  %arrayidx6.9 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.8
  store i32 %add.9, i32* %arrayidx6.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %arrayidx1.10 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.8
  %41 = load i32, i32* %arrayidx1.10, align 4
  %42 = shl nsw i64 %indvars.iv.next.9, 4
  %43 = add nsw i64 %42, -1
  %arrayidx4.10 = getelementptr inbounds i32, i32* %bucket, i64 %43
  %44 = load i32, i32* %arrayidx4.10, align 4
  %add.10 = add nsw i32 %41, %44
  %arrayidx6.10 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.9
  store i32 %add.10, i32* %arrayidx6.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %arrayidx1.11 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.9
  %45 = load i32, i32* %arrayidx1.11, align 4
  %46 = shl nsw i64 %indvars.iv.next.10, 4
  %47 = add nsw i64 %46, -1
  %arrayidx4.11 = getelementptr inbounds i32, i32* %bucket, i64 %47
  %48 = load i32, i32* %arrayidx4.11, align 4
  %add.11 = add nsw i32 %45, %48
  %arrayidx6.11 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.10
  store i32 %add.11, i32* %arrayidx6.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %arrayidx1.12 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.10
  %49 = load i32, i32* %arrayidx1.12, align 4
  %50 = shl nsw i64 %indvars.iv.next.11, 4
  %51 = add nsw i64 %50, -1
  %arrayidx4.12 = getelementptr inbounds i32, i32* %bucket, i64 %51
  %52 = load i32, i32* %arrayidx4.12, align 4
  %add.12 = add nsw i32 %49, %52
  %arrayidx6.12 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.11
  store i32 %add.12, i32* %arrayidx6.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %arrayidx1.13 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.11
  %53 = load i32, i32* %arrayidx1.13, align 4
  %54 = shl nsw i64 %indvars.iv.next.12, 4
  %55 = add nsw i64 %54, -1
  %arrayidx4.13 = getelementptr inbounds i32, i32* %bucket, i64 %55
  %56 = load i32, i32* %arrayidx4.13, align 4
  %add.13 = add nsw i32 %53, %56
  %arrayidx6.13 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.12
  store i32 %add.13, i32* %arrayidx6.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %arrayidx1.14 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.12
  %57 = load i32, i32* %arrayidx1.14, align 4
  %58 = shl nsw i64 %indvars.iv.next.13, 4
  %59 = add nsw i64 %58, -1
  %arrayidx4.14 = getelementptr inbounds i32, i32* %bucket, i64 %59
  %60 = load i32, i32* %arrayidx4.14, align 4
  %add.14 = add nsw i32 %57, %60
  %arrayidx6.14 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.13
  store i32 %add.14, i32* %arrayidx6.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %arrayidx1.15 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.13
  %61 = load i32, i32* %arrayidx1.15, align 4
  %62 = shl nsw i64 %indvars.iv.next.14, 4
  %63 = add nsw i64 %62, -1
  %arrayidx4.15 = getelementptr inbounds i32, i32* %bucket, i64 %63
  %64 = load i32, i32* %arrayidx4.15, align 4
  %add.15 = add nsw i32 %61, %64
  %arrayidx6.15 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.14
  store i32 %add.15, i32* %arrayidx6.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %arrayidx1.16 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.14
  %65 = load i32, i32* %arrayidx1.16, align 4
  %66 = shl nsw i64 %indvars.iv.next.15, 4
  %67 = add nsw i64 %66, -1
  %arrayidx4.16 = getelementptr inbounds i32, i32* %bucket, i64 %67
  %68 = load i32, i32* %arrayidx4.16, align 4
  %add.16 = add nsw i32 %65, %68
  %arrayidx6.16 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.15
  store i32 %add.16, i32* %arrayidx6.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %arrayidx1.17 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.15
  %69 = load i32, i32* %arrayidx1.17, align 4
  %70 = shl nsw i64 %indvars.iv.next.16, 4
  %71 = add nsw i64 %70, -1
  %arrayidx4.17 = getelementptr inbounds i32, i32* %bucket, i64 %71
  %72 = load i32, i32* %arrayidx4.17, align 4
  %add.17 = add nsw i32 %69, %72
  %arrayidx6.17 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.16
  store i32 %add.17, i32* %arrayidx6.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %arrayidx1.18 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.16
  %73 = load i32, i32* %arrayidx1.18, align 4
  %74 = shl nsw i64 %indvars.iv.next.17, 4
  %75 = add nsw i64 %74, -1
  %arrayidx4.18 = getelementptr inbounds i32, i32* %bucket, i64 %75
  %76 = load i32, i32* %arrayidx4.18, align 4
  %add.18 = add nsw i32 %73, %76
  %arrayidx6.18 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.17
  store i32 %add.18, i32* %arrayidx6.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %arrayidx1.19 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.17
  %77 = load i32, i32* %arrayidx1.19, align 4
  %78 = shl nsw i64 %indvars.iv.next.18, 4
  %79 = add nsw i64 %78, -1
  %arrayidx4.19 = getelementptr inbounds i32, i32* %bucket, i64 %79
  %80 = load i32, i32* %arrayidx4.19, align 4
  %add.19 = add nsw i32 %77, %80
  %arrayidx6.19 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.18
  store i32 %add.19, i32* %arrayidx6.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %arrayidx1.20 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.18
  %81 = load i32, i32* %arrayidx1.20, align 4
  %82 = shl nsw i64 %indvars.iv.next.19, 4
  %83 = add nsw i64 %82, -1
  %arrayidx4.20 = getelementptr inbounds i32, i32* %bucket, i64 %83
  %84 = load i32, i32* %arrayidx4.20, align 4
  %add.20 = add nsw i32 %81, %84
  %arrayidx6.20 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.19
  store i32 %add.20, i32* %arrayidx6.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %arrayidx1.21 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.19
  %85 = load i32, i32* %arrayidx1.21, align 4
  %86 = shl nsw i64 %indvars.iv.next.20, 4
  %87 = add nsw i64 %86, -1
  %arrayidx4.21 = getelementptr inbounds i32, i32* %bucket, i64 %87
  %88 = load i32, i32* %arrayidx4.21, align 4
  %add.21 = add nsw i32 %85, %88
  %arrayidx6.21 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.20
  store i32 %add.21, i32* %arrayidx6.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %arrayidx1.22 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.20
  %89 = load i32, i32* %arrayidx1.22, align 4
  %90 = shl nsw i64 %indvars.iv.next.21, 4
  %91 = add nsw i64 %90, -1
  %arrayidx4.22 = getelementptr inbounds i32, i32* %bucket, i64 %91
  %92 = load i32, i32* %arrayidx4.22, align 4
  %add.22 = add nsw i32 %89, %92
  %arrayidx6.22 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.21
  store i32 %add.22, i32* %arrayidx6.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %arrayidx1.23 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.21
  %93 = load i32, i32* %arrayidx1.23, align 4
  %94 = shl nsw i64 %indvars.iv.next.22, 4
  %95 = add nsw i64 %94, -1
  %arrayidx4.23 = getelementptr inbounds i32, i32* %bucket, i64 %95
  %96 = load i32, i32* %arrayidx4.23, align 4
  %add.23 = add nsw i32 %93, %96
  %arrayidx6.23 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.22
  store i32 %add.23, i32* %arrayidx6.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %arrayidx1.24 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.22
  %97 = load i32, i32* %arrayidx1.24, align 4
  %98 = shl nsw i64 %indvars.iv.next.23, 4
  %99 = add nsw i64 %98, -1
  %arrayidx4.24 = getelementptr inbounds i32, i32* %bucket, i64 %99
  %100 = load i32, i32* %arrayidx4.24, align 4
  %add.24 = add nsw i32 %97, %100
  %arrayidx6.24 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.23
  store i32 %add.24, i32* %arrayidx6.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %arrayidx1.25 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.23
  %101 = load i32, i32* %arrayidx1.25, align 4
  %102 = shl nsw i64 %indvars.iv.next.24, 4
  %103 = add nsw i64 %102, -1
  %arrayidx4.25 = getelementptr inbounds i32, i32* %bucket, i64 %103
  %104 = load i32, i32* %arrayidx4.25, align 4
  %add.25 = add nsw i32 %101, %104
  %arrayidx6.25 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.24
  store i32 %add.25, i32* %arrayidx6.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %arrayidx1.26 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.24
  %105 = load i32, i32* %arrayidx1.26, align 4
  %106 = shl nsw i64 %indvars.iv.next.25, 4
  %107 = add nsw i64 %106, -1
  %arrayidx4.26 = getelementptr inbounds i32, i32* %bucket, i64 %107
  %108 = load i32, i32* %arrayidx4.26, align 4
  %add.26 = add nsw i32 %105, %108
  %arrayidx6.26 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.25
  store i32 %add.26, i32* %arrayidx6.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %arrayidx1.27 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.25
  %109 = load i32, i32* %arrayidx1.27, align 4
  %110 = shl nsw i64 %indvars.iv.next.26, 4
  %111 = add nsw i64 %110, -1
  %arrayidx4.27 = getelementptr inbounds i32, i32* %bucket, i64 %111
  %112 = load i32, i32* %arrayidx4.27, align 4
  %add.27 = add nsw i32 %109, %112
  %arrayidx6.27 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.26
  store i32 %add.27, i32* %arrayidx6.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %arrayidx1.28 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.26
  %113 = load i32, i32* %arrayidx1.28, align 4
  %114 = shl nsw i64 %indvars.iv.next.27, 4
  %115 = add nsw i64 %114, -1
  %arrayidx4.28 = getelementptr inbounds i32, i32* %bucket, i64 %115
  %116 = load i32, i32* %arrayidx4.28, align 4
  %add.28 = add nsw i32 %113, %116
  %arrayidx6.28 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.27
  store i32 %add.28, i32* %arrayidx6.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %arrayidx1.29 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.27
  %117 = load i32, i32* %arrayidx1.29, align 4
  %118 = shl nsw i64 %indvars.iv.next.28, 4
  %119 = add nsw i64 %118, -1
  %arrayidx4.29 = getelementptr inbounds i32, i32* %bucket, i64 %119
  %120 = load i32, i32* %arrayidx4.29, align 4
  %add.29 = add nsw i32 %117, %120
  %arrayidx6.29 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.28
  store i32 %add.29, i32* %arrayidx6.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %arrayidx1.30 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.28
  %121 = load i32, i32* %arrayidx1.30, align 4
  %122 = shl nsw i64 %indvars.iv.next.29, 4
  %123 = add nsw i64 %122, -1
  %arrayidx4.30 = getelementptr inbounds i32, i32* %bucket, i64 %123
  %124 = load i32, i32* %arrayidx4.30, align 4
  %add.30 = add nsw i32 %121, %124
  %arrayidx6.30 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.29
  store i32 %add.30, i32* %arrayidx6.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %arrayidx1.31 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.29
  %125 = load i32, i32* %arrayidx1.31, align 4
  %126 = shl nsw i64 %indvars.iv.next.30, 4
  %127 = add nsw i64 %126, -1
  %arrayidx4.31 = getelementptr inbounds i32, i32* %bucket, i64 %127
  %128 = load i32, i32* %arrayidx4.31, align 4
  %add.31 = add nsw i32 %125, %128
  %arrayidx6.31 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.30
  store i32 %add.31, i32* %arrayidx6.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %arrayidx1.32 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.30
  %129 = load i32, i32* %arrayidx1.32, align 4
  %130 = shl nsw i64 %indvars.iv.next.31, 4
  %131 = add nsw i64 %130, -1
  %arrayidx4.32 = getelementptr inbounds i32, i32* %bucket, i64 %131
  %132 = load i32, i32* %arrayidx4.32, align 4
  %add.32 = add nsw i32 %129, %132
  %arrayidx6.32 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.31
  store i32 %add.32, i32* %arrayidx6.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %arrayidx1.33 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.31
  %133 = load i32, i32* %arrayidx1.33, align 4
  %134 = shl nsw i64 %indvars.iv.next.32, 4
  %135 = add nsw i64 %134, -1
  %arrayidx4.33 = getelementptr inbounds i32, i32* %bucket, i64 %135
  %136 = load i32, i32* %arrayidx4.33, align 4
  %add.33 = add nsw i32 %133, %136
  %arrayidx6.33 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.32
  store i32 %add.33, i32* %arrayidx6.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %arrayidx1.34 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.32
  %137 = load i32, i32* %arrayidx1.34, align 4
  %138 = shl nsw i64 %indvars.iv.next.33, 4
  %139 = add nsw i64 %138, -1
  %arrayidx4.34 = getelementptr inbounds i32, i32* %bucket, i64 %139
  %140 = load i32, i32* %arrayidx4.34, align 4
  %add.34 = add nsw i32 %137, %140
  %arrayidx6.34 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.33
  store i32 %add.34, i32* %arrayidx6.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %arrayidx1.35 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.33
  %141 = load i32, i32* %arrayidx1.35, align 4
  %142 = shl nsw i64 %indvars.iv.next.34, 4
  %143 = add nsw i64 %142, -1
  %arrayidx4.35 = getelementptr inbounds i32, i32* %bucket, i64 %143
  %144 = load i32, i32* %arrayidx4.35, align 4
  %add.35 = add nsw i32 %141, %144
  %arrayidx6.35 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.34
  store i32 %add.35, i32* %arrayidx6.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %arrayidx1.36 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.34
  %145 = load i32, i32* %arrayidx1.36, align 4
  %146 = shl nsw i64 %indvars.iv.next.35, 4
  %147 = add nsw i64 %146, -1
  %arrayidx4.36 = getelementptr inbounds i32, i32* %bucket, i64 %147
  %148 = load i32, i32* %arrayidx4.36, align 4
  %add.36 = add nsw i32 %145, %148
  %arrayidx6.36 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.35
  store i32 %add.36, i32* %arrayidx6.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %arrayidx1.37 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.35
  %149 = load i32, i32* %arrayidx1.37, align 4
  %150 = shl nsw i64 %indvars.iv.next.36, 4
  %151 = add nsw i64 %150, -1
  %arrayidx4.37 = getelementptr inbounds i32, i32* %bucket, i64 %151
  %152 = load i32, i32* %arrayidx4.37, align 4
  %add.37 = add nsw i32 %149, %152
  %arrayidx6.37 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.36
  store i32 %add.37, i32* %arrayidx6.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %arrayidx1.38 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.36
  %153 = load i32, i32* %arrayidx1.38, align 4
  %154 = shl nsw i64 %indvars.iv.next.37, 4
  %155 = add nsw i64 %154, -1
  %arrayidx4.38 = getelementptr inbounds i32, i32* %bucket, i64 %155
  %156 = load i32, i32* %arrayidx4.38, align 4
  %add.38 = add nsw i32 %153, %156
  %arrayidx6.38 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.37
  store i32 %add.38, i32* %arrayidx6.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %arrayidx1.39 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.37
  %157 = load i32, i32* %arrayidx1.39, align 4
  %158 = shl nsw i64 %indvars.iv.next.38, 4
  %159 = add nsw i64 %158, -1
  %arrayidx4.39 = getelementptr inbounds i32, i32* %bucket, i64 %159
  %160 = load i32, i32* %arrayidx4.39, align 4
  %add.39 = add nsw i32 %157, %160
  %arrayidx6.39 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.38
  store i32 %add.39, i32* %arrayidx6.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %arrayidx1.40 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.38
  %161 = load i32, i32* %arrayidx1.40, align 4
  %162 = shl nsw i64 %indvars.iv.next.39, 4
  %163 = add nsw i64 %162, -1
  %arrayidx4.40 = getelementptr inbounds i32, i32* %bucket, i64 %163
  %164 = load i32, i32* %arrayidx4.40, align 4
  %add.40 = add nsw i32 %161, %164
  %arrayidx6.40 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.39
  store i32 %add.40, i32* %arrayidx6.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %arrayidx1.41 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.39
  %165 = load i32, i32* %arrayidx1.41, align 4
  %166 = shl nsw i64 %indvars.iv.next.40, 4
  %167 = add nsw i64 %166, -1
  %arrayidx4.41 = getelementptr inbounds i32, i32* %bucket, i64 %167
  %168 = load i32, i32* %arrayidx4.41, align 4
  %add.41 = add nsw i32 %165, %168
  %arrayidx6.41 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.40
  store i32 %add.41, i32* %arrayidx6.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %arrayidx1.42 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.40
  %169 = load i32, i32* %arrayidx1.42, align 4
  %170 = shl nsw i64 %indvars.iv.next.41, 4
  %171 = add nsw i64 %170, -1
  %arrayidx4.42 = getelementptr inbounds i32, i32* %bucket, i64 %171
  %172 = load i32, i32* %arrayidx4.42, align 4
  %add.42 = add nsw i32 %169, %172
  %arrayidx6.42 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.41
  store i32 %add.42, i32* %arrayidx6.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %arrayidx1.43 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.41
  %173 = load i32, i32* %arrayidx1.43, align 4
  %174 = shl nsw i64 %indvars.iv.next.42, 4
  %175 = add nsw i64 %174, -1
  %arrayidx4.43 = getelementptr inbounds i32, i32* %bucket, i64 %175
  %176 = load i32, i32* %arrayidx4.43, align 4
  %add.43 = add nsw i32 %173, %176
  %arrayidx6.43 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.42
  store i32 %add.43, i32* %arrayidx6.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %arrayidx1.44 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.42
  %177 = load i32, i32* %arrayidx1.44, align 4
  %178 = shl nsw i64 %indvars.iv.next.43, 4
  %179 = add nsw i64 %178, -1
  %arrayidx4.44 = getelementptr inbounds i32, i32* %bucket, i64 %179
  %180 = load i32, i32* %arrayidx4.44, align 4
  %add.44 = add nsw i32 %177, %180
  %arrayidx6.44 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.43
  store i32 %add.44, i32* %arrayidx6.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %arrayidx1.45 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.43
  %181 = load i32, i32* %arrayidx1.45, align 4
  %182 = shl nsw i64 %indvars.iv.next.44, 4
  %183 = add nsw i64 %182, -1
  %arrayidx4.45 = getelementptr inbounds i32, i32* %bucket, i64 %183
  %184 = load i32, i32* %arrayidx4.45, align 4
  %add.45 = add nsw i32 %181, %184
  %arrayidx6.45 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.44
  store i32 %add.45, i32* %arrayidx6.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %arrayidx1.46 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.44
  %185 = load i32, i32* %arrayidx1.46, align 4
  %186 = shl nsw i64 %indvars.iv.next.45, 4
  %187 = add nsw i64 %186, -1
  %arrayidx4.46 = getelementptr inbounds i32, i32* %bucket, i64 %187
  %188 = load i32, i32* %arrayidx4.46, align 4
  %add.46 = add nsw i32 %185, %188
  %arrayidx6.46 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.45
  store i32 %add.46, i32* %arrayidx6.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %arrayidx1.47 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.45
  %189 = load i32, i32* %arrayidx1.47, align 4
  %190 = shl nsw i64 %indvars.iv.next.46, 4
  %191 = add nsw i64 %190, -1
  %arrayidx4.47 = getelementptr inbounds i32, i32* %bucket, i64 %191
  %192 = load i32, i32* %arrayidx4.47, align 4
  %add.47 = add nsw i32 %189, %192
  %arrayidx6.47 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.46
  store i32 %add.47, i32* %arrayidx6.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %arrayidx1.48 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.46
  %193 = load i32, i32* %arrayidx1.48, align 4
  %194 = shl nsw i64 %indvars.iv.next.47, 4
  %195 = add nsw i64 %194, -1
  %arrayidx4.48 = getelementptr inbounds i32, i32* %bucket, i64 %195
  %196 = load i32, i32* %arrayidx4.48, align 4
  %add.48 = add nsw i32 %193, %196
  %arrayidx6.48 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.47
  store i32 %add.48, i32* %arrayidx6.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %arrayidx1.49 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.47
  %197 = load i32, i32* %arrayidx1.49, align 4
  %198 = shl nsw i64 %indvars.iv.next.48, 4
  %199 = add nsw i64 %198, -1
  %arrayidx4.49 = getelementptr inbounds i32, i32* %bucket, i64 %199
  %200 = load i32, i32* %arrayidx4.49, align 4
  %add.49 = add nsw i32 %197, %200
  %arrayidx6.49 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.48
  store i32 %add.49, i32* %arrayidx6.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %arrayidx1.50 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.48
  %201 = load i32, i32* %arrayidx1.50, align 4
  %202 = shl nsw i64 %indvars.iv.next.49, 4
  %203 = add nsw i64 %202, -1
  %arrayidx4.50 = getelementptr inbounds i32, i32* %bucket, i64 %203
  %204 = load i32, i32* %arrayidx4.50, align 4
  %add.50 = add nsw i32 %201, %204
  %arrayidx6.50 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.49
  store i32 %add.50, i32* %arrayidx6.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %arrayidx1.51 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.49
  %205 = load i32, i32* %arrayidx1.51, align 4
  %206 = shl nsw i64 %indvars.iv.next.50, 4
  %207 = add nsw i64 %206, -1
  %arrayidx4.51 = getelementptr inbounds i32, i32* %bucket, i64 %207
  %208 = load i32, i32* %arrayidx4.51, align 4
  %add.51 = add nsw i32 %205, %208
  %arrayidx6.51 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.50
  store i32 %add.51, i32* %arrayidx6.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %arrayidx1.52 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.50
  %209 = load i32, i32* %arrayidx1.52, align 4
  %210 = shl nsw i64 %indvars.iv.next.51, 4
  %211 = add nsw i64 %210, -1
  %arrayidx4.52 = getelementptr inbounds i32, i32* %bucket, i64 %211
  %212 = load i32, i32* %arrayidx4.52, align 4
  %add.52 = add nsw i32 %209, %212
  %arrayidx6.52 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.51
  store i32 %add.52, i32* %arrayidx6.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %arrayidx1.53 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.51
  %213 = load i32, i32* %arrayidx1.53, align 4
  %214 = shl nsw i64 %indvars.iv.next.52, 4
  %215 = add nsw i64 %214, -1
  %arrayidx4.53 = getelementptr inbounds i32, i32* %bucket, i64 %215
  %216 = load i32, i32* %arrayidx4.53, align 4
  %add.53 = add nsw i32 %213, %216
  %arrayidx6.53 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.52
  store i32 %add.53, i32* %arrayidx6.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %arrayidx1.54 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.52
  %217 = load i32, i32* %arrayidx1.54, align 4
  %218 = shl nsw i64 %indvars.iv.next.53, 4
  %219 = add nsw i64 %218, -1
  %arrayidx4.54 = getelementptr inbounds i32, i32* %bucket, i64 %219
  %220 = load i32, i32* %arrayidx4.54, align 4
  %add.54 = add nsw i32 %217, %220
  %arrayidx6.54 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.53
  store i32 %add.54, i32* %arrayidx6.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %arrayidx1.55 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.53
  %221 = load i32, i32* %arrayidx1.55, align 4
  %222 = shl nsw i64 %indvars.iv.next.54, 4
  %223 = add nsw i64 %222, -1
  %arrayidx4.55 = getelementptr inbounds i32, i32* %bucket, i64 %223
  %224 = load i32, i32* %arrayidx4.55, align 4
  %add.55 = add nsw i32 %221, %224
  %arrayidx6.55 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.54
  store i32 %add.55, i32* %arrayidx6.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %arrayidx1.56 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.54
  %225 = load i32, i32* %arrayidx1.56, align 4
  %226 = shl nsw i64 %indvars.iv.next.55, 4
  %227 = add nsw i64 %226, -1
  %arrayidx4.56 = getelementptr inbounds i32, i32* %bucket, i64 %227
  %228 = load i32, i32* %arrayidx4.56, align 4
  %add.56 = add nsw i32 %225, %228
  %arrayidx6.56 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.55
  store i32 %add.56, i32* %arrayidx6.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %arrayidx1.57 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.55
  %229 = load i32, i32* %arrayidx1.57, align 4
  %230 = shl nsw i64 %indvars.iv.next.56, 4
  %231 = add nsw i64 %230, -1
  %arrayidx4.57 = getelementptr inbounds i32, i32* %bucket, i64 %231
  %232 = load i32, i32* %arrayidx4.57, align 4
  %add.57 = add nsw i32 %229, %232
  %arrayidx6.57 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.56
  store i32 %add.57, i32* %arrayidx6.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %arrayidx1.58 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.56
  %233 = load i32, i32* %arrayidx1.58, align 4
  %234 = shl nsw i64 %indvars.iv.next.57, 4
  %235 = add nsw i64 %234, -1
  %arrayidx4.58 = getelementptr inbounds i32, i32* %bucket, i64 %235
  %236 = load i32, i32* %arrayidx4.58, align 4
  %add.58 = add nsw i32 %233, %236
  %arrayidx6.58 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.57
  store i32 %add.58, i32* %arrayidx6.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %arrayidx1.59 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.57
  %237 = load i32, i32* %arrayidx1.59, align 4
  %238 = shl nsw i64 %indvars.iv.next.58, 4
  %239 = add nsw i64 %238, -1
  %arrayidx4.59 = getelementptr inbounds i32, i32* %bucket, i64 %239
  %240 = load i32, i32* %arrayidx4.59, align 4
  %add.59 = add nsw i32 %237, %240
  %arrayidx6.59 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.58
  store i32 %add.59, i32* %arrayidx6.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %arrayidx1.60 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.58
  %241 = load i32, i32* %arrayidx1.60, align 4
  %242 = shl nsw i64 %indvars.iv.next.59, 4
  %243 = add nsw i64 %242, -1
  %arrayidx4.60 = getelementptr inbounds i32, i32* %bucket, i64 %243
  %244 = load i32, i32* %arrayidx4.60, align 4
  %add.60 = add nsw i32 %241, %244
  %arrayidx6.60 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.59
  store i32 %add.60, i32* %arrayidx6.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %arrayidx1.61 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.59
  %245 = load i32, i32* %arrayidx1.61, align 4
  %246 = shl nsw i64 %indvars.iv.next.60, 4
  %247 = add nsw i64 %246, -1
  %arrayidx4.61 = getelementptr inbounds i32, i32* %bucket, i64 %247
  %248 = load i32, i32* %arrayidx4.61, align 4
  %add.61 = add nsw i32 %245, %248
  %arrayidx6.61 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.60
  store i32 %add.61, i32* %arrayidx6.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %arrayidx1.62 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.60
  %249 = load i32, i32* %arrayidx1.62, align 4
  %250 = shl nsw i64 %indvars.iv.next.61, 4
  %251 = add nsw i64 %250, -1
  %arrayidx4.62 = getelementptr inbounds i32, i32* %bucket, i64 %251
  %252 = load i32, i32* %arrayidx4.62, align 4
  %add.62 = add nsw i32 %249, %252
  %arrayidx6.62 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.61
  store i32 %add.62, i32* %arrayidx6.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %exitcond.62 = icmp ne i64 %indvars.iv.next.62, 128
  br i1 %exitcond.62, label %for.body.63, label %for.end, !llvm.loop !7

for.end:                                          ; preds = %for.body
  ret void

for.body.63:                                      ; preds = %for.body
  %arrayidx1.63 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.61
  %253 = load i32, i32* %arrayidx1.63, align 4
  %254 = shl nsw i64 %indvars.iv.next.62, 4
  %255 = add nsw i64 %254, -1
  %arrayidx4.63 = getelementptr inbounds i32, i32* %bucket, i64 %255
  %256 = load i32, i32* %arrayidx4.63, align 4
  %add.63 = add nsw i32 %253, %256
  %arrayidx6.63 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv.next.62
  store i32 %add.63, i32* %arrayidx6.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  br label %for.body, !llvm.loop !9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @last_step_scan(i32* %bucket, i32* %sum) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body3 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %0 = shl nsw i64 %indvars.iv, 4
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %1, %2
  %3 = shl nsw i64 %indvars.iv, 4
  %arrayidx10 = getelementptr inbounds i32, i32* %bucket, i64 %3
  store i32 %add6, i32* %arrayidx10, align 4
  %4 = shl nsw i64 %indvars.iv, 4
  %5 = add nuw nsw i64 %4, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %5
  %6 = load i32, i32* %arrayidx.1, align 4
  %arrayidx5.1 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %7 = load i32, i32* %arrayidx5.1, align 4
  %add6.1 = add nsw i32 %6, %7
  %8 = shl nsw i64 %indvars.iv, 4
  %9 = add nuw nsw i64 %8, 1
  %arrayidx10.1 = getelementptr inbounds i32, i32* %bucket, i64 %9
  store i32 %add6.1, i32* %arrayidx10.1, align 4
  %10 = shl nsw i64 %indvars.iv, 4
  %11 = add nuw nsw i64 %10, 2
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %11
  %12 = load i32, i32* %arrayidx.2, align 4
  %arrayidx5.2 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %13 = load i32, i32* %arrayidx5.2, align 4
  %add6.2 = add nsw i32 %12, %13
  %14 = shl nsw i64 %indvars.iv, 4
  %15 = add nuw nsw i64 %14, 2
  %arrayidx10.2 = getelementptr inbounds i32, i32* %bucket, i64 %15
  store i32 %add6.2, i32* %arrayidx10.2, align 4
  %16 = shl nsw i64 %indvars.iv, 4
  %17 = add nuw nsw i64 %16, 3
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %17
  %18 = load i32, i32* %arrayidx.3, align 4
  %arrayidx5.3 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %19 = load i32, i32* %arrayidx5.3, align 4
  %add6.3 = add nsw i32 %18, %19
  %20 = shl nsw i64 %indvars.iv, 4
  %21 = add nuw nsw i64 %20, 3
  %arrayidx10.3 = getelementptr inbounds i32, i32* %bucket, i64 %21
  store i32 %add6.3, i32* %arrayidx10.3, align 4
  %22 = shl nsw i64 %indvars.iv, 4
  %23 = add nuw nsw i64 %22, 4
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %23
  %24 = load i32, i32* %arrayidx.4, align 4
  %arrayidx5.4 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %25 = load i32, i32* %arrayidx5.4, align 4
  %add6.4 = add nsw i32 %24, %25
  %26 = shl nsw i64 %indvars.iv, 4
  %27 = add nuw nsw i64 %26, 4
  %arrayidx10.4 = getelementptr inbounds i32, i32* %bucket, i64 %27
  store i32 %add6.4, i32* %arrayidx10.4, align 4
  %28 = shl nsw i64 %indvars.iv, 4
  %29 = add nuw nsw i64 %28, 5
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %29
  %30 = load i32, i32* %arrayidx.5, align 4
  %arrayidx5.5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %31 = load i32, i32* %arrayidx5.5, align 4
  %add6.5 = add nsw i32 %30, %31
  %32 = shl nsw i64 %indvars.iv, 4
  %33 = add nuw nsw i64 %32, 5
  %arrayidx10.5 = getelementptr inbounds i32, i32* %bucket, i64 %33
  store i32 %add6.5, i32* %arrayidx10.5, align 4
  %34 = shl nsw i64 %indvars.iv, 4
  %35 = add nuw nsw i64 %34, 6
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %35
  %36 = load i32, i32* %arrayidx.6, align 4
  %arrayidx5.6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %37 = load i32, i32* %arrayidx5.6, align 4
  %add6.6 = add nsw i32 %36, %37
  %38 = shl nsw i64 %indvars.iv, 4
  %39 = add nuw nsw i64 %38, 6
  %arrayidx10.6 = getelementptr inbounds i32, i32* %bucket, i64 %39
  store i32 %add6.6, i32* %arrayidx10.6, align 4
  %40 = shl nsw i64 %indvars.iv, 4
  %41 = add nuw nsw i64 %40, 7
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %41
  %42 = load i32, i32* %arrayidx.7, align 4
  %arrayidx5.7 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %43 = load i32, i32* %arrayidx5.7, align 4
  %add6.7 = add nsw i32 %42, %43
  %44 = shl nsw i64 %indvars.iv, 4
  %45 = add nuw nsw i64 %44, 7
  %arrayidx10.7 = getelementptr inbounds i32, i32* %bucket, i64 %45
  store i32 %add6.7, i32* %arrayidx10.7, align 4
  %46 = shl nsw i64 %indvars.iv, 4
  %47 = add nuw nsw i64 %46, 8
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %47
  %48 = load i32, i32* %arrayidx.8, align 4
  %arrayidx5.8 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %49 = load i32, i32* %arrayidx5.8, align 4
  %add6.8 = add nsw i32 %48, %49
  %50 = shl nsw i64 %indvars.iv, 4
  %51 = add nuw nsw i64 %50, 8
  %arrayidx10.8 = getelementptr inbounds i32, i32* %bucket, i64 %51
  store i32 %add6.8, i32* %arrayidx10.8, align 4
  %52 = shl nsw i64 %indvars.iv, 4
  %53 = add nuw nsw i64 %52, 9
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %53
  %54 = load i32, i32* %arrayidx.9, align 4
  %arrayidx5.9 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %55 = load i32, i32* %arrayidx5.9, align 4
  %add6.9 = add nsw i32 %54, %55
  %56 = shl nsw i64 %indvars.iv, 4
  %57 = add nuw nsw i64 %56, 9
  %arrayidx10.9 = getelementptr inbounds i32, i32* %bucket, i64 %57
  store i32 %add6.9, i32* %arrayidx10.9, align 4
  %58 = shl nsw i64 %indvars.iv, 4
  %59 = add nuw nsw i64 %58, 10
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %59
  %60 = load i32, i32* %arrayidx.10, align 4
  %arrayidx5.10 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %61 = load i32, i32* %arrayidx5.10, align 4
  %add6.10 = add nsw i32 %60, %61
  %62 = shl nsw i64 %indvars.iv, 4
  %63 = add nuw nsw i64 %62, 10
  %arrayidx10.10 = getelementptr inbounds i32, i32* %bucket, i64 %63
  store i32 %add6.10, i32* %arrayidx10.10, align 4
  %64 = shl nsw i64 %indvars.iv, 4
  %65 = add nuw nsw i64 %64, 11
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %65
  %66 = load i32, i32* %arrayidx.11, align 4
  %arrayidx5.11 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %67 = load i32, i32* %arrayidx5.11, align 4
  %add6.11 = add nsw i32 %66, %67
  %68 = shl nsw i64 %indvars.iv, 4
  %69 = add nuw nsw i64 %68, 11
  %arrayidx10.11 = getelementptr inbounds i32, i32* %bucket, i64 %69
  store i32 %add6.11, i32* %arrayidx10.11, align 4
  %70 = shl nsw i64 %indvars.iv, 4
  %71 = add nuw nsw i64 %70, 12
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %71
  %72 = load i32, i32* %arrayidx.12, align 4
  %arrayidx5.12 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %73 = load i32, i32* %arrayidx5.12, align 4
  %add6.12 = add nsw i32 %72, %73
  %74 = shl nsw i64 %indvars.iv, 4
  %75 = add nuw nsw i64 %74, 12
  %arrayidx10.12 = getelementptr inbounds i32, i32* %bucket, i64 %75
  store i32 %add6.12, i32* %arrayidx10.12, align 4
  %76 = shl nsw i64 %indvars.iv, 4
  %77 = add nuw nsw i64 %76, 13
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %77
  %78 = load i32, i32* %arrayidx.13, align 4
  %arrayidx5.13 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %79 = load i32, i32* %arrayidx5.13, align 4
  %add6.13 = add nsw i32 %78, %79
  %80 = shl nsw i64 %indvars.iv, 4
  %81 = add nuw nsw i64 %80, 13
  %arrayidx10.13 = getelementptr inbounds i32, i32* %bucket, i64 %81
  store i32 %add6.13, i32* %arrayidx10.13, align 4
  %82 = shl nsw i64 %indvars.iv, 4
  %83 = add nuw nsw i64 %82, 14
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %83
  %84 = load i32, i32* %arrayidx.14, align 4
  %arrayidx5.14 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %85 = load i32, i32* %arrayidx5.14, align 4
  %add6.14 = add nsw i32 %84, %85
  %86 = shl nsw i64 %indvars.iv, 4
  %87 = add nuw nsw i64 %86, 14
  %arrayidx10.14 = getelementptr inbounds i32, i32* %bucket, i64 %87
  store i32 %add6.14, i32* %arrayidx10.14, align 4
  %88 = shl nsw i64 %indvars.iv, 4
  %89 = add nuw nsw i64 %88, 15
  %arrayidx.15 = getelementptr inbounds i32, i32* %bucket, i64 %89
  %90 = load i32, i32* %arrayidx.15, align 4
  %arrayidx5.15 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  %91 = load i32, i32* %arrayidx5.15, align 4
  %add6.15 = add nsw i32 %90, %91
  %92 = shl nsw i64 %indvars.iv, 4
  %93 = add nuw nsw i64 %92, 15
  %arrayidx10.15 = getelementptr inbounds i32, i32* %bucket, i64 %93
  store i32 %add6.15, i32* %arrayidx10.15, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 128
  br i1 %exitcond, label %for.body, label %for.end13, !llvm.loop !10

for.end13:                                        ; preds = %for.body3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(i32* %bucket) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.63, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv
  store i32 0, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next
  store i32 0, i32* %arrayidx.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.1
  store i32 0, i32* %arrayidx.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.2
  store i32 0, i32* %arrayidx.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.3
  store i32 0, i32* %arrayidx.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.4
  store i32 0, i32* %arrayidx.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.5
  store i32 0, i32* %arrayidx.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.6
  store i32 0, i32* %arrayidx.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.7
  store i32 0, i32* %arrayidx.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.8
  store i32 0, i32* %arrayidx.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.9
  store i32 0, i32* %arrayidx.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.10
  store i32 0, i32* %arrayidx.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.11
  store i32 0, i32* %arrayidx.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.12
  store i32 0, i32* %arrayidx.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.13
  store i32 0, i32* %arrayidx.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %arrayidx.15 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.14
  store i32 0, i32* %arrayidx.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %arrayidx.16 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.15
  store i32 0, i32* %arrayidx.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %arrayidx.17 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.16
  store i32 0, i32* %arrayidx.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %arrayidx.18 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.17
  store i32 0, i32* %arrayidx.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %arrayidx.19 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.18
  store i32 0, i32* %arrayidx.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %arrayidx.20 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.19
  store i32 0, i32* %arrayidx.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %arrayidx.21 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.20
  store i32 0, i32* %arrayidx.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %arrayidx.22 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.21
  store i32 0, i32* %arrayidx.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %arrayidx.23 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.22
  store i32 0, i32* %arrayidx.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %arrayidx.24 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.23
  store i32 0, i32* %arrayidx.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %arrayidx.25 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.24
  store i32 0, i32* %arrayidx.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %arrayidx.26 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.25
  store i32 0, i32* %arrayidx.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %arrayidx.27 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.26
  store i32 0, i32* %arrayidx.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %arrayidx.28 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.27
  store i32 0, i32* %arrayidx.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %arrayidx.29 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.28
  store i32 0, i32* %arrayidx.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %arrayidx.30 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.29
  store i32 0, i32* %arrayidx.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %arrayidx.31 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.30
  store i32 0, i32* %arrayidx.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %arrayidx.32 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.31
  store i32 0, i32* %arrayidx.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %arrayidx.33 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.32
  store i32 0, i32* %arrayidx.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %arrayidx.34 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.33
  store i32 0, i32* %arrayidx.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %arrayidx.35 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.34
  store i32 0, i32* %arrayidx.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %arrayidx.36 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.35
  store i32 0, i32* %arrayidx.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %arrayidx.37 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.36
  store i32 0, i32* %arrayidx.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %arrayidx.38 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.37
  store i32 0, i32* %arrayidx.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %arrayidx.39 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.38
  store i32 0, i32* %arrayidx.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %arrayidx.40 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.39
  store i32 0, i32* %arrayidx.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %arrayidx.41 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.40
  store i32 0, i32* %arrayidx.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %arrayidx.42 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.41
  store i32 0, i32* %arrayidx.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %arrayidx.43 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.42
  store i32 0, i32* %arrayidx.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %arrayidx.44 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.43
  store i32 0, i32* %arrayidx.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %arrayidx.45 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.44
  store i32 0, i32* %arrayidx.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %arrayidx.46 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.45
  store i32 0, i32* %arrayidx.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %arrayidx.47 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.46
  store i32 0, i32* %arrayidx.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %arrayidx.48 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.47
  store i32 0, i32* %arrayidx.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %arrayidx.49 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.48
  store i32 0, i32* %arrayidx.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %arrayidx.50 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.49
  store i32 0, i32* %arrayidx.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %arrayidx.51 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.50
  store i32 0, i32* %arrayidx.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %arrayidx.52 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.51
  store i32 0, i32* %arrayidx.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %arrayidx.53 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.52
  store i32 0, i32* %arrayidx.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %arrayidx.54 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.53
  store i32 0, i32* %arrayidx.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %arrayidx.55 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.54
  store i32 0, i32* %arrayidx.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %arrayidx.56 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.55
  store i32 0, i32* %arrayidx.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %arrayidx.57 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.56
  store i32 0, i32* %arrayidx.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %arrayidx.58 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.57
  store i32 0, i32* %arrayidx.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %arrayidx.59 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.58
  store i32 0, i32* %arrayidx.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %arrayidx.60 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.59
  store i32 0, i32* %arrayidx.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %arrayidx.61 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.60
  store i32 0, i32* %arrayidx.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %arrayidx.62 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.61
  store i32 0, i32* %arrayidx.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %arrayidx.63 = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv.next.62
  store i32 0, i32* %arrayidx.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 2048
  br i1 %exitcond.63, label %for.body, label %for.end, !llvm.loop !11

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hist(i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body3 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %0 = shl nsw i64 %indvars.iv, 2
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %1, %exp
  %and = shl i32 %shr, 9
  %mul4 = and i32 %and, 1536
  %2 = trunc i64 %indvars.iv to i32
  %add5 = add nuw nsw i32 %mul4, %2
  %add6 = add nuw nsw i32 %add5, 1
  %idxprom7 = zext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7
  %3 = load i32, i32* %arrayidx8, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %arrayidx8, align 4
  %4 = shl nsw i64 %indvars.iv, 2
  %5 = add nuw nsw i64 %4, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %5
  %6 = load i32, i32* %arrayidx.1, align 4
  %shr.1 = ashr i32 %6, %exp
  %and.1 = shl i32 %shr.1, 9
  %mul4.1 = and i32 %and.1, 1536
  %7 = trunc i64 %indvars.iv to i32
  %add5.1 = add nuw nsw i32 %mul4.1, %7
  %add6.1 = add nuw nsw i32 %add5.1, 1
  %idxprom7.1 = zext i32 %add6.1 to i64
  %arrayidx8.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.1
  %8 = load i32, i32* %arrayidx8.1, align 4
  %inc.1 = add nsw i32 %8, 1
  store i32 %inc.1, i32* %arrayidx8.1, align 4
  %9 = shl nsw i64 %indvars.iv, 2
  %10 = add nuw nsw i64 %9, 2
  %arrayidx.2 = getelementptr inbounds i32, i32* %a, i64 %10
  %11 = load i32, i32* %arrayidx.2, align 4
  %shr.2 = ashr i32 %11, %exp
  %and.2 = shl i32 %shr.2, 9
  %mul4.2 = and i32 %and.2, 1536
  %12 = trunc i64 %indvars.iv to i32
  %add5.2 = add nuw nsw i32 %mul4.2, %12
  %add6.2 = add nuw nsw i32 %add5.2, 1
  %idxprom7.2 = zext i32 %add6.2 to i64
  %arrayidx8.2 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.2
  %13 = load i32, i32* %arrayidx8.2, align 4
  %inc.2 = add nsw i32 %13, 1
  store i32 %inc.2, i32* %arrayidx8.2, align 4
  %14 = shl nsw i64 %indvars.iv, 2
  %15 = add nuw nsw i64 %14, 3
  %arrayidx.3 = getelementptr inbounds i32, i32* %a, i64 %15
  %16 = load i32, i32* %arrayidx.3, align 4
  %shr.3 = ashr i32 %16, %exp
  %and.3 = shl i32 %shr.3, 9
  %mul4.3 = and i32 %and.3, 1536
  %17 = trunc i64 %indvars.iv to i32
  %add5.3 = add nuw nsw i32 %mul4.3, %17
  %add6.3 = add nuw nsw i32 %add5.3, 1
  %idxprom7.3 = zext i32 %add6.3 to i64
  %arrayidx8.3 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7.3
  %18 = load i32, i32* %arrayidx8.3, align 4
  %inc.3 = add nsw i32 %18, 1
  store i32 %inc.3, i32* %arrayidx8.3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 512
  br i1 %exitcond, label %for.body, label %for.end12, !llvm.loop !12

for.end12:                                        ; preds = %for.body3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update(i32* %b, i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body3
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body3 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %0 = shl nsw i64 %indvars.iv, 2
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %1, %exp
  %and = shl i32 %shr, 9
  %mul4 = and i32 %and, 1536
  %2 = trunc i64 %indvars.iv to i32
  %add5 = add nuw nsw i32 %mul4, %2
  %idxprom6 = zext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6
  %3 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %3 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %b, i64 %idxprom8
  store i32 %1, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %3, 1
  %shr11 = ashr i32 %1, %exp
  %and12 = shl i32 %shr11, 9
  %mul13 = and i32 %and12, 1536
  %4 = trunc i64 %indvars.iv to i32
  %add14 = add nuw nsw i32 %mul13, %4
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15
  store i32 %add10, i32* %arrayidx16, align 4
  %5 = shl nsw i64 %indvars.iv, 2
  %6 = add nuw nsw i64 %5, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %6
  %7 = load i32, i32* %arrayidx.1, align 4
  %shr.1 = ashr i32 %7, %exp
  %and.1 = shl i32 %shr.1, 9
  %mul4.1 = and i32 %and.1, 1536
  %8 = trunc i64 %indvars.iv to i32
  %add5.1 = add nuw nsw i32 %mul4.1, %8
  %idxprom6.1 = zext i32 %add5.1 to i64
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.1
  %9 = load i32, i32* %arrayidx7.1, align 4
  %idxprom8.1 = sext i32 %9 to i64
  %arrayidx9.1 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.1
  store i32 %7, i32* %arrayidx9.1, align 4
  %add10.1 = add nsw i32 %9, 1
  %shr11.1 = ashr i32 %7, %exp
  %and12.1 = shl i32 %shr11.1, 9
  %mul13.1 = and i32 %and12.1, 1536
  %10 = trunc i64 %indvars.iv to i32
  %add14.1 = add nuw nsw i32 %mul13.1, %10
  %idxprom15.1 = zext i32 %add14.1 to i64
  %arrayidx16.1 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.1
  store i32 %add10.1, i32* %arrayidx16.1, align 4
  %11 = shl nsw i64 %indvars.iv, 2
  %12 = add nuw nsw i64 %11, 2
  %arrayidx.2 = getelementptr inbounds i32, i32* %a, i64 %12
  %13 = load i32, i32* %arrayidx.2, align 4
  %shr.2 = ashr i32 %13, %exp
  %and.2 = shl i32 %shr.2, 9
  %mul4.2 = and i32 %and.2, 1536
  %14 = trunc i64 %indvars.iv to i32
  %add5.2 = add nuw nsw i32 %mul4.2, %14
  %idxprom6.2 = zext i32 %add5.2 to i64
  %arrayidx7.2 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.2
  %15 = load i32, i32* %arrayidx7.2, align 4
  %idxprom8.2 = sext i32 %15 to i64
  %arrayidx9.2 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.2
  store i32 %13, i32* %arrayidx9.2, align 4
  %add10.2 = add nsw i32 %15, 1
  %shr11.2 = ashr i32 %13, %exp
  %and12.2 = shl i32 %shr11.2, 9
  %mul13.2 = and i32 %and12.2, 1536
  %16 = trunc i64 %indvars.iv to i32
  %add14.2 = add nuw nsw i32 %mul13.2, %16
  %idxprom15.2 = zext i32 %add14.2 to i64
  %arrayidx16.2 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.2
  store i32 %add10.2, i32* %arrayidx16.2, align 4
  %17 = shl nsw i64 %indvars.iv, 2
  %18 = add nuw nsw i64 %17, 3
  %arrayidx.3 = getelementptr inbounds i32, i32* %a, i64 %18
  %19 = load i32, i32* %arrayidx.3, align 4
  %shr.3 = ashr i32 %19, %exp
  %and.3 = shl i32 %shr.3, 9
  %mul4.3 = and i32 %and.3, 1536
  %20 = trunc i64 %indvars.iv to i32
  %add5.3 = add nuw nsw i32 %mul4.3, %20
  %idxprom6.3 = zext i32 %add5.3 to i64
  %arrayidx7.3 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6.3
  %21 = load i32, i32* %arrayidx7.3, align 4
  %idxprom8.3 = sext i32 %21 to i64
  %arrayidx9.3 = getelementptr inbounds i32, i32* %b, i64 %idxprom8.3
  store i32 %19, i32* %arrayidx9.3, align 4
  %add10.3 = add nsw i32 %21, 1
  %shr11.3 = ashr i32 %19, %exp
  %and12.3 = shl i32 %shr11.3, 9
  %mul13.3 = and i32 %and12.3, 1536
  %22 = trunc i64 %indvars.iv to i32
  %add14.3 = add nuw nsw i32 %mul13.3, %22
  %idxprom15.3 = zext i32 %add14.3 to i64
  %arrayidx16.3 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15.3
  store i32 %add10.3, i32* %arrayidx16.3, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 512
  br i1 %exitcond, label %for.body, label %for.end19, !llvm.loop !13

for.end19:                                        ; preds = %for.body3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ss_sort(i32* %a, i32* %b, i32* %bucket, i32* %sum) #0 {
entry:
  call void @init(i32* %bucket)
  %cmp1 = icmp eq i32 0, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @hist(i32* %bucket, i32* %a, i32 0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @hist(i32* %bucket, i32* %b, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @local_scan(i32* %bucket)
  call void @sum_scan(i32* %sum, i32* %bucket)
  call void @last_step_scan(i32* %bucket, i32* %sum)
  %cmp2 = icmp eq i32 0, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  call void @update(i32* %b, i32* %bucket, i32* %a, i32 0)
  br label %for.inc

if.else4:                                         ; preds = %if.end
  call void @update(i32* %a, i32* %bucket, i32* %b, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.else4
  %flag.1 = phi i32 [ 1, %if.then3 ], [ 0, %if.else4 ]
  %add = add nuw nsw i32 0, 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #3
  %call1 = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #3
  %call2 = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #3
  %0 = bitcast i8* %call2 to i32*
  %call3 = call noalias dereferenceable_or_null(512) i8* @malloc(i64 512) #3
  call void @srand(i32 8650341) #3
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.63, %for.body ]
  %call4 = call i32 @rand() #3
  %conv = sitofp i32 %call4 to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  %mul = fmul double %div, 2.550000e+02
  %add = fadd double %mul, 0.000000e+00
  %conv7 = fptosi double %add to i32
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %conv7, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call4.1 = call i32 @rand() #3
  %conv.1 = sitofp i32 %call4.1 to double
  %div.1 = fdiv double %conv.1, 0x41DFFFFFFFC00000
  %mul.1 = fmul double %div.1, 2.550000e+02
  %add.1 = fadd double %mul.1, 0.000000e+00
  %conv7.1 = fptosi double %add.1 to i32
  %arrayidx.1 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next
  store i32 %conv7.1, i32* %arrayidx.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %call4.2 = call i32 @rand() #3
  %conv.2 = sitofp i32 %call4.2 to double
  %div.2 = fdiv double %conv.2, 0x41DFFFFFFFC00000
  %mul.2 = fmul double %div.2, 2.550000e+02
  %add.2 = fadd double %mul.2, 0.000000e+00
  %conv7.2 = fptosi double %add.2 to i32
  %arrayidx.2 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.1
  store i32 %conv7.2, i32* %arrayidx.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %call4.3 = call i32 @rand() #3
  %conv.3 = sitofp i32 %call4.3 to double
  %div.3 = fdiv double %conv.3, 0x41DFFFFFFFC00000
  %mul.3 = fmul double %div.3, 2.550000e+02
  %add.3 = fadd double %mul.3, 0.000000e+00
  %conv7.3 = fptosi double %add.3 to i32
  %arrayidx.3 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.2
  store i32 %conv7.3, i32* %arrayidx.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %call4.4 = call i32 @rand() #3
  %conv.4 = sitofp i32 %call4.4 to double
  %div.4 = fdiv double %conv.4, 0x41DFFFFFFFC00000
  %mul.4 = fmul double %div.4, 2.550000e+02
  %add.4 = fadd double %mul.4, 0.000000e+00
  %conv7.4 = fptosi double %add.4 to i32
  %arrayidx.4 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.3
  store i32 %conv7.4, i32* %arrayidx.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %call4.5 = call i32 @rand() #3
  %conv.5 = sitofp i32 %call4.5 to double
  %div.5 = fdiv double %conv.5, 0x41DFFFFFFFC00000
  %mul.5 = fmul double %div.5, 2.550000e+02
  %add.5 = fadd double %mul.5, 0.000000e+00
  %conv7.5 = fptosi double %add.5 to i32
  %arrayidx.5 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.4
  store i32 %conv7.5, i32* %arrayidx.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %call4.6 = call i32 @rand() #3
  %conv.6 = sitofp i32 %call4.6 to double
  %div.6 = fdiv double %conv.6, 0x41DFFFFFFFC00000
  %mul.6 = fmul double %div.6, 2.550000e+02
  %add.6 = fadd double %mul.6, 0.000000e+00
  %conv7.6 = fptosi double %add.6 to i32
  %arrayidx.6 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.5
  store i32 %conv7.6, i32* %arrayidx.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %call4.7 = call i32 @rand() #3
  %conv.7 = sitofp i32 %call4.7 to double
  %div.7 = fdiv double %conv.7, 0x41DFFFFFFFC00000
  %mul.7 = fmul double %div.7, 2.550000e+02
  %add.7 = fadd double %mul.7, 0.000000e+00
  %conv7.7 = fptosi double %add.7 to i32
  %arrayidx.7 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.6
  store i32 %conv7.7, i32* %arrayidx.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %call4.8 = call i32 @rand() #3
  %conv.8 = sitofp i32 %call4.8 to double
  %div.8 = fdiv double %conv.8, 0x41DFFFFFFFC00000
  %mul.8 = fmul double %div.8, 2.550000e+02
  %add.8 = fadd double %mul.8, 0.000000e+00
  %conv7.8 = fptosi double %add.8 to i32
  %arrayidx.8 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.7
  store i32 %conv7.8, i32* %arrayidx.8, align 4
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.next.7, 1
  %call4.9 = call i32 @rand() #3
  %conv.9 = sitofp i32 %call4.9 to double
  %div.9 = fdiv double %conv.9, 0x41DFFFFFFFC00000
  %mul.9 = fmul double %div.9, 2.550000e+02
  %add.9 = fadd double %mul.9, 0.000000e+00
  %conv7.9 = fptosi double %add.9 to i32
  %arrayidx.9 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.8
  store i32 %conv7.9, i32* %arrayidx.9, align 4
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.next.8, 1
  %call4.10 = call i32 @rand() #3
  %conv.10 = sitofp i32 %call4.10 to double
  %div.10 = fdiv double %conv.10, 0x41DFFFFFFFC00000
  %mul.10 = fmul double %div.10, 2.550000e+02
  %add.10 = fadd double %mul.10, 0.000000e+00
  %conv7.10 = fptosi double %add.10 to i32
  %arrayidx.10 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.9
  store i32 %conv7.10, i32* %arrayidx.10, align 4
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.next.9, 1
  %call4.11 = call i32 @rand() #3
  %conv.11 = sitofp i32 %call4.11 to double
  %div.11 = fdiv double %conv.11, 0x41DFFFFFFFC00000
  %mul.11 = fmul double %div.11, 2.550000e+02
  %add.11 = fadd double %mul.11, 0.000000e+00
  %conv7.11 = fptosi double %add.11 to i32
  %arrayidx.11 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.10
  store i32 %conv7.11, i32* %arrayidx.11, align 4
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.next.10, 1
  %call4.12 = call i32 @rand() #3
  %conv.12 = sitofp i32 %call4.12 to double
  %div.12 = fdiv double %conv.12, 0x41DFFFFFFFC00000
  %mul.12 = fmul double %div.12, 2.550000e+02
  %add.12 = fadd double %mul.12, 0.000000e+00
  %conv7.12 = fptosi double %add.12 to i32
  %arrayidx.12 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.11
  store i32 %conv7.12, i32* %arrayidx.12, align 4
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.next.11, 1
  %call4.13 = call i32 @rand() #3
  %conv.13 = sitofp i32 %call4.13 to double
  %div.13 = fdiv double %conv.13, 0x41DFFFFFFFC00000
  %mul.13 = fmul double %div.13, 2.550000e+02
  %add.13 = fadd double %mul.13, 0.000000e+00
  %conv7.13 = fptosi double %add.13 to i32
  %arrayidx.13 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.12
  store i32 %conv7.13, i32* %arrayidx.13, align 4
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.next.12, 1
  %call4.14 = call i32 @rand() #3
  %conv.14 = sitofp i32 %call4.14 to double
  %div.14 = fdiv double %conv.14, 0x41DFFFFFFFC00000
  %mul.14 = fmul double %div.14, 2.550000e+02
  %add.14 = fadd double %mul.14, 0.000000e+00
  %conv7.14 = fptosi double %add.14 to i32
  %arrayidx.14 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.13
  store i32 %conv7.14, i32* %arrayidx.14, align 4
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.next.13, 1
  %call4.15 = call i32 @rand() #3
  %conv.15 = sitofp i32 %call4.15 to double
  %div.15 = fdiv double %conv.15, 0x41DFFFFFFFC00000
  %mul.15 = fmul double %div.15, 2.550000e+02
  %add.15 = fadd double %mul.15, 0.000000e+00
  %conv7.15 = fptosi double %add.15 to i32
  %arrayidx.15 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.14
  store i32 %conv7.15, i32* %arrayidx.15, align 4
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.next.14, 1
  %call4.16 = call i32 @rand() #3
  %conv.16 = sitofp i32 %call4.16 to double
  %div.16 = fdiv double %conv.16, 0x41DFFFFFFFC00000
  %mul.16 = fmul double %div.16, 2.550000e+02
  %add.16 = fadd double %mul.16, 0.000000e+00
  %conv7.16 = fptosi double %add.16 to i32
  %arrayidx.16 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.15
  store i32 %conv7.16, i32* %arrayidx.16, align 4
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.next.15, 1
  %call4.17 = call i32 @rand() #3
  %conv.17 = sitofp i32 %call4.17 to double
  %div.17 = fdiv double %conv.17, 0x41DFFFFFFFC00000
  %mul.17 = fmul double %div.17, 2.550000e+02
  %add.17 = fadd double %mul.17, 0.000000e+00
  %conv7.17 = fptosi double %add.17 to i32
  %arrayidx.17 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.16
  store i32 %conv7.17, i32* %arrayidx.17, align 4
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.next.16, 1
  %call4.18 = call i32 @rand() #3
  %conv.18 = sitofp i32 %call4.18 to double
  %div.18 = fdiv double %conv.18, 0x41DFFFFFFFC00000
  %mul.18 = fmul double %div.18, 2.550000e+02
  %add.18 = fadd double %mul.18, 0.000000e+00
  %conv7.18 = fptosi double %add.18 to i32
  %arrayidx.18 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.17
  store i32 %conv7.18, i32* %arrayidx.18, align 4
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.next.17, 1
  %call4.19 = call i32 @rand() #3
  %conv.19 = sitofp i32 %call4.19 to double
  %div.19 = fdiv double %conv.19, 0x41DFFFFFFFC00000
  %mul.19 = fmul double %div.19, 2.550000e+02
  %add.19 = fadd double %mul.19, 0.000000e+00
  %conv7.19 = fptosi double %add.19 to i32
  %arrayidx.19 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.18
  store i32 %conv7.19, i32* %arrayidx.19, align 4
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.next.18, 1
  %call4.20 = call i32 @rand() #3
  %conv.20 = sitofp i32 %call4.20 to double
  %div.20 = fdiv double %conv.20, 0x41DFFFFFFFC00000
  %mul.20 = fmul double %div.20, 2.550000e+02
  %add.20 = fadd double %mul.20, 0.000000e+00
  %conv7.20 = fptosi double %add.20 to i32
  %arrayidx.20 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.19
  store i32 %conv7.20, i32* %arrayidx.20, align 4
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.next.19, 1
  %call4.21 = call i32 @rand() #3
  %conv.21 = sitofp i32 %call4.21 to double
  %div.21 = fdiv double %conv.21, 0x41DFFFFFFFC00000
  %mul.21 = fmul double %div.21, 2.550000e+02
  %add.21 = fadd double %mul.21, 0.000000e+00
  %conv7.21 = fptosi double %add.21 to i32
  %arrayidx.21 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.20
  store i32 %conv7.21, i32* %arrayidx.21, align 4
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.next.20, 1
  %call4.22 = call i32 @rand() #3
  %conv.22 = sitofp i32 %call4.22 to double
  %div.22 = fdiv double %conv.22, 0x41DFFFFFFFC00000
  %mul.22 = fmul double %div.22, 2.550000e+02
  %add.22 = fadd double %mul.22, 0.000000e+00
  %conv7.22 = fptosi double %add.22 to i32
  %arrayidx.22 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.21
  store i32 %conv7.22, i32* %arrayidx.22, align 4
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.next.21, 1
  %call4.23 = call i32 @rand() #3
  %conv.23 = sitofp i32 %call4.23 to double
  %div.23 = fdiv double %conv.23, 0x41DFFFFFFFC00000
  %mul.23 = fmul double %div.23, 2.550000e+02
  %add.23 = fadd double %mul.23, 0.000000e+00
  %conv7.23 = fptosi double %add.23 to i32
  %arrayidx.23 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.22
  store i32 %conv7.23, i32* %arrayidx.23, align 4
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.next.22, 1
  %call4.24 = call i32 @rand() #3
  %conv.24 = sitofp i32 %call4.24 to double
  %div.24 = fdiv double %conv.24, 0x41DFFFFFFFC00000
  %mul.24 = fmul double %div.24, 2.550000e+02
  %add.24 = fadd double %mul.24, 0.000000e+00
  %conv7.24 = fptosi double %add.24 to i32
  %arrayidx.24 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.23
  store i32 %conv7.24, i32* %arrayidx.24, align 4
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.next.23, 1
  %call4.25 = call i32 @rand() #3
  %conv.25 = sitofp i32 %call4.25 to double
  %div.25 = fdiv double %conv.25, 0x41DFFFFFFFC00000
  %mul.25 = fmul double %div.25, 2.550000e+02
  %add.25 = fadd double %mul.25, 0.000000e+00
  %conv7.25 = fptosi double %add.25 to i32
  %arrayidx.25 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.24
  store i32 %conv7.25, i32* %arrayidx.25, align 4
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.next.24, 1
  %call4.26 = call i32 @rand() #3
  %conv.26 = sitofp i32 %call4.26 to double
  %div.26 = fdiv double %conv.26, 0x41DFFFFFFFC00000
  %mul.26 = fmul double %div.26, 2.550000e+02
  %add.26 = fadd double %mul.26, 0.000000e+00
  %conv7.26 = fptosi double %add.26 to i32
  %arrayidx.26 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.25
  store i32 %conv7.26, i32* %arrayidx.26, align 4
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.next.25, 1
  %call4.27 = call i32 @rand() #3
  %conv.27 = sitofp i32 %call4.27 to double
  %div.27 = fdiv double %conv.27, 0x41DFFFFFFFC00000
  %mul.27 = fmul double %div.27, 2.550000e+02
  %add.27 = fadd double %mul.27, 0.000000e+00
  %conv7.27 = fptosi double %add.27 to i32
  %arrayidx.27 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.26
  store i32 %conv7.27, i32* %arrayidx.27, align 4
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.next.26, 1
  %call4.28 = call i32 @rand() #3
  %conv.28 = sitofp i32 %call4.28 to double
  %div.28 = fdiv double %conv.28, 0x41DFFFFFFFC00000
  %mul.28 = fmul double %div.28, 2.550000e+02
  %add.28 = fadd double %mul.28, 0.000000e+00
  %conv7.28 = fptosi double %add.28 to i32
  %arrayidx.28 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.27
  store i32 %conv7.28, i32* %arrayidx.28, align 4
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.next.27, 1
  %call4.29 = call i32 @rand() #3
  %conv.29 = sitofp i32 %call4.29 to double
  %div.29 = fdiv double %conv.29, 0x41DFFFFFFFC00000
  %mul.29 = fmul double %div.29, 2.550000e+02
  %add.29 = fadd double %mul.29, 0.000000e+00
  %conv7.29 = fptosi double %add.29 to i32
  %arrayidx.29 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.28
  store i32 %conv7.29, i32* %arrayidx.29, align 4
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.next.28, 1
  %call4.30 = call i32 @rand() #3
  %conv.30 = sitofp i32 %call4.30 to double
  %div.30 = fdiv double %conv.30, 0x41DFFFFFFFC00000
  %mul.30 = fmul double %div.30, 2.550000e+02
  %add.30 = fadd double %mul.30, 0.000000e+00
  %conv7.30 = fptosi double %add.30 to i32
  %arrayidx.30 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.29
  store i32 %conv7.30, i32* %arrayidx.30, align 4
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.next.29, 1
  %call4.31 = call i32 @rand() #3
  %conv.31 = sitofp i32 %call4.31 to double
  %div.31 = fdiv double %conv.31, 0x41DFFFFFFFC00000
  %mul.31 = fmul double %div.31, 2.550000e+02
  %add.31 = fadd double %mul.31, 0.000000e+00
  %conv7.31 = fptosi double %add.31 to i32
  %arrayidx.31 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.30
  store i32 %conv7.31, i32* %arrayidx.31, align 4
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.next.30, 1
  %call4.32 = call i32 @rand() #3
  %conv.32 = sitofp i32 %call4.32 to double
  %div.32 = fdiv double %conv.32, 0x41DFFFFFFFC00000
  %mul.32 = fmul double %div.32, 2.550000e+02
  %add.32 = fadd double %mul.32, 0.000000e+00
  %conv7.32 = fptosi double %add.32 to i32
  %arrayidx.32 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.31
  store i32 %conv7.32, i32* %arrayidx.32, align 4
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.next.31, 1
  %call4.33 = call i32 @rand() #3
  %conv.33 = sitofp i32 %call4.33 to double
  %div.33 = fdiv double %conv.33, 0x41DFFFFFFFC00000
  %mul.33 = fmul double %div.33, 2.550000e+02
  %add.33 = fadd double %mul.33, 0.000000e+00
  %conv7.33 = fptosi double %add.33 to i32
  %arrayidx.33 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.32
  store i32 %conv7.33, i32* %arrayidx.33, align 4
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.next.32, 1
  %call4.34 = call i32 @rand() #3
  %conv.34 = sitofp i32 %call4.34 to double
  %div.34 = fdiv double %conv.34, 0x41DFFFFFFFC00000
  %mul.34 = fmul double %div.34, 2.550000e+02
  %add.34 = fadd double %mul.34, 0.000000e+00
  %conv7.34 = fptosi double %add.34 to i32
  %arrayidx.34 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.33
  store i32 %conv7.34, i32* %arrayidx.34, align 4
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.next.33, 1
  %call4.35 = call i32 @rand() #3
  %conv.35 = sitofp i32 %call4.35 to double
  %div.35 = fdiv double %conv.35, 0x41DFFFFFFFC00000
  %mul.35 = fmul double %div.35, 2.550000e+02
  %add.35 = fadd double %mul.35, 0.000000e+00
  %conv7.35 = fptosi double %add.35 to i32
  %arrayidx.35 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.34
  store i32 %conv7.35, i32* %arrayidx.35, align 4
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.next.34, 1
  %call4.36 = call i32 @rand() #3
  %conv.36 = sitofp i32 %call4.36 to double
  %div.36 = fdiv double %conv.36, 0x41DFFFFFFFC00000
  %mul.36 = fmul double %div.36, 2.550000e+02
  %add.36 = fadd double %mul.36, 0.000000e+00
  %conv7.36 = fptosi double %add.36 to i32
  %arrayidx.36 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.35
  store i32 %conv7.36, i32* %arrayidx.36, align 4
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.next.35, 1
  %call4.37 = call i32 @rand() #3
  %conv.37 = sitofp i32 %call4.37 to double
  %div.37 = fdiv double %conv.37, 0x41DFFFFFFFC00000
  %mul.37 = fmul double %div.37, 2.550000e+02
  %add.37 = fadd double %mul.37, 0.000000e+00
  %conv7.37 = fptosi double %add.37 to i32
  %arrayidx.37 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.36
  store i32 %conv7.37, i32* %arrayidx.37, align 4
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.next.36, 1
  %call4.38 = call i32 @rand() #3
  %conv.38 = sitofp i32 %call4.38 to double
  %div.38 = fdiv double %conv.38, 0x41DFFFFFFFC00000
  %mul.38 = fmul double %div.38, 2.550000e+02
  %add.38 = fadd double %mul.38, 0.000000e+00
  %conv7.38 = fptosi double %add.38 to i32
  %arrayidx.38 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.37
  store i32 %conv7.38, i32* %arrayidx.38, align 4
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.next.37, 1
  %call4.39 = call i32 @rand() #3
  %conv.39 = sitofp i32 %call4.39 to double
  %div.39 = fdiv double %conv.39, 0x41DFFFFFFFC00000
  %mul.39 = fmul double %div.39, 2.550000e+02
  %add.39 = fadd double %mul.39, 0.000000e+00
  %conv7.39 = fptosi double %add.39 to i32
  %arrayidx.39 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.38
  store i32 %conv7.39, i32* %arrayidx.39, align 4
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.next.38, 1
  %call4.40 = call i32 @rand() #3
  %conv.40 = sitofp i32 %call4.40 to double
  %div.40 = fdiv double %conv.40, 0x41DFFFFFFFC00000
  %mul.40 = fmul double %div.40, 2.550000e+02
  %add.40 = fadd double %mul.40, 0.000000e+00
  %conv7.40 = fptosi double %add.40 to i32
  %arrayidx.40 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.39
  store i32 %conv7.40, i32* %arrayidx.40, align 4
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.next.39, 1
  %call4.41 = call i32 @rand() #3
  %conv.41 = sitofp i32 %call4.41 to double
  %div.41 = fdiv double %conv.41, 0x41DFFFFFFFC00000
  %mul.41 = fmul double %div.41, 2.550000e+02
  %add.41 = fadd double %mul.41, 0.000000e+00
  %conv7.41 = fptosi double %add.41 to i32
  %arrayidx.41 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.40
  store i32 %conv7.41, i32* %arrayidx.41, align 4
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.next.40, 1
  %call4.42 = call i32 @rand() #3
  %conv.42 = sitofp i32 %call4.42 to double
  %div.42 = fdiv double %conv.42, 0x41DFFFFFFFC00000
  %mul.42 = fmul double %div.42, 2.550000e+02
  %add.42 = fadd double %mul.42, 0.000000e+00
  %conv7.42 = fptosi double %add.42 to i32
  %arrayidx.42 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.41
  store i32 %conv7.42, i32* %arrayidx.42, align 4
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.next.41, 1
  %call4.43 = call i32 @rand() #3
  %conv.43 = sitofp i32 %call4.43 to double
  %div.43 = fdiv double %conv.43, 0x41DFFFFFFFC00000
  %mul.43 = fmul double %div.43, 2.550000e+02
  %add.43 = fadd double %mul.43, 0.000000e+00
  %conv7.43 = fptosi double %add.43 to i32
  %arrayidx.43 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.42
  store i32 %conv7.43, i32* %arrayidx.43, align 4
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.next.42, 1
  %call4.44 = call i32 @rand() #3
  %conv.44 = sitofp i32 %call4.44 to double
  %div.44 = fdiv double %conv.44, 0x41DFFFFFFFC00000
  %mul.44 = fmul double %div.44, 2.550000e+02
  %add.44 = fadd double %mul.44, 0.000000e+00
  %conv7.44 = fptosi double %add.44 to i32
  %arrayidx.44 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.43
  store i32 %conv7.44, i32* %arrayidx.44, align 4
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.next.43, 1
  %call4.45 = call i32 @rand() #3
  %conv.45 = sitofp i32 %call4.45 to double
  %div.45 = fdiv double %conv.45, 0x41DFFFFFFFC00000
  %mul.45 = fmul double %div.45, 2.550000e+02
  %add.45 = fadd double %mul.45, 0.000000e+00
  %conv7.45 = fptosi double %add.45 to i32
  %arrayidx.45 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.44
  store i32 %conv7.45, i32* %arrayidx.45, align 4
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.next.44, 1
  %call4.46 = call i32 @rand() #3
  %conv.46 = sitofp i32 %call4.46 to double
  %div.46 = fdiv double %conv.46, 0x41DFFFFFFFC00000
  %mul.46 = fmul double %div.46, 2.550000e+02
  %add.46 = fadd double %mul.46, 0.000000e+00
  %conv7.46 = fptosi double %add.46 to i32
  %arrayidx.46 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.45
  store i32 %conv7.46, i32* %arrayidx.46, align 4
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.next.45, 1
  %call4.47 = call i32 @rand() #3
  %conv.47 = sitofp i32 %call4.47 to double
  %div.47 = fdiv double %conv.47, 0x41DFFFFFFFC00000
  %mul.47 = fmul double %div.47, 2.550000e+02
  %add.47 = fadd double %mul.47, 0.000000e+00
  %conv7.47 = fptosi double %add.47 to i32
  %arrayidx.47 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.46
  store i32 %conv7.47, i32* %arrayidx.47, align 4
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.next.46, 1
  %call4.48 = call i32 @rand() #3
  %conv.48 = sitofp i32 %call4.48 to double
  %div.48 = fdiv double %conv.48, 0x41DFFFFFFFC00000
  %mul.48 = fmul double %div.48, 2.550000e+02
  %add.48 = fadd double %mul.48, 0.000000e+00
  %conv7.48 = fptosi double %add.48 to i32
  %arrayidx.48 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.47
  store i32 %conv7.48, i32* %arrayidx.48, align 4
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.next.47, 1
  %call4.49 = call i32 @rand() #3
  %conv.49 = sitofp i32 %call4.49 to double
  %div.49 = fdiv double %conv.49, 0x41DFFFFFFFC00000
  %mul.49 = fmul double %div.49, 2.550000e+02
  %add.49 = fadd double %mul.49, 0.000000e+00
  %conv7.49 = fptosi double %add.49 to i32
  %arrayidx.49 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.48
  store i32 %conv7.49, i32* %arrayidx.49, align 4
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.next.48, 1
  %call4.50 = call i32 @rand() #3
  %conv.50 = sitofp i32 %call4.50 to double
  %div.50 = fdiv double %conv.50, 0x41DFFFFFFFC00000
  %mul.50 = fmul double %div.50, 2.550000e+02
  %add.50 = fadd double %mul.50, 0.000000e+00
  %conv7.50 = fptosi double %add.50 to i32
  %arrayidx.50 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.49
  store i32 %conv7.50, i32* %arrayidx.50, align 4
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.next.49, 1
  %call4.51 = call i32 @rand() #3
  %conv.51 = sitofp i32 %call4.51 to double
  %div.51 = fdiv double %conv.51, 0x41DFFFFFFFC00000
  %mul.51 = fmul double %div.51, 2.550000e+02
  %add.51 = fadd double %mul.51, 0.000000e+00
  %conv7.51 = fptosi double %add.51 to i32
  %arrayidx.51 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.50
  store i32 %conv7.51, i32* %arrayidx.51, align 4
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.next.50, 1
  %call4.52 = call i32 @rand() #3
  %conv.52 = sitofp i32 %call4.52 to double
  %div.52 = fdiv double %conv.52, 0x41DFFFFFFFC00000
  %mul.52 = fmul double %div.52, 2.550000e+02
  %add.52 = fadd double %mul.52, 0.000000e+00
  %conv7.52 = fptosi double %add.52 to i32
  %arrayidx.52 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.51
  store i32 %conv7.52, i32* %arrayidx.52, align 4
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.next.51, 1
  %call4.53 = call i32 @rand() #3
  %conv.53 = sitofp i32 %call4.53 to double
  %div.53 = fdiv double %conv.53, 0x41DFFFFFFFC00000
  %mul.53 = fmul double %div.53, 2.550000e+02
  %add.53 = fadd double %mul.53, 0.000000e+00
  %conv7.53 = fptosi double %add.53 to i32
  %arrayidx.53 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.52
  store i32 %conv7.53, i32* %arrayidx.53, align 4
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.next.52, 1
  %call4.54 = call i32 @rand() #3
  %conv.54 = sitofp i32 %call4.54 to double
  %div.54 = fdiv double %conv.54, 0x41DFFFFFFFC00000
  %mul.54 = fmul double %div.54, 2.550000e+02
  %add.54 = fadd double %mul.54, 0.000000e+00
  %conv7.54 = fptosi double %add.54 to i32
  %arrayidx.54 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.53
  store i32 %conv7.54, i32* %arrayidx.54, align 4
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.next.53, 1
  %call4.55 = call i32 @rand() #3
  %conv.55 = sitofp i32 %call4.55 to double
  %div.55 = fdiv double %conv.55, 0x41DFFFFFFFC00000
  %mul.55 = fmul double %div.55, 2.550000e+02
  %add.55 = fadd double %mul.55, 0.000000e+00
  %conv7.55 = fptosi double %add.55 to i32
  %arrayidx.55 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.54
  store i32 %conv7.55, i32* %arrayidx.55, align 4
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.next.54, 1
  %call4.56 = call i32 @rand() #3
  %conv.56 = sitofp i32 %call4.56 to double
  %div.56 = fdiv double %conv.56, 0x41DFFFFFFFC00000
  %mul.56 = fmul double %div.56, 2.550000e+02
  %add.56 = fadd double %mul.56, 0.000000e+00
  %conv7.56 = fptosi double %add.56 to i32
  %arrayidx.56 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.55
  store i32 %conv7.56, i32* %arrayidx.56, align 4
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.next.55, 1
  %call4.57 = call i32 @rand() #3
  %conv.57 = sitofp i32 %call4.57 to double
  %div.57 = fdiv double %conv.57, 0x41DFFFFFFFC00000
  %mul.57 = fmul double %div.57, 2.550000e+02
  %add.57 = fadd double %mul.57, 0.000000e+00
  %conv7.57 = fptosi double %add.57 to i32
  %arrayidx.57 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.56
  store i32 %conv7.57, i32* %arrayidx.57, align 4
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.next.56, 1
  %call4.58 = call i32 @rand() #3
  %conv.58 = sitofp i32 %call4.58 to double
  %div.58 = fdiv double %conv.58, 0x41DFFFFFFFC00000
  %mul.58 = fmul double %div.58, 2.550000e+02
  %add.58 = fadd double %mul.58, 0.000000e+00
  %conv7.58 = fptosi double %add.58 to i32
  %arrayidx.58 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.57
  store i32 %conv7.58, i32* %arrayidx.58, align 4
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.next.57, 1
  %call4.59 = call i32 @rand() #3
  %conv.59 = sitofp i32 %call4.59 to double
  %div.59 = fdiv double %conv.59, 0x41DFFFFFFFC00000
  %mul.59 = fmul double %div.59, 2.550000e+02
  %add.59 = fadd double %mul.59, 0.000000e+00
  %conv7.59 = fptosi double %add.59 to i32
  %arrayidx.59 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.58
  store i32 %conv7.59, i32* %arrayidx.59, align 4
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.next.58, 1
  %call4.60 = call i32 @rand() #3
  %conv.60 = sitofp i32 %call4.60 to double
  %div.60 = fdiv double %conv.60, 0x41DFFFFFFFC00000
  %mul.60 = fmul double %div.60, 2.550000e+02
  %add.60 = fadd double %mul.60, 0.000000e+00
  %conv7.60 = fptosi double %add.60 to i32
  %arrayidx.60 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.59
  store i32 %conv7.60, i32* %arrayidx.60, align 4
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.next.59, 1
  %call4.61 = call i32 @rand() #3
  %conv.61 = sitofp i32 %call4.61 to double
  %div.61 = fdiv double %conv.61, 0x41DFFFFFFFC00000
  %mul.61 = fmul double %div.61, 2.550000e+02
  %add.61 = fadd double %mul.61, 0.000000e+00
  %conv7.61 = fptosi double %add.61 to i32
  %arrayidx.61 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.60
  store i32 %conv7.61, i32* %arrayidx.61, align 4
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.next.60, 1
  %call4.62 = call i32 @rand() #3
  %conv.62 = sitofp i32 %call4.62 to double
  %div.62 = fdiv double %conv.62, 0x41DFFFFFFFC00000
  %mul.62 = fmul double %div.62, 2.550000e+02
  %add.62 = fadd double %mul.62, 0.000000e+00
  %conv7.62 = fptosi double %add.62 to i32
  %arrayidx.62 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.61
  store i32 %conv7.62, i32* %arrayidx.62, align 4
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.next.61, 1
  %call4.63 = call i32 @rand() #3
  %conv.63 = sitofp i32 %call4.63 to double
  %div.63 = fdiv double %conv.63, 0x41DFFFFFFFC00000
  %mul.63 = fmul double %div.63, 2.550000e+02
  %add.63 = fadd double %mul.63, 0.000000e+00
  %conv7.63 = fptosi double %add.63 to i32
  %arrayidx.63 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv.next.62
  store i32 %conv7.63, i32* %arrayidx.63, align 4
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.next.62, 1
  %exitcond.63 = icmp ne i64 %indvars.iv.next.63, 2048
  br i1 %exitcond.63, label %for.body, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.body
  %1 = bitcast i8* %call to i32*
  %2 = bitcast i8* %call1 to i32*
  %3 = bitcast i8* %call3 to i32*
  call void @ss_sort(i32* %0, i32* %2, i32* %1, i32* %3)
  call void @print(i32* %0, i32 1)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.count", i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.count", i32 64}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !3}
