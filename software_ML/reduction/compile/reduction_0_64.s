	.text
	.file	"reduction_0_64.c"
	.globl	reduction               # -- Begin function reduction
	.p2align	4, 0x90
	.type	reduction,@function
reduction:                              # @reduction
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-8(%rbp), %rdx          # 8-byte Reload
	addl	(%rdx,%rcx,4), %eax
	movq	%rcx, %rsi
	addq	$1, %rsi
	addl	4(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	8(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	12(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	16(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	20(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	24(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	28(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	32(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	36(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	40(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	44(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	48(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	52(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	56(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	60(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	64(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	68(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	72(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	76(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	80(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	84(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	88(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	92(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	96(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	100(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	104(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	108(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	112(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	116(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	120(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	124(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	128(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	132(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	136(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	140(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	144(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	148(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	152(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	156(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	160(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	164(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	168(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	172(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	176(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	180(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	184(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	188(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	192(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	196(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	200(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	204(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	208(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	212(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	216(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	220(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	224(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	228(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	232(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	236(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	240(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	244(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	248(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	addl	252(%rdx,%rcx,4), %eax
	addq	$1, %rsi
	cmpq	$8388608, %rsi          # imm = 0x800000
	movl	%eax, %edi
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jne	.LBB0_1
# %bb.2:                                # %for.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	reduction, .Lfunc_end0-reduction
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI1_1:
	.quad	4746794007240114176     # double 2147483646
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
	subq	$32, %rsp
	movl	$33554432, %edi         # imm = 0x2000000
	callq	malloc
	movl	$8650341, %edi          # imm = 0x83FE65
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	srand
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	$8388608, %rdx          # imm = 0x800000
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.2:                                # %for.end
	movq	-8(%rbp), %rdi          # 8-byte Reload
	callq	reduction
	movabsq	$.L.str, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
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
	.asciz	"sum: %d\n"
	.size	.L.str, 9

	.ident	"clang version 10.0.1 "
	.section	".note.GNU-stack","",@progbits
