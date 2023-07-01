	.text
	.file	"stencil.c"
	.globl	stencil                 # -- Begin function stencil
	.p2align	4, 0x90
	.type	stencil,@function
stencil:                                # @stencil
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
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB0_2:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx), %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	28(%rdx), %r8d
	imull	32772(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	32(%rdx), %r8d
	imull	32776(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movq	-16(%rbp), %r9          # 8-byte Reload
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	cmpq	$4094, %rax             # imm = 0xFFE
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB0_2
# %bb.3:                                # %for.inc78
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$4094, %rax             # imm = 0xFFE
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB0_1
# %bb.4:                                # %for.end80
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	stencil, .Lfunc_end0-stencil
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
	subq	$144, %rsp
	movl	$8650341, %edi          # imm = 0x83FE65
	callq	srand
	movl	$67108864, %edi         # imm = 0x4000000
	callq	malloc
	movl	$67108864, %edi         # imm = 0x4000000
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	malloc
	movl	$36, %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	malloc
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB1_2:                                # %for.body5
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.inc17
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$4096, %rax             # imm = 0x1000
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.4:                                # %for.body23.preheader
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
.LBB1_5:                                # %for.body23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
.LBB1_6:                                # %for.body27
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	imulq	$3, %rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	%rsi, %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rsi
	cmpq	$3, %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	jne	.LBB1_6
# %bb.7:                                # %for.inc45
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$3, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB1_5
# %bb.8:                                # %for.end47
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	stencil
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB1_9:                                # %for.body54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	movq	-104(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
.LBB1_10:                               # %for.body58
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	(%rdx,%rcx,4), %ecx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	shlq	$12, %rsi
	addq	%rax, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %r8d
	movl	%eax, %r9d
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%esi, %r10d
	movabsq	$.L.str, %rdi
	movl	%r10d, %esi
	movl	%r9d, %edx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	printf
	movq	-128(%rbp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	cmpq	$4, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	jne	.LBB1_10
# %bb.11:                               # %for.inc71
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB1_9
# %bb.12:                               # %for.end73
	movabsq	$.Lstr, %rdi
	callq	puts
	xorl	%ecx, %ecx
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$144, %rsp
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
	.asciz	"%d, %d, %d,%d\n "
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Success!!\n"
	.size	.L.str.1, 11

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"Success!!"
	.size	.Lstr, 10

	.ident	"clang version 10.0.1 "
	.section	".note.GNU-stack","",@progbits
