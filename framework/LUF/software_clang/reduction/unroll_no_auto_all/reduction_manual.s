	.text
	.file	"reduction_manual.c"
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
	cmpq	$4096, %rsi             # imm = 0x1000
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
	subq	$544, %rsp              # imm = 0x220
	movl	$16384, %edi            # imm = 0x4000
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
	movq	%rdx, -32(%rbp)         # 8-byte Spill
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
	movl	%eax, 4(%rcx,%rdx,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
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
	movl	%eax, 8(%rcx,%rdx,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
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
	movl	%eax, 12(%rcx,%rdx,4)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
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
	movl	%eax, 16(%rcx,%rdx,4)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
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
	movl	%eax, 20(%rcx,%rdx,4)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
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
	movl	%eax, 24(%rcx,%rdx,4)
	movq	-72(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
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
	movl	%eax, 28(%rcx,%rdx,4)
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
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
	movl	%eax, 32(%rcx,%rdx,4)
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
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
	movl	%eax, 36(%rcx,%rdx,4)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
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
	movl	%eax, 40(%rcx,%rdx,4)
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
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
	movl	%eax, 44(%rcx,%rdx,4)
	movq	-112(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
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
	movl	%eax, 48(%rcx,%rdx,4)
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
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
	movl	%eax, 52(%rcx,%rdx,4)
	movq	-128(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
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
	movl	%eax, 56(%rcx,%rdx,4)
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
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
	movl	%eax, 60(%rcx,%rdx,4)
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
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
	movl	%eax, 64(%rcx,%rdx,4)
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
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
	movl	%eax, 68(%rcx,%rdx,4)
	movq	-160(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
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
	movl	%eax, 72(%rcx,%rdx,4)
	movq	-168(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
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
	movl	%eax, 76(%rcx,%rdx,4)
	movq	-176(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
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
	movl	%eax, 80(%rcx,%rdx,4)
	movq	-184(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
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
	movl	%eax, 84(%rcx,%rdx,4)
	movq	-192(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
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
	movl	%eax, 88(%rcx,%rdx,4)
	movq	-200(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
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
	movl	%eax, 92(%rcx,%rdx,4)
	movq	-208(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
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
	movl	%eax, 96(%rcx,%rdx,4)
	movq	-216(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
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
	movl	%eax, 100(%rcx,%rdx,4)
	movq	-224(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
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
	movl	%eax, 104(%rcx,%rdx,4)
	movq	-232(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
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
	movl	%eax, 108(%rcx,%rdx,4)
	movq	-240(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
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
	movl	%eax, 112(%rcx,%rdx,4)
	movq	-248(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
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
	movl	%eax, 116(%rcx,%rdx,4)
	movq	-256(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
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
	movl	%eax, 120(%rcx,%rdx,4)
	movq	-264(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
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
	movl	%eax, 124(%rcx,%rdx,4)
	movq	-272(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
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
	movl	%eax, 128(%rcx,%rdx,4)
	movq	-280(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
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
	movl	%eax, 132(%rcx,%rdx,4)
	movq	-288(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
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
	movl	%eax, 136(%rcx,%rdx,4)
	movq	-296(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
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
	movl	%eax, 140(%rcx,%rdx,4)
	movq	-304(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
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
	movl	%eax, 144(%rcx,%rdx,4)
	movq	-312(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
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
	movl	%eax, 148(%rcx,%rdx,4)
	movq	-320(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
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
	movl	%eax, 152(%rcx,%rdx,4)
	movq	-328(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
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
	movl	%eax, 156(%rcx,%rdx,4)
	movq	-336(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
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
	movl	%eax, 160(%rcx,%rdx,4)
	movq	-344(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
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
	movl	%eax, 164(%rcx,%rdx,4)
	movq	-352(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -360(%rbp)        # 8-byte Spill
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
	movl	%eax, 168(%rcx,%rdx,4)
	movq	-360(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
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
	movl	%eax, 172(%rcx,%rdx,4)
	movq	-368(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -376(%rbp)        # 8-byte Spill
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
	movl	%eax, 176(%rcx,%rdx,4)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
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
	movl	%eax, 180(%rcx,%rdx,4)
	movq	-384(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
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
	movl	%eax, 184(%rcx,%rdx,4)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -400(%rbp)        # 8-byte Spill
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
	movl	%eax, 188(%rcx,%rdx,4)
	movq	-400(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
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
	movl	%eax, 192(%rcx,%rdx,4)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
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
	movl	%eax, 196(%rcx,%rdx,4)
	movq	-416(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
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
	movl	%eax, 200(%rcx,%rdx,4)
	movq	-424(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
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
	movl	%eax, 204(%rcx,%rdx,4)
	movq	-432(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -440(%rbp)        # 8-byte Spill
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
	movl	%eax, 208(%rcx,%rdx,4)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
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
	movl	%eax, 212(%rcx,%rdx,4)
	movq	-448(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
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
	movl	%eax, 216(%rcx,%rdx,4)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -464(%rbp)        # 8-byte Spill
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
	movl	%eax, 220(%rcx,%rdx,4)
	movq	-464(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -472(%rbp)        # 8-byte Spill
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
	movl	%eax, 224(%rcx,%rdx,4)
	movq	-472(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -480(%rbp)        # 8-byte Spill
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
	movl	%eax, 228(%rcx,%rdx,4)
	movq	-480(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -488(%rbp)        # 8-byte Spill
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
	movl	%eax, 232(%rcx,%rdx,4)
	movq	-488(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
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
	movl	%eax, 236(%rcx,%rdx,4)
	movq	-496(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
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
	movl	%eax, 240(%rcx,%rdx,4)
	movq	-504(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -512(%rbp)        # 8-byte Spill
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
	movl	%eax, 244(%rcx,%rdx,4)
	movq	-512(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -520(%rbp)        # 8-byte Spill
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
	movl	%eax, 248(%rcx,%rdx,4)
	movq	-520(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -528(%rbp)        # 8-byte Spill
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
	movl	%eax, 252(%rcx,%rdx,4)
	movq	-528(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	cmpq	$4096, %rsi             # imm = 0x1000
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.2:                                # %for.end
	movq	-8(%rbp), %rdi          # 8-byte Reload
	callq	reduction
	movabsq	$.L.str, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -532(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$544, %rsp              # imm = 0x220
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
