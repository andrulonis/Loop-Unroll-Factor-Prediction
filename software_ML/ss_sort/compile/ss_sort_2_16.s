	.text
	.file	"ss_sort_2_16.c"
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
	movq	%rax, %rsi
	addq	$1, %rsi
	movl	(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 4(%rcx,%rax,4)
	addq	$1, %rsi
	movl	4(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 8(%rcx,%rax,4)
	addq	$1, %rsi
	movl	8(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 12(%rcx,%rax,4)
	addq	$1, %rsi
	movl	12(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 16(%rcx,%rax,4)
	addq	$1, %rsi
	movl	16(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 20(%rcx,%rax,4)
	addq	$1, %rsi
	movl	20(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 24(%rcx,%rax,4)
	addq	$1, %rsi
	movl	24(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 28(%rcx,%rax,4)
	addq	$1, %rsi
	movl	28(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 32(%rcx,%rax,4)
	addq	$1, %rsi
	movl	32(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 36(%rcx,%rax,4)
	addq	$1, %rsi
	movl	36(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 40(%rcx,%rax,4)
	addq	$1, %rsi
	movl	40(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 44(%rcx,%rax,4)
	addq	$1, %rsi
	movl	44(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 48(%rcx,%rax,4)
	addq	$1, %rsi
	movl	48(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 52(%rcx,%rax,4)
	addq	$1, %rsi
	movl	52(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$5, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 56(%rcx,%rax,4)
	movq	%rsi, %rax
	addq	$1, %rax
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB2_3
# %bb.2:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_3:                                # %for.body.15
                                        #   in Loop: Header=BB2_1 Depth=1
	.cfi_def_cfa %rbp, 16
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rax,%rcx,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$5, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	addl	-4(%rdi,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%edx, (%rax,%rsi,4)
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	jmp	.LBB2_1
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
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$131072, %rax           # imm = 0x20000
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB5_1
# %bb.4:                                # %for.end12
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
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
