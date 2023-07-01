	.text
	.file	"triad_manual.c"
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
	movl	64(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	64(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 64(%r8,%rax,4)
	addq	$1, %r9
	movl	68(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	68(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 68(%r8,%rax,4)
	addq	$1, %r9
	movl	72(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	72(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 72(%r8,%rax,4)
	addq	$1, %r9
	movl	76(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	76(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 76(%r8,%rax,4)
	addq	$1, %r9
	movl	80(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	80(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 80(%r8,%rax,4)
	addq	$1, %r9
	movl	84(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	84(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 84(%r8,%rax,4)
	addq	$1, %r9
	movl	88(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	88(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 88(%r8,%rax,4)
	addq	$1, %r9
	movl	92(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	92(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 92(%r8,%rax,4)
	addq	$1, %r9
	movl	96(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	96(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 96(%r8,%rax,4)
	addq	$1, %r9
	movl	100(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	100(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 100(%r8,%rax,4)
	addq	$1, %r9
	movl	104(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	104(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 104(%r8,%rax,4)
	addq	$1, %r9
	movl	108(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	108(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 108(%r8,%rax,4)
	addq	$1, %r9
	movl	112(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	112(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 112(%r8,%rax,4)
	addq	$1, %r9
	movl	116(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	116(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 116(%r8,%rax,4)
	addq	$1, %r9
	movl	120(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	120(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 120(%r8,%rax,4)
	addq	$1, %r9
	movl	124(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	124(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 124(%r8,%rax,4)
	addq	$1, %r9
	movl	128(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	128(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 128(%r8,%rax,4)
	addq	$1, %r9
	movl	132(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	132(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 132(%r8,%rax,4)
	addq	$1, %r9
	movl	136(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	136(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 136(%r8,%rax,4)
	addq	$1, %r9
	movl	140(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	140(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 140(%r8,%rax,4)
	addq	$1, %r9
	movl	144(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	144(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 144(%r8,%rax,4)
	addq	$1, %r9
	movl	148(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	148(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 148(%r8,%rax,4)
	addq	$1, %r9
	movl	152(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	152(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 152(%r8,%rax,4)
	addq	$1, %r9
	movl	156(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	156(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 156(%r8,%rax,4)
	addq	$1, %r9
	movl	160(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	160(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 160(%r8,%rax,4)
	addq	$1, %r9
	movl	164(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	164(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 164(%r8,%rax,4)
	addq	$1, %r9
	movl	168(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	168(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 168(%r8,%rax,4)
	addq	$1, %r9
	movl	172(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	172(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 172(%r8,%rax,4)
	addq	$1, %r9
	movl	176(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	176(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 176(%r8,%rax,4)
	addq	$1, %r9
	movl	180(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	180(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 180(%r8,%rax,4)
	addq	$1, %r9
	movl	184(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	184(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 184(%r8,%rax,4)
	addq	$1, %r9
	movl	188(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	188(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 188(%r8,%rax,4)
	addq	$1, %r9
	movl	192(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	192(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 192(%r8,%rax,4)
	addq	$1, %r9
	movl	196(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	196(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 196(%r8,%rax,4)
	addq	$1, %r9
	movl	200(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	200(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 200(%r8,%rax,4)
	addq	$1, %r9
	movl	204(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	204(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 204(%r8,%rax,4)
	addq	$1, %r9
	movl	208(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	208(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 208(%r8,%rax,4)
	addq	$1, %r9
	movl	212(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	212(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 212(%r8,%rax,4)
	addq	$1, %r9
	movl	216(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	216(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 216(%r8,%rax,4)
	addq	$1, %r9
	movl	220(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	220(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 220(%r8,%rax,4)
	addq	$1, %r9
	movl	224(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	224(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 224(%r8,%rax,4)
	addq	$1, %r9
	movl	228(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	228(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 228(%r8,%rax,4)
	addq	$1, %r9
	movl	232(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	232(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 232(%r8,%rax,4)
	addq	$1, %r9
	movl	236(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	236(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 236(%r8,%rax,4)
	addq	$1, %r9
	movl	240(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	240(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 240(%r8,%rax,4)
	addq	$1, %r9
	movl	244(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	244(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 244(%r8,%rax,4)
	addq	$1, %r9
	movl	248(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	248(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 248(%r8,%rax,4)
	addq	$1, %r9
	movl	252(%rcx,%rax,4), %edx
	movl	-28(%rbp), %esi         # 4-byte Reload
	imull	252(%rdi,%rax,4), %esi
	addl	%esi, %edx
	movl	%edx, 252(%r8,%rax,4)
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
	subq	$1600, %rsp             # imm = 0x640
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
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 32(%rdi,%rdx,4)
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 32(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 32(%rcx,%rdx,4)
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 36(%rdi,%rdx,4)
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 36(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 36(%rcx,%rdx,4)
	movq	-112(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 40(%rdi,%rdx,4)
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 40(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 40(%rcx,%rdx,4)
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 44(%rdi,%rdx,4)
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 44(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 44(%rcx,%rdx,4)
	movq	-128(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 48(%rdi,%rdx,4)
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 48(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 48(%rcx,%rdx,4)
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 52(%rdi,%rdx,4)
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 52(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 52(%rcx,%rdx,4)
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 56(%rdi,%rdx,4)
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 56(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 56(%rcx,%rdx,4)
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 60(%rdi,%rdx,4)
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 60(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 60(%rcx,%rdx,4)
	movq	-160(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 64(%rdi,%rdx,4)
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 64(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 64(%rcx,%rdx,4)
	movq	-168(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 68(%rdi,%rdx,4)
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 68(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 68(%rcx,%rdx,4)
	movq	-176(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 72(%rdi,%rdx,4)
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 72(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 72(%rcx,%rdx,4)
	movq	-184(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 76(%rdi,%rdx,4)
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 76(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 76(%rcx,%rdx,4)
	movq	-192(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 80(%rdi,%rdx,4)
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 80(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 80(%rcx,%rdx,4)
	movq	-200(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 84(%rdi,%rdx,4)
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 84(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 84(%rcx,%rdx,4)
	movq	-208(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 88(%rdi,%rdx,4)
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 88(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 88(%rcx,%rdx,4)
	movq	-216(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 92(%rdi,%rdx,4)
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 92(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 92(%rcx,%rdx,4)
	movq	-224(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 96(%rdi,%rdx,4)
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 96(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 96(%rcx,%rdx,4)
	movq	-232(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 100(%rdi,%rdx,4)
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 100(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 100(%rcx,%rdx,4)
	movq	-240(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 104(%rdi,%rdx,4)
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 104(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 104(%rcx,%rdx,4)
	movq	-248(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 108(%rdi,%rdx,4)
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 108(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 108(%rcx,%rdx,4)
	movq	-256(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 112(%rdi,%rdx,4)
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 112(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 112(%rcx,%rdx,4)
	movq	-264(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 116(%rdi,%rdx,4)
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 116(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 116(%rcx,%rdx,4)
	movq	-272(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 120(%rdi,%rdx,4)
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 120(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 120(%rcx,%rdx,4)
	movq	-280(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 124(%rdi,%rdx,4)
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 124(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 124(%rcx,%rdx,4)
	movq	-288(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 128(%rdi,%rdx,4)
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 128(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 128(%rcx,%rdx,4)
	movq	-296(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 132(%rdi,%rdx,4)
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 132(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 132(%rcx,%rdx,4)
	movq	-304(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 136(%rdi,%rdx,4)
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 136(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 136(%rcx,%rdx,4)
	movq	-312(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 140(%rdi,%rdx,4)
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 140(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 140(%rcx,%rdx,4)
	movq	-320(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 144(%rdi,%rdx,4)
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 144(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 144(%rcx,%rdx,4)
	movq	-328(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 148(%rdi,%rdx,4)
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 148(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 148(%rcx,%rdx,4)
	movq	-336(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 152(%rdi,%rdx,4)
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 152(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 152(%rcx,%rdx,4)
	movq	-344(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 156(%rdi,%rdx,4)
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 156(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 156(%rcx,%rdx,4)
	movq	-352(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 160(%rdi,%rdx,4)
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 160(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 160(%rcx,%rdx,4)
	movq	-360(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 164(%rdi,%rdx,4)
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 164(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 164(%rcx,%rdx,4)
	movq	-368(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 168(%rdi,%rdx,4)
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 168(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 168(%rcx,%rdx,4)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 172(%rdi,%rdx,4)
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 172(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 172(%rcx,%rdx,4)
	movq	-384(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 176(%rdi,%rdx,4)
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 176(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 176(%rcx,%rdx,4)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 180(%rdi,%rdx,4)
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 180(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 180(%rcx,%rdx,4)
	movq	-400(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 184(%rdi,%rdx,4)
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 184(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 184(%rcx,%rdx,4)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 188(%rdi,%rdx,4)
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 188(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 188(%rcx,%rdx,4)
	movq	-416(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 192(%rdi,%rdx,4)
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 192(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 192(%rcx,%rdx,4)
	movq	-424(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 196(%rdi,%rdx,4)
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 196(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 196(%rcx,%rdx,4)
	movq	-432(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 200(%rdi,%rdx,4)
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 200(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 200(%rcx,%rdx,4)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 204(%rdi,%rdx,4)
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 204(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 204(%rcx,%rdx,4)
	movq	-448(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 208(%rdi,%rdx,4)
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 208(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 208(%rcx,%rdx,4)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 212(%rdi,%rdx,4)
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 212(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 212(%rcx,%rdx,4)
	movq	-464(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 216(%rdi,%rdx,4)
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 216(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 216(%rcx,%rdx,4)
	movq	-472(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 220(%rdi,%rdx,4)
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 220(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 220(%rcx,%rdx,4)
	movq	-480(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 224(%rdi,%rdx,4)
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 224(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 224(%rcx,%rdx,4)
	movq	-488(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 228(%rdi,%rdx,4)
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 228(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 228(%rcx,%rdx,4)
	movq	-496(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 232(%rdi,%rdx,4)
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 232(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 232(%rcx,%rdx,4)
	movq	-504(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 236(%rdi,%rdx,4)
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 236(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 236(%rcx,%rdx,4)
	movq	-512(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 240(%rdi,%rdx,4)
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 240(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 240(%rcx,%rdx,4)
	movq	-520(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 244(%rdi,%rdx,4)
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 244(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 244(%rcx,%rdx,4)
	movq	-528(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 248(%rdi,%rdx,4)
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 248(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 248(%rcx,%rdx,4)
	movq	-536(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$0, 252(%rdi,%rdx,4)
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	callq	rand
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 252(%rcx,%rdx,4)
	callq	rand
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 252(%rcx,%rdx,4)
	movq	-544(%rbp), %rsi        # 8-byte Reload
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
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movq	%rdx, -560(%rbp)        # 8-byte Spill
.LBB1_3:                                # %for.body18
                                        # =>This Inner Loop Header: Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-568(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	4(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-584(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	8(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -588(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-600(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	12(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -604(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-616(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	16(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -620(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-632(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	20(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -636(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-648(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	24(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -652(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-664(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	28(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -668(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-680(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	32(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -684(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-696(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	36(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -700(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-712(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	40(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -716(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-728(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	44(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -732(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-744(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	48(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -748(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-760(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	52(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -764(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-776(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	56(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -780(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-792(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	60(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -796(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-808(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	64(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -812(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-824(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	68(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -828(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-840(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	72(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -844(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-856(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	76(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -860(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-872(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	80(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -876(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-888(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	84(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -892(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-904(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	88(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -908(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-920(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	92(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -924(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-936(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	96(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -940(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-952(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	100(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -956(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -968(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-968(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	104(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -972(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	callq	fprintf
	movq	-984(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	108(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -988(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	112(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	116(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1020(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	120(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	124(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1052(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	128(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	132(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	136(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1112(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	140(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	144(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	148(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1160(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	152(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	156(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1180(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	160(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	164(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	168(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	172(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1256(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	176(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1272(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	180(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1288(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	184(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1292(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1304(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	188(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1308(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1320(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	192(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1324(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1336(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	196(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1340(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1352(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	200(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1356(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1368(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	204(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1372(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1384(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1384(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	208(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1388(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1400(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1400(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	212(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1404(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1416(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	216(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1420(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1432(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1432(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	220(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1436(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1448(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	224(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1464(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1464(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	228(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1468(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1480(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	232(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1484(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1496(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1496(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	236(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1500(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1512(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1512(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	240(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1516(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1528(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1528(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	244(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1532(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1544(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1544(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	248(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1548(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1560(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1560(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movl	252(%rsi,%rdi,4), %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movl	%eax, -1564(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1576(%rbp)       # 8-byte Spill
	callq	fprintf
	movq	-1576(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	cmpq	$2048, %rcx             # imm = 0x800
	movl	%eax, -1580(%rbp)       # 4-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jne	.LBB1_3
# %bb.4:                                # %for.end24
	movl	$10, %edi
	movq	-552(%rbp), %rsi        # 8-byte Reload
	callq	fputc
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movl	%eax, -1584(%rbp)       # 4-byte Spill
	callq	fclose
	xorl	%ecx, %ecx
	movl	%eax, -1588(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	addq	$1600, %rsp             # imm = 0x640
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
