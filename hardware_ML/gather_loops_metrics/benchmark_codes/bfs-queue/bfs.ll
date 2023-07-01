; ModuleID = 'bfs.ll'
source_filename = "bfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node_t_struct = type { i64, i64 }
%struct.edge_t_struct = type { i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bfs(%struct.node_t_struct* %host_nodes, %struct.edge_t_struct* %host_edges, i8* %host_level, i64* %host_level_counts, %struct.node_t_struct* %nodes, %struct.edge_t_struct* %edges, i8* %level, i64* %level_counts, i64 %starting_node) #0 {
entry:
  %queue = alloca [256 x i64], align 16
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i64, i64* %host_level_counts, i64 %indvars.iv
  store i64 0, i64* %arrayidx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond11 = icmp ne i64 %indvars.iv.next, 10
  br i1 %exitcond11, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %arrayidx1 = getelementptr inbounds i8, i8* %host_level, i64 %starting_node
  store i8 0, i8* %arrayidx1, align 1
  store i64 1, i64* %host_level_counts, align 8
  %arrayidx4 = getelementptr inbounds [256 x i64], [256 x i64]* %queue, i64 0, i64 0
  store i64 %starting_node, i64* %arrayidx4, align 8
  br label %for.body7

for.body7:                                        ; preds = %for.end, %for.inc51
  %dummy.08 = phi i64 [ 0, %for.end ], [ %inc52, %for.inc51 ]
  %q_out.06 = phi i64 [ 0, %for.end ], [ %rem17, %for.inc51 ]
  %q_in.05 = phi i64 [ 2, %for.end ], [ %q_in.1.lcssa, %for.inc51 ]
  %cmp8 = icmp ugt i64 %q_in.05, %q_out.06
  br i1 %cmp8, label %cond.true9, label %cond.false12

cond.true9:                                       ; preds = %for.body7
  %add10 = add nuw nsw i64 %q_out.06, 1
  %cmp11 = icmp eq i64 %q_in.05, %add10
  br i1 %cmp11, label %for.end53, label %if.end

cond.false12:                                     ; preds = %for.body7
  %cmp13 = icmp eq i64 %q_in.05, 0
  %cmp14 = icmp eq i64 %q_out.06, 255
  %or.cond = and i1 %cmp13, %cmp14
  br i1 %or.cond, label %for.end53, label %if.end

if.end:                                           ; preds = %cond.false12, %cond.true9
  %arrayidx15 = getelementptr inbounds [256 x i64], [256 x i64]* %queue, i64 0, i64 %q_out.06
  %0 = load i64, i64* %arrayidx15, align 8
  %add16 = add nuw nsw i64 %q_out.06, 1
  %rem17 = and i64 %add16, 255
  %edge_begin = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %host_nodes, i64 %0, i32 0
  %1 = load i64, i64* %edge_begin, align 8
  %edge_end = getelementptr inbounds %struct.node_t_struct, %struct.node_t_struct* %host_nodes, i64 %0, i32 1
  %2 = load i64, i64* %edge_end, align 8
  %cmp211 = icmp ult i64 %1, %2
  br i1 %cmp211, label %for.body22.preheader, label %for.inc51

for.body22.preheader:                             ; preds = %if.end
  br label %for.body22

for.body22:                                       ; preds = %for.body22.preheader, %for.inc48
  %e.04 = phi i64 [ %inc49, %for.inc48 ], [ %1, %for.body22.preheader ]
  %q_in.12 = phi i64 [ %q_in.2, %for.inc48 ], [ %q_in.05, %for.body22.preheader ]
  %dst = getelementptr inbounds %struct.edge_t_struct, %struct.edge_t_struct* %host_edges, i64 %e.04, i32 0
  %3 = load i64, i64* %dst, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %host_level, i64 %3
  %4 = load i8, i8* %arrayidx24, align 1
  %cmp25 = icmp eq i8 %4, 127
  br i1 %cmp25, label %if.then27, label %for.inc48

if.then27:                                        ; preds = %for.body22
  %arrayidx29 = getelementptr inbounds i8, i8* %host_level, i64 %0
  %5 = load i8, i8* %arrayidx29, align 1
  %add31 = add i8 %5, 1
  %arrayidx33 = getelementptr inbounds i8, i8* %host_level, i64 %3
  store i8 %add31, i8* %arrayidx33, align 1
  %idxprom34 = sext i8 %add31 to i64
  %arrayidx35 = getelementptr inbounds i64, i64* %host_level_counts, i64 %idxprom34
  %6 = load i64, i64* %arrayidx35, align 8
  %inc36 = add i64 %6, 1
  store i64 %inc36, i64* %arrayidx35, align 8
  %cmp37 = icmp eq i64 %q_in.12, 0
  %sub41 = add i64 %q_in.12, -1
  %cond43 = select i1 %cmp37, i64 255, i64 %sub41
  %arrayidx44 = getelementptr inbounds [256 x i64], [256 x i64]* %queue, i64 0, i64 %cond43
  store i64 %3, i64* %arrayidx44, align 8
  %add45 = add i64 %q_in.12, 1
  %rem46 = and i64 %add45, 255
  br label %for.inc48

for.inc48:                                        ; preds = %for.body22, %if.then27
  %q_in.2 = phi i64 [ %rem46, %if.then27 ], [ %q_in.12, %for.body22 ]
  %inc49 = add nuw i64 %e.04, 1
  %exitcond = icmp ne i64 %inc49, %2
  br i1 %exitcond, label %for.body22, label %for.inc51.loopexit

for.inc51.loopexit:                               ; preds = %for.inc48
  %q_in.1.lcssa.ph = phi i64 [ %q_in.2, %for.inc48 ]
  br label %for.inc51

for.inc51:                                        ; preds = %for.inc51.loopexit, %if.end
  %q_in.1.lcssa = phi i64 [ %q_in.05, %if.end ], [ %q_in.1.lcssa.ph, %for.inc51.loopexit ]
  %inc52 = add nuw nsw i64 %dummy.08, 1
  %exitcond10 = icmp ne i64 %inc52, 256
  br i1 %exitcond10, label %for.body7, label %for.end53

for.end53:                                        ; preds = %for.inc51, %cond.true9, %cond.false12
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 "}
