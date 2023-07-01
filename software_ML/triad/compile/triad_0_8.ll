; ModuleID = 'triad_0_8.ll'
source_filename = "triad_0_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [12 x i8] c"output.data\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @triad(i32* %a, i32* %b, i32* %c, i32 %s) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.7, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx2, align 4
  %mul = mul nsw i32 %1, %s
  %add = add nsw i32 %0, %mul
  %arrayidx4 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv
  store i32 %add, i32* %arrayidx4, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next
  %2 = load i32, i32* %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next
  %3 = load i32, i32* %arrayidx2.1, align 4
  %mul.1 = mul nsw i32 %3, %s
  %add.1 = add nsw i32 %2, %mul.1
  %arrayidx4.1 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next
  store i32 %add.1, i32* %arrayidx4.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %arrayidx.2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.1
  %4 = load i32, i32* %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.1
  %5 = load i32, i32* %arrayidx2.2, align 4
  %mul.2 = mul nsw i32 %5, %s
  %add.2 = add nsw i32 %4, %mul.2
  %arrayidx4.2 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.1
  store i32 %add.2, i32* %arrayidx4.2, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.next.1, 1
  %arrayidx.3 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.2
  %6 = load i32, i32* %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.2
  %7 = load i32, i32* %arrayidx2.3, align 4
  %mul.3 = mul nsw i32 %7, %s
  %add.3 = add nsw i32 %6, %mul.3
  %arrayidx4.3 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.2
  store i32 %add.3, i32* %arrayidx4.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.next.2, 1
  %arrayidx.4 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.3
  %8 = load i32, i32* %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.3
  %9 = load i32, i32* %arrayidx2.4, align 4
  %mul.4 = mul nsw i32 %9, %s
  %add.4 = add nsw i32 %8, %mul.4
  %arrayidx4.4 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.3
  store i32 %add.4, i32* %arrayidx4.4, align 4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.next.3, 1
  %arrayidx.5 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.4
  %10 = load i32, i32* %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.4
  %11 = load i32, i32* %arrayidx2.5, align 4
  %mul.5 = mul nsw i32 %11, %s
  %add.5 = add nsw i32 %10, %mul.5
  %arrayidx4.5 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.4
  store i32 %add.5, i32* %arrayidx4.5, align 4
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.next.4, 1
  %arrayidx.6 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.5
  %12 = load i32, i32* %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.5
  %13 = load i32, i32* %arrayidx2.6, align 4
  %mul.6 = mul nsw i32 %13, %s
  %add.6 = add nsw i32 %12, %mul.6
  %arrayidx4.6 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.5
  store i32 %add.6, i32* %arrayidx4.6, align 4
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.next.5, 1
  %arrayidx.7 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.6
  %14 = load i32, i32* %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next.6
  %15 = load i32, i32* %arrayidx2.7, align 4
  %mul.7 = mul nsw i32 %15, %s
  %add.7 = add nsw i32 %14, %mul.7
  %arrayidx4.7 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.6
  store i32 %add.7, i32* %arrayidx4.7, align 4
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.next.6, 1
  %exitcond.7 = icmp ne i64 %indvars.iv.next.7, 1048576
  br i1 %exitcond.7, label %for.body, label %for.end, !llvm.loop !2

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call noalias dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #4
  %0 = bitcast i8* %call to i32*
  %call1 = call noalias dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #4
  %1 = bitcast i8* %call1 to i32*
  %call2 = call noalias dereferenceable_or_null(4194304) i8* @malloc(i64 4194304) #4
  %2 = bitcast i8* %call2 to i32*
  %call3 = call i64 @time(i64* null) #4
  %conv = trunc i64 %call3 to i32
  call void @srand(i32 %conv) #4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv3 = phi i64 [ 0, %entry ], [ %indvars.iv.next4, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %indvars.iv3
  store i32 0, i32* %arrayidx, align 4
  %call5 = call i32 @rand() #4
  %arrayidx7 = getelementptr inbounds i32, i32* %0, i64 %indvars.iv3
  store i32 %call5, i32* %arrayidx7, align 4
  %call8 = call i32 @rand() #4
  %arrayidx10 = getelementptr inbounds i32, i32* %1, i64 %indvars.iv3
  store i32 %call8, i32* %arrayidx10, align 4
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp ne i64 %indvars.iv.next4, 1048576
  br i1 %exitcond5, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  call void @triad(i32* %0, i32* %1, i32* %2, i32 3)
  %call14 = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %for.body18

for.body18:                                       ; preds = %for.end, %for.body18
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.body18 ]
  %arrayidx20 = getelementptr inbounds i32, i32* %2, i64 %indvars.iv
  %3 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %3) #4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 1048576
  br i1 %exitcond, label %for.body18, label %for.end24

for.end24:                                        ; preds = %for.body18
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %call14)
  %call26 = call i32 @fclose(%struct._IO_FILE* %call14) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}