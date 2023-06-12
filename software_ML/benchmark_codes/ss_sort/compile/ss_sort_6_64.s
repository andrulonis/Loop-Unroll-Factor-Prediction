	.text
	.file	"ss_sort_6_64.c"
	.globl	print                   # -- Begin function print
	.p2align	4, 0x90
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	cmpl	$0, %esi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movl	%esi, -12(%rbp)         # 4-byte Spill
	jle	.LBB0_4
# %bb.1:                                # %for.body.preheader
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %esi
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	printf
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jne	.LBB0_2
# %bb.3:                                # %for.end.loopexit
	jmp	.LBB0_4
.LBB0_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	print, .Lfunc_end0-print
	.cfi_endproc
                                        # -- End function
	.globl	local_scan              # -- Begin function local_scan
	.p2align	4, 0x90
	.type	local_scan,@function
local_scan:                             # @local_scan
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	$1, %ecx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	shlq	$5, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	shlq	$5, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$32, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.inc9
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.4:                                # %for.end11
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	local_scan, .Lfunc_end1-local_scan
	.cfi_endproc
                                        # -- End function
	.globl	sum_scan                # -- Begin function sum_scan
	.p2align	4, 0x90
	.type	sum_scan,@function
sum_scan:                               # @sum_scan
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, (%rdi)
	movl	$1, %eax
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	-4(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	shlq	$5, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	addl	-4(%rdi,%rsi,4), %edx
	movl	%edx, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jne	.LBB2_1
# %bb.2:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	sum_scan, .Lfunc_end2-sum_scan
	.cfi_endproc
                                        # -- End function
	.globl	last_step_scan          # -- Begin function last_step_scan
	.p2align	4, 0x90
	.type	last_step_scan,@function
last_step_scan:                         # @last_step_scan
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movq	-24(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
.LBB3_2:                                # %for.body3
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	shlq	$5, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %rdi         # 8-byte Reload
	addl	(%rcx,%rdi,4), %esi
	shlq	$5, %rdi
	addq	%rax, %rdi
	movl	%esi, (%rdx,%rdi,4)
	addq	$1, %rax
	cmpq	$32, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB3_2
# %bb.3:                                # %for.inc11
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jne	.LBB3_1
# %bb.4:                                # %for.end13
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	last_step_scan, .Lfunc_end3-last_step_scan
	.cfi_endproc
                                        # -- End function
	.globl	init                    # -- Begin function init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB4_1
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	$0, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$16777216, %rax         # imm = 0x1000000
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jne	.LBB4_1
# %bb.2:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	init, .Lfunc_end4-init
	.cfi_endproc
                                        # -- End function
	.globl	hist                    # -- Begin function hist
	.p2align	4, 0x90
	.type	hist,@function
hist:                                   # @hist
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$928, %rsp              # imm = 0x3A0
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB5_1
.LBB5_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
                                        #     Child Loop BB5_5 Depth 2
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_11 Depth 2
                                        #     Child Loop BB5_13 Depth 2
                                        #     Child Loop BB5_15 Depth 2
                                        #     Child Loop BB5_17 Depth 2
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_21 Depth 2
                                        #     Child Loop BB5_23 Depth 2
                                        #     Child Loop BB5_25 Depth 2
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_29 Depth 2
                                        #     Child Loop BB5_31 Depth 2
                                        #     Child Loop BB5_33 Depth 2
                                        #     Child Loop BB5_35 Depth 2
                                        #     Child Loop BB5_37 Depth 2
                                        #     Child Loop BB5_39 Depth 2
                                        #     Child Loop BB5_41 Depth 2
                                        #     Child Loop BB5_43 Depth 2
                                        #     Child Loop BB5_45 Depth 2
                                        #     Child Loop BB5_47 Depth 2
                                        #     Child Loop BB5_49 Depth 2
                                        #     Child Loop BB5_51 Depth 2
                                        #     Child Loop BB5_53 Depth 2
                                        #     Child Loop BB5_55 Depth 2
                                        #     Child Loop BB5_57 Depth 2
                                        #     Child Loop BB5_59 Depth 2
                                        #     Child Loop BB5_61 Depth 2
                                        #     Child Loop BB5_63 Depth 2
                                        #     Child Loop BB5_65 Depth 2
                                        #     Child Loop BB5_67 Depth 2
                                        #     Child Loop BB5_69 Depth 2
                                        #     Child Loop BB5_71 Depth 2
                                        #     Child Loop BB5_73 Depth 2
                                        #     Child Loop BB5_75 Depth 2
                                        #     Child Loop BB5_77 Depth 2
                                        #     Child Loop BB5_79 Depth 2
                                        #     Child Loop BB5_81 Depth 2
                                        #     Child Loop BB5_83 Depth 2
                                        #     Child Loop BB5_85 Depth 2
                                        #     Child Loop BB5_87 Depth 2
                                        #     Child Loop BB5_89 Depth 2
                                        #     Child Loop BB5_91 Depth 2
                                        #     Child Loop BB5_93 Depth 2
                                        #     Child Loop BB5_95 Depth 2
                                        #     Child Loop BB5_97 Depth 2
                                        #     Child Loop BB5_99 Depth 2
                                        #     Child Loop BB5_101 Depth 2
                                        #     Child Loop BB5_103 Depth 2
                                        #     Child Loop BB5_105 Depth 2
                                        #     Child Loop BB5_107 Depth 2
                                        #     Child Loop BB5_109 Depth 2
                                        #     Child Loop BB5_111 Depth 2
                                        #     Child Loop BB5_113 Depth 2
                                        #     Child Loop BB5_115 Depth 2
                                        #     Child Loop BB5_117 Depth 2
                                        #     Child Loop BB5_119 Depth 2
                                        #     Child Loop BB5_121 Depth 2
                                        #     Child Loop BB5_123 Depth 2
                                        #     Child Loop BB5_125 Depth 2
                                        #     Child Loop BB5_127 Depth 2
                                        #     Child Loop BB5_129 Depth 2
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB5_2:                                # %for.body3
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB5_2
# %bb.3:                                # %for.inc10
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %for.end12
	addq	$928, %rsp              # imm = 0x3A0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_5:                                # %for.body3.1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.cfi_def_cfa %rbp, 16
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB5_5
# %bb.6:                                # %for.inc10.1
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
.LBB5_7:                                # %for.body3.2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB5_7
# %bb.8:                                # %for.inc10.2
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB5_9:                                # %for.body3.3
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB5_9
# %bb.10:                               # %for.inc10.3
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB5_11:                               # %for.body3.4
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB5_11
# %bb.12:                               # %for.inc10.4
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB5_13:                               # %for.body3.5
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB5_13
# %bb.14:                               # %for.inc10.5
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
.LBB5_15:                               # %for.body3.6
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB5_15
# %bb.16:                               # %for.inc10.6
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
.LBB5_17:                               # %for.body3.7
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB5_17
# %bb.18:                               # %for.inc10.7
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
.LBB5_19:                               # %for.body3.8
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB5_19
# %bb.20:                               # %for.inc10.8
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB5_21:                               # %for.body3.9
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB5_21
# %bb.22:                               # %for.inc10.9
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
.LBB5_23:                               # %for.body3.10
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB5_23
# %bb.24:                               # %for.inc10.10
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
.LBB5_25:                               # %for.body3.11
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB5_25
# %bb.26:                               # %for.inc10.11
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
.LBB5_27:                               # %for.body3.12
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jne	.LBB5_27
# %bb.28:                               # %for.inc10.12
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-232(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
.LBB5_29:                               # %for.body3.13
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB5_29
# %bb.30:                               # %for.inc10.13
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
.LBB5_31:                               # %for.body3.14
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jne	.LBB5_31
# %bb.32:                               # %for.inc10.14
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-264(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB5_33:                               # %for.body3.15
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB5_33
# %bb.34:                               # %for.inc10.15
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-280(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
.LBB5_35:                               # %for.body3.16
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jne	.LBB5_35
# %bb.36:                               # %for.inc10.16
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
.LBB5_37:                               # %for.body3.17
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jne	.LBB5_37
# %bb.38:                               # %for.inc10.17
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
.LBB5_39:                               # %for.body3.18
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jne	.LBB5_39
# %bb.40:                               # %for.inc10.18
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-328(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
.LBB5_41:                               # %for.body3.19
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB5_41
# %bb.42:                               # %for.inc10.19
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-344(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
.LBB5_43:                               # %for.body3.20
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-360(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jne	.LBB5_43
# %bb.44:                               # %for.inc10.20
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-360(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB5_45:                               # %for.body3.21
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jne	.LBB5_45
# %bb.46:                               # %for.inc10.21
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-376(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
.LBB5_47:                               # %for.body3.22
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jne	.LBB5_47
# %bb.48:                               # %for.inc10.22
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-392(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
.LBB5_49:                               # %for.body3.23
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jne	.LBB5_49
# %bb.50:                               # %for.inc10.23
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-408(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
.LBB5_51:                               # %for.body3.24
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-424(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jne	.LBB5_51
# %bb.52:                               # %for.inc10.24
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-424(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
.LBB5_53:                               # %for.body3.25
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jne	.LBB5_53
# %bb.54:                               # %for.inc10.25
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
.LBB5_55:                               # %for.body3.26
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jne	.LBB5_55
# %bb.56:                               # %for.inc10.26
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-456(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
.LBB5_57:                               # %for.body3.27
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jne	.LBB5_57
# %bb.58:                               # %for.inc10.27
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-472(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
.LBB5_59:                               # %for.body3.28
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	-488(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jne	.LBB5_59
# %bb.60:                               # %for.inc10.28
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-488(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
.LBB5_61:                               # %for.body3.29
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	-504(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jne	.LBB5_61
# %bb.62:                               # %for.inc10.29
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-504(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
.LBB5_63:                               # %for.body3.30
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	-520(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jne	.LBB5_63
# %bb.64:                               # %for.inc10.30
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-520(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
.LBB5_65:                               # %for.body3.31
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	-536(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jne	.LBB5_65
# %bb.66:                               # %for.inc10.31
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
.LBB5_67:                               # %for.body3.32
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	-552(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jne	.LBB5_67
# %bb.68:                               # %for.inc10.32
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-552(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
.LBB5_69:                               # %for.body3.33
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	-568(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jne	.LBB5_69
# %bb.70:                               # %for.inc10.33
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-568(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
.LBB5_71:                               # %for.body3.34
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	-584(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jne	.LBB5_71
# %bb.72:                               # %for.inc10.34
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-584(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	movq	%rcx, -608(%rbp)        # 8-byte Spill
.LBB5_73:                               # %for.body3.35
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	-600(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jne	.LBB5_73
# %bb.74:                               # %for.inc10.35
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-600(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
.LBB5_75:                               # %for.body3.36
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	-616(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jne	.LBB5_75
# %bb.76:                               # %for.inc10.36
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-616(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	movq	%rcx, -640(%rbp)        # 8-byte Spill
.LBB5_77:                               # %for.body3.37
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-632(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jne	.LBB5_77
# %bb.78:                               # %for.inc10.37
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-632(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	movq	%rcx, -656(%rbp)        # 8-byte Spill
.LBB5_79:                               # %for.body3.38
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	-648(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jne	.LBB5_79
# %bb.80:                               # %for.inc10.38
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-648(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	movq	%rcx, -672(%rbp)        # 8-byte Spill
.LBB5_81:                               # %for.body3.39
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	-664(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jne	.LBB5_81
# %bb.82:                               # %for.inc10.39
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-664(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	movq	%rcx, -688(%rbp)        # 8-byte Spill
.LBB5_83:                               # %for.body3.40
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	-680(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jne	.LBB5_83
# %bb.84:                               # %for.inc10.40
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-680(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movq	%rcx, -704(%rbp)        # 8-byte Spill
.LBB5_85:                               # %for.body3.41
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	-696(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jne	.LBB5_85
# %bb.86:                               # %for.inc10.41
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-696(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	movq	%rcx, -720(%rbp)        # 8-byte Spill
.LBB5_87:                               # %for.body3.42
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-720(%rbp), %rax        # 8-byte Reload
	movq	-712(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jne	.LBB5_87
# %bb.88:                               # %for.inc10.42
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-712(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	movq	%rcx, -736(%rbp)        # 8-byte Spill
.LBB5_89:                               # %for.body3.43
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-736(%rbp), %rax        # 8-byte Reload
	movq	-728(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jne	.LBB5_89
# %bb.90:                               # %for.inc10.43
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-728(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	movq	%rcx, -752(%rbp)        # 8-byte Spill
.LBB5_91:                               # %for.body3.44
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-752(%rbp), %rax        # 8-byte Reload
	movq	-744(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jne	.LBB5_91
# %bb.92:                               # %for.inc10.44
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-744(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	movq	%rcx, -768(%rbp)        # 8-byte Spill
.LBB5_93:                               # %for.body3.45
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	-760(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jne	.LBB5_93
# %bb.94:                               # %for.inc10.45
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-760(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	movq	%rcx, -784(%rbp)        # 8-byte Spill
.LBB5_95:                               # %for.body3.46
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-784(%rbp), %rax        # 8-byte Reload
	movq	-776(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jne	.LBB5_95
# %bb.96:                               # %for.inc10.46
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-776(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	movq	%rcx, -800(%rbp)        # 8-byte Spill
.LBB5_97:                               # %for.body3.47
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-800(%rbp), %rax        # 8-byte Reload
	movq	-792(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jne	.LBB5_97
# %bb.98:                               # %for.inc10.47
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-792(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	movq	%rcx, -816(%rbp)        # 8-byte Spill
.LBB5_99:                               # %for.body3.48
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-816(%rbp), %rax        # 8-byte Reload
	movq	-808(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jne	.LBB5_99
# %bb.100:                              # %for.inc10.48
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-808(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	movq	%rcx, -832(%rbp)        # 8-byte Spill
.LBB5_101:                              # %for.body3.49
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-832(%rbp), %rax        # 8-byte Reload
	movq	-824(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jne	.LBB5_101
# %bb.102:                              # %for.inc10.49
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-824(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	movq	%rcx, -848(%rbp)        # 8-byte Spill
.LBB5_103:                              # %for.body3.50
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	-840(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jne	.LBB5_103
# %bb.104:                              # %for.inc10.50
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	movq	%rcx, -864(%rbp)        # 8-byte Spill
.LBB5_105:                              # %for.body3.51
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	-856(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jne	.LBB5_105
# %bb.106:                              # %for.inc10.51
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-856(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	movq	%rcx, -880(%rbp)        # 8-byte Spill
.LBB5_107:                              # %for.body3.52
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	-872(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jne	.LBB5_107
# %bb.108:                              # %for.inc10.52
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-872(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	movq	%rcx, -896(%rbp)        # 8-byte Spill
.LBB5_109:                              # %for.body3.53
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-896(%rbp), %rax        # 8-byte Reload
	movq	-888(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jne	.LBB5_109
# %bb.110:                              # %for.inc10.53
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-888(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	movq	%rcx, -912(%rbp)        # 8-byte Spill
.LBB5_111:                              # %for.body3.54
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-912(%rbp), %rax        # 8-byte Reload
	movq	-904(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jne	.LBB5_111
# %bb.112:                              # %for.inc10.54
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-904(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	movq	%rcx, -928(%rbp)        # 8-byte Spill
.LBB5_113:                              # %for.body3.55
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-928(%rbp), %rax        # 8-byte Reload
	movq	-920(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jne	.LBB5_113
# %bb.114:                              # %for.inc10.55
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-920(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	movq	%rcx, -944(%rbp)        # 8-byte Spill
.LBB5_115:                              # %for.body3.56
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-944(%rbp), %rax        # 8-byte Reload
	movq	-936(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jne	.LBB5_115
# %bb.116:                              # %for.inc10.56
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-936(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	movq	%rcx, -960(%rbp)        # 8-byte Spill
.LBB5_117:                              # %for.body3.57
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	-952(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jne	.LBB5_117
# %bb.118:                              # %for.inc10.57
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-952(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	movq	%rcx, -976(%rbp)        # 8-byte Spill
.LBB5_119:                              # %for.body3.58
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	-968(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jne	.LBB5_119
# %bb.120:                              # %for.inc10.58
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-968(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -984(%rbp)        # 8-byte Spill
	movq	%rcx, -992(%rbp)        # 8-byte Spill
.LBB5_121:                              # %for.body3.59
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-992(%rbp), %rax        # 8-byte Reload
	movq	-984(%rbp), %rcx        # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jne	.LBB5_121
# %bb.122:                              # %for.inc10.59
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-984(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
.LBB5_123:                              # %for.body3.60
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jne	.LBB5_123
# %bb.124:                              # %for.inc10.60
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1000(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
.LBB5_125:                              # %for.body3.61
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jne	.LBB5_125
# %bb.126:                              # %for.inc10.61
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1016(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
.LBB5_127:                              # %for.body3.62
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jne	.LBB5_127
# %bb.128:                              # %for.inc10.62
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1032(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
.LBB5_129:                              # %for.body3.63
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-20(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movl	%edi, %r8d
	addl	%r8d, %esi
	addl	$1, %esi
	movl	%esi, %esi
	movl	%esi, %r9d
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%r9,4), %esi
	addl	$1, %esi
	movl	%esi, (%r10,%r9,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jne	.LBB5_129
# %bb.130:                              # %for.inc10.63
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-1048(%rbp), %rax       # 8-byte Reload
	addq	$1, %rax
	cmpq	$131072, %rax           # imm = 0x20000
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB5_1
	jmp	.LBB5_4
.Lfunc_end5:
	.size	hist, .Lfunc_end5-hist
	.cfi_endproc
                                        # -- End function
	.globl	update                  # -- Begin function update
	.p2align	4, 0x90
	.type	update,@function
update:                                 # @update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	jmp	.LBB6_1
.LBB6_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
.LBB6_2:                                # %for.body3
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	shlq	$7, %rcx
	addq	%rax, %rcx
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movl	-36(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	movl	%esi, %edi
	sarl	%cl, %edi
	shll	$17, %edi
	andl	$393216, %edi           # imm = 0x60000
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	%r8d, %r9d
	addl	%r9d, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movq	-24(%rbp), %r11         # 8-byte Reload
	movl	(%r11,%r10,4), %edi
	movslq	%edi, %r10
	movq	-16(%rbp), %rbx         # 8-byte Reload
	movl	%esi, (%rbx,%r10,4)
	addl	$1, %edi
	movl	-36(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $cl killed $ecx
	sarl	%cl, %esi
	shll	$17, %esi
	andl	$393216, %esi           # imm = 0x60000
	movl	%r8d, %r9d
	addl	%r9d, %esi
	movl	%esi, %esi
	movl	%esi, %r10d
	movl	%edi, (%r11,%r10,4)
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB6_2
# %bb.3:                                # %for.inc17
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$131072, %rax           # imm = 0x20000
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB6_1
# %bb.4:                                # %for.end19
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	update, .Lfunc_end6-update
	.cfi_endproc
                                        # -- End function
	.globl	ss_sort                 # -- Begin function ss_sort
	.p2align	4, 0x90
	.type	ss_sort,@function
ss_sort:                                # @ss_sort
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	init
# %bb.1:                                # %if.then
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-8(%rbp), %rsi          # 8-byte Reload
	callq	hist
	jmp	.LBB7_3
# %bb.2:                                # %if.else
	.cfi_def_cfa %rsp, 8
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	hist
.LBB7_3:                                # %if.end
	.cfi_def_cfa %rbp, 16
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	local_scan
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	sum_scan
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	last_step_scan
# %bb.4:                                # %if.then3
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-8(%rbp), %rdx          # 8-byte Reload
	callq	update
	jmp	.LBB7_6
# %bb.5:                                # %if.else4
	.cfi_def_cfa %rsp, 8
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-16(%rbp), %rdx         # 8-byte Reload
	callq	update
.LBB7_6:                                # %for.inc
	.cfi_def_cfa %rbp, 16
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	ss_sort, .Lfunc_end7-ss_sort
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI8_0:
	.quad	4643176031446892544     # double 255
.LCPI8_1:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$67108864, %edi         # imm = 0x4000000
	callq	malloc
	movl	$33554432, %edi         # imm = 0x2000000
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	malloc
	movl	$33554432, %edi         # imm = 0x2000000
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	malloc
	movl	$2097152, %edi          # imm = 0x200000
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	malloc
	movl	$8650341, %edi          # imm = 0x83FE65
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	srand
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB8_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	$8388608, %rdx          # imm = 0x800000
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	jne	.LBB8_1
# %bb.2:                                # %for.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	ss_sort
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$1, %esi
	callq	print
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\t"
	.size	.L.str, 4

	.ident	"clang version 10.0.1 "
	.section	".note.GNU-stack","",@progbits
