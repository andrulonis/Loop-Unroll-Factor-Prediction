; ModuleID = 'stencil.ll'
source_filename = "stencil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @stencil3d(i32* %host_orig, i32* %host_sol, i32* %C, i32* %orig, i32* %sol) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc20
  %indvars.iv96 = phi i64 [ 0, %entry ], [ %indvars.iv.next97, %for.inc20 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv89 = phi i64 [ 0, %for.body ], [ %indvars.iv.next90, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv96, 4
  %1 = add nuw nsw i64 %indvars.iv89, %0
  %arrayidx = getelementptr inbounds i32, i32* %host_orig, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %3 = shl nsw i64 %indvars.iv96, 4
  %4 = add nuw nsw i64 %indvars.iv89, %3
  %arrayidx9 = getelementptr inbounds i32, i32* %host_sol, i64 %4
  store i32 %2, i32* %arrayidx9, align 4
  %5 = shl i64 %indvars.iv96, 4
  %6 = add nuw nsw i64 %5, 15872
  %7 = add nuw nsw i64 %indvars.iv89, %6
  %arrayidx14 = getelementptr inbounds i32, i32* %host_orig, i64 %7
  %8 = load i32, i32* %arrayidx14, align 4
  %9 = shl i64 %indvars.iv96, 4
  %10 = add nuw nsw i64 %9, 15872
  %11 = add nuw nsw i64 %indvars.iv89, %10
  %arrayidx19 = getelementptr inbounds i32, i32* %host_sol, i64 %11
  store i32 %8, i32* %arrayidx19, align 4
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond95 = icmp ne i64 %indvars.iv.next90, 16
  br i1 %exitcond95, label %for.body3, label %for.inc20

for.inc20:                                        ; preds = %for.body3
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %exitcond104 = icmp ne i64 %indvars.iv.next97, 32
  br i1 %exitcond104, label %for.body, label %for.body25.preheader

for.body25.preheader:                             ; preds = %for.inc20
  br label %for.body25

for.body25:                                       ; preds = %for.body25.preheader, %for.inc56
  %indvars.iv80 = phi i64 [ 1, %for.body25.preheader ], [ %indvars.iv.next81, %for.inc56 ]
  br label %for.body28

for.body28:                                       ; preds = %for.body25, %for.body28
  %indvars.iv73 = phi i64 [ 0, %for.body25 ], [ %indvars.iv.next74, %for.body28 ]
  %12 = shl nsw i64 %indvars.iv80, 9
  %13 = add nuw nsw i64 %indvars.iv73, %12
  %arrayidx34 = getelementptr inbounds i32, i32* %host_orig, i64 %13
  %14 = load i32, i32* %arrayidx34, align 4
  %15 = shl nsw i64 %indvars.iv80, 9
  %16 = add nuw nsw i64 %indvars.iv73, %15
  %arrayidx40 = getelementptr inbounds i32, i32* %host_sol, i64 %16
  store i32 %14, i32* %arrayidx40, align 4
  %17 = shl i64 %indvars.iv80, 9
  %18 = or i64 %17, 496
  %19 = add nuw nsw i64 %indvars.iv73, %18
  %arrayidx46 = getelementptr inbounds i32, i32* %host_orig, i64 %19
  %20 = load i32, i32* %arrayidx46, align 4
  %21 = shl i64 %indvars.iv80, 9
  %22 = or i64 %21, 496
  %23 = add nuw nsw i64 %indvars.iv73, %22
  %arrayidx52 = getelementptr inbounds i32, i32* %host_sol, i64 %23
  store i32 %20, i32* %arrayidx52, align 4
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %exitcond79 = icmp ne i64 %indvars.iv.next74, 16
  br i1 %exitcond79, label %for.body28, label %for.inc56

for.inc56:                                        ; preds = %for.body28
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond88 = icmp ne i64 %indvars.iv.next81, 31
  br i1 %exitcond88, label %for.body25, label %for.body61.preheader

for.body61.preheader:                             ; preds = %for.inc56
  br label %for.body61

for.body61:                                       ; preds = %for.body61.preheader, %for.inc92
  %indvars.iv66 = phi i64 [ 1, %for.body61.preheader ], [ %indvars.iv.next67, %for.inc92 ]
  br label %for.body64

for.body64:                                       ; preds = %for.body61, %for.body64
  %indvars.iv53 = phi i64 [ 1, %for.body61 ], [ %indvars.iv.next54, %for.body64 ]
  %24 = shl nsw i64 %indvars.iv66, 5
  %25 = add nuw nsw i64 %indvars.iv53, %24
  %26 = shl nsw i64 %25, 4
  %arrayidx70 = getelementptr inbounds i32, i32* %host_orig, i64 %26
  %27 = load i32, i32* %arrayidx70, align 4
  %28 = shl nsw i64 %indvars.iv66, 5
  %29 = add nuw nsw i64 %indvars.iv53, %28
  %30 = shl nsw i64 %29, 4
  %arrayidx76 = getelementptr inbounds i32, i32* %host_sol, i64 %30
  store i32 %27, i32* %arrayidx76, align 4
  %31 = shl nsw i64 %indvars.iv66, 5
  %32 = add nuw nsw i64 %indvars.iv53, %31
  %33 = shl nsw i64 %32, 4
  %34 = or i64 %33, 15
  %arrayidx82 = getelementptr inbounds i32, i32* %host_orig, i64 %34
  %35 = load i32, i32* %arrayidx82, align 4
  %36 = shl nsw i64 %indvars.iv66, 5
  %37 = add nuw nsw i64 %indvars.iv53, %36
  %38 = shl nsw i64 %37, 4
  %39 = or i64 %38, 15
  %arrayidx88 = getelementptr inbounds i32, i32* %host_sol, i64 %39
  store i32 %35, i32* %arrayidx88, align 4
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond65 = icmp ne i64 %indvars.iv.next54, 31
  br i1 %exitcond65, label %for.body64, label %for.inc92

for.inc92:                                        ; preds = %for.body64
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond72 = icmp ne i64 %indvars.iv.next67, 31
  br i1 %exitcond72, label %for.body61, label %for.body97.preheader

for.body97.preheader:                             ; preds = %for.inc92
  br label %for.body97

for.body97:                                       ; preds = %for.body97.preheader, %for.inc173
  %indvars.iv40 = phi i64 [ 1, %for.body97.preheader ], [ %indvars.iv.next41, %for.inc173 ]
  br label %for.body100

for.body100:                                      ; preds = %for.body97, %for.inc170
  %indvars.iv19 = phi i64 [ 1, %for.body97 ], [ %indvars.iv.next20, %for.inc170 ]
  br label %for.body103

for.body103:                                      ; preds = %for.body100, %for.body103
  %indvars.iv = phi i64 [ 1, %for.body100 ], [ %indvars.iv.next, %for.body103 ]
  %40 = shl nsw i64 %indvars.iv40, 5
  %41 = add nuw nsw i64 %indvars.iv19, %40
  %42 = shl nsw i64 %41, 4
  %43 = add nuw nsw i64 %indvars.iv, %42
  %arrayidx109 = getelementptr inbounds i32, i32* %host_orig, i64 %43
  %44 = load i32, i32* %arrayidx109, align 4
  %45 = shl i64 %indvars.iv40, 5
  %46 = add nuw nsw i64 %45, 32
  %47 = add nuw nsw i64 %indvars.iv19, %46
  %48 = shl nsw i64 %47, 4
  %49 = add nuw nsw i64 %indvars.iv, %48
  %arrayidx116 = getelementptr inbounds i32, i32* %host_orig, i64 %49
  %50 = load i32, i32* %arrayidx116, align 4
  %51 = shl i64 %indvars.iv40, 5
  %52 = add nsw i64 %51, -32
  %53 = add nuw nsw i64 %indvars.iv19, %52
  %54 = shl nsw i64 %53, 4
  %55 = add nuw nsw i64 %indvars.iv, %54
  %arrayidx122 = getelementptr inbounds i32, i32* %host_orig, i64 %55
  %56 = load i32, i32* %arrayidx122, align 4
  %add123 = add nsw i32 %50, %56
  %57 = add nuw nsw i64 %indvars.iv19, 1
  %58 = shl nsw i64 %indvars.iv40, 5
  %59 = add nuw nsw i64 %57, %58
  %60 = shl nsw i64 %59, 4
  %61 = add nuw nsw i64 %indvars.iv, %60
  %arrayidx130 = getelementptr inbounds i32, i32* %host_orig, i64 %61
  %62 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %add123, %62
  %63 = add nsw i64 %indvars.iv19, -1
  %64 = shl nsw i64 %indvars.iv40, 5
  %65 = add nuw nsw i64 %63, %64
  %66 = shl nsw i64 %65, 4
  %67 = add nuw nsw i64 %indvars.iv, %66
  %arrayidx138 = getelementptr inbounds i32, i32* %host_orig, i64 %67
  %68 = load i32, i32* %arrayidx138, align 4
  %add139 = add nsw i32 %add131, %68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %69 = shl nsw i64 %indvars.iv40, 5
  %70 = add nuw nsw i64 %indvars.iv19, %69
  %71 = shl nsw i64 %70, 4
  %72 = add nuw nsw i64 %indvars.iv.next, %71
  %arrayidx146 = getelementptr inbounds i32, i32* %host_orig, i64 %72
  %73 = load i32, i32* %arrayidx146, align 4
  %add147 = add nsw i32 %add139, %73
  %74 = add nsw i64 %indvars.iv, -1
  %75 = shl nsw i64 %indvars.iv40, 5
  %76 = add nuw nsw i64 %indvars.iv19, %75
  %77 = shl nsw i64 %76, 4
  %78 = add nuw nsw i64 %74, %77
  %arrayidx154 = getelementptr inbounds i32, i32* %host_orig, i64 %78
  %79 = load i32, i32* %arrayidx154, align 4
  %add155 = add nsw i32 %add147, %79
  %80 = load i32, i32* %C, align 4
  %mul157 = mul nsw i32 %44, %80
  %arrayidx158 = getelementptr inbounds i32, i32* %C, i64 1
  %81 = load i32, i32* %arrayidx158, align 4
  %mul159 = mul nsw i32 %add155, %81
  %add160 = add nsw i32 %mul157, %mul159
  %82 = shl nsw i64 %indvars.iv40, 5
  %83 = add nuw nsw i64 %indvars.iv19, %82
  %84 = shl nsw i64 %83, 4
  %85 = add nuw nsw i64 %indvars.iv, %84
  %arrayidx166 = getelementptr inbounds i32, i32* %host_sol, i64 %85
  store i32 %add160, i32* %arrayidx166, align 4
  %exitcond = icmp ne i64 %indvars.iv.next, 15
  br i1 %exitcond, label %for.body103, label %for.inc170

for.inc170:                                       ; preds = %for.body103
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond39 = icmp ne i64 %indvars.iv.next20, 31
  br i1 %exitcond39, label %for.body100, label %for.inc173

for.inc173:                                       ; preds = %for.inc170
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond52 = icmp ne i64 %indvars.iv.next41, 31
  br i1 %exitcond52, label %for.body97, label %for.end175

for.end175:                                       ; preds = %for.inc173
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
