	.text
	.file	"triad.c"
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
	cmpq	$2048, %r9              # imm = 0x800
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
	subq	$256, %rsp              # imm = 0x100
	movl	$8192, %edi             # imm = 0x2000
	callq	malloc
	movl	$8192, %edi             # imm = 0x2000
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	malloc
	movl	$8192, %edi             # imm = 0x2000
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
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	$0, 4(%rsi,%rdi,4)
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 4(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 4(%rcx,%rdx,4)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 8(%rdi,%rdx,4)
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 8(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 8(%rcx,%rdx,4)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 12(%rdi,%rdx,4)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 12(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 12(%rcx,%rdx,4)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 16(%rdi,%rdx,4)
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 16(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 16(%rcx,%rdx,4)
	movq	-72(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 20(%rdi,%rdx,4)
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 20(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 20(%rcx,%rdx,4)
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 24(%rdi,%rdx,4)
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 24(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 24(%rcx,%rdx,4)
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 28(%rdi,%rdx,4)
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 28(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 28(%rcx,%rdx,4)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	cmpq	$2048, %rsi             # imm = 0x800
	movq	%rsi, -32(%rbp)         # 8-byte Spill
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
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
.LBB1_3:                                # %for.body18
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-120(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	4(%rsi,%rdi,4), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-136(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	8(%rsi,%rdi,4), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-152(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	12(%rsi,%rdi,4), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-168(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	16(%rsi,%rdi,4), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-184(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	20(%rsi,%rdi,4), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-200(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	24(%rsi,%rdi,4), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-216(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	28(%rsi,%rdi,4), %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-232(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	cmpq	$2048, %rcx             # imm = 0x800
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jne	.LBB1_3
# %bb.4:                                # %for.end24
	movl	$10, %edi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	fputc
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	fclose
	xorl	%ecx, %ecx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$256, %rsp              # imm = 0x100
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
