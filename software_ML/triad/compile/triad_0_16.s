	.text
	.file	"triad_0_16.c"
	.globl	triad                   # -- Begin function triad
	.p2align	4, 0x90
	.type	triad,@function
triad:                                  # @triad
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movq	%r8, -40(%rbp)          # 8-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	movq	-16(%rbp), %rdi         # 8-byte Reload
	imull	(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movq	-24(%rbp), %r8          # 8-byte Reload
	movl	%edx, (%r8,%rax,4)
	movq	%rax, %r9
	addq	$1, %r9
	movl	4(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	4(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 4(%r8,%rax,4)
	addq	$1, %r9
	movl	8(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	8(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 8(%r8,%rax,4)
	addq	$1, %r9
	movl	12(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	12(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 12(%r8,%rax,4)
	addq	$1, %r9
	movl	16(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	16(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 16(%r8,%rax,4)
	addq	$1, %r9
	movl	20(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	20(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 20(%r8,%rax,4)
	addq	$1, %r9
	movl	24(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	24(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 24(%r8,%rax,4)
	addq	$1, %r9
	movl	28(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	28(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 28(%r8,%rax,4)
	addq	$1, %r9
	movl	32(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	32(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 32(%r8,%rax,4)
	addq	$1, %r9
	movl	36(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	36(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 36(%r8,%rax,4)
	addq	$1, %r9
	movl	40(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	40(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 40(%r8,%rax,4)
	addq	$1, %r9
	movl	44(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	44(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 44(%r8,%rax,4)
	addq	$1, %r9
	movl	48(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	48(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 48(%r8,%rax,4)
	addq	$1, %r9
	movl	52(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	52(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 52(%r8,%rax,4)
	addq	$1, %r9
	movl	56(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	56(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 56(%r8,%rax,4)
	addq	$1, %r9
	movl	60(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	60(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 60(%r8,%rax,4)
	addq	$1, %r9
	cmpq	$1048576, %r9           # imm = 0x100000
	movq	%r9, -40(%rbp)          # 8-byte Spill
	jne	.LBB0_1
# %bb.2:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	triad, .Lfunc_end0-triad
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
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
	subq	$80, %rsp
	movl	$4194304, %edi          # imm = 0x400000
	callq	malloc
	movl	$4194304, %edi          # imm = 0x400000
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	malloc
	movl	$4194304, %edi          # imm = 0x400000
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	malloc
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	time
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, %edi
	callq	srand
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	$0, (%rcx,%rax,4)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	$1048576, %rdx          # imm = 0x100000
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.2:                                # %for.end
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	$3, %ecx
	callq	triad
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB1_3:                                # %for.body18
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	cmpq	$1048576, %rcx          # imm = 0x100000
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jne	.LBB1_3
# %bb.4:                                # %for.end24
	movl	$10, %edi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	fputc
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	fclose
	xorl	%ecx, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"output.data"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d,"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.ident	"clang version 10.0.1 "
	.section	".note.GNU-stack","",@progbits
