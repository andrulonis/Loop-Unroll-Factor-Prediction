	.text
	.file	"fft_manual.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function step1
.LCPI0_0:
	.long	1060439283              # float 0.707106769
	.text
	.globl	step1
	.p2align	4, 0x90
	.type	step1,@function
step1:                                  # @step1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%r9, -24(%rbp)          # 8-byte Spill
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movl	(%rcx,%rdx,4), %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%esi, (%rdi)
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdx,4), %esi
	movq	-24(%rbp), %r9          # 8-byte Reload
	movl	%esi, (%r9)
	addq	$64, %rdx
	movl	(%rcx,%rdx,4), %esi
	movl	%esi, 4(%rdi)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$64, %rdx
	movl	(%r8,%rdx,4), %esi
	movl	%esi, 4(%r9)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$128, %rdx
	movl	(%rcx,%rdx,4), %esi
	movl	%esi, 8(%rdi)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$128, %rdx
	movl	(%r8,%rdx,4), %esi
	movl	%esi, 8(%r9)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$192, %rdx
	movl	(%rcx,%rdx,4), %esi
	movl	%esi, 12(%rdi)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$192, %rdx
	movl	(%r8,%rdx,4), %esi
	movl	%esi, 12(%r9)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$256, %rdx              # imm = 0x100
	movl	(%rcx,%rdx,4), %esi
	movl	%esi, 16(%rdi)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$256, %rdx              # imm = 0x100
	movl	(%r8,%rdx,4), %esi
	movl	%esi, 16(%r9)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$320, %rdx              # imm = 0x140
	movl	(%rcx,%rdx,4), %esi
	movl	%esi, 20(%rdi)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$320, %rdx              # imm = 0x140
	movl	(%r8,%rdx,4), %esi
	movl	%esi, 20(%r9)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$384, %rdx              # imm = 0x180
	movl	(%rcx,%rdx,4), %esi
	movl	%esi, 24(%rdi)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$384, %rdx              # imm = 0x180
	movl	(%r8,%rdx,4), %esi
	movl	%esi, 24(%r9)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$448, %rdx              # imm = 0x1C0
	movl	(%rcx,%rdx,4), %esi
	movl	%esi, 28(%rdi)
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	$448, %rdx              # imm = 0x1C0
	movl	(%r8,%rdx,4), %esi
	movl	%esi, 28(%r9)
	movl	(%rdi), %esi
	movl	(%r9), %r10d
	movl	%esi, %r11d
	addl	16(%rdi), %r11d
	movl	%r11d, (%rdi)
	movl	%r10d, %r11d
	addl	16(%r9), %r11d
	movl	%r11d, (%r9)
	subl	16(%rdi), %esi
	movl	%esi, 16(%rdi)
	subl	16(%r9), %r10d
	movl	%r10d, 16(%r9)
	movl	4(%rdi), %esi
	movl	4(%r9), %r10d
	movl	%esi, %r11d
	addl	20(%rdi), %r11d
	movl	%r11d, 4(%rdi)
	movl	%r10d, %r11d
	addl	20(%r9), %r11d
	movl	%r11d, 4(%r9)
	subl	20(%rdi), %esi
	movl	%esi, 20(%rdi)
	subl	20(%r9), %r10d
	movl	%r10d, 20(%r9)
	movl	8(%rdi), %esi
	movl	8(%r9), %r10d
	movl	%esi, %r11d
	addl	24(%rdi), %r11d
	movl	%r11d, 8(%rdi)
	movl	%r10d, %r11d
	addl	24(%r9), %r11d
	movl	%r11d, 8(%r9)
	subl	24(%rdi), %esi
	movl	%esi, 24(%rdi)
	subl	24(%r9), %r10d
	movl	%r10d, 24(%r9)
	movl	12(%rdi), %esi
	movl	12(%r9), %r10d
	movl	%esi, %r11d
	addl	28(%rdi), %r11d
	movl	%r11d, 12(%rdi)
	movl	%r10d, %r11d
	addl	28(%r9), %r11d
	movl	%r11d, 12(%r9)
	subl	28(%rdi), %esi
	movl	%esi, 28(%rdi)
	subl	28(%r9), %r10d
	movl	%r10d, 28(%r9)
	movl	20(%rdi), %esi
	movl	%esi, %r10d
	addl	20(%r9), %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r10d
	movl	%r10d, 20(%rdi)
	movl	20(%r9), %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, 20(%r9)
	movl	24(%rdi), %esi
	movl	24(%r9), %r10d
	movl	%r10d, 24(%rdi)
	movl	%eax, %r10d
	subl	%esi, %r10d
	movl	%r10d, 24(%r9)
	movl	28(%rdi), %esi
	movl	28(%r9), %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r10d
	movl	%r10d, 28(%rdi)
	addl	28(%r9), %esi
	movl	%eax, %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, 28(%r9)
	movl	(%rdi), %esi
	movl	(%r9), %r10d
	movl	%esi, %r11d
	addl	8(%rdi), %r11d
	movl	%r11d, (%rdi)
	movl	%r10d, %r11d
	addl	8(%r9), %r11d
	movl	%r11d, (%r9)
	subl	8(%rdi), %esi
	movl	%esi, 8(%rdi)
	subl	8(%r9), %r10d
	movl	%r10d, 8(%r9)
	movl	4(%rdi), %esi
	movl	4(%r9), %r10d
	movl	%esi, %r11d
	addl	12(%rdi), %r11d
	movl	%r11d, 4(%rdi)
	movl	%r10d, %r11d
	addl	12(%r9), %r11d
	movl	%r11d, 4(%r9)
	subl	12(%rdi), %esi
	movl	%esi, 12(%rdi)
	subl	12(%r9), %r10d
	movl	%r10d, 12(%r9)
	movl	12(%rdi), %esi
	movl	%r10d, 12(%rdi)
	movl	%eax, %r10d
	subl	%esi, %r10d
	movl	%r10d, 12(%r9)
	movl	(%rdi), %esi
	movl	(%r9), %r10d
	movl	%esi, %r11d
	addl	4(%rdi), %r11d
	movl	%r11d, (%rdi)
	movl	%r10d, %r11d
	addl	4(%r9), %r11d
	movl	%r11d, (%r9)
	subl	4(%rdi), %esi
	movl	%esi, 4(%rdi)
	subl	4(%r9), %r10d
	movl	%r10d, 4(%r9)
	movl	8(%rdi), %esi
	movl	8(%r9), %r10d
	movl	%esi, %r11d
	addl	12(%rdi), %r11d
	movl	%r11d, 8(%rdi)
	movl	%r10d, %r11d
	addl	12(%r9), %r11d
	movl	%r11d, 8(%r9)
	subl	12(%rdi), %esi
	movl	%esi, 12(%rdi)
	subl	12(%r9), %r10d
	movl	%r10d, 12(%r9)
	movl	16(%rdi), %esi
	movl	16(%r9), %r10d
	movl	%esi, %r11d
	addl	24(%rdi), %r11d
	movl	%r11d, 16(%rdi)
	movl	%r10d, %r11d
	addl	24(%r9), %r11d
	movl	%r11d, 16(%r9)
	subl	24(%rdi), %esi
	movl	%esi, 24(%rdi)
	subl	24(%r9), %r10d
	movl	%r10d, 24(%r9)
	movl	20(%rdi), %esi
	movl	20(%r9), %r10d
	movl	%esi, %r11d
	addl	28(%rdi), %r11d
	movl	%r11d, 20(%rdi)
	movl	%r10d, %r11d
	addl	28(%r9), %r11d
	movl	%r11d, 20(%r9)
	subl	28(%rdi), %esi
	movl	%esi, 28(%rdi)
	subl	28(%r9), %r10d
	movl	%r10d, 28(%r9)
	movl	28(%rdi), %esi
	movl	%r10d, 28(%rdi)
	subl	%esi, %eax
	movl	%eax, 28(%r9)
	movl	16(%rdi), %eax
	movl	16(%r9), %esi
	movl	%eax, %r10d
	addl	20(%rdi), %r10d
	movl	%r10d, 16(%rdi)
	movl	%esi, %r10d
	addl	20(%r9), %r10d
	movl	%r10d, 16(%r9)
	subl	20(%rdi), %eax
	movl	%eax, 20(%rdi)
	subl	20(%r9), %esi
	movl	%esi, 20(%r9)
	movl	24(%rdi), %eax
	movl	24(%r9), %esi
	movl	%eax, %r10d
	addl	28(%rdi), %r10d
	movl	%r10d, 24(%rdi)
	movl	%esi, %r10d
	addl	28(%r9), %r10d
	movl	%r10d, 24(%r9)
	subl	28(%rdi), %eax
	movl	%eax, 28(%rdi)
	subl	28(%r9), %esi
	movl	%esi, 28(%r9)
# %bb.3:                                # %for.body278
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	imulq	$7, %rax, %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cvttss2si	(%rdx,%rcx,4), %esi
	imulq	$7, %rax, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cvttss2si	(%rdi,%rcx,4), %r8d
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	4(%rcx), %r9d
	movl	%esi, %r10d
	imull	4(%rcx), %r10d
	movl	%r8d, %r11d
	movq	-24(%rbp), %rbx         # 8-byte Reload
	imull	4(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 4(%rcx)
	imull	%r8d, %r9d
	imull	4(%rbx), %esi
	addl	%esi, %r9d
	movl	%r9d, 4(%rbx)
	imulq	$7, %rax, %r14
	cvttss2si	4(%rdx,%r14,4), %esi
	imulq	$7, %rax, %r14
	cvttss2si	4(%rdi,%r14,4), %r8d
	movl	8(%rcx), %r9d
	movl	%esi, %r10d
	imull	8(%rcx), %r10d
	movl	%r8d, %r11d
	imull	8(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 8(%rcx)
	imull	%r8d, %r9d
	imull	8(%rbx), %esi
	addl	%esi, %r9d
	movl	%r9d, 8(%rbx)
	imulq	$7, %rax, %r14
	cvttss2si	8(%rdx,%r14,4), %esi
	imulq	$7, %rax, %r14
	cvttss2si	8(%rdi,%r14,4), %r8d
	movl	12(%rcx), %r9d
	movl	%esi, %r10d
	imull	12(%rcx), %r10d
	movl	%r8d, %r11d
	imull	12(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 12(%rcx)
	imull	%r8d, %r9d
	imull	12(%rbx), %esi
	addl	%esi, %r9d
	movl	%r9d, 12(%rbx)
	imulq	$7, %rax, %r14
	cvttss2si	12(%rdx,%r14,4), %esi
	imulq	$7, %rax, %r14
	cvttss2si	12(%rdi,%r14,4), %r8d
	movl	16(%rcx), %r9d
	movl	%esi, %r10d
	imull	16(%rcx), %r10d
	movl	%r8d, %r11d
	imull	16(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 16(%rcx)
	imull	%r8d, %r9d
	imull	16(%rbx), %esi
	addl	%esi, %r9d
	movl	%r9d, 16(%rbx)
	imulq	$7, %rax, %r14
	cvttss2si	16(%rdx,%r14,4), %esi
	imulq	$7, %rax, %r14
	cvttss2si	16(%rdi,%r14,4), %r8d
	movl	20(%rcx), %r9d
	movl	%esi, %r10d
	imull	20(%rcx), %r10d
	movl	%r8d, %r11d
	imull	20(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 20(%rcx)
	imull	%r8d, %r9d
	imull	20(%rbx), %esi
	addl	%esi, %r9d
	movl	%r9d, 20(%rbx)
	imulq	$7, %rax, %r14
	cvttss2si	20(%rdx,%r14,4), %esi
	imulq	$7, %rax, %r14
	cvttss2si	20(%rdi,%r14,4), %r8d
	movl	24(%rcx), %r9d
	movl	%esi, %r10d
	imull	24(%rcx), %r10d
	movl	%r8d, %r11d
	imull	24(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 24(%rcx)
	imull	%r8d, %r9d
	imull	24(%rbx), %esi
	addl	%esi, %r9d
	movl	%r9d, 24(%rbx)
	imulq	$7, %rax, %r14
	cvttss2si	24(%rdx,%r14,4), %esi
	imulq	$7, %rax, %r14
	cvttss2si	24(%rdi,%r14,4), %r8d
	movl	28(%rcx), %r9d
	movl	%esi, %r10d
	imull	28(%rcx), %r10d
	movl	%r8d, %r11d
	imull	28(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 28(%rcx)
	imull	%r8d, %r9d
	imull	28(%rbx), %esi
	addl	%esi, %r9d
	movl	%r9d, 28(%rbx)
# %bb.4:                                # %for.body316
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, (%rsi,%rdx,4)
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movl	%ecx, (%r8,%rdi,4)
	movl	4(%rax), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 4(%rsi,%rdi,4)
	movl	4(%rdx), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 4(%r8,%rdi,4)
	movl	8(%rax), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 8(%rsi,%rdi,4)
	movl	8(%rdx), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 8(%r8,%rdi,4)
	movl	12(%rax), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 12(%rsi,%rdi,4)
	movl	12(%rdx), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 12(%r8,%rdi,4)
	movl	16(%rax), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 16(%rsi,%rdi,4)
	movl	16(%rdx), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 16(%r8,%rdi,4)
	movl	20(%rax), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 20(%rsi,%rdi,4)
	movl	20(%rdx), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 20(%r8,%rdi,4)
	movl	24(%rax), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 24(%rsi,%rdi,4)
	movl	24(%rdx), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 24(%r8,%rdi,4)
	movl	28(%rax), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 28(%rsi,%rdi,4)
	movl	28(%rdx), %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 28(%r8,%rdi,4)
	movq	-96(%rbp), %rdi         # 8-byte Reload
	addq	$1, %rdi
	cmpq	$64, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	jne	.LBB0_1
# %bb.5:                                # %for.end334
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	step1, .Lfunc_end0-step1
	.cfi_endproc
                                        # -- End function
	.globl	step2                   # -- Begin function step2
	.p2align	4, 0x90
	.type	step2,@function
step2:                                  # @step2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %rcx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%r8, -16(%rbp)          # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%edx, (%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movl	%edx, 20(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movl	%edx, 28(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %edx
	andl	$2147483640, %edx       # imm = 0x7FFFFFF8
	movl	%esi, %edi
	andl	$7, %edi
	movq	-32(%rbp), %r8          # 8-byte Reload
	movslq	(%r8), %r9
	movl	(%rax,%r9,4), %r10d
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%r10d, (%r9,%rsi,4)
	movslq	4(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$66, %ebx
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	8(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$132, %ebx
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	12(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$198, %ebx
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	16(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$264, %ebx              # imm = 0x108
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	20(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$330, %ebx              # imm = 0x14A
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	24(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$396, %ebx              # imm = 0x18C
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	28(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	addl	$462, %edx              # imm = 0x1CE
	addl	%edi, %edx
	movl	%edx, %edx
	movl	%edx, %r11d
	movl	%r10d, (%r9,%r11,4)
	addq	$1, %rsi
	cmpq	$64, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.3:                                # %for.end72
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	step2, .Lfunc_end1-step2
	.cfi_endproc
                                        # -- End function
	.globl	step3                   # -- Begin function step3
	.p2align	4, 0x90
	.type	step3,@function
step3:                                  # @step3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%r8, -8(%rbp)           # 8-byte Spill
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	jmp	.LBB2_1
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	%edx, (%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movl	%edx, 12(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movl	%edx, 24(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movl	%edx, 28(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %edx
	shrl	$3, %edx
	movl	%esi, %edi
	andl	$7, %edi
	imull	$66, %edi, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-24(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, (%rax)
	imull	$66, %edi, %r8d
	addl	$8, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 4(%rax)
	imull	$66, %edi, %r8d
	addl	$16, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 8(%rax)
	imull	$66, %edi, %r8d
	addl	$24, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 12(%rax)
	imull	$66, %edi, %r8d
	addl	$32, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 16(%rax)
	imull	$66, %edi, %r8d
	addl	$40, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 20(%rax)
	imull	$66, %edi, %r8d
	addl	$48, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 24(%rax)
	imull	$66, %edi, %edi
	addl	$56, %edi
	addl	%edx, %edi
	movl	%edi, %edx
	movl	%edx, %r9d
	movl	(%r10,%r9,4), %edx
	movl	%edx, 28(%rax)
# %bb.3:                                # %for.body56
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, (%rsi,%rdx,4)
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 4(%rsi,%rdx,4)
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 8(%rsi,%rdx,4)
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 12(%rsi,%rdx,4)
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 16(%rsi,%rdx,4)
	movl	20(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 20(%rsi,%rdx,4)
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 24(%rsi,%rdx,4)
	movl	28(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 28(%rsi,%rdx,4)
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	cmpq	$64, %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	jne	.LBB2_1
# %bb.4:                                # %for.end68
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	step3, .Lfunc_end2-step3
	.cfi_endproc
                                        # -- End function
	.globl	step4                   # -- Begin function step4
	.p2align	4, 0x90
	.type	step4,@function
step4:                                  # @step4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %rdx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%r9, -16(%rbp)          # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%edx, (%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movl	%edx, 20(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movl	%edx, 28(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %edx
	andl	$2147483640, %edx       # imm = 0x7FFFFFF8
	movl	%esi, %edi
	andl	$7, %edi
	movq	-32(%rbp), %r8          # 8-byte Reload
	movslq	(%r8), %r9
	movl	(%rax,%r9,4), %r10d
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%r10d, (%r9,%rsi,4)
	movslq	4(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$66, %ebx
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	8(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$132, %ebx
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	12(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$198, %ebx
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	16(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$264, %ebx              # imm = 0x108
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	20(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$330, %ebx              # imm = 0x14A
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	24(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$396, %ebx              # imm = 0x18C
	addl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	28(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	addl	$462, %edx              # imm = 0x1CE
	addl	%edi, %edx
	movl	%edx, %edx
	movl	%edx, %r11d
	movl	%r10d, (%r9,%r11,4)
	addq	$1, %rsi
	cmpq	$64, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jne	.LBB3_1
# %bb.3:                                # %for.end72
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	step4, .Lfunc_end3-step4
	.cfi_endproc
                                        # -- End function
	.globl	step5                   # -- Begin function step5
	.p2align	4, 0x90
	.type	step5,@function
step5:                                  # @step5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%r9, -8(%rbp)           # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	jmp	.LBB4_1
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	%edx, (%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movl	%edx, 12(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movl	%edx, 24(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movl	%edx, 28(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %edx
	shrl	$3, %edx
	movl	%esi, %edi
	andl	$7, %edi
	imull	$66, %edi, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-24(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, (%rax)
	imull	$66, %edi, %r8d
	addl	$8, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 4(%rax)
	imull	$66, %edi, %r8d
	addl	$16, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 8(%rax)
	imull	$66, %edi, %r8d
	addl	$24, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 12(%rax)
	imull	$66, %edi, %r8d
	addl	$32, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 16(%rax)
	imull	$66, %edi, %r8d
	addl	$40, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 20(%rax)
	imull	$66, %edi, %r8d
	addl	$48, %r8d
	addl	%edx, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 24(%rax)
	imull	$66, %edi, %edi
	addl	$56, %edi
	addl	%edx, %edi
	movl	%edi, %edx
	movl	%edx, %r9d
	movl	(%r10,%r9,4), %edx
	movl	%edx, 28(%rax)
# %bb.3:                                # %for.body56
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, (%rsi,%rdx,4)
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 4(%rsi,%rdx,4)
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 8(%rsi,%rdx,4)
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 12(%rsi,%rdx,4)
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 16(%rsi,%rdx,4)
	movl	20(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 20(%rsi,%rdx,4)
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 24(%rsi,%rdx,4)
	movl	28(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 28(%rsi,%rdx,4)
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	cmpq	$64, %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	jne	.LBB4_1
# %bb.4:                                # %for.end68
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	step5, .Lfunc_end4-step5
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function step6
.LCPI5_0:
	.long	1060439283              # float 0.707106769
	.text
	.globl	step6
	.p2align	4, 0x90
	.type	step6,@function
step6:                                  # @step6
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %rsi
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	%r9, -24(%rbp)          # 8-byte Spill
	movq	%r8, -32(%rbp)          # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	jmp	.LBB5_1
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	%esi, (%rcx)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%esi, (%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	4(%rdx,%r9,4), %esi
	movl	%esi, 4(%rcx)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	4(%r8,%r9,4), %esi
	movl	%esi, 4(%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	8(%rdx,%r9,4), %esi
	movl	%esi, 8(%rcx)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	8(%r8,%r9,4), %esi
	movl	%esi, 8(%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	12(%rdx,%r9,4), %esi
	movl	%esi, 12(%rcx)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	12(%r8,%r9,4), %esi
	movl	%esi, 12(%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	16(%rdx,%r9,4), %esi
	movl	%esi, 16(%rcx)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	16(%r8,%r9,4), %esi
	movl	%esi, 16(%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	20(%rdx,%r9,4), %esi
	movl	%esi, 20(%rcx)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	20(%r8,%r9,4), %esi
	movl	%esi, 20(%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	24(%rdx,%r9,4), %esi
	movl	%esi, 24(%rcx)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	24(%r8,%r9,4), %esi
	movl	%esi, 24(%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	28(%rdx,%r9,4), %esi
	movl	%esi, 28(%rcx)
	movq	-80(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	28(%r8,%r9,4), %esi
	movl	%esi, 28(%rdi)
	movl	(%rcx), %esi
	movl	(%rdi), %r10d
	movl	%esi, %r11d
	addl	16(%rcx), %r11d
	movl	%r11d, (%rcx)
	movl	%r10d, %r11d
	addl	16(%rdi), %r11d
	movl	%r11d, (%rdi)
	subl	16(%rcx), %esi
	movl	%esi, 16(%rcx)
	subl	16(%rdi), %r10d
	movl	%r10d, 16(%rdi)
	movl	4(%rcx), %esi
	movl	4(%rdi), %r10d
	movl	%esi, %r11d
	addl	20(%rcx), %r11d
	movl	%r11d, 4(%rcx)
	movl	%r10d, %r11d
	addl	20(%rdi), %r11d
	movl	%r11d, 4(%rdi)
	subl	20(%rcx), %esi
	movl	%esi, 20(%rcx)
	subl	20(%rdi), %r10d
	movl	%r10d, 20(%rdi)
	movl	8(%rcx), %esi
	movl	8(%rdi), %r10d
	movl	%esi, %r11d
	addl	24(%rcx), %r11d
	movl	%r11d, 8(%rcx)
	movl	%r10d, %r11d
	addl	24(%rdi), %r11d
	movl	%r11d, 8(%rdi)
	subl	24(%rcx), %esi
	movl	%esi, 24(%rcx)
	subl	24(%rdi), %r10d
	movl	%r10d, 24(%rdi)
	movl	12(%rcx), %esi
	movl	12(%rdi), %r10d
	movl	%esi, %r11d
	addl	28(%rcx), %r11d
	movl	%r11d, 12(%rcx)
	movl	%r10d, %r11d
	addl	28(%rdi), %r11d
	movl	%r11d, 12(%rdi)
	subl	28(%rcx), %esi
	movl	%esi, 28(%rcx)
	subl	28(%rdi), %r10d
	movl	%r10d, 28(%rdi)
	movl	20(%rcx), %esi
	movl	%esi, %r10d
	addl	20(%rdi), %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r10d
	movl	%r10d, 20(%rcx)
	movl	20(%rdi), %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, 20(%rdi)
	movl	24(%rcx), %esi
	movl	24(%rdi), %r10d
	movl	%r10d, 24(%rcx)
	movl	%eax, %r10d
	subl	%esi, %r10d
	movl	%r10d, 24(%rdi)
	movl	28(%rcx), %esi
	movl	28(%rdi), %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r10d
	movl	%r10d, 28(%rcx)
	addl	28(%rdi), %esi
	movl	%eax, %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, 28(%rdi)
	movl	(%rcx), %esi
	movl	(%rdi), %r10d
	movl	%esi, %r11d
	addl	8(%rcx), %r11d
	movl	%r11d, (%rcx)
	movl	%r10d, %r11d
	addl	8(%rdi), %r11d
	movl	%r11d, (%rdi)
	subl	8(%rcx), %esi
	movl	%esi, 8(%rcx)
	subl	8(%rdi), %r10d
	movl	%r10d, 8(%rdi)
	movl	4(%rcx), %esi
	movl	4(%rdi), %r10d
	movl	%esi, %r11d
	addl	12(%rcx), %r11d
	movl	%r11d, 4(%rcx)
	movl	%r10d, %r11d
	addl	12(%rdi), %r11d
	movl	%r11d, 4(%rdi)
	subl	12(%rcx), %esi
	movl	%esi, 12(%rcx)
	subl	12(%rdi), %r10d
	movl	%r10d, 12(%rdi)
	movl	12(%rcx), %esi
	movl	%r10d, 12(%rcx)
	movl	%eax, %r10d
	subl	%esi, %r10d
	movl	%r10d, 12(%rdi)
	movl	(%rcx), %esi
	movl	(%rdi), %r10d
	movl	%esi, %r11d
	addl	4(%rcx), %r11d
	movl	%r11d, (%rcx)
	movl	%r10d, %r11d
	addl	4(%rdi), %r11d
	movl	%r11d, (%rdi)
	subl	4(%rcx), %esi
	movl	%esi, 4(%rcx)
	subl	4(%rdi), %r10d
	movl	%r10d, 4(%rdi)
	movl	8(%rcx), %esi
	movl	8(%rdi), %r10d
	movl	%esi, %r11d
	addl	12(%rcx), %r11d
	movl	%r11d, 8(%rcx)
	movl	%r10d, %r11d
	addl	12(%rdi), %r11d
	movl	%r11d, 8(%rdi)
	subl	12(%rcx), %esi
	movl	%esi, 12(%rcx)
	subl	12(%rdi), %r10d
	movl	%r10d, 12(%rdi)
	movl	16(%rcx), %esi
	movl	16(%rdi), %r10d
	movl	%esi, %r11d
	addl	24(%rcx), %r11d
	movl	%r11d, 16(%rcx)
	movl	%r10d, %r11d
	addl	24(%rdi), %r11d
	movl	%r11d, 16(%rdi)
	subl	24(%rcx), %esi
	movl	%esi, 24(%rcx)
	subl	24(%rdi), %r10d
	movl	%r10d, 24(%rdi)
	movl	20(%rcx), %esi
	movl	20(%rdi), %r10d
	movl	%esi, %r11d
	addl	28(%rcx), %r11d
	movl	%r11d, 20(%rcx)
	movl	%r10d, %r11d
	addl	28(%rdi), %r11d
	movl	%r11d, 20(%rdi)
	subl	28(%rcx), %esi
	movl	%esi, 28(%rcx)
	subl	28(%rdi), %r10d
	movl	%r10d, 28(%rdi)
	movl	28(%rcx), %esi
	movl	%r10d, 28(%rcx)
	subl	%esi, %eax
	movl	%eax, 28(%rdi)
	movl	16(%rcx), %eax
	movl	16(%rdi), %esi
	movl	%eax, %r10d
	addl	20(%rcx), %r10d
	movl	%r10d, 16(%rcx)
	movl	%esi, %r10d
	addl	20(%rdi), %r10d
	movl	%r10d, 16(%rdi)
	subl	20(%rcx), %eax
	movl	%eax, 20(%rcx)
	subl	20(%rdi), %esi
	movl	%esi, 20(%rdi)
	movl	24(%rcx), %eax
	movl	24(%rdi), %esi
	movl	%eax, %r10d
	addl	28(%rcx), %r10d
	movl	%r10d, 24(%rcx)
	movl	%esi, %r10d
	addl	28(%rdi), %r10d
	movl	%r10d, 24(%rdi)
	subl	28(%rcx), %eax
	movl	%eax, 28(%rcx)
	subl	28(%rdi), %esi
	movl	%esi, 28(%rdi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	movl	%r9d, %eax
	shrl	$3, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
# %bb.3:                                # %for.body278
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	imull	$7, %eax, %ecx
	movslq	%ecx, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cvttss2si	(%rsi,%rdx,4), %ecx
	imull	$7, %eax, %edi
	movslq	%edi, %rdx
	movq	-64(%rbp), %r8          # 8-byte Reload
	cvttss2si	(%r8,%rdx,4), %edi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	4(%rdx), %r9d
	movl	%ecx, %r10d
	imull	4(%rdx), %r10d
	movl	%edi, %r11d
	movq	-24(%rbp), %rbx         # 8-byte Reload
	imull	4(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 4(%rdx)
	imull	%edi, %r9d
	imull	4(%rbx), %ecx
	addl	%ecx, %r9d
	movl	%r9d, 4(%rbx)
	imull	$7, %eax, %ecx
	movslq	%ecx, %r14
	cvttss2si	4(%rsi,%r14,4), %ecx
	imull	$7, %eax, %edi
	movslq	%edi, %r14
	cvttss2si	4(%r8,%r14,4), %edi
	movl	8(%rdx), %r9d
	movl	%ecx, %r10d
	imull	8(%rdx), %r10d
	movl	%edi, %r11d
	imull	8(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 8(%rdx)
	imull	%edi, %r9d
	imull	8(%rbx), %ecx
	addl	%ecx, %r9d
	movl	%r9d, 8(%rbx)
	imull	$7, %eax, %ecx
	movslq	%ecx, %r14
	cvttss2si	8(%rsi,%r14,4), %ecx
	imull	$7, %eax, %edi
	movslq	%edi, %r14
	cvttss2si	8(%r8,%r14,4), %edi
	movl	12(%rdx), %r9d
	movl	%ecx, %r10d
	imull	12(%rdx), %r10d
	movl	%edi, %r11d
	imull	12(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 12(%rdx)
	imull	%edi, %r9d
	imull	12(%rbx), %ecx
	addl	%ecx, %r9d
	movl	%r9d, 12(%rbx)
	imull	$7, %eax, %ecx
	movslq	%ecx, %r14
	cvttss2si	12(%rsi,%r14,4), %ecx
	imull	$7, %eax, %edi
	movslq	%edi, %r14
	cvttss2si	12(%r8,%r14,4), %edi
	movl	16(%rdx), %r9d
	movl	%ecx, %r10d
	imull	16(%rdx), %r10d
	movl	%edi, %r11d
	imull	16(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 16(%rdx)
	imull	%edi, %r9d
	imull	16(%rbx), %ecx
	addl	%ecx, %r9d
	movl	%r9d, 16(%rbx)
	imull	$7, %eax, %ecx
	movslq	%ecx, %r14
	cvttss2si	16(%rsi,%r14,4), %ecx
	imull	$7, %eax, %edi
	movslq	%edi, %r14
	cvttss2si	16(%r8,%r14,4), %edi
	movl	20(%rdx), %r9d
	movl	%ecx, %r10d
	imull	20(%rdx), %r10d
	movl	%edi, %r11d
	imull	20(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 20(%rdx)
	imull	%edi, %r9d
	imull	20(%rbx), %ecx
	addl	%ecx, %r9d
	movl	%r9d, 20(%rbx)
	imull	$7, %eax, %ecx
	movslq	%ecx, %r14
	cvttss2si	20(%rsi,%r14,4), %ecx
	imull	$7, %eax, %edi
	movslq	%edi, %r14
	cvttss2si	20(%r8,%r14,4), %edi
	movl	24(%rdx), %r9d
	movl	%ecx, %r10d
	imull	24(%rdx), %r10d
	movl	%edi, %r11d
	imull	24(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 24(%rdx)
	imull	%edi, %r9d
	imull	24(%rbx), %ecx
	addl	%ecx, %r9d
	movl	%r9d, 24(%rbx)
	imull	$7, %eax, %ecx
	movslq	%ecx, %r14
	cvttss2si	24(%rsi,%r14,4), %ecx
	imull	$7, %eax, %edi
	movslq	%edi, %r14
	cvttss2si	24(%r8,%r14,4), %edi
	movl	28(%rdx), %r9d
	movl	%ecx, %r10d
	imull	28(%rdx), %r10d
	movl	%edi, %r11d
	imull	28(%rbx), %r11d
	subl	%r11d, %r10d
	movl	%r10d, 28(%rdx)
	imull	%edi, %r9d
	imull	28(%rbx), %ecx
	addl	%ecx, %r9d
	movl	%r9d, 28(%rbx)
# %bb.4:                                # %for.body316
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, (%rsi,%rdx,4)
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movl	%ecx, (%r8,%rdi,4)
	movl	4(%rax), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 4(%rsi,%rdi,4)
	movl	4(%rdx), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 4(%r8,%rdi,4)
	movl	8(%rax), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 8(%rsi,%rdi,4)
	movl	8(%rdx), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 8(%r8,%rdi,4)
	movl	12(%rax), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 12(%rsi,%rdi,4)
	movl	12(%rdx), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 12(%r8,%rdi,4)
	movl	16(%rax), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 16(%rsi,%rdi,4)
	movl	16(%rdx), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 16(%r8,%rdi,4)
	movl	20(%rax), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 20(%rsi,%rdi,4)
	movl	20(%rdx), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 20(%r8,%rdi,4)
	movl	24(%rax), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 24(%rsi,%rdi,4)
	movl	24(%rdx), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 24(%r8,%rdi,4)
	movl	28(%rax), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 28(%rsi,%rdi,4)
	movl	28(%rdx), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movl	%ecx, 28(%r8,%rdi,4)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	addq	$1, %rdi
	cmpq	$64, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	jne	.LBB5_1
# %bb.5:                                # %for.end334
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	step6, .Lfunc_end5-step6
	.cfi_endproc
                                        # -- End function
	.globl	step7                   # -- Begin function step7
	.p2align	4, 0x90
	.type	step7,@function
step7:                                  # @step7
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %rcx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%r8, -16(%rbp)          # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_1
.LBB6_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%edx, (%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movl	%edx, 20(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movl	%edx, 28(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %edx
	andl	$2147483640, %edx       # imm = 0x7FFFFFF8
	movl	%esi, %edi
	andl	$7, %edi
	movq	-32(%rbp), %r8          # 8-byte Reload
	movslq	(%r8), %r9
	movl	(%rax,%r9,4), %r10d
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%r10d, (%r9,%rsi,4)
	movslq	4(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$72, %ebx
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	8(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$144, %ebx
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	12(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$216, %ebx
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	16(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$288, %ebx              # imm = 0x120
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	20(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$360, %ebx              # imm = 0x168
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	24(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$432, %ebx              # imm = 0x1B0
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	28(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	addl	$504, %edx              # imm = 0x1F8
	orl	%edi, %edx
	movl	%edx, %edx
	movl	%edx, %r11d
	movl	%r10d, (%r9,%r11,4)
	addq	$1, %rsi
	cmpq	$64, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jne	.LBB6_1
# %bb.3:                                # %for.end72
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	step7, .Lfunc_end6-step7
	.cfi_endproc
                                        # -- End function
	.globl	step8                   # -- Begin function step8
	.p2align	4, 0x90
	.type	step8,@function
step8:                                  # @step8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%r8, -8(%rbp)           # 8-byte Spill
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	jmp	.LBB7_1
.LBB7_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	%edx, (%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movl	%edx, 12(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movl	%edx, 24(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movl	%edx, 28(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %edx
	shrl	$3, %edx
	movl	%esi, %edi
	andl	$7, %edi
	imull	$72, %edx, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-24(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, (%rax)
	imull	$72, %edx, %r8d
	addl	$8, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 4(%rax)
	imull	$72, %edx, %r8d
	addl	$16, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 8(%rax)
	imull	$72, %edx, %r8d
	addl	$24, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 12(%rax)
	imull	$72, %edx, %r8d
	addl	$32, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 16(%rax)
	imull	$72, %edx, %r8d
	addl	$40, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 20(%rax)
	imull	$72, %edx, %r8d
	addl	$48, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 24(%rax)
	imull	$72, %edx, %edx
	addl	$56, %edx
	orl	%edi, %edx
	movl	%edx, %edx
	movl	%edx, %r9d
	movl	(%r10,%r9,4), %edx
	movl	%edx, 28(%rax)
# %bb.3:                                # %for.body56
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, (%rsi,%rdx,4)
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 4(%rsi,%rdx,4)
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 8(%rsi,%rdx,4)
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 12(%rsi,%rdx,4)
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 16(%rsi,%rdx,4)
	movl	20(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 20(%rsi,%rdx,4)
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 24(%rsi,%rdx,4)
	movl	28(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 28(%rsi,%rdx,4)
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	cmpq	$64, %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	jne	.LBB7_1
# %bb.4:                                # %for.end68
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	step8, .Lfunc_end7-step8
	.cfi_endproc
                                        # -- End function
	.globl	step9                   # -- Begin function step9
	.p2align	4, 0x90
	.type	step9,@function
step9:                                  # @step9
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %rdx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%r9, -16(%rbp)          # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jmp	.LBB8_1
.LBB8_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	%edx, (%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movl	%edx, 4(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movl	%edx, 12(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movl	%edx, 16(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movl	%edx, 20(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movl	%edx, 28(%rax)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %edx
	andl	$2147483640, %edx       # imm = 0x7FFFFFF8
	movl	%esi, %edi
	andl	$7, %edi
	movq	-32(%rbp), %r8          # 8-byte Reload
	movslq	(%r8), %r9
	movl	(%rax,%r9,4), %r10d
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%r10d, (%r9,%rsi,4)
	movslq	4(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$72, %ebx
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	8(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$144, %ebx
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	12(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$216, %ebx
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	16(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$288, %ebx              # imm = 0x120
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	20(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$360, %ebx              # imm = 0x168
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	24(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	movl	%esi, %ebx
	andl	$2147483640, %ebx       # imm = 0x7FFFFFF8
	addl	$432, %ebx              # imm = 0x1B0
	orl	%edi, %ebx
	movl	%ebx, %ebx
	movl	%ebx, %r11d
	movl	%r10d, (%r9,%r11,4)
	movslq	28(%r8), %r11
	movl	(%rax,%r11,4), %r10d
	addl	$504, %edx              # imm = 0x1F8
	orl	%edi, %edx
	movl	%edx, %edx
	movl	%edx, %r11d
	movl	%r10d, (%r9,%r11,4)
	addq	$1, %rsi
	cmpq	$64, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jne	.LBB8_1
# %bb.3:                                # %for.end72
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	step9, .Lfunc_end8-step9
	.cfi_endproc
                                        # -- End function
	.globl	step10                  # -- Begin function step10
	.p2align	4, 0x90
	.type	step10,@function
step10:                                 # @step10
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%r9, -8(%rbp)           # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	jmp	.LBB9_1
.LBB9_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	%edx, (%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movl	%edx, 4(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movl	%edx, 12(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movl	%edx, 20(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movl	%edx, 24(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movl	%edx, 28(%rax)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%esi, %edx
	shrl	$3, %edx
	movl	%esi, %edi
	andl	$7, %edi
	imull	$72, %edx, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-24(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, (%rax)
	imull	$72, %edx, %r8d
	addl	$8, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 4(%rax)
	imull	$72, %edx, %r8d
	addl	$16, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 8(%rax)
	imull	$72, %edx, %r8d
	addl	$24, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 12(%rax)
	imull	$72, %edx, %r8d
	addl	$32, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 16(%rax)
	imull	$72, %edx, %r8d
	addl	$40, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 20(%rax)
	imull	$72, %edx, %r8d
	addl	$48, %r8d
	orl	%edi, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	(%r10,%r9,4), %r8d
	movl	%r8d, 24(%rax)
	imull	$72, %edx, %edx
	addl	$56, %edx
	orl	%edi, %edx
	movl	%edx, %edx
	movl	%edx, %r9d
	movl	(%r10,%r9,4), %edx
	movl	%edx, 28(%rax)
# %bb.3:                                # %for.body56
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	%ecx, (%rsi,%rdx,4)
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 4(%rsi,%rdx,4)
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 8(%rsi,%rdx,4)
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 12(%rsi,%rdx,4)
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 16(%rsi,%rdx,4)
	movl	20(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 20(%rsi,%rdx,4)
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 24(%rsi,%rdx,4)
	movl	28(%rax), %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	shlq	$3, %rdx
	movl	%ecx, 28(%rsi,%rdx,4)
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	cmpq	$64, %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	jne	.LBB9_1
# %bb.4:                                # %for.end68
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	step10, .Lfunc_end9-step10
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function step11
.LCPI10_0:
	.long	1060439283              # float 0.707106769
	.text
	.globl	step11
	.p2align	4, 0x90
	.type	step11,@function
step11:                                 # @step11
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	24(%rbp), %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%r9, -8(%rbp)           # 8-byte Spill
	movq	%r8, -16(%rbp)          # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_1
.LBB10_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movss	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	-72(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	%esi, (%rcx)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	movq	-24(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	%esi, (%rdi)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	4(%rdx,%r9,4), %esi
	movl	%esi, 4(%rcx)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	4(%r8,%r9,4), %esi
	movl	%esi, 4(%rdi)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	8(%rdx,%r9,4), %esi
	movl	%esi, 8(%rcx)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	8(%r8,%r9,4), %esi
	movl	%esi, 8(%rdi)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	12(%rdx,%r9,4), %esi
	movl	%esi, 12(%rcx)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	12(%r8,%r9,4), %esi
	movl	%esi, 12(%rdi)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	16(%rdx,%r9,4), %esi
	movl	%esi, 16(%rcx)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	16(%r8,%r9,4), %esi
	movl	%esi, 16(%rdi)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	20(%rdx,%r9,4), %esi
	movl	%esi, 20(%rcx)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	20(%r8,%r9,4), %esi
	movl	%esi, 20(%rdi)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	24(%rdx,%r9,4), %esi
	movl	%esi, 24(%rcx)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	24(%r8,%r9,4), %esi
	movl	%esi, 24(%rdi)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	28(%rdx,%r9,4), %esi
	movl	%esi, 28(%rcx)
	movq	-72(%rbp), %r9          # 8-byte Reload
	shlq	$3, %r9
	movl	28(%r8,%r9,4), %esi
	movl	%esi, 28(%rdi)
	movl	(%rcx), %esi
	movl	(%rdi), %r10d
	movl	%esi, %r11d
	addl	16(%rcx), %r11d
	movl	%r11d, (%rcx)
	movl	%r10d, %r11d
	addl	16(%rdi), %r11d
	movl	%r11d, (%rdi)
	subl	16(%rcx), %esi
	movl	%esi, 16(%rcx)
	subl	16(%rdi), %r10d
	movl	%r10d, 16(%rdi)
	movl	4(%rcx), %esi
	movl	4(%rdi), %r10d
	movl	%esi, %r11d
	addl	20(%rcx), %r11d
	movl	%r11d, 4(%rcx)
	movl	%r10d, %r11d
	addl	20(%rdi), %r11d
	movl	%r11d, 4(%rdi)
	subl	20(%rcx), %esi
	movl	%esi, 20(%rcx)
	subl	20(%rdi), %r10d
	movl	%r10d, 20(%rdi)
	movl	8(%rcx), %esi
	movl	8(%rdi), %r10d
	movl	%esi, %r11d
	addl	24(%rcx), %r11d
	movl	%r11d, 8(%rcx)
	movl	%r10d, %r11d
	addl	24(%rdi), %r11d
	movl	%r11d, 8(%rdi)
	subl	24(%rcx), %esi
	movl	%esi, 24(%rcx)
	subl	24(%rdi), %r10d
	movl	%r10d, 24(%rdi)
	movl	12(%rcx), %esi
	movl	12(%rdi), %r10d
	movl	%esi, %r11d
	addl	28(%rcx), %r11d
	movl	%r11d, 12(%rcx)
	movl	%r10d, %r11d
	addl	28(%rdi), %r11d
	movl	%r11d, 12(%rdi)
	subl	28(%rcx), %esi
	movl	%esi, 28(%rcx)
	subl	28(%rdi), %r10d
	movl	%r10d, 28(%rdi)
	movl	20(%rcx), %esi
	movl	%esi, %r10d
	addl	20(%rdi), %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r10d
	movl	%r10d, 20(%rcx)
	movl	20(%rdi), %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, 20(%rdi)
	movl	24(%rcx), %esi
	movl	24(%rdi), %r10d
	movl	%r10d, 24(%rcx)
	movl	%eax, %r10d
	subl	%esi, %r10d
	movl	%r10d, 24(%rdi)
	movl	28(%rcx), %esi
	movl	28(%rdi), %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r10d
	movl	%r10d, 28(%rcx)
	addl	28(%rdi), %esi
	movl	%eax, %r10d
	subl	%esi, %r10d
	cvtsi2ss	%r10d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, 28(%rdi)
	movl	(%rcx), %esi
	movl	(%rdi), %r10d
	movl	%esi, %r11d
	addl	8(%rcx), %r11d
	movl	%r11d, (%rcx)
	movl	%r10d, %r11d
	addl	8(%rdi), %r11d
	movl	%r11d, (%rdi)
	subl	8(%rcx), %esi
	movl	%esi, 8(%rcx)
	subl	8(%rdi), %r10d
	movl	%r10d, 8(%rdi)
	movl	4(%rcx), %esi
	movl	4(%rdi), %r10d
	movl	%esi, %r11d
	addl	12(%rcx), %r11d
	movl	%r11d, 4(%rcx)
	movl	%r10d, %r11d
	addl	12(%rdi), %r11d
	movl	%r11d, 4(%rdi)
	subl	12(%rcx), %esi
	movl	%esi, 12(%rcx)
	subl	12(%rdi), %r10d
	movl	%r10d, 12(%rdi)
	movl	12(%rcx), %esi
	movl	%r10d, 12(%rcx)
	movl	%eax, %r10d
	subl	%esi, %r10d
	movl	%r10d, 12(%rdi)
	movl	(%rcx), %esi
	movl	(%rdi), %r10d
	movl	%esi, %r11d
	addl	4(%rcx), %r11d
	movl	%r11d, (%rcx)
	movl	%r10d, %r11d
	addl	4(%rdi), %r11d
	movl	%r11d, (%rdi)
	subl	4(%rcx), %esi
	movl	%esi, 4(%rcx)
	subl	4(%rdi), %r10d
	movl	%r10d, 4(%rdi)
	movl	8(%rcx), %esi
	movl	8(%rdi), %r10d
	movl	%esi, %r11d
	addl	12(%rcx), %r11d
	movl	%r11d, 8(%rcx)
	movl	%r10d, %r11d
	addl	12(%rdi), %r11d
	movl	%r11d, 8(%rdi)
	subl	12(%rcx), %esi
	movl	%esi, 12(%rcx)
	subl	12(%rdi), %r10d
	movl	%r10d, 12(%rdi)
	movl	16(%rcx), %esi
	movl	16(%rdi), %r10d
	movl	%esi, %r11d
	addl	24(%rcx), %r11d
	movl	%r11d, 16(%rcx)
	movl	%r10d, %r11d
	addl	24(%rdi), %r11d
	movl	%r11d, 16(%rdi)
	subl	24(%rcx), %esi
	movl	%esi, 24(%rcx)
	subl	24(%rdi), %r10d
	movl	%r10d, 24(%rdi)
	movl	20(%rcx), %esi
	movl	20(%rdi), %r10d
	movl	%esi, %r11d
	addl	28(%rcx), %r11d
	movl	%r11d, 20(%rcx)
	movl	%r10d, %r11d
	addl	28(%rdi), %r11d
	movl	%r11d, 20(%rdi)
	subl	28(%rcx), %esi
	movl	%esi, 28(%rcx)
	subl	28(%rdi), %r10d
	movl	%r10d, 28(%rdi)
	movl	28(%rcx), %esi
	movl	%r10d, 28(%rcx)
	subl	%esi, %eax
	movl	%eax, 28(%rdi)
	movl	16(%rcx), %eax
	movl	16(%rdi), %esi
	movl	%eax, %r10d
	addl	20(%rcx), %r10d
	movl	%r10d, 16(%rcx)
	movl	%esi, %r10d
	addl	20(%rdi), %r10d
	movl	%r10d, 16(%rdi)
	subl	20(%rcx), %eax
	movl	%eax, 20(%rcx)
	subl	20(%rdi), %esi
	movl	%esi, 20(%rdi)
	movl	24(%rcx), %eax
	movl	24(%rdi), %esi
	movl	%eax, %r10d
	addl	28(%rcx), %r10d
	movl	%r10d, 24(%rcx)
	movl	%esi, %r10d
	addl	28(%rdi), %r10d
	movl	%r10d, 24(%rdi)
	subl	28(%rcx), %eax
	movl	%eax, 28(%rcx)
	subl	28(%rdi), %esi
	movl	%esi, 28(%rdi)
# %bb.3:                                # %for.body278
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%esi, (%rcx,%rdi,4)
	movslq	(%rax), %r8
	movq	-8(%rbp), %r9           # 8-byte Reload
	movl	(%r9,%r8,4), %esi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movl	%esi, (%r8,%rdi,4)
	movslq	4(%rax), %r10
	movl	(%rdx,%r10,4), %esi
	addq	$64, %rdi
	movl	%esi, (%rcx,%rdi,4)
	movslq	4(%rax), %rdi
	movl	(%r9,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$64, %rdi
	movl	%esi, (%r8,%rdi,4)
	movslq	8(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$128, %rdi
	movl	%esi, (%rcx,%rdi,4)
	movslq	8(%rax), %rdi
	movl	(%r9,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$128, %rdi
	movl	%esi, (%r8,%rdi,4)
	movslq	12(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$192, %rdi
	movl	%esi, (%rcx,%rdi,4)
	movslq	12(%rax), %rdi
	movl	(%r9,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$192, %rdi
	movl	%esi, (%r8,%rdi,4)
	movslq	16(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$256, %rdi              # imm = 0x100
	movl	%esi, (%rcx,%rdi,4)
	movslq	16(%rax), %rdi
	movl	(%r9,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$256, %rdi              # imm = 0x100
	movl	%esi, (%r8,%rdi,4)
	movslq	20(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$320, %rdi              # imm = 0x140
	movl	%esi, (%rcx,%rdi,4)
	movslq	20(%rax), %rdi
	movl	(%r9,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$320, %rdi              # imm = 0x140
	movl	%esi, (%r8,%rdi,4)
	movslq	24(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$384, %rdi              # imm = 0x180
	movl	%esi, (%rcx,%rdi,4)
	movslq	24(%rax), %rdi
	movl	(%r9,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$384, %rdi              # imm = 0x180
	movl	%esi, (%r8,%rdi,4)
	movslq	28(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$448, %rdi              # imm = 0x1C0
	movl	%esi, (%rcx,%rdi,4)
	movslq	28(%rax), %rdi
	movl	(%r9,%rdi,4), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$448, %rdi              # imm = 0x1C0
	movl	%esi, (%r8,%rdi,4)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	$1, %rdi
	cmpq	$64, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jne	.LBB10_1
# %bb.4:                                # %for.end300
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	step11, .Lfunc_end10-step11
	.cfi_endproc
                                        # -- End function
	.globl	fft1D_512               # -- Begin function fft1D_512
	.p2align	4, 0x90
	.type	fft1D_512,@function
fft1D_512:                              # @fft1D_512
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movq	24(%rbp), %r14
	movq	16(%rbp), %r15
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r15, (%rsp)
	movq	%r14, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	movq	%r11, -96(%rbp)         # 8-byte Spill
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movq	%r14, -112(%rbp)        # 8-byte Spill
	movq	%r15, -120(%rbp)        # 8-byte Spill
	callq	step1
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step2
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step3
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step4
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step5
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step6
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step7
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step8
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step9
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step10
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	step11
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	fft1D_512, .Lfunc_end11-fft1D_512
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$17960, %rsp            # imm = 0x4628
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -17816(%rbp)      # 8-byte Spill
.LBB12_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-17816(%rbp), %rax      # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -2096(%rbp,%rax,4)
	movl	$0, -4144(%rbp,%rax,4)
	movq	%rax, %rdx
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2092(%rbp,%rax,4)
	movl	$0, -4140(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2088(%rbp,%rax,4)
	movl	$0, -4136(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2084(%rbp,%rax,4)
	movl	$0, -4132(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2080(%rbp,%rax,4)
	movl	$0, -4128(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2076(%rbp,%rax,4)
	movl	$0, -4124(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2072(%rbp,%rax,4)
	movl	$0, -4120(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2068(%rbp,%rax,4)
	movl	$0, -4116(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2064(%rbp,%rax,4)
	movl	$0, -4112(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2060(%rbp,%rax,4)
	movl	$0, -4108(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2056(%rbp,%rax,4)
	movl	$0, -4104(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2052(%rbp,%rax,4)
	movl	$0, -4100(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2048(%rbp,%rax,4)
	movl	$0, -4096(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2044(%rbp,%rax,4)
	movl	$0, -4092(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2040(%rbp,%rax,4)
	movl	$0, -4088(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2036(%rbp,%rax,4)
	movl	$0, -4084(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2032(%rbp,%rax,4)
	movl	$0, -4080(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2028(%rbp,%rax,4)
	movl	$0, -4076(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2024(%rbp,%rax,4)
	movl	$0, -4072(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2020(%rbp,%rax,4)
	movl	$0, -4068(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2016(%rbp,%rax,4)
	movl	$0, -4064(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2012(%rbp,%rax,4)
	movl	$0, -4060(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2008(%rbp,%rax,4)
	movl	$0, -4056(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2004(%rbp,%rax,4)
	movl	$0, -4052(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -2000(%rbp,%rax,4)
	movl	$0, -4048(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1996(%rbp,%rax,4)
	movl	$0, -4044(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1992(%rbp,%rax,4)
	movl	$0, -4040(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1988(%rbp,%rax,4)
	movl	$0, -4036(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1984(%rbp,%rax,4)
	movl	$0, -4032(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1980(%rbp,%rax,4)
	movl	$0, -4028(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1976(%rbp,%rax,4)
	movl	$0, -4024(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1972(%rbp,%rax,4)
	movl	$0, -4020(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1968(%rbp,%rax,4)
	movl	$0, -4016(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1964(%rbp,%rax,4)
	movl	$0, -4012(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1960(%rbp,%rax,4)
	movl	$0, -4008(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1956(%rbp,%rax,4)
	movl	$0, -4004(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1952(%rbp,%rax,4)
	movl	$0, -4000(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1948(%rbp,%rax,4)
	movl	$0, -3996(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1944(%rbp,%rax,4)
	movl	$0, -3992(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1940(%rbp,%rax,4)
	movl	$0, -3988(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1936(%rbp,%rax,4)
	movl	$0, -3984(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1932(%rbp,%rax,4)
	movl	$0, -3980(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1928(%rbp,%rax,4)
	movl	$0, -3976(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1924(%rbp,%rax,4)
	movl	$0, -3972(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1920(%rbp,%rax,4)
	movl	$0, -3968(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1916(%rbp,%rax,4)
	movl	$0, -3964(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1912(%rbp,%rax,4)
	movl	$0, -3960(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1908(%rbp,%rax,4)
	movl	$0, -3956(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1904(%rbp,%rax,4)
	movl	$0, -3952(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1900(%rbp,%rax,4)
	movl	$0, -3948(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1896(%rbp,%rax,4)
	movl	$0, -3944(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1892(%rbp,%rax,4)
	movl	$0, -3940(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1888(%rbp,%rax,4)
	movl	$0, -3936(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1884(%rbp,%rax,4)
	movl	$0, -3932(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1880(%rbp,%rax,4)
	movl	$0, -3928(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1876(%rbp,%rax,4)
	movl	$0, -3924(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1872(%rbp,%rax,4)
	movl	$0, -3920(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1868(%rbp,%rax,4)
	movl	$0, -3916(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1864(%rbp,%rax,4)
	movl	$0, -3912(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1860(%rbp,%rax,4)
	movl	$0, -3908(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1856(%rbp,%rax,4)
	movl	$0, -3904(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1852(%rbp,%rax,4)
	movl	$0, -3900(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1848(%rbp,%rax,4)
	movl	$0, -3896(%rbp,%rax,4)
	addq	$1, %rdx
	movl	%edx, %ecx
	movl	%ecx, -1844(%rbp,%rax,4)
	movl	$0, -3892(%rbp,%rax,4)
	addq	$1, %rdx
	cmpq	$512, %rdx              # imm = 0x200
	movq	%rdx, -17816(%rbp)      # 8-byte Spill
	jne	.LBB12_1
# %bb.2:                                # %for.end
	leaq	-11312(%rbp), %rax
	leaq	-9520(%rbp), %rcx
	leaq	-7728(%rbp), %rdx
	leaq	-5936(%rbp), %rsi
	leaq	-17808(%rbp), %rdi
	leaq	-17776(%rbp), %r8
	leaq	-15472(%rbp), %r9
	leaq	-15440(%rbp), %r10
	leaq	-15408(%rbp), %r11
	leaq	-13360(%rbp), %rbx
	leaq	-4144(%rbp), %r14
	leaq	-2096(%rbp), %r15
	movabsq	$.L__const.main.cos_512, %r12
	movabsq	$.L__const.main.cos_64, %r13
	movq	%rax, -17824(%rbp)      # 8-byte Spill
	movabsq	$.L__const.main.sin_512, %rax
	movq	%rax, -17832(%rbp)      # 8-byte Spill
	movabsq	$.L__const.main.sin_64, %rax
	movq	%rsi, -17840(%rbp)      # 8-byte Spill
	movq	%rdi, -17848(%rbp)      # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movl	$1792, %eax             # imm = 0x700
	movq	%rdx, -17856(%rbp)      # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -17864(%rbp)      # 8-byte Spill
	movq	%r8, -17872(%rbp)       # 8-byte Spill
	movq	%r9, -17880(%rbp)       # 8-byte Spill
	movq	%r10, -17888(%rbp)      # 8-byte Spill
	movq	%r11, -17896(%rbp)      # 8-byte Spill
	movq	%rbx, -17904(%rbp)      # 8-byte Spill
	movq	%r14, -17912(%rbp)      # 8-byte Spill
	movq	%r15, -17920(%rbp)      # 8-byte Spill
	movq	%r12, -17928(%rbp)      # 8-byte Spill
	movq	%r13, -17936(%rbp)      # 8-byte Spill
	movq	%rax, -17944(%rbp)      # 8-byte Spill
	callq	memcpy
	movq	-17856(%rbp), %rax      # 8-byte Reload
	movq	%rax, %rdi
	movq	-17832(%rbp), %rsi      # 8-byte Reload
	movq	-17944(%rbp), %rdx      # 8-byte Reload
	callq	memcpy
	movq	-17864(%rbp), %rax      # 8-byte Reload
	movq	%rax, %rdi
	movq	-17936(%rbp), %rsi      # 8-byte Reload
	movq	-17944(%rbp), %rdx      # 8-byte Reload
	callq	memcpy
	movq	-17824(%rbp), %rax      # 8-byte Reload
	movq	%rax, %rdi
	movq	-17928(%rbp), %rsi      # 8-byte Reload
	movq	-17944(%rbp), %rdx      # 8-byte Reload
	callq	memcpy
	movq	.L__const.main.reversed, %rax
	movq	%rax, -17808(%rbp)
	movq	.L__const.main.reversed+8, %rax
	movq	%rax, -17800(%rbp)
	movq	.L__const.main.reversed+16, %rax
	movq	%rax, -17792(%rbp)
	movq	.L__const.main.reversed+24, %rax
	movq	%rax, -17784(%rbp)
	movq	-17920(%rbp), %rdi      # 8-byte Reload
	movq	-17912(%rbp), %rsi      # 8-byte Reload
	movq	-17904(%rbp), %rdx      # 8-byte Reload
	movq	-17896(%rbp), %rcx      # 8-byte Reload
	movq	-17888(%rbp), %r8       # 8-byte Reload
	movq	-17880(%rbp), %r9       # 8-byte Reload
	movq	-17872(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-17848(%rbp), %r10      # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-17840(%rbp), %r11      # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-17856(%rbp), %rbx      # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-17864(%rbp), %r14      # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-17824(%rbp), %r15      # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	fft1D_512
# %bb.3:                                # %for.body16
	movl	-2096(%rbp), %esi
	movl	-4144(%rbp), %edx
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	-2092(%rbp), %esi
	movl	-4140(%rbp), %edx
	movabsq	$.L.str, %rdi
	movl	%eax, -17948(%rbp)      # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -17952(%rbp)      # 4-byte Spill
	movl	%ecx, %eax
	addq	$17960, %rsp            # imm = 0x4628
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	main, .Lfunc_end12-main
	.cfi_endproc
                                        # -- End function
	.type	.L__const.main.sin_64,@object # @__const.main.sin_64
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.main.sin_64:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	3200511751              # float -0.382683009
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	3184049443              # float -0.0980169996
	.long	3203488499              # float -0.471397012
	.long	3197411388              # float -0.290284991
	.long	3206702996              # float -0.634392977
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	3192374700              # float -0.195089996
	.long	3210009400              # float -0.831470012
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	3211559782              # float -0.923879981
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	3197411388              # float -0.290284991
	.long	3212756082              # float -0.995185017
	.long	3209028604              # float -0.773010015
	.long	3210855827              # float -0.881920993
	.long	3212836864              # float -1
	.long	3207922935              # float -0.707107007
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	3203488499              # float -0.471397012
	.long	3206702996              # float -0.634392977
	.long	3212756082              # float -0.995185017
	.long	1049927740              # float 0.290284991
	.long	3207922935              # float -0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	3205380566              # float -0.555570006
	.long	3192374700              # float -0.195089996
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	3200511751              # float -0.382683009
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	3206702996              # float -0.634392977
	.long	1049927740              # float 0.290284991
	.long	3210855827              # float -0.881920993
	.long	1065272434              # float 0.995185017
	.long	2147483648              # float -0
	.long	3212836864              # float -1
	.long	1065353216              # float 1
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	1053028103              # float 0.382683009
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	3209028604              # float -0.773010015
	.long	1064630789              # float 0.956939995
	.long	3203488499              # float -0.471397012
	.long	1036565795              # float 0.0980169996
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	3210009400              # float -0.831470012
	.long	1065030842              # float 0.980785012
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	1064076134              # float 0.923879981
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	3210855827              # float -0.881920993
	.long	1061544956              # float 0.773010015
	.long	1036565795              # float 0.0980169996
	.long	3212114437              # float -0.956939995
	.long	1065353216              # float 1
	.long	3207922935              # float -0.707107007
	.long	3207922935              # float -0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	1064076134              # float 0.923879981
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	3212114437              # float -0.956939995
	.long	3184049443              # float -0.0980169996
	.long	1059219348              # float 0.634392977
	.long	3203488499              # float -0.471397012
	.long	1060439287              # float 0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	3212514490              # float -0.980785012
	.long	3205380566              # float -0.555570006
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	1053028103              # float 0.382683009
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	3212756082              # float -0.995185017
	.long	3210855827              # float -0.881920993
	.long	1064630789              # float 0.956939995
	.long	1061544956              # float 0.773010015
	.long	0                       # float 0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	3212836864              # float -1
	.long	3212836864              # float -1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	3200511751              # float -0.382683009
	.long	1044891052              # float 0.195089996
	.long	1057896918              # float 0.555570006
	.long	3212756082              # float -0.995185017
	.long	3210855827              # float -0.881920993
	.long	1064630789              # float 0.956939995
	.long	1061544956              # float 0.773010015
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	3212514490              # float -0.980785012
	.long	3205380566              # float -0.555570006
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	3211559782              # float -0.923879981
	.long	1057896918              # float 0.555570006
	.long	1065030842              # float 0.980785012
	.long	3212114437              # float -0.956939995
	.long	3184049443              # float -0.0980169996
	.long	1059219348              # float 0.634392977
	.long	3203488499              # float -0.471397012
	.long	3212836864              # float -1
	.long	1060439287              # float 0.707107007
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	3211559782              # float -0.923879981
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	3210855827              # float -0.881920993
	.long	1061544956              # float 0.773010015
	.long	1036565795              # float 0.0980169996
	.long	3212114437              # float -0.956939995
	.long	3207922935              # float -0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	3210009400              # float -0.831470012
	.long	1065030842              # float 0.980785012
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	3200511751              # float -0.382683009
	.long	1065030842              # float 0.980785012
	.long	3210009400              # float -0.831470012
	.long	3209028604              # float -0.773010015
	.long	1064630789              # float 0.956939995
	.long	3203488499              # float -0.471397012
	.long	1036565795              # float 0.0980169996
	.long	2147483648              # float -0
	.long	1065353216              # float 1
	.long	3212836864              # float -1
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	1053028103              # float 0.382683009
	.long	1065030842              # float 0.980785012
	.long	3210009400              # float -0.831470012
	.long	3206702996              # float -0.634392977
	.long	1049927740              # float 0.290284991
	.long	3210855827              # float -0.881920993
	.long	1065272434              # float 0.995185017
	.long	1060439287              # float 0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	3205380566              # float -0.555570006
	.long	3192374700              # float -0.195089996
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	1064076134              # float 0.923879981
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	3203488499              # float -0.471397012
	.long	3206702996              # float -0.634392977
	.long	3212756082              # float -0.995185017
	.long	1049927740              # float 0.290284991
	.long	1065353216              # float 1
	.long	1060439287              # float 0.707107007
	.long	1060439287              # float 0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	1057896918              # float 0.555570006
	.long	1065030842              # float 0.980785012
	.long	3197411388              # float -0.290284991
	.long	3212756082              # float -0.995185017
	.long	3209028604              # float -0.773010015
	.long	3210855827              # float -0.881920993
	.long	1060439287              # float 0.707107007
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	3192374700              # float -0.195089996
	.long	3210009400              # float -0.831470012
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	1053028103              # float 0.382683009
	.long	1044891052              # float 0.195089996
	.long	1057896918              # float 0.555570006
	.long	3184049443              # float -0.0980169996
	.long	3203488499              # float -0.471397012
	.long	3197411388              # float -0.290284991
	.long	3206702996              # float -0.634392977
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # float 0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	3200511751              # float -0.382683009
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	1036565795              # float 0.0980169996
	.long	1056004851              # float 0.471397012
	.long	1049927740              # float 0.290284991
	.long	1059219348              # float 0.634392977
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	1044891052              # float 0.195089996
	.long	1062525752              # float 0.831470012
	.long	1057896918              # float 0.555570006
	.long	1065030842              # float 0.980785012
	.long	3211559782              # float -0.923879981
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	1049927740              # float 0.290284991
	.long	1065272434              # float 0.995185017
	.long	1061544956              # float 0.773010015
	.long	1063372179              # float 0.881920993
	.long	3212836864              # float -1
	.long	3207922935              # float -0.707107007
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	1056004851              # float 0.471397012
	.long	1059219348              # float 0.634392977
	.long	1065272434              # float 0.995185017
	.long	3197411388              # float -0.290284991
	.long	3207922935              # float -0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	1057896918              # float 0.555570006
	.long	1044891052              # float 0.195089996
	.long	1065030842              # float 0.980785012
	.long	3210009400              # float -0.831470012
	.long	3200511751              # float -0.382683009
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	1059219348              # float 0.634392977
	.long	3197411388              # float -0.290284991
	.long	1063372179              # float 0.881920993
	.long	3212756082              # float -0.995185017
	.long	2147483648              # float -0
	.long	3212836864              # float -1
	.long	1065353216              # float 1
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	1061544956              # float 0.773010015
	.long	3212114437              # float -0.956939995
	.long	1056004851              # float 0.471397012
	.long	3184049443              # float -0.0980169996
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	1062525752              # float 0.831470012
	.long	3212514490              # float -0.980785012
	.long	1044891052              # float 0.195089996
	.long	1057896918              # float 0.555570006
	.long	1064076134              # float 0.923879981
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	1063372179              # float 0.881920993
	.long	3209028604              # float -0.773010015
	.long	3184049443              # float -0.0980169996
	.long	1064630789              # float 0.956939995
	.long	1065353216              # float 1
	.long	3207922935              # float -0.707107007
	.long	3207922935              # float -0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	1064076134              # float 0.923879981
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	1064630789              # float 0.956939995
	.long	1036565795              # float 0.0980169996
	.long	3206702996              # float -0.634392977
	.long	1056004851              # float 0.471397012
	.long	1060439287              # float 0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	1065030842              # float 0.980785012
	.long	1057896918              # float 0.555570006
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	1053028103              # float 0.382683009
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	1065272434              # float 0.995185017
	.long	1063372179              # float 0.881920993
	.long	3212114437              # float -0.956939995
	.long	3209028604              # float -0.773010015
	.long	0                       # float 0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	3212836864              # float -1
	.long	3212836864              # float -1
	.long	3200511751              # float -0.382683009
	.long	1044891052              # float 0.195089996
	.long	1057896918              # float 0.555570006
	.long	1065272434              # float 0.995185017
	.long	1063372179              # float 0.881920993
	.long	3212114437              # float -0.956939995
	.long	3209028604              # float -0.773010015
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	1065030842              # float 0.980785012
	.long	1057896918              # float 0.555570006
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	3211559782              # float -0.923879981
	.long	1057896918              # float 0.555570006
	.long	1065030842              # float 0.980785012
	.long	1064630789              # float 0.956939995
	.long	1036565795              # float 0.0980169996
	.long	3206702996              # float -0.634392977
	.long	1056004851              # float 0.471397012
	.long	3212836864              # float -1
	.long	1060439287              # float 0.707107007
	.long	1060439287              # float 0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	3211559782              # float -0.923879981
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	1063372179              # float 0.881920993
	.long	3209028604              # float -0.773010015
	.long	3184049443              # float -0.0980169996
	.long	1064630789              # float 0.956939995
	.long	3207922935              # float -0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	1062525752              # float 0.831470012
	.long	3212514490              # float -0.980785012
	.long	1044891052              # float 0.195089996
	.long	1057896918              # float 0.555570006
	.long	3200511751              # float -0.382683009
	.long	1065030842              # float 0.980785012
	.long	3210009400              # float -0.831470012
	.long	1061544956              # float 0.773010015
	.long	3212114437              # float -0.956939995
	.long	1056004851              # float 0.471397012
	.long	3184049443              # float -0.0980169996
	.long	2147483648              # float -0
	.long	1065353216              # float 1
	.long	3212836864              # float -1
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	1065030842              # float 0.980785012
	.long	3210009400              # float -0.831470012
	.long	1059219348              # float 0.634392977
	.long	3197411388              # float -0.290284991
	.long	1063372179              # float 0.881920993
	.long	3212756082              # float -0.995185017
	.long	1060439287              # float 0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	1057896918              # float 0.555570006
	.long	1044891052              # float 0.195089996
	.long	1065030842              # float 0.980785012
	.long	3210009400              # float -0.831470012
	.long	1064076134              # float 0.923879981
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	1056004851              # float 0.471397012
	.long	1059219348              # float 0.634392977
	.long	1065272434              # float 0.995185017
	.long	3197411388              # float -0.290284991
	.long	1065353216              # float 1
	.long	1060439287              # float 0.707107007
	.long	1060439287              # float 0.707107007
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	1057896918              # float 0.555570006
	.long	1065030842              # float 0.980785012
	.long	1049927740              # float 0.290284991
	.long	1065272434              # float 0.995185017
	.long	1061544956              # float 0.773010015
	.long	1063372179              # float 0.881920993
	.long	1060439287              # float 0.707107007
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	1044891052              # float 0.195089996
	.long	1062525752              # float 0.831470012
	.long	1057896918              # float 0.555570006
	.long	1065030842              # float 0.980785012
	.long	1053028103              # float 0.382683009
	.long	1044891052              # float 0.195089996
	.long	1057896918              # float 0.555570006
	.long	1036565795              # float 0.0980169996
	.long	1056004851              # float 0.471397012
	.long	1049927740              # float 0.290284991
	.long	1059219348              # float 0.634392977
	.size	.L__const.main.sin_64, 1792

	.type	.L__const.main.sin_512,@object # @__const.main.sin_512
	.p2align	4
.L__const.main.sin_512:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	3175676807              # float -0.0490680002
	.long	3167291957              # float -0.0245409999
	.long	3180767551              # float -0.0735649988
	.long	3158904960              # float -0.0122720003
	.long	3178965947              # float -0.0613210015
	.long	3172385520              # float -0.0368070006
	.long	3182409302              # float -0.085796997
	.long	3184049443              # float -0.0980169996
	.long	3175676807              # float -0.0490680002
	.long	3189129316              # float -0.146730006
	.long	3167291957              # float -0.0245409999
	.long	3187323550              # float -0.122410998
	.long	3180767551              # float -0.0735649988
	.long	3190755498              # float -0.170962006
	.long	3189129316              # float -0.146730006
	.long	3180767551              # float -0.0735649988
	.long	3193986051              # float -0.219100997
	.long	3172385520              # float -0.0368070006
	.long	3191566038              # float -0.183039993
	.long	3185687570              # float -0.110221997
	.long	3196222924              # float -0.254866004
	.long	3192374700              # float -0.195089996
	.long	3184049443              # float -0.0980169996
	.long	3197411388              # float -0.290284991
	.long	3175676807              # float -0.0490680002
	.long	3195588544              # float -0.242980003
	.long	3189129316              # float -0.146730006
	.long	3198975193              # float -0.336890012
	.long	3195588544              # float -0.242980003
	.long	3187323550              # float -0.122410998
	.long	3199747112              # float -0.359894991
	.long	3178965947              # float -0.0613210015
	.long	3197804680              # float -0.302006006
	.long	3191566038              # float -0.183039993
	.long	3201644112              # float -0.416429996
	.long	3197411388              # float -0.290284991
	.long	3189129316              # float -0.146730006
	.long	3202017405              # float -0.427554995
	.long	3180767551              # float -0.0735649988
	.long	3199747112              # float -0.359894991
	.long	3193986051              # float -0.219100997
	.long	3204209952              # float -0.492897987
	.long	3198975193              # float -0.336890012
	.long	3190755498              # float -0.170962006
	.long	3204209952              # float -0.492897987
	.long	3182409302              # float -0.085796997
	.long	3201644112              # float -0.416429996
	.long	3196222924              # float -0.254866004
	.long	3205551056              # float -0.565732002
	.long	3200511751              # float -0.382683009
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	3184049443              # float -0.0980169996
	.long	3203488499              # float -0.471397012
	.long	3197411388              # float -0.290284991
	.long	3206702996              # float -0.634392977
	.long	3202017405              # float -0.427554995
	.long	3193986051              # float -0.219100997
	.long	3206381528              # float -0.61523199
	.long	3185687570              # float -0.110221997
	.long	3204860808              # float -0.524590015
	.long	3198586632              # float -0.325309992
	.long	3207776453              # float -0.698375999
	.long	3203488499              # float -0.471397012
	.long	3195588544              # float -0.242980003
	.long	3207326538              # float -0.671558976
	.long	3187323550              # float -0.122410998
	.long	3205720103              # float -0.575807989
	.long	3199747112              # float -0.359894991
	.long	3208763507              # float -0.757209002
	.long	3204684865              # float -0.514102995
	.long	3196620443              # float -0.266712993
	.long	3208210496              # float -0.724246978
	.long	3188314010              # float -0.134581
	.long	3206543042              # float -0.624858975
	.long	3200891218              # float -0.393992007
	.long	3209656860              # float -0.810456991
	.long	3205380566              # float -0.555570006
	.long	3197411388              # float -0.290284991
	.long	3209028604              # float -0.773010015
	.long	3189129316              # float -0.146730006
	.long	3207326538              # float -0.671558976
	.long	3202017405              # float -0.427554995
	.long	3210449953              # float -0.857729017
	.long	3206053819              # float -0.595699012
	.long	3198196461              # float -0.31368199
	.long	3209776448              # float -0.817584991
	.long	3189943212              # float -0.158858001
	.long	3208067622              # float -0.715731025
	.long	3203124165              # float -0.460539013
	.long	3211136896              # float -0.898674011
	.long	3206702996              # float -0.634392977
	.long	3198975193              # float -0.336890012
	.long	3210449953              # float -0.857729017
	.long	3190755498              # float -0.170962006
	.long	3208763507              # float -0.757209002
	.long	3204209952              # float -0.492897987
	.long	3211712673              # float -0.932992994
	.long	3207326538              # float -0.671558976
	.long	3199747112              # float -0.359894991
	.long	3211045460              # float -0.893224001
	.long	3191566038              # float -0.183039993
	.long	3209411577              # float -0.795836985
	.long	3204860808              # float -0.524590015
	.long	3212173006              # float -0.960430979
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	3192374700              # float -0.195089996
	.long	3210009400              # float -0.831470012
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	3208490743              # float -0.740951001
	.long	3201268672              # float -0.405241013
	.long	3211990084              # float -0.949527978
	.long	3193181416              # float -0.207111001
	.long	3210554710              # float -0.863973021
	.long	3205887708              # float -0.585798025
	.long	3212734640              # float -0.993906974
	.long	3209028604              # float -0.773010015
	.long	3202017405              # float -0.427554995
	.long	3212334068              # float -0.970031023
	.long	3193986051              # float -0.219100997
	.long	3211045460              # float -0.893224001
	.long	3206381528              # float -0.61523199
	.long	3212831814              # float -0.999698996
	.long	3209535242              # float -0.803207993
	.long	3202757482              # float -0.449611008
	.long	3212589870              # float -0.98527801
	.long	3194788472              # float -0.231058002
	.long	3211479822              # float -0.919113993
	.long	3206861357              # float -0.643832027
	.long	3212805289              # float -0.998117983
	.long	3210009400              # float -0.831470012
	.long	3203488499              # float -0.471397012
	.long	3212756082              # float -0.995185017
	.long	3195588544              # float -0.242980003
	.long	3211856135              # float -0.941543996
	.long	3207326538              # float -0.671558976
	.long	3212655284              # float -0.989176988
	.long	3210449953              # float -0.857729017
	.long	3204209952              # float -0.492897987
	.long	3212831814              # float -0.999698996
	.long	3196222924              # float -0.254866004
	.long	3212173006              # float -0.960430979
	.long	3207776453              # float -0.698375999
	.long	3212382873              # float -0.972940027
	.long	3210855827              # float -0.881920993
	.long	3204684865              # float -0.514102995
	.long	3212816647              # float -0.998794972
	.long	3196620443              # float -0.266712993
	.long	3212429211              # float -0.975701987
	.long	3208210496              # float -0.724246978
	.long	3211990084              # float -0.949527978
	.long	3211226067              # float -0.903989017
	.long	3205035425              # float -0.534998
	.long	3212710699              # float -0.992479979
	.long	3197016620              # float -0.278519988
	.long	3212623810              # float -0.987300992
	.long	3208628064              # float -0.749135971
	.long	3211479822              # float -0.919113993
	.long	3211559782              # float -0.923879981
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	3197411388              # float -0.290284991
	.long	3212756082              # float -0.995185017
	.long	3209028604              # float -0.773010015
	.long	3210855827              # float -0.881920993
	.long	3211856135              # float -0.941543996
	.long	3205720103              # float -0.575807989
	.long	3212229126              # float -0.963775992
	.long	3197804680              # float -0.302006006
	.long	3212825489              # float -0.999321997
	.long	3209411577              # float -0.795836985
	.long	3210122730              # float -0.838225007
	.long	3212114437              # float -0.956939995
	.long	3206053819              # float -0.595699012
	.long	3211856135              # float -0.941543996
	.long	3198196461              # float -0.31368199
	.long	3212831814              # float -0.999698996
	.long	3209776448              # float -0.817584991
	.long	3209285899              # float -0.788345992
	.long	3212334068              # float -0.970031023
	.long	3206381528              # float -0.61523199
	.long	3211397547              # float -0.914210021
	.long	3198586632              # float -0.325309992
	.long	3212775006              # float -0.996312975
	.long	3210122730              # float -0.838225007
	.long	3208351542              # float -0.732653975
	.long	3212514490              # float -0.980785012
	.long	3206702996              # float -0.634392977
	.long	3210855827              # float -0.881920993
	.long	3198975193              # float -0.336890012
	.long	3212655284              # float -0.989176988
	.long	3210449953              # float -0.857729017
	.long	3207326538              # float -0.671558976
	.long	3212655284              # float -0.989176988
	.long	3207018073              # float -0.653173029
	.long	3210233946              # float -0.844853997
	.long	3199362042              # float -0.348419011
	.long	3212473084              # float -0.978317022
	.long	3210757664              # float -0.876070023
	.long	3206218437              # float -0.605511009
	.long	3212756082              # float -0.995185017
	.long	3207326538              # float -0.671558976
	.long	3209535242              # float -0.803207993
	.long	3199747112              # float -0.359894991
	.long	3212229126              # float -0.963775992
	.long	3211045460              # float -0.893224001
	.long	3205035425              # float -0.534998
	.long	3212816647              # float -0.998794972
	.long	3207628226              # float -0.689540982
	.long	3208763507              # float -0.757209002
	.long	3200130371              # float -0.371316999
	.long	3211924301              # float -0.945607006
	.long	3211312956              # float -0.909168005
	.long	3203124165              # float -0.460539013
	.long	3212836864              # float -1
	.long	3207922935              # float -0.707107007
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	3212816647              # float -0.998794972
	.long	3208210496              # float -0.724246978
	.long	3207018073              # float -0.653173029
	.long	3200891218              # float -0.393992007
	.long	3211136896              # float -0.898674011
	.long	3211785587              # float -0.937339007
	.long	3197804680              # float -0.302006006
	.long	3212756082              # float -0.995185017
	.long	3208490743              # float -0.740951001
	.long	3206053819              # float -0.595699012
	.long	3201268672              # float -0.405241013
	.long	3210657286              # float -0.870087027
	.long	3211990084              # float -0.949527978
	.long	3193986051              # float -0.219100997
	.long	3212655284              # float -0.989176988
	.long	3208763507              # float -0.757209002
	.long	3205035425              # float -0.534998
	.long	3201644112              # float -0.416429996
	.long	3210122730              # float -0.838225007
	.long	3212173006              # float -0.960430979
	.long	3188314010              # float -0.134581
	.long	3212514490              # float -0.980785012
	.long	3209028604              # float -0.773010015
	.long	3203488499              # float -0.471397012
	.long	3202017405              # float -0.427554995
	.long	3209535242              # float -0.803207993
	.long	3212334068              # float -0.970031023
	.long	3175676807              # float -0.0490680002
	.long	3212334068              # float -0.970031023
	.long	3209285899              # float -0.788345992
	.long	3201268672              # float -0.405241013
	.long	3202388551              # float -0.438616008
	.long	3208897020              # float -0.765166998
	.long	3212473084              # float -0.978317022
	.long	1024901872              # float 0.0368070006
	.long	3212114437              # float -0.956939995
	.long	3209535242              # float -0.803207993
	.long	3198975193              # float -0.336890012
	.long	3202757482              # float -0.449611008
	.long	3208210496              # float -0.724246978
	.long	3212589870              # float -0.98527801
	.long	1039839902              # float 0.122410998
	.long	3211856135              # float -0.941543996
	.long	3209776448              # float -0.817584991
	.long	3196620443              # float -0.266712993
	.long	3203124165              # float -0.460539013
	.long	3207478238              # float -0.680601001
	.long	3212684242              # float -0.990903019
	.long	1045697768              # float 0.207111001
	.long	3211559782              # float -0.923879981
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	3203488499              # float -0.471397012
	.long	3206702996              # float -0.634392977
	.long	3212756082              # float -0.995185017
	.long	1049927740              # float 0.290284991
	.long	3211226067              # float -0.903989017
	.long	3210233946              # float -0.844853997
	.long	3187323550              # float -0.122410998
	.long	3203850450              # float -0.482183993
	.long	3205887708              # float -0.585798025
	.long	3212805289              # float -0.998117983
	.long	1052646723              # float 0.371316999
	.long	3210855827              # float -0.881920993
	.long	3210449953              # float -0.857729017
	.long	3175676807              # float -0.0490680002
	.long	3204209952              # float -0.492897987
	.long	3205035425              # float -0.534998
	.long	3212831814              # float -0.999698996
	.long	1055273834              # float 0.449611008
	.long	3210449953              # float -0.857729017
	.long	3210657286              # float -0.870087027
	.long	1019808309              # float 0.0245409999
	.long	3204507614              # float -0.503538013
	.long	3203850450              # float -0.482183993
	.long	3212835606              # float -0.999925017
	.long	1057377160              # float 0.524590015
	.long	3210009400              # float -0.831470012
	.long	3210855827              # float -0.881920993
	.long	1036565795              # float 0.0980169996
	.long	3204684865              # float -0.514102995
	.long	3202017405              # float -0.427554995
	.long	3212816647              # float -0.998794972
	.long	1058570171              # float 0.595699012
	.long	3209535242              # float -0.803207993
	.long	3211045460              # float -0.893224001
	.long	1043271850              # float 0.170962006
	.long	3204860808              # float -0.524590015
	.long	3200130371              # float -0.371316999
	.long	3212775006              # float -0.996312975
	.long	1059689496              # float 0.662415981
	.long	3209028604              # float -0.773010015
	.long	3211226067              # float -0.903989017
	.long	1048104896              # float 0.242980003
	.long	3205035425              # float -0.534998
	.long	3198196461              # float -0.31368199
	.long	3212710699              # float -0.992479979
	.long	1060726848              # float 0.724246978
	.long	3208490743              # float -0.740951001
	.long	3211397547              # float -0.914210021
	.long	1050712813              # float 0.31368199
	.long	3205208683              # float -0.545324981
	.long	3196222924              # float -0.254866004
	.long	3212623810              # float -0.987300992
	.long	1061674593              # float 0.780736982
	.long	3207922935              # float -0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	3205380566              # float -0.555570006
	.long	3192374700              # float -0.195089996
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	3207326538              # float -0.671558976
	.long	3211712673              # float -0.932992994
	.long	1055273834              # float 0.449611008
	.long	3205551056              # float -0.565732002
	.long	3188314010              # float -0.134581
	.long	3212382873              # float -0.972940027
	.long	1063274016              # float 0.876070023
	.long	3206702996              # float -0.634392977
	.long	3211856135              # float -0.941543996
	.long	1057201217              # float 0.514102995
	.long	3205720103              # float -0.575807989
	.long	3180767551              # float -0.0735649988
	.long	3212229126              # float -0.963775992
	.long	1063913899              # float 0.914210021
	.long	3206053819              # float -0.595699012
	.long	3211990084              # float -0.949527978
	.long	1058236455              # float 0.575807989
	.long	3205887708              # float -0.585798025
	.long	3158904960              # float -0.0122720003
	.long	3212053469              # float -0.953306019
	.long	1064440653              # float 0.945607006
	.long	3205380566              # float -0.555570006
	.long	3212114437              # float -0.956939995
	.long	1059219348              # float 0.634392977
	.long	3206053819              # float -0.595699012
	.long	1028193159              # float 0.0490680002
	.long	3211856135              # float -0.941543996
	.long	1064850420              # float 0.970031023
	.long	3204684865              # float -0.514102995
	.long	3212229126              # float -0.963775992
	.long	1060144578              # float 0.689540982
	.long	3206218437              # float -0.605511009
	.long	1038203922              # float 0.110221997
	.long	3211637394              # float -0.928506016
	.long	1065140162              # float 0.987300992
	.long	3203488499              # float -0.471397012
	.long	3212334068              # float -0.970031023
	.long	1061007095              # float 0.740951001
	.long	3206381528              # float -0.61523199
	.long	1043271850              # float 0.170962006
	.long	3211397547              # float -0.914210021
	.long	1065307750              # float 0.997290015
	.long	3202017405              # float -0.427554995
	.long	3212429211              # float -0.975701987
	.long	1061802251              # float 0.788345992
	.long	3206543042              # float -0.624858975
	.long	1047304824              # float 0.231058002
	.long	3211136896              # float -0.898674011
	.long	1065351958              # float 0.999925017
	.long	3200511751              # float -0.382683009
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	3206702996              # float -0.634392977
	.long	1049927740              # float 0.290284991
	.long	3210855827              # float -0.881920993
	.long	1065272434              # float 0.995185017
	.long	3198975193              # float -0.336890012
	.long	3212589870              # float -0.98527801
	.long	1063173638              # float 0.870087027
	.long	3206861357              # float -0.643832027
	.long	1051878394              # float 0.348419011
	.long	3210554710              # float -0.863973021
	.long	1065069765              # float 0.983105003
	.long	3197411388              # float -0.290284991
	.long	3212655284              # float -0.989176988
	.long	1063742419              # float 0.903989017
	.long	3207018073              # float -0.653173029
	.long	1053785024              # float 0.405241013
	.long	3210233946              # float -0.844853997
	.long	1064745478              # float 0.963775992
	.long	3195588544              # float -0.242980003
	.long	3212710699              # float -0.992479979
	.long	1064229025              # float 0.932992994
	.long	3207173144              # float -0.662415981
	.long	1055640517              # float 0.460539013
	.long	3209893956              # float -0.824589014
	.long	1064301939              # float 0.937339007
	.long	3192374700              # float -0.195089996
	.long	3212756082              # float -0.995185017
	.long	1064630789              # float 0.956939995
	.long	3207326538              # float -0.671558976
	.long	1057201217              # float 0.514102995
	.long	3209535242              # float -0.803207993
	.long	1063742419              # float 0.903989017
	.long	3189129316              # float -0.146730006
	.long	3212791398              # float -0.997290015
	.long	1064945563              # float 0.975701987
	.long	3207478238              # float -0.680601001
	.long	1058067408              # float 0.565732002
	.long	3209158241              # float -0.780736982
	.long	1063071062              # float 0.863973021
	.long	3184049443              # float -0.0980169996
	.long	3212816647              # float -0.998794972
	.long	1065171636              # float 0.989176988
	.long	3207628226              # float -0.689540982
	.long	1058897880              # float 0.61523199
	.long	3208763507              # float -0.757209002
	.long	1062292800              # float 0.817584991
	.long	3175676807              # float -0.0490680002
	.long	3212831814              # float -0.999698996
	.long	1065307750              # float 0.997290015
	.long	3207776453              # float -0.698375999
	.long	1059689496              # float 0.662415981
	.long	3208351542              # float -0.732653975
	.long	1061413372              # float 0.765166998
	.size	.L__const.main.sin_512, 1792

	.type	.L__const.main.cos_64,@object # @__const.main.cos_64
	.p2align	4
.L__const.main.cos_64:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1064076134              # float 0.923879981
	.long	1065030842              # float 0.980785012
	.long	1062525752              # float 0.831470012
	.long	1065272434              # float 0.995185017
	.long	1063372179              # float 0.881920993
	.long	1064630789              # float 0.956939995
	.long	1061544956              # float 0.773010015
	.long	1060439287              # float 0.707107007
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	1065030842              # float 0.980785012
	.long	1057896918              # float 0.555570006
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	1053028103              # float 0.382683009
	.long	1062525752              # float 0.831470012
	.long	3192374700              # float -0.195089996
	.long	1064630789              # float 0.956939995
	.long	1036565795              # float 0.0980169996
	.long	1059219348              # float 0.634392977
	.long	3203488499              # float -0.471397012
	.long	0                       # float 0
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	1057896918              # float 0.555570006
	.long	3212514490              # float -0.980785012
	.long	1063372179              # float 0.881920993
	.long	3209028604              # float -0.773010015
	.long	1036565795              # float 0.0980169996
	.long	3212114437              # float -0.956939995
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	1062525752              # float 0.831470012
	.long	3212514490              # float -0.980785012
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	3211559782              # float -0.923879981
	.long	1044891052              # float 0.195089996
	.long	3205380566              # float -0.555570006
	.long	1061544956              # float 0.773010015
	.long	3212114437              # float -0.956939995
	.long	3203488499              # float -0.471397012
	.long	1036565795              # float 0.0980169996
	.long	3212836864              # float -1
	.long	0                       # float 0
	.long	2147483648              # float -0
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	3192374700              # float -0.195089996
	.long	1057896918              # float 0.555570006
	.long	1059219348              # float 0.634392977
	.long	3197411388              # float -0.290284991
	.long	3210855827              # float -0.881920993
	.long	1065272434              # float 0.995185017
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	1057896918              # float 0.555570006
	.long	1044891052              # float 0.195089996
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	3200511751              # float -0.382683009
	.long	3205380566              # float -0.555570006
	.long	1065030842              # float 0.980785012
	.long	1056004851              # float 0.471397012
	.long	1059219348              # float 0.634392977
	.long	3212756082              # float -0.995185017
	.long	1049927740              # float 0.290284991
	.long	2147483648              # float -0
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	1053028103              # float 0.382683009
	.long	3210009400              # float -0.831470012
	.long	1044891052              # float 0.195089996
	.long	1049927740              # float 0.290284991
	.long	1065272434              # float 0.995185017
	.long	3209028604              # float -0.773010015
	.long	3210855827              # float -0.881920993
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	1044891052              # float 0.195089996
	.long	1062525752              # float 0.831470012
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	1064076134              # float 0.923879981
	.long	3212514490              # float -0.980785012
	.long	3210009400              # float -0.831470012
	.long	1036565795              # float 0.0980169996
	.long	1056004851              # float 0.471397012
	.long	3197411388              # float -0.290284991
	.long	3206702996              # float -0.634392977
	.long	1065353216              # float 1
	.long	3212836864              # float -1
	.long	3212836864              # float -1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	1064076134              # float 0.923879981
	.long	3212514490              # float -0.980785012
	.long	3210009400              # float -0.831470012
	.long	3184049443              # float -0.0980169996
	.long	3203488499              # float -0.471397012
	.long	1049927740              # float 0.290284991
	.long	1059219348              # float 0.634392977
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	3192374700              # float -0.195089996
	.long	3210009400              # float -0.831470012
	.long	1057896918              # float 0.555570006
	.long	1065030842              # float 0.980785012
	.long	1053028103              # float 0.382683009
	.long	3210009400              # float -0.831470012
	.long	1044891052              # float 0.195089996
	.long	3197411388              # float -0.290284991
	.long	3212756082              # float -0.995185017
	.long	1061544956              # float 0.773010015
	.long	1063372179              # float 0.881920993
	.long	0                       # float 0
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	3200511751              # float -0.382683009
	.long	3205380566              # float -0.555570006
	.long	1065030842              # float 0.980785012
	.long	3203488499              # float -0.471397012
	.long	3206702996              # float -0.634392977
	.long	1065272434              # float 0.995185017
	.long	3197411388              # float -0.290284991
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	3205380566              # float -0.555570006
	.long	3192374700              # float -0.195089996
	.long	1065030842              # float 0.980785012
	.long	3210009400              # float -0.831470012
	.long	3211559782              # float -0.923879981
	.long	3192374700              # float -0.195089996
	.long	1057896918              # float 0.555570006
	.long	3206702996              # float -0.634392977
	.long	1049927740              # float 0.290284991
	.long	1063372179              # float 0.881920993
	.long	3212756082              # float -0.995185017
	.long	3212836864              # float -1
	.long	2147483648              # float -0
	.long	0                       # float 0
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	3211559782              # float -0.923879981
	.long	1044891052              # float 0.195089996
	.long	3205380566              # float -0.555570006
	.long	3209028604              # float -0.773010015
	.long	1064630789              # float 0.956939995
	.long	1056004851              # float 0.471397012
	.long	3184049443              # float -0.0980169996
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	3210009400              # float -0.831470012
	.long	1065030842              # float 0.980785012
	.long	1044891052              # float 0.195089996
	.long	1057896918              # float 0.555570006
	.long	3200511751              # float -0.382683009
	.long	1057896918              # float 0.555570006
	.long	3212514490              # float -0.980785012
	.long	3210855827              # float -0.881920993
	.long	1061544956              # float 0.773010015
	.long	3184049443              # float -0.0980169996
	.long	1064630789              # float 0.956939995
	.long	2147483648              # float -0
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	1062525752              # float 0.831470012
	.long	3192374700              # float -0.195089996
	.long	3212114437              # float -0.956939995
	.long	3184049443              # float -0.0980169996
	.long	3206702996              # float -0.634392977
	.long	1056004851              # float 0.471397012
	.long	1060439287              # float 0.707107007
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	3212514490              # float -0.980785012
	.long	3205380566              # float -0.555570006
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	1064076134              # float 0.923879981
	.long	1065030842              # float 0.980785012
	.long	1062525752              # float 0.831470012
	.long	3212756082              # float -0.995185017
	.long	3210855827              # float -0.881920993
	.long	3212114437              # float -0.956939995
	.long	3209028604              # float -0.773010015
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	3212836864              # float -1
	.long	3212836864              # float -1
	.long	3212836864              # float -1
	.long	3212836864              # float -1
	.long	1064076134              # float 0.923879981
	.long	1065030842              # float 0.980785012
	.long	1062525752              # float 0.831470012
	.long	3212756082              # float -0.995185017
	.long	3210855827              # float -0.881920993
	.long	3212114437              # float -0.956939995
	.long	3209028604              # float -0.773010015
	.long	1060439287              # float 0.707107007
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	3212514490              # float -0.980785012
	.long	3205380566              # float -0.555570006
	.long	3210009400              # float -0.831470012
	.long	3192374700              # float -0.195089996
	.long	1053028103              # float 0.382683009
	.long	1062525752              # float 0.831470012
	.long	3192374700              # float -0.195089996
	.long	3212114437              # float -0.956939995
	.long	3184049443              # float -0.0980169996
	.long	3206702996              # float -0.634392977
	.long	1056004851              # float 0.471397012
	.long	0                       # float 0
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	1057896918              # float 0.555570006
	.long	3212514490              # float -0.980785012
	.long	3210855827              # float -0.881920993
	.long	1061544956              # float 0.773010015
	.long	3184049443              # float -0.0980169996
	.long	1064630789              # float 0.956939995
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	3210009400              # float -0.831470012
	.long	1065030842              # float 0.980785012
	.long	1044891052              # float 0.195089996
	.long	1057896918              # float 0.555570006
	.long	3211559782              # float -0.923879981
	.long	1044891052              # float 0.195089996
	.long	3205380566              # float -0.555570006
	.long	3209028604              # float -0.773010015
	.long	1064630789              # float 0.956939995
	.long	1056004851              # float 0.471397012
	.long	3184049443              # float -0.0980169996
	.long	3212836864              # float -1
	.long	0                       # float 0
	.long	2147483648              # float -0
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	3211559782              # float -0.923879981
	.long	3192374700              # float -0.195089996
	.long	1057896918              # float 0.555570006
	.long	3206702996              # float -0.634392977
	.long	1049927740              # float 0.290284991
	.long	1063372179              # float 0.881920993
	.long	3212756082              # float -0.995185017
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	3205380566              # float -0.555570006
	.long	3192374700              # float -0.195089996
	.long	1065030842              # float 0.980785012
	.long	3210009400              # float -0.831470012
	.long	3200511751              # float -0.382683009
	.long	3205380566              # float -0.555570006
	.long	1065030842              # float 0.980785012
	.long	3203488499              # float -0.471397012
	.long	3206702996              # float -0.634392977
	.long	1065272434              # float 0.995185017
	.long	3197411388              # float -0.290284991
	.long	2147483648              # float -0
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	3200511751              # float -0.382683009
	.long	3211559782              # float -0.923879981
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	1053028103              # float 0.382683009
	.long	3210009400              # float -0.831470012
	.long	1044891052              # float 0.195089996
	.long	3197411388              # float -0.290284991
	.long	3212756082              # float -0.995185017
	.long	1061544956              # float 0.773010015
	.long	1063372179              # float 0.881920993
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	3192374700              # float -0.195089996
	.long	3210009400              # float -0.831470012
	.long	1057896918              # float 0.555570006
	.long	1065030842              # float 0.980785012
	.long	1064076134              # float 0.923879981
	.long	3212514490              # float -0.980785012
	.long	3210009400              # float -0.831470012
	.long	3184049443              # float -0.0980169996
	.long	3203488499              # float -0.471397012
	.long	1049927740              # float 0.290284991
	.long	1059219348              # float 0.634392977
	.long	1065353216              # float 1
	.long	3212836864              # float -1
	.long	3212836864              # float -1
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	0                       # float 0
	.long	2147483648              # float -0
	.long	1064076134              # float 0.923879981
	.long	3212514490              # float -0.980785012
	.long	3210009400              # float -0.831470012
	.long	1036565795              # float 0.0980169996
	.long	1056004851              # float 0.471397012
	.long	3197411388              # float -0.290284991
	.long	3206702996              # float -0.634392977
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	1044891052              # float 0.195089996
	.long	1062525752              # float 0.831470012
	.long	3205380566              # float -0.555570006
	.long	3212514490              # float -0.980785012
	.long	1053028103              # float 0.382683009
	.long	3210009400              # float -0.831470012
	.long	1044891052              # float 0.195089996
	.long	1049927740              # float 0.290284991
	.long	1065272434              # float 0.995185017
	.long	3209028604              # float -0.773010015
	.long	3210855827              # float -0.881920993
	.long	2147483648              # float -0
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	1053028103              # float 0.382683009
	.long	1064076134              # float 0.923879981
	.long	3211559782              # float -0.923879981
	.long	3200511751              # float -0.382683009
	.long	3200511751              # float -0.382683009
	.long	3205380566              # float -0.555570006
	.long	1065030842              # float 0.980785012
	.long	1056004851              # float 0.471397012
	.long	1059219348              # float 0.634392977
	.long	3212756082              # float -0.995185017
	.long	1049927740              # float 0.290284991
	.long	3207922935              # float -0.707107007
	.long	3200511751              # float -0.382683009
	.long	1064076134              # float 0.923879981
	.long	1057896918              # float 0.555570006
	.long	1044891052              # float 0.195089996
	.long	3212514490              # float -0.980785012
	.long	1062525752              # float 0.831470012
	.long	3211559782              # float -0.923879981
	.long	3192374700              # float -0.195089996
	.long	1057896918              # float 0.555570006
	.long	1059219348              # float 0.634392977
	.long	3197411388              # float -0.290284991
	.long	3210855827              # float -0.881920993
	.long	1065272434              # float 0.995185017
	.long	3212836864              # float -1
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	3207922935              # float -0.707107007
	.long	1060439287              # float 0.707107007
	.long	3211559782              # float -0.923879981
	.long	1044891052              # float 0.195089996
	.long	3205380566              # float -0.555570006
	.long	1061544956              # float 0.773010015
	.long	3212114437              # float -0.956939995
	.long	3203488499              # float -0.471397012
	.long	1036565795              # float 0.0980169996
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	1062525752              # float 0.831470012
	.long	3212514490              # float -0.980785012
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	3200511751              # float -0.382683009
	.long	1057896918              # float 0.555570006
	.long	3212514490              # float -0.980785012
	.long	1063372179              # float 0.881920993
	.long	3209028604              # float -0.773010015
	.long	1036565795              # float 0.0980169996
	.long	3212114437              # float -0.956939995
	.long	2147483648              # float -0
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	1053028103              # float 0.382683009
	.long	1062525752              # float 0.831470012
	.long	3192374700              # float -0.195089996
	.long	1064630789              # float 0.956939995
	.long	1036565795              # float 0.0980169996
	.long	1059219348              # float 0.634392977
	.long	3203488499              # float -0.471397012
	.long	1060439287              # float 0.707107007
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	1065030842              # float 0.980785012
	.long	1057896918              # float 0.555570006
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	1064076134              # float 0.923879981
	.long	1065030842              # float 0.980785012
	.long	1062525752              # float 0.831470012
	.long	1065272434              # float 0.995185017
	.long	1063372179              # float 0.881920993
	.long	1064630789              # float 0.956939995
	.long	1061544956              # float 0.773010015
	.size	.L__const.main.cos_64, 1792

	.type	.L__const.main.cos_512,@object # @__const.main.cos_512
	.p2align	4
.L__const.main.cos_512:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065332999              # float 0.998794972
	.long	1065348166              # float 0.999698996
	.long	1065307750              # float 0.997290015
	.long	1065351958              # float 0.999925017
	.long	1065321641              # float 0.998117983
	.long	1065341841              # float 0.999321997
	.long	1065291358              # float 0.996312975
	.long	1065272434              # float 0.995185017
	.long	1065332999              # float 0.998794972
	.long	1065171636              # float 0.989176988
	.long	1065348166              # float 0.999698996
	.long	1065227051              # float 0.992479979
	.long	1065307750              # float 0.997290015
	.long	1065106222              # float 0.98527801
	.long	1065171636              # float 0.989176988
	.long	1065307750              # float 0.997290015
	.long	1064945563              # float 0.975701987
	.long	1065341841              # float 0.999321997
	.long	1065069765              # float 0.983105003
	.long	1065250992              # float 0.993906974
	.long	1064799165              # float 0.966975986
	.long	1065030842              # float 0.980785012
	.long	1065272434              # float 0.995185017
	.long	1064630789              # float 0.956939995
	.long	1065332999              # float 0.998794972
	.long	1064850420              # float 0.970031023
	.long	1065171636              # float 0.989176988
	.long	1064372487              # float 0.941543996
	.long	1064850420              # float 0.970031023
	.long	1065227051              # float 0.992479979
	.long	1064229025              # float 0.932992994
	.long	1065321641              # float 0.998117983
	.long	1064569821              # float 0.953306019
	.long	1065069765              # float 0.983105003
	.long	1063829308              # float 0.909168005
	.long	1064630789              # float 0.956939995
	.long	1065171636              # float 0.989176988
	.long	1063742419              # float 0.903989017
	.long	1065307750              # float 0.997290015
	.long	1064229025              # float 0.932992994
	.long	1064945563              # float 0.975701987
	.long	1063173638              # float 0.870087027
	.long	1064372487              # float 0.941543996
	.long	1065106222              # float 0.98527801
	.long	1063173638              # float 0.870087027
	.long	1065291358              # float 0.996312975
	.long	1063829308              # float 0.909168005
	.long	1064799165              # float 0.966975986
	.long	1062410308              # float 0.824589014
	.long	1064076134              # float 0.923879981
	.long	1065030842              # float 0.980785012
	.long	1062525752              # float 0.831470012
	.long	1065272434              # float 0.995185017
	.long	1063372179              # float 0.881920993
	.long	1064630789              # float 0.956939995
	.long	1061544956              # float 0.773010015
	.long	1063742419              # float 0.903989017
	.long	1064945563              # float 0.975701987
	.long	1061802251              # float 0.788345992
	.long	1065250992              # float 0.993906974
	.long	1062859367              # float 0.851355016
	.long	1064440653              # float 0.945607006
	.long	1060583974              # float 0.715731025
	.long	1063372179              # float 0.881920993
	.long	1064850420              # float 0.970031023
	.long	1061007095              # float 0.740951001
	.long	1065227051              # float 0.992479979
	.long	1062292800              # float 0.817584991
	.long	1064229025              # float 0.932992994
	.long	1059534425              # float 0.653173029
	.long	1062966305              # float 0.857729017
	.long	1064745478              # float 0.963775992
	.long	1060144578              # float 0.689540982
	.long	1065200594              # float 0.990903019
	.long	1061674593              # float 0.780736982
	.long	1063996174              # float 0.919113993
	.long	1058404060              # float 0.585798025
	.long	1062525752              # float 0.831470012
	.long	1064630789              # float 0.956939995
	.long	1059219348              # float 0.634392977
	.long	1065171636              # float 0.989176988
	.long	1061007095              # float 0.740951001
	.long	1063742419              # float 0.903989017
	.long	1057201217              # float 0.514102995
	.long	1062051594              # float 0.803207993
	.long	1064506436              # float 0.949527978
	.long	1058236455              # float 0.575807989
	.long	1065140162              # float 0.987300992
	.long	1060292805              # float 0.698375999
	.long	1063468128              # float 0.887639999
	.long	1054904903              # float 0.438616008
	.long	1061544956              # float 0.773010015
	.long	1064372487              # float 0.941543996
	.long	1057201217              # float 0.514102995
	.long	1065106222              # float 0.98527801
	.long	1059534425              # float 0.653173029
	.long	1063173638              # float 0.870087027
	.long	1052263464              # float 0.359894991
	.long	1061007095              # float 0.740951001
	.long	1064229025              # float 0.932992994
	.long	1055273834              # float 0.449611008
	.long	1065069765              # float 0.983105003
	.long	1058734789              # float 0.605511009
	.long	1062859367              # float 0.851355016
	.long	1049532972              # float 0.278519988
	.long	1060439287              # float 0.707107007
	.long	1064076134              # float 0.923879981
	.long	1053028103              # float 0.382683009
	.long	1065030842              # float 0.980785012
	.long	1057896918              # float 0.555570006
	.long	1062525752              # float 0.831470012
	.long	1044891052              # float 0.195089996
	.long	1059842890              # float 0.671558976
	.long	1063913899              # float 0.914210021
	.long	1050712813              # float 0.31368199
	.long	1064989436              # float 0.978317022
	.long	1057023966              # float 0.503538013
	.long	1062173212              # float 0.810456991
	.long	1038203922              # float 0.110221997
	.long	1059219348              # float 0.634392977
	.long	1063742419              # float 0.903989017
	.long	1048104896              # float 0.242980003
	.long	1064945563              # float 0.975701987
	.long	1055273834              # float 0.449611008
	.long	1061802251              # float 0.788345992
	.long	1019808309              # float 0.0245409999
	.long	1058570171              # float 0.595699012
	.long	1063561812              # float 0.893224001
	.long	1043271850              # float 0.170962006
	.long	1064899225              # float 0.972940027
	.long	1053407570              # float 0.393992007
	.long	1061413372              # float 0.765166998
	.long	3178965947              # float -0.0613210015
	.long	1057896918              # float 0.555570006
	.long	1063372179              # float 0.881920993
	.long	1036565795              # float 0.0980169996
	.long	1064850420              # float 0.970031023
	.long	1051491545              # float 0.336890012
	.long	1061007095              # float 0.740951001
	.long	3189129316              # float -0.146730006
	.long	1057201217              # float 0.514102995
	.long	1063173638              # float 0.870087027
	.long	1019808309              # float 0.0245409999
	.long	1064799165              # float 0.966975986
	.long	1049532972              # float 0.278519988
	.long	1060583974              # float 0.715731025
	.long	3194788472              # float -0.231058002
	.long	1056004851              # float 0.471397012
	.long	1062966305              # float 0.857729017
	.long	3175676807              # float -0.0490680002
	.long	1064745478              # float 0.963775992
	.long	1046502403              # float 0.219100997
	.long	1060144578              # float 0.689540982
	.long	3198196461              # float -0.31368199
	.long	1054533757              # float 0.427554995
	.long	1062750298              # float 0.844853997
	.long	3187323550              # float -0.122410998
	.long	1064689358              # float 0.960430979
	.long	1042459564              # float 0.158858001
	.long	1059689496              # float 0.662415981
	.long	3200891218              # float -0.393992007
	.long	1053028103              # float 0.382683009
	.long	1062525752              # float 0.831470012
	.long	3192374700              # float -0.195089996
	.long	1064630789              # float 0.956939995
	.long	1036565795              # float 0.0980169996
	.long	1059219348              # float 0.634392977
	.long	3203488499              # float -0.471397012
	.long	1051491545              # float 0.336890012
	.long	1062292800              # float 0.817584991
	.long	3196620443              # float -0.266712993
	.long	1064569821              # float 0.953306019
	.long	1024901872              # float 0.0368070006
	.long	1058734789              # float 0.605511009
	.long	3205208683              # float -0.545324981
	.long	1049927740              # float 0.290284991
	.long	1062051594              # float 0.803207993
	.long	3198975193              # float -0.336890012
	.long	1064506436              # float 0.949527978
	.long	3167291957              # float -0.0245409999
	.long	1058236455              # float 0.575807989
	.long	3206381528              # float -0.61523199
	.long	1048104896              # float 0.242980003
	.long	1061802251              # float 0.788345992
	.long	3201268672              # float -0.405241013
	.long	1064440653              # float 0.945607006
	.long	3182409302              # float -0.085796997
	.long	1057725035              # float 0.545324981
	.long	3207478238              # float -0.680601001
	.long	1044891052              # float 0.195089996
	.long	1061544956              # float 0.773010015
	.long	3203488499              # float -0.471397012
	.long	1064372487              # float 0.941543996
	.long	3189129316              # float -0.146730006
	.long	1057201217              # float 0.514102995
	.long	3208490743              # float -0.740951001
	.long	1041645668              # float 0.146730006
	.long	1061279859              # float 0.757209002
	.long	3205035425              # float -0.534998
	.long	1064301939              # float 0.937339007
	.long	3193181416              # float -0.207111001
	.long	1056366802              # float 0.482183993
	.long	3209411577              # float -0.795836985
	.long	1036565795              # float 0.0980169996
	.long	1061007095              # float 0.740951001
	.long	3206053819              # float -0.595699012
	.long	1064229025              # float 0.932992994
	.long	3196620443              # float -0.266712993
	.long	1055273834              # float 0.449611008
	.long	3210233946              # float -0.844853997
	.long	1028193159              # float 0.0490680002
	.long	1060726848              # float 0.724246978
	.long	3207018073              # float -0.653173029
	.long	1064153746              # float 0.928506016
	.long	3198586632              # float -0.325309992
	.long	1054160464              # float 0.416429996
	.long	3210951776              # float -0.887639999
	.long	0                       # float 0
	.long	1060439287              # float 0.707107007
	.long	3207922935              # float -0.707107007
	.long	1064076134              # float 0.923879981
	.long	3200511751              # float -0.382683009
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	3175676807              # float -0.0490680002
	.long	1060144578              # float 0.689540982
	.long	3208763507              # float -0.757209002
	.long	1063996174              # float 0.919113993
	.long	3202388551              # float -0.438616008
	.long	1051878394              # float 0.348419011
	.long	3212053469              # float -0.953306019
	.long	3184049443              # float -0.0980169996
	.long	1059842890              # float 0.671558976
	.long	3209535242              # float -0.803207993
	.long	1063913899              # float 0.914210021
	.long	3204209952              # float -0.492897987
	.long	1050712813              # float 0.31368199
	.long	3212429211              # float -0.975701987
	.long	3189129316              # float -0.146730006
	.long	1059534425              # float 0.653173029
	.long	3210233946              # float -0.844853997
	.long	1063829308              # float 0.909168005
	.long	3205208683              # float -0.545324981
	.long	1049532972              # float 0.278519988
	.long	3212684242              # float -0.990903019
	.long	3192374700              # float -0.195089996
	.long	1059219348              # float 0.634392977
	.long	3210855827              # float -0.881920993
	.long	1063742419              # float 0.903989017
	.long	3206053819              # float -0.595699012
	.long	1048104896              # float 0.242980003
	.long	3212816647              # float -0.998794972
	.long	3195588544              # float -0.242980003
	.long	1058897880              # float 0.61523199
	.long	3211397547              # float -0.914210021
	.long	1063653248              # float 0.898674011
	.long	3206861357              # float -0.643832027
	.long	1045697768              # float 0.207111001
	.long	3212825489              # float -0.999321997
	.long	3197411388              # float -0.290284991
	.long	1058570171              # float 0.595699012
	.long	3211856135              # float -0.941543996
	.long	1063561812              # float 0.893224001
	.long	3207628226              # float -0.689540982
	.long	1043271850              # float 0.170962006
	.long	3212710699              # float -0.992479979
	.long	3198975193              # float -0.336890012
	.long	1058236455              # float 0.575807989
	.long	3212229126              # float -0.963775992
	.long	1063468128              # float 0.887639999
	.long	3208351542              # float -0.732653975
	.long	1040830362              # float 0.134581
	.long	3212473084              # float -0.978317022
	.long	3200511751              # float -0.382683009
	.long	1057896918              # float 0.555570006
	.long	3212514490              # float -0.980785012
	.long	1063372179              # float 0.881920993
	.long	3209028604              # float -0.773010015
	.long	1036565795              # float 0.0980169996
	.long	3212114437              # float -0.956939995
	.long	3202017405              # float -0.427554995
	.long	1057551777              # float 0.534998
	.long	3212710699              # float -0.992479979
	.long	1063274016              # float 0.876070023
	.long	3209656860              # float -0.810456991
	.long	1031482299              # float 0.0613210015
	.long	3211637394              # float -0.928506016
	.long	3203488499              # float -0.471397012
	.long	1057201217              # float 0.514102995
	.long	3212816647              # float -0.998794972
	.long	1063173638              # float 0.870087027
	.long	3210233946              # float -0.844853997
	.long	1019808309              # float 0.0245409999
	.long	3211045460              # float -0.893224001
	.long	3204684865              # float -0.514102995
	.long	1056726304              # float 0.492897987
	.long	3212831814              # float -0.999698996
	.long	1063071062              # float 0.863973021
	.long	3210757664              # float -0.876070023
	.long	3158904960              # float -0.0122720003
	.long	3210343015              # float -0.851355016
	.long	3205380566              # float -0.555570006
	.long	1056004851              # float 0.471397012
	.long	3212756082              # float -0.995185017
	.long	1062966305              # float 0.857729017
	.long	3211226067              # float -0.903989017
	.long	3175676807              # float -0.0490680002
	.long	3209535242              # float -0.803207993
	.long	3206053819              # float -0.595699012
	.long	1055273834              # float 0.449611008
	.long	3212589870              # float -0.98527801
	.long	1062859367              # float 0.851355016
	.long	3211637394              # float -0.928506016
	.long	3182409302              # float -0.085796997
	.long	3208628064              # float -0.749135971
	.long	3206702996              # float -0.634392977
	.long	1054533757              # float 0.427554995
	.long	3212334068              # float -0.970031023
	.long	1062750298              # float 0.844853997
	.long	3211990084              # float -0.949527978
	.long	3187323550              # float -0.122410998
	.long	3207628226              # float -0.689540982
	.long	3207326538              # float -0.671558976
	.long	1053785024              # float 0.405241013
	.long	3211990084              # float -0.949527978
	.long	1062639082              # float 0.838225007
	.long	3212282813              # float -0.966975986
	.long	3189943212              # float -0.158858001
	.long	3206543042              # float -0.624858975
	.long	3207922935              # float -0.707107007
	.long	1053028103              # float 0.382683009
	.long	3211559782              # float -0.923879981
	.long	1062525752              # float 0.831470012
	.long	3212514490              # float -0.980785012
	.long	3192374700              # float -0.195089996
	.long	3205380566              # float -0.555570006
	.long	3208490743              # float -0.740951001
	.long	1052263464              # float 0.359894991
	.long	3211045460              # float -0.893224001
	.long	1062410308              # float 0.824589014
	.long	3212684242              # float -0.990903019
	.long	3194788472              # float -0.231058002
	.long	3203850450              # float -0.482183993
	.long	3209028604              # float -0.773010015
	.long	1051491545              # float 0.336890012
	.long	3210449953              # float -0.857729017
	.long	1062292800              # float 0.817584991
	.long	3212791398              # float -0.997290015
	.long	3196620443              # float -0.266712993
	.long	3201268672              # float -0.405241013
	.long	3209535242              # float -0.803207993
	.long	1050712813              # float 0.31368199
	.long	3209776448              # float -0.817584991
	.long	1062173212              # float 0.810456991
	.long	3212835606              # float -0.999925017
	.long	3197804680              # float -0.302006006
	.long	3198586632              # float -0.325309992
	.long	3210009400              # float -0.831470012
	.long	1049927740              # float 0.290284991
	.long	3209028604              # float -0.773010015
	.long	1062051594              # float 0.803207993
	.long	3212816647              # float -0.998794972
	.long	3198975193              # float -0.336890012
	.long	3195588544              # float -0.242980003
	.long	3210449953              # float -0.857729017
	.long	1049136795              # float 0.266712993
	.long	3208210496              # float -0.724246978
	.long	1061927929              # float 0.795836985
	.long	3212734640              # float -0.993906974
	.long	3200130371              # float -0.371316999
	.long	3189943212              # float -0.158858001
	.long	3210855827              # float -0.881920993
	.long	1048104896              # float 0.242980003
	.long	3207326538              # float -0.671558976
	.long	1061802251              # float 0.788345992
	.long	3212589870              # float -0.98527801
	.long	3201268672              # float -0.405241013
	.long	3180767551              # float -0.0735649988
	.long	3211226067              # float -0.903989017
	.long	1046502403              # float 0.219100997
	.long	3206381528              # float -0.61523199
	.long	1061674593              # float 0.780736982
	.long	3212382873              # float -0.972940027
	.long	3202388551              # float -0.438616008
	.long	1011421312              # float 0.0122720003
	.long	3211559782              # float -0.923879981
	.long	1044891052              # float 0.195089996
	.long	3205380566              # float -0.555570006
	.long	1061544956              # float 0.773010015
	.long	3212114437              # float -0.956939995
	.long	3203488499              # float -0.471397012
	.long	1036565795              # float 0.0980169996
	.long	3211856135              # float -0.941543996
	.long	1043271850              # float 0.170962006
	.long	3204209952              # float -0.492897987
	.long	1061413372              # float 0.765166998
	.long	3211785587              # float -0.937339007
	.long	3204507614              # float -0.503538013
	.long	1044082390              # float 0.183039993
	.long	3212114437              # float -0.956939995
	.long	1041645668              # float 0.146730006
	.long	3202017405              # float -0.427554995
	.long	1061279859              # float 0.757209002
	.long	3211397547              # float -0.914210021
	.long	3205035425              # float -0.534998
	.long	1049136795              # float 0.266712993
	.long	3212334068              # float -0.970031023
	.long	1039839902              # float 0.122410998
	.long	3199747112              # float -0.359894991
	.long	1061144416              # float 0.749135971
	.long	3210951776              # float -0.887639999
	.long	3205551056              # float -0.565732002
	.long	1051878394              # float 0.348419011
	.long	3212514490              # float -0.980785012
	.long	1036565795              # float 0.0980169996
	.long	3197411388              # float -0.290284991
	.long	1061007095              # float 0.740951001
	.long	3210449953              # float -0.857729017
	.long	3206053819              # float -0.595699012
	.long	1054533757              # float 0.427554995
	.long	3212655284              # float -0.989176988
	.long	1033283903              # float 0.0735649988
	.long	3193986051              # float -0.219100997
	.long	1060867894              # float 0.732653975
	.long	3209893956              # float -0.824589014
	.long	3206543042              # float -0.624858975
	.long	1057023966              # float 0.503538013
	.long	3212756082              # float -0.995185017
	.long	1028193159              # float 0.0490680002
	.long	3189129316              # float -0.146730006
	.long	1060726848              # float 0.724246978
	.long	3209285899              # float -0.788345992
	.long	3207018073              # float -0.653173029
	.long	1058236455              # float 0.575807989
	.long	3212816647              # float -0.998794972
	.long	1019808309              # float 0.0245409999
	.long	3180767551              # float -0.0735649988
	.long	1060583974              # float 0.715731025
	.long	3208628064              # float -0.749135971
	.long	3207478238              # float -0.680601001
	.long	1059377709              # float 0.643832027
	.size	.L__const.main.cos_512, 1792

	.type	.L__const.main.reversed,@object # @__const.main.reversed
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
.L__const.main.reversed:
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	2                       # 0x2
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	7                       # 0x7
	.size	.L__const.main.reversed, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x = %i y = %i \n"
	.size	.L.str, 16

	.ident	"clang version 10.0.1 "
	.section	".note.GNU-stack","",@progbits
