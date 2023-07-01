; ModuleID = 'bfs.ll'
source_filename = "bfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node_t_struct = type { i64, i64 }
%struct.edge_t_struct = type { i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bfs(%struct.node_t_struct* %host_nodes, %struct.edge_t_struct* %host_edges, i8* %host_level, i64* %host_level_counts, %struct.node_t_struct* %nodes, %struct.edge_t_struct* %edges, i8* %level, i64* %level_counts, i64 %starting_node) #0 {
entry:
  %arrayidx = getelementptr inbounds i8, i8* %host_level, i64 %starting_node
  store i8 0, i8* %arrayidx, align 1
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv11 = phi i64 [ 0, %entry ], [ %indvars.iv.next12, %for.body ]
  %arrayidx1 = getelementptr inbounds i64, i64* %host_level_counts, i64 %indvars.iv11
  store i64 0, i64* %arrayidx1, align 8
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond13 = icmp ne i64 %indvars.iv.next12, 10
  br i1 %exitcond13, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  store i64 1, i64* %host_level_counts, align 8
  br label %for.body6

for.body6:                                        ; preds = %for.end, %for.inc47
  %indvars.iv = phi i64 [ 0, %for.end ], [ %indvars.iv.next, %for.inc47 ]
  br label %for.body10

for.body10:                                       ; preds = %for.body6, %for.inc36
  %cnt.05 = phi i64 [ 0, %for.body6 ], [ %cnt.3, %for.inc36 ]
  %n.04 = phi i64 [ 0, %for.body6 ], [ %inc37, %for.inc36 ]
  %arrayidx11 = getelementptr inbounds i8, i8* %host_level, i64 %n.04
  %0 = load i8, i8* %arrayidx11, align 1
  %1 = zext i8 %0 to i64
  %cmp14 = icmp eq i64 %1, %indvars.iv
  br i1 %cmp14, label %if.then, label %for.inc36

if.then:                                          ; preds = %for.body10
  %edge_begin = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %host_nodes, i64 %n.04, i32 0
  %2 = load i64, i64* %edge_begin, align 8
  %edge_end = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %host_nodes, i64 %n.04, i32 1
  %3 = load i64, i64* %edge_end, align 8
  %cmp191 = icmp ult i64 %2, %3
  br i1 %cmp191, label %for.body21.preheader, label %for.inc36

for.body21.preheader:                             ; preds = %if.then
  br label %for.body21

for.body21:                                       ; preds = %for.body21.preheader, %for.inc32
  %cnt.13 = phi i64 [ %cnt.2, %for.inc32 ], [ %cnt.05, %for.body21.preheader ]
  %e.02 = phi i64 [ %inc33, %for.inc32 ], [ %2, %for.body21.preheader ]
  %dst = getelementptr inbounds %struct.edge_t_struct, %struct.edge_t_struct* %host_edges, i64 %e.02, i32 0
  %4 = load i64, i64* %dst, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %host_level, i64 %4
  %5 = load i8, i8* %arrayidx23, align 1
  %cmp25 = icmp eq i8 %5, 127
  br i1 %cmp25, label %if.then27, label %for.inc32

if.then27:                                        ; preds = %for.body21
  %6 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx30 = getelementptr inbounds i8, i8* %host_level, i64 %4
  %7 = trunc i64 %6 to i8
  store i8 %7, i8* %arrayidx30, align 1
  %inc31 = add i64 %cnt.13, 1
  br label %for.inc32

for.inc32:                                        ; preds = %for.body21, %if.then27
  %cnt.2 = phi i64 [ %inc31, %if.then27 ], [ %cnt.13, %for.body21 ]
  %inc33 = add nuw i64 %e.02, 1
  %exitcond = icmp ne i64 %inc33, %3
  br i1 %exitcond, label %for.body21, label %for.inc36.loopexit

for.inc36.loopexit:                               ; preds = %for.inc32
  %cnt.3.ph = phi i64 [ %cnt.2, %for.inc32 ]
  br label %for.inc36

for.inc36:                                        ; preds = %for.inc36.loopexit, %for.body10, %if.then
  %cnt.3 = phi i64 [ %cnt.05, %for.body10 ], [ %cnt.05, %if.then ], [ %cnt.3.ph, %for.inc36.loopexit ]
  %inc37 = add nuw nsw i64 %n.04, 1
  %exitcond8 = icmp ne i64 %inc37, 256
  br i1 %exitcond8, label %for.body10, label %for.end38

for.end38:                                        ; preds = %for.inc36
  %cnt.3.lcssa = phi i64 [ %cnt.3, %for.inc36 ]
  %add40 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx42 = getelementptr inbounds i64, i64* %host_level_counts, i64 %add40
  store i64 %cnt.3.lcssa, i64* %arrayidx42, align 8
  %cmp43 = icmp eq i64 %cnt.3.lcssa, 0
  br i1 %cmp43, label %for.end49, label %for.inc47

for.inc47:                                        ; preds = %for.end38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond10 = icmp ne i64 %indvars.iv.next, 10
  br i1 %exitcond10, label %for.body6, label %for.end49

for.end49:                                        ; preds = %for.inc47, %for.end38
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
