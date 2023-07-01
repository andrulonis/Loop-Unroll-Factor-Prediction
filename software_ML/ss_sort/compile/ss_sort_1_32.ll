; ModuleID = 'ss_sort_1_32.ll'
source_filename = "ss_sort_1_32.c"
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
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0) #3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.body
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
  %0 = shl nsw i64 %indvars.iv, 5
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %0
  %1 = load i32, i32* %arrayidx, align 4
  %2 = shl nsw i64 %indvars.iv, 5
  %3 = add nuw nsw i64 %2, 1
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %3
  %4 = load i32, i32* %arrayidx7, align 4
  %add8 = add nsw i32 %4, %1
  store i32 %add8, i32* %arrayidx7, align 4
  %5 = shl nsw i64 %indvars.iv, 5
  %6 = add nuw nsw i64 %5, 2
  %7 = add nsw i64 %6, -1
  %arrayidx.1 = getelementptr inbounds i32, i32* %bucket, i64 %7
  %8 = load i32, i32* %arrayidx.1, align 4
  %9 = shl nsw i64 %indvars.iv, 5
  %10 = add nuw nsw i64 %9, 2
  %arrayidx7.1 = getelementptr inbounds i32, i32* %bucket, i64 %10
  %11 = load i32, i32* %arrayidx7.1, align 4
  %add8.1 = add nsw i32 %11, %8
  store i32 %add8.1, i32* %arrayidx7.1, align 4
  %12 = shl nsw i64 %indvars.iv, 5
  %13 = add nuw nsw i64 %12, 3
  %14 = add nsw i64 %13, -1
  %arrayidx.2 = getelementptr inbounds i32, i32* %bucket, i64 %14
  %15 = load i32, i32* %arrayidx.2, align 4
  %16 = shl nsw i64 %indvars.iv, 5
  %17 = add nuw nsw i64 %16, 3
  %arrayidx7.2 = getelementptr inbounds i32, i32* %bucket, i64 %17
  %18 = load i32, i32* %arrayidx7.2, align 4
  %add8.2 = add nsw i32 %18, %15
  store i32 %add8.2, i32* %arrayidx7.2, align 4
  %19 = shl nsw i64 %indvars.iv, 5
  %20 = add nuw nsw i64 %19, 4
  %21 = add nsw i64 %20, -1
  %arrayidx.3 = getelementptr inbounds i32, i32* %bucket, i64 %21
  %22 = load i32, i32* %arrayidx.3, align 4
  %23 = shl nsw i64 %indvars.iv, 5
  %24 = add nuw nsw i64 %23, 4
  %arrayidx7.3 = getelementptr inbounds i32, i32* %bucket, i64 %24
  %25 = load i32, i32* %arrayidx7.3, align 4
  %add8.3 = add nsw i32 %25, %22
  store i32 %add8.3, i32* %arrayidx7.3, align 4
  %26 = shl nsw i64 %indvars.iv, 5
  %27 = add nuw nsw i64 %26, 5
  %28 = add nsw i64 %27, -1
  %arrayidx.4 = getelementptr inbounds i32, i32* %bucket, i64 %28
  %29 = load i32, i32* %arrayidx.4, align 4
  %30 = shl nsw i64 %indvars.iv, 5
  %31 = add nuw nsw i64 %30, 5
  %arrayidx7.4 = getelementptr inbounds i32, i32* %bucket, i64 %31
  %32 = load i32, i32* %arrayidx7.4, align 4
  %add8.4 = add nsw i32 %32, %29
  store i32 %add8.4, i32* %arrayidx7.4, align 4
  %33 = shl nsw i64 %indvars.iv, 5
  %34 = add nuw nsw i64 %33, 6
  %35 = add nsw i64 %34, -1
  %arrayidx.5 = getelementptr inbounds i32, i32* %bucket, i64 %35
  %36 = load i32, i32* %arrayidx.5, align 4
  %37 = shl nsw i64 %indvars.iv, 5
  %38 = add nuw nsw i64 %37, 6
  %arrayidx7.5 = getelementptr inbounds i32, i32* %bucket, i64 %38
  %39 = load i32, i32* %arrayidx7.5, align 4
  %add8.5 = add nsw i32 %39, %36
  store i32 %add8.5, i32* %arrayidx7.5, align 4
  %40 = shl nsw i64 %indvars.iv, 5
  %41 = add nuw nsw i64 %40, 7
  %42 = add nsw i64 %41, -1
  %arrayidx.6 = getelementptr inbounds i32, i32* %bucket, i64 %42
  %43 = load i32, i32* %arrayidx.6, align 4
  %44 = shl nsw i64 %indvars.iv, 5
  %45 = add nuw nsw i64 %44, 7
  %arrayidx7.6 = getelementptr inbounds i32, i32* %bucket, i64 %45
  %46 = load i32, i32* %arrayidx7.6, align 4
  %add8.6 = add nsw i32 %46, %43
  store i32 %add8.6, i32* %arrayidx7.6, align 4
  %47 = shl nsw i64 %indvars.iv, 5
  %48 = add nuw nsw i64 %47, 8
  %49 = add nsw i64 %48, -1
  %arrayidx.7 = getelementptr inbounds i32, i32* %bucket, i64 %49
  %50 = load i32, i32* %arrayidx.7, align 4
  %51 = shl nsw i64 %indvars.iv, 5
  %52 = add nuw nsw i64 %51, 8
  %arrayidx7.7 = getelementptr inbounds i32, i32* %bucket, i64 %52
  %53 = load i32, i32* %arrayidx7.7, align 4
  %add8.7 = add nsw i32 %53, %50
  store i32 %add8.7, i32* %arrayidx7.7, align 4
  %54 = shl nsw i64 %indvars.iv, 5
  %55 = add nuw nsw i64 %54, 9
  %56 = add nsw i64 %55, -1
  %arrayidx.8 = getelementptr inbounds i32, i32* %bucket, i64 %56
  %57 = load i32, i32* %arrayidx.8, align 4
  %58 = shl nsw i64 %indvars.iv, 5
  %59 = add nuw nsw i64 %58, 9
  %arrayidx7.8 = getelementptr inbounds i32, i32* %bucket, i64 %59
  %60 = load i32, i32* %arrayidx7.8, align 4
  %add8.8 = add nsw i32 %60, %57
  store i32 %add8.8, i32* %arrayidx7.8, align 4
  %61 = shl nsw i64 %indvars.iv, 5
  %62 = add nuw nsw i64 %61, 10
  %63 = add nsw i64 %62, -1
  %arrayidx.9 = getelementptr inbounds i32, i32* %bucket, i64 %63
  %64 = load i32, i32* %arrayidx.9, align 4
  %65 = shl nsw i64 %indvars.iv, 5
  %66 = add nuw nsw i64 %65, 10
  %arrayidx7.9 = getelementptr inbounds i32, i32* %bucket, i64 %66
  %67 = load i32, i32* %arrayidx7.9, align 4
  %add8.9 = add nsw i32 %67, %64
  store i32 %add8.9, i32* %arrayidx7.9, align 4
  %68 = shl nsw i64 %indvars.iv, 5
  %69 = add nuw nsw i64 %68, 11
  %70 = add nsw i64 %69, -1
  %arrayidx.10 = getelementptr inbounds i32, i32* %bucket, i64 %70
  %71 = load i32, i32* %arrayidx.10, align 4
  %72 = shl nsw i64 %indvars.iv, 5
  %73 = add nuw nsw i64 %72, 11
  %arrayidx7.10 = getelementptr inbounds i32, i32* %bucket, i64 %73
  %74 = load i32, i32* %arrayidx7.10, align 4
  %add8.10 = add nsw i32 %74, %71
  store i32 %add8.10, i32* %arrayidx7.10, align 4
  %75 = shl nsw i64 %indvars.iv, 5
  %76 = add nuw nsw i64 %75, 12
  %77 = add nsw i64 %76, -1
  %arrayidx.11 = getelementptr inbounds i32, i32* %bucket, i64 %77
  %78 = load i32, i32* %arrayidx.11, align 4
  %79 = shl nsw i64 %indvars.iv, 5
  %80 = add nuw nsw i64 %79, 12
  %arrayidx7.11 = getelementptr inbounds i32, i32* %bucket, i64 %80
  %81 = load i32, i32* %arrayidx7.11, align 4
  %add8.11 = add nsw i32 %81, %78
  store i32 %add8.11, i32* %arrayidx7.11, align 4
  %82 = shl nsw i64 %indvars.iv, 5
  %83 = add nuw nsw i64 %82, 13
  %84 = add nsw i64 %83, -1
  %arrayidx.12 = getelementptr inbounds i32, i32* %bucket, i64 %84
  %85 = load i32, i32* %arrayidx.12, align 4
  %86 = shl nsw i64 %indvars.iv, 5
  %87 = add nuw nsw i64 %86, 13
  %arrayidx7.12 = getelementptr inbounds i32, i32* %bucket, i64 %87
  %88 = load i32, i32* %arrayidx7.12, align 4
  %add8.12 = add nsw i32 %88, %85
  store i32 %add8.12, i32* %arrayidx7.12, align 4
  %89 = shl nsw i64 %indvars.iv, 5
  %90 = add nuw nsw i64 %89, 14
  %91 = add nsw i64 %90, -1
  %arrayidx.13 = getelementptr inbounds i32, i32* %bucket, i64 %91
  %92 = load i32, i32* %arrayidx.13, align 4
  %93 = shl nsw i64 %indvars.iv, 5
  %94 = add nuw nsw i64 %93, 14
  %arrayidx7.13 = getelementptr inbounds i32, i32* %bucket, i64 %94
  %95 = load i32, i32* %arrayidx7.13, align 4
  %add8.13 = add nsw i32 %95, %92
  store i32 %add8.13, i32* %arrayidx7.13, align 4
  %96 = shl nsw i64 %indvars.iv, 5
  %97 = add nuw nsw i64 %96, 15
  %98 = add nsw i64 %97, -1
  %arrayidx.14 = getelementptr inbounds i32, i32* %bucket, i64 %98
  %99 = load i32, i32* %arrayidx.14, align 4
  %100 = shl nsw i64 %indvars.iv, 5
  %101 = add nuw nsw i64 %100, 15
  %arrayidx7.14 = getelementptr inbounds i32, i32* %bucket, i64 %101
  %102 = load i32, i32* %arrayidx7.14, align 4
  %add8.14 = add nsw i32 %102, %99
  store i32 %add8.14, i32* %arrayidx7.14, align 4
  %103 = shl nsw i64 %indvars.iv, 5
  %104 = add nuw nsw i64 %103, 16
  %105 = add nsw i64 %104, -1
  %arrayidx.15 = getelementptr inbounds i32, i32* %bucket, i64 %105
  %106 = load i32, i32* %arrayidx.15, align 4
  %107 = shl nsw i64 %indvars.iv, 5
  %108 = add nuw nsw i64 %107, 16
  %arrayidx7.15 = getelementptr inbounds i32, i32* %bucket, i64 %108
  %109 = load i32, i32* %arrayidx7.15, align 4
  %add8.15 = add nsw i32 %109, %106
  store i32 %add8.15, i32* %arrayidx7.15, align 4
  %110 = shl nsw i64 %indvars.iv, 5
  %111 = add nuw nsw i64 %110, 17
  %112 = add nsw i64 %111, -1
  %arrayidx.16 = getelementptr inbounds i32, i32* %bucket, i64 %112
  %113 = load i32, i32* %arrayidx.16, align 4
  %114 = shl nsw i64 %indvars.iv, 5
  %115 = add nuw nsw i64 %114, 17
  %arrayidx7.16 = getelementptr inbounds i32, i32* %bucket, i64 %115
  %116 = load i32, i32* %arrayidx7.16, align 4
  %add8.16 = add nsw i32 %116, %113
  store i32 %add8.16, i32* %arrayidx7.16, align 4
  %117 = shl nsw i64 %indvars.iv, 5
  %118 = add nuw nsw i64 %117, 18
  %119 = add nsw i64 %118, -1
  %arrayidx.17 = getelementptr inbounds i32, i32* %bucket, i64 %119
  %120 = load i32, i32* %arrayidx.17, align 4
  %121 = shl nsw i64 %indvars.iv, 5
  %122 = add nuw nsw i64 %121, 18
  %arrayidx7.17 = getelementptr inbounds i32, i32* %bucket, i64 %122
  %123 = load i32, i32* %arrayidx7.17, align 4
  %add8.17 = add nsw i32 %123, %120
  store i32 %add8.17, i32* %arrayidx7.17, align 4
  %124 = shl nsw i64 %indvars.iv, 5
  %125 = add nuw nsw i64 %124, 19
  %126 = add nsw i64 %125, -1
  %arrayidx.18 = getelementptr inbounds i32, i32* %bucket, i64 %126
  %127 = load i32, i32* %arrayidx.18, align 4
  %128 = shl nsw i64 %indvars.iv, 5
  %129 = add nuw nsw i64 %128, 19
  %arrayidx7.18 = getelementptr inbounds i32, i32* %bucket, i64 %129
  %130 = load i32, i32* %arrayidx7.18, align 4
  %add8.18 = add nsw i32 %130, %127
  store i32 %add8.18, i32* %arrayidx7.18, align 4
  %131 = shl nsw i64 %indvars.iv, 5
  %132 = add nuw nsw i64 %131, 20
  %133 = add nsw i64 %132, -1
  %arrayidx.19 = getelementptr inbounds i32, i32* %bucket, i64 %133
  %134 = load i32, i32* %arrayidx.19, align 4
  %135 = shl nsw i64 %indvars.iv, 5
  %136 = add nuw nsw i64 %135, 20
  %arrayidx7.19 = getelementptr inbounds i32, i32* %bucket, i64 %136
  %137 = load i32, i32* %arrayidx7.19, align 4
  %add8.19 = add nsw i32 %137, %134
  store i32 %add8.19, i32* %arrayidx7.19, align 4
  %138 = shl nsw i64 %indvars.iv, 5
  %139 = add nuw nsw i64 %138, 21
  %140 = add nsw i64 %139, -1
  %arrayidx.20 = getelementptr inbounds i32, i32* %bucket, i64 %140
  %141 = load i32, i32* %arrayidx.20, align 4
  %142 = shl nsw i64 %indvars.iv, 5
  %143 = add nuw nsw i64 %142, 21
  %arrayidx7.20 = getelementptr inbounds i32, i32* %bucket, i64 %143
  %144 = load i32, i32* %arrayidx7.20, align 4
  %add8.20 = add nsw i32 %144, %141
  store i32 %add8.20, i32* %arrayidx7.20, align 4
  %145 = shl nsw i64 %indvars.iv, 5
  %146 = add nuw nsw i64 %145, 22
  %147 = add nsw i64 %146, -1
  %arrayidx.21 = getelementptr inbounds i32, i32* %bucket, i64 %147
  %148 = load i32, i32* %arrayidx.21, align 4
  %149 = shl nsw i64 %indvars.iv, 5
  %150 = add nuw nsw i64 %149, 22
  %arrayidx7.21 = getelementptr inbounds i32, i32* %bucket, i64 %150
  %151 = load i32, i32* %arrayidx7.21, align 4
  %add8.21 = add nsw i32 %151, %148
  store i32 %add8.21, i32* %arrayidx7.21, align 4
  %152 = shl nsw i64 %indvars.iv, 5
  %153 = add nuw nsw i64 %152, 23
  %154 = add nsw i64 %153, -1
  %arrayidx.22 = getelementptr inbounds i32, i32* %bucket, i64 %154
  %155 = load i32, i32* %arrayidx.22, align 4
  %156 = shl nsw i64 %indvars.iv, 5
  %157 = add nuw nsw i64 %156, 23
  %arrayidx7.22 = getelementptr inbounds i32, i32* %bucket, i64 %157
  %158 = load i32, i32* %arrayidx7.22, align 4
  %add8.22 = add nsw i32 %158, %155
  store i32 %add8.22, i32* %arrayidx7.22, align 4
  %159 = shl nsw i64 %indvars.iv, 5
  %160 = add nuw nsw i64 %159, 24
  %161 = add nsw i64 %160, -1
  %arrayidx.23 = getelementptr inbounds i32, i32* %bucket, i64 %161
  %162 = load i32, i32* %arrayidx.23, align 4
  %163 = shl nsw i64 %indvars.iv, 5
  %164 = add nuw nsw i64 %163, 24
  %arrayidx7.23 = getelementptr inbounds i32, i32* %bucket, i64 %164
  %165 = load i32, i32* %arrayidx7.23, align 4
  %add8.23 = add nsw i32 %165, %162
  store i32 %add8.23, i32* %arrayidx7.23, align 4
  %166 = shl nsw i64 %indvars.iv, 5
  %167 = add nuw nsw i64 %166, 25
  %168 = add nsw i64 %167, -1
  %arrayidx.24 = getelementptr inbounds i32, i32* %bucket, i64 %168
  %169 = load i32, i32* %arrayidx.24, align 4
  %170 = shl nsw i64 %indvars.iv, 5
  %171 = add nuw nsw i64 %170, 25
  %arrayidx7.24 = getelementptr inbounds i32, i32* %bucket, i64 %171
  %172 = load i32, i32* %arrayidx7.24, align 4
  %add8.24 = add nsw i32 %172, %169
  store i32 %add8.24, i32* %arrayidx7.24, align 4
  %173 = shl nsw i64 %indvars.iv, 5
  %174 = add nuw nsw i64 %173, 26
  %175 = add nsw i64 %174, -1
  %arrayidx.25 = getelementptr inbounds i32, i32* %bucket, i64 %175
  %176 = load i32, i32* %arrayidx.25, align 4
  %177 = shl nsw i64 %indvars.iv, 5
  %178 = add nuw nsw i64 %177, 26
  %arrayidx7.25 = getelementptr inbounds i32, i32* %bucket, i64 %178
  %179 = load i32, i32* %arrayidx7.25, align 4
  %add8.25 = add nsw i32 %179, %176
  store i32 %add8.25, i32* %arrayidx7.25, align 4
  %180 = shl nsw i64 %indvars.iv, 5
  %181 = add nuw nsw i64 %180, 27
  %182 = add nsw i64 %181, -1
  %arrayidx.26 = getelementptr inbounds i32, i32* %bucket, i64 %182
  %183 = load i32, i32* %arrayidx.26, align 4
  %184 = shl nsw i64 %indvars.iv, 5
  %185 = add nuw nsw i64 %184, 27
  %arrayidx7.26 = getelementptr inbounds i32, i32* %bucket, i64 %185
  %186 = load i32, i32* %arrayidx7.26, align 4
  %add8.26 = add nsw i32 %186, %183
  store i32 %add8.26, i32* %arrayidx7.26, align 4
  %187 = shl nsw i64 %indvars.iv, 5
  %188 = add nuw nsw i64 %187, 28
  %189 = add nsw i64 %188, -1
  %arrayidx.27 = getelementptr inbounds i32, i32* %bucket, i64 %189
  %190 = load i32, i32* %arrayidx.27, align 4
  %191 = shl nsw i64 %indvars.iv, 5
  %192 = add nuw nsw i64 %191, 28
  %arrayidx7.27 = getelementptr inbounds i32, i32* %bucket, i64 %192
  %193 = load i32, i32* %arrayidx7.27, align 4
  %add8.27 = add nsw i32 %193, %190
  store i32 %add8.27, i32* %arrayidx7.27, align 4
  %194 = shl nsw i64 %indvars.iv, 5
  %195 = add nuw nsw i64 %194, 29
  %196 = add nsw i64 %195, -1
  %arrayidx.28 = getelementptr inbounds i32, i32* %bucket, i64 %196
  %197 = load i32, i32* %arrayidx.28, align 4
  %198 = shl nsw i64 %indvars.iv, 5
  %199 = add nuw nsw i64 %198, 29
  %arrayidx7.28 = getelementptr inbounds i32, i32* %bucket, i64 %199
  %200 = load i32, i32* %arrayidx7.28, align 4
  %add8.28 = add nsw i32 %200, %197
  store i32 %add8.28, i32* %arrayidx7.28, align 4
  %201 = shl nsw i64 %indvars.iv, 5
  %202 = add nuw nsw i64 %201, 30
  %203 = add nsw i64 %202, -1
  %arrayidx.29 = getelementptr inbounds i32, i32* %bucket, i64 %203
  %204 = load i32, i32* %arrayidx.29, align 4
  %205 = shl nsw i64 %indvars.iv, 5
  %206 = add nuw nsw i64 %205, 30
  %arrayidx7.29 = getelementptr inbounds i32, i32* %bucket, i64 %206
  %207 = load i32, i32* %arrayidx7.29, align 4
  %add8.29 = add nsw i32 %207, %204
  store i32 %add8.29, i32* %arrayidx7.29, align 4
  %208 = shl nsw i64 %indvars.iv, 5
  %209 = add nuw nsw i64 %208, 31
  %210 = add nsw i64 %209, -1
  %arrayidx.30 = getelementptr inbounds i32, i32* %bucket, i64 %210
  %211 = load i32, i32* %arrayidx.30, align 4
  %212 = shl nsw i64 %indvars.iv, 5
  %213 = add nuw nsw i64 %212, 31
  %arrayidx7.30 = getelementptr inbounds i32, i32* %bucket, i64 %213
  %214 = load i32, i32* %arrayidx7.30, align 4
  %add8.30 = add nsw i32 %214, %211
  store i32 %add8.30, i32* %arrayidx7.30, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 524288
  br i1 %exitcond, label %for.body, label %for.end11, !llvm.loop !2

for.end11:                                        ; preds = %for.body3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sum_scan(i32* %sum, i32* %bucket) #0 {
entry:
  store i32 0, i32* %sum, align 4
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = add nsw i64 %indvars.iv, -1
  %arrayidx1 = getelementptr inbounds i32, i32* %sum, i64 %0
  %1 = load i32, i32* %arrayidx1, align 4
  %2 = shl nsw i64 %indvars.iv, 5
  %3 = add nsw i64 %2, -1
  %arrayidx4 = getelementptr inbounds i32, i32* %bucket, i64 %3
  %4 = load i32, i32* %arrayidx4, align 4
  %add = add nsw i32 %1, %4
  %arrayidx6 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv
  store i32 %add, i32* %arrayidx6, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 524288
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !4

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @last_step_scan(i32* %bucket, i32* %sum) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc11
  %indvars.iv5 = phi i64 [ 0, %entry ], [ %indvars.iv.next6, %for.inc11 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv5, 5
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %arrayidx5 = getelementptr inbounds i32, i32* %sum, i64 %indvars.iv5
  %3 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %2, %3
  %4 = shl nsw i64 %indvars.iv5, 5
  %5 = add nuw nsw i64 %4, %indvars.iv
  %arrayidx10 = getelementptr inbounds i32, i32* %bucket, i64 %5
  store i32 %add6, i32* %arrayidx10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 32
  br i1 %exitcond, label %for.body3, label %for.inc11, !llvm.loop !5

for.inc11:                                        ; preds = %for.body3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next6, 524288
  br i1 %exitcond10, label %for.body, label %for.end13, !llvm.loop !6

for.end13:                                        ; preds = %for.inc11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(i32* %bucket) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %bucket, i64 %indvars.iv
  store i32 0, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 16777216
  br i1 %exitcond, label %for.body, label %for.end, !llvm.loop !7

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hist(i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc10
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5, %for.inc10 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv4, 7
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, %exp
  %and = shl i32 %shr, 17
  %mul4 = and i32 %and, 393216
  %3 = trunc i64 %indvars.iv4 to i32
  %add5 = add nuw nsw i32 %mul4, %3
  %add6 = add nuw nsw i32 %add5, 1
  %idxprom7 = zext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom7
  %4 = load i32, i32* %arrayidx8, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %arrayidx8, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body3, label %for.inc10, !llvm.loop !8

for.inc10:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end12, !llvm.loop !9

for.end12:                                        ; preds = %for.inc10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update(i32* %b, i32* %bucket, i32* %a, i32 %exp) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc17
  %indvars.iv4 = phi i64 [ 0, %entry ], [ %indvars.iv.next5, %for.inc17 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body3 ]
  %0 = shl nsw i64 %indvars.iv4, 7
  %1 = add nuw nsw i64 %0, %indvars.iv
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %1
  %2 = load i32, i32* %arrayidx, align 4
  %shr = ashr i32 %2, %exp
  %and = shl i32 %shr, 17
  %mul4 = and i32 %and, 393216
  %3 = trunc i64 %indvars.iv4 to i32
  %add5 = add nuw nsw i32 %mul4, %3
  %idxprom6 = zext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom6
  %4 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %b, i64 %idxprom8
  store i32 %2, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %4, 1
  %shr11 = ashr i32 %2, %exp
  %and12 = shl i32 %shr11, 17
  %mul13 = and i32 %and12, 393216
  %5 = trunc i64 %indvars.iv4 to i32
  %add14 = add nuw nsw i32 %mul13, %5
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %bucket, i64 %idxprom15
  store i32 %add10, i32* %arrayidx16, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 4
  br i1 %exitcond, label %for.body3, label %for.inc17, !llvm.loop !10

for.inc17:                                        ; preds = %for.body3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond7 = icmp ne i64 %indvars.iv.next5, 131072
  br i1 %exitcond7, label %for.body, label %for.end19, !llvm.loop !11

for.end19:                                        ; preds = %for.inc17
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
  %call = call noalias dereferenceable_or_null(67108864) i8* @malloc(i64 67108864) #3
  %call1 = call noalias dereferenceable_or_null(33554432) i8* @malloc(i64 33554432) #3
  %call2 = call noalias dereferenceable_or_null(33554432) i8* @malloc(i64 33554432) #3
  %0 = bitcast i8* %call2 to i32*
  %call3 = call noalias dereferenceable_or_null(2097152) i8* @malloc(i64 2097152) #3
  call void @srand(i32 8650341) #3
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %call4 = call i32 @rand() #3
  %conv = sitofp i32 %call4 to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  %mul = fmul double %div, 2.550000e+02
  %add = fadd double %mul, 0.000000e+00
  %conv7 = fptosi double %add to i32
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %indvars.iv
  store i32 %conv7, i32* %arrayidx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp ne i64 %indvars.iv.next, 8388608
  br i1 %exitcond, label %for.body, label %for.end

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
!3 = !{!"llvm.loop.unroll.count", i32 1}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
