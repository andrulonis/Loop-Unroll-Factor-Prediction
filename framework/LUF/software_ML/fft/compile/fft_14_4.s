	.text
	.file	"fft_14_4.c"
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
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_6 Depth 2
	movq	-88(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
.LBB0_2:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	shlq	$6, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rcx,4), %edi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	%edi, (%rcx,%rax,4)
	movq	%rax, %r8
	shlq	$6, %r8
	addq	%rdx, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	movl	(%r9,%r8,4), %edi
	movq	-24(%rbp), %r8          # 8-byte Reload
	movl	%edi, (%r8,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB0_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	16(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	16(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	16(%rcx), %edx
	movl	%edx, 16(%rcx)
	subl	16(%rsi), %edi
	movl	%edi, 16(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	20(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	20(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	20(%rcx), %edx
	movl	%edx, 20(%rcx)
	subl	20(%rsi), %edi
	movl	%edi, 20(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	12(%rcx), %edx
	movl	12(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 12(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 12(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	20(%rcx), %edx
	movl	%edx, %edi
	addl	20(%rsi), %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 20(%rcx)
	movl	20(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %edx
	movl	24(%rsi), %edi
	movl	%edi, 24(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 24(%rsi)
	movl	28(%rcx), %edx
	movl	28(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 28(%rcx)
	addl	28(%rsi), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 28(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	8(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	8(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	8(%rcx), %edx
	movl	%edx, 8(%rcx)
	subl	8(%rsi), %edi
	movl	%edi, 8(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	12(%rcx), %edx
	movl	%edi, 12(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 12(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	4(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	4(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	4(%rcx), %edx
	movl	%edx, 4(%rcx)
	subl	4(%rsi), %edi
	movl	%edi, 4(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	16(%rcx), %edx
	movl	16(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 16(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 16(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	20(%rcx), %edx
	movl	20(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 20(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 20(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	28(%rcx), %edx
	movl	%edi, 28(%rcx)
	subl	%edx, %eax
	movl	%eax, 28(%rsi)
	movl	16(%rcx), %eax
	movl	16(%rsi), %edx
	movl	%eax, %edi
	addl	20(%rcx), %edi
	movl	%edi, 16(%rcx)
	movl	%edx, %edi
	addl	20(%rsi), %edi
	movl	%edi, 16(%rsi)
	subl	20(%rcx), %eax
	movl	%eax, 20(%rcx)
	subl	20(%rsi), %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %eax
	movl	24(%rsi), %edx
	movl	%eax, %edi
	addl	28(%rcx), %edi
	movl	%edi, 24(%rcx)
	movl	%edx, %edi
	addl	28(%rsi), %edi
	movl	%edi, 24(%rsi)
	subl	28(%rcx), %eax
	movl	%eax, 28(%rcx)
	subl	28(%rsi), %edx
	movl	%edx, 28(%rsi)
	movl	$1, %r9d
	movq	%r9, -112(%rbp)         # 8-byte Spill
.LBB0_4:                                # %for.body278
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	imulq	$7, %rcx, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cvttss2si	-4(%rsi,%rdx,4), %edi
	imulq	$7, %rcx, %rdx
	addq	%rax, %rdx
	movq	-80(%rbp), %r8          # 8-byte Reload
	cvttss2si	-4(%r8,%rdx,4), %r9d
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rax,4), %r10d
	movl	%edi, %r11d
	imull	(%rdx,%rax,4), %r11d
	movl	%r9d, %ebx
	movq	-24(%rbp), %r14         # 8-byte Reload
	imull	(%r14,%rax,4), %ebx
	subl	%ebx, %r11d
	movl	%r11d, (%rdx,%rax,4)
	imull	%r9d, %r10d
	imull	(%r14,%rax,4), %edi
	addl	%edi, %r10d
	movl	%r10d, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB0_4
# %bb.5:                                # %for.body316.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_6
.LBB0_6:                                # %for.body316
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %edx
	movq	-96(%rbp), %r8          # 8-byte Reload
	shlq	$3, %r8
	addq	%rax, %r8
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%edx, (%r9,%r8,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB0_6
# %bb.7:                                # %for.inc332
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB0_1
# %bb.8:                                # %for.end334
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %rcx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%r8, -8(%rbp)           # 8-byte Spill
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	andl	$2147483640, %ecx       # imm = 0x7FFFFFF8
	movl	%eax, %edx
	andl	$7, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%r9d, (%rdi,%rax,4)
	movslq	4(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$66, %r11d
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	8(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$132, %r11d
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	12(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$198, %r11d
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	16(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$264, %r11d             # imm = 0x108
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	20(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$330, %r11d             # imm = 0x14A
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	24(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$396, %r11d             # imm = 0x18C
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	28(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	addl	$462, %ecx              # imm = 0x1CE
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %r10d
	movl	%r9d, (%rdi,%r10,4)
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.4:                                # %for.end72
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
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
                                        #     Child Loop BB2_4 Depth 2
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB2_2:                                # %for.body3
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB2_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%edx, %esi
	andl	$7, %esi
	imull	$66, %esi, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r8d
	movq	-24(%rbp), %r9          # 8-byte Reload
	movl	(%r9,%r8,4), %edi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	%edi, (%r8)
	imull	$66, %esi, %edi
	addl	$8, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 4(%r8)
	imull	$66, %esi, %edi
	addl	$16, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 8(%r8)
	imull	$66, %esi, %edi
	addl	$24, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 12(%r8)
	imull	$66, %esi, %edi
	addl	$32, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 16(%r8)
	imull	$66, %esi, %edi
	addl	$40, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 20(%r8)
	imull	$66, %esi, %edi
	addl	$48, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 24(%r8)
	imull	$66, %esi, %esi
	addl	$56, %esi
	addl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %r10d
	movl	(%r9,%r10,4), %eax
	movl	%eax, 28(%r8)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB2_4:                                # %for.body56
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB2_4
# %bb.5:                                # %for.inc66
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB2_1
# %bb.6:                                # %for.end68
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %rdx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%r9, -8(%rbp)           # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB3_2:                                # %for.body3
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB3_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	andl	$2147483640, %ecx       # imm = 0x7FFFFFF8
	movl	%eax, %edx
	andl	$7, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%r9d, (%rdi,%rax,4)
	movslq	4(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$66, %r11d
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	8(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$132, %r11d
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	12(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$198, %r11d
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	16(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$264, %r11d             # imm = 0x108
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	20(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$330, %r11d             # imm = 0x14A
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	24(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$396, %r11d             # imm = 0x18C
	addl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	28(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	addl	$462, %ecx              # imm = 0x1CE
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %r10d
	movl	%r9d, (%rdi,%r10,4)
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB3_1
# %bb.4:                                # %for.end72
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
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_2 Depth 2
                                        #     Child Loop BB4_4 Depth 2
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB4_2:                                # %for.body3
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB4_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%edx, %esi
	andl	$7, %esi
	imull	$66, %esi, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r8d
	movq	-24(%rbp), %r9          # 8-byte Reload
	movl	(%r9,%r8,4), %edi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	%edi, (%r8)
	imull	$66, %esi, %edi
	addl	$8, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 4(%r8)
	imull	$66, %esi, %edi
	addl	$16, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 8(%r8)
	imull	$66, %esi, %edi
	addl	$24, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 12(%r8)
	imull	$66, %esi, %edi
	addl	$32, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 16(%r8)
	imull	$66, %esi, %edi
	addl	$40, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 20(%r8)
	imull	$66, %esi, %edi
	addl	$48, %edi
	addl	%eax, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 24(%r8)
	imull	$66, %esi, %esi
	addl	$56, %esi
	addl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, %r10d
	movl	(%r9,%r10,4), %eax
	movl	%eax, 28(%r8)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB4_4:                                # %for.body56
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB4_4
# %bb.5:                                # %for.inc66
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB4_1
# %bb.6:                                # %for.end68
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
	subq	$88, %rsp
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
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
                                        #     Child Loop BB5_4 Depth 2
                                        #     Child Loop BB5_6 Depth 2
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_11 Depth 2
                                        #     Child Loop BB5_13 Depth 2
                                        #     Child Loop BB5_15 Depth 2
                                        #     Child Loop BB5_17 Depth 2
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_21 Depth 2
                                        #     Child Loop BB5_23 Depth 2
                                        #     Child Loop BB5_25 Depth 2
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
.LBB5_2:                                # %for.body3
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	addq	%rax, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%esi, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB5_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	16(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	16(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	16(%rcx), %edx
	movl	%edx, 16(%rcx)
	subl	16(%rsi), %edi
	movl	%edi, 16(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	20(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	20(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	20(%rcx), %edx
	movl	%edx, 20(%rcx)
	subl	20(%rsi), %edi
	movl	%edi, 20(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	12(%rcx), %edx
	movl	12(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 12(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 12(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	20(%rcx), %edx
	movl	%edx, %edi
	addl	20(%rsi), %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 20(%rcx)
	movl	20(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %edx
	movl	24(%rsi), %edi
	movl	%edi, 24(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 24(%rsi)
	movl	28(%rcx), %edx
	movl	28(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 28(%rcx)
	addl	28(%rsi), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 28(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	8(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	8(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	8(%rcx), %edx
	movl	%edx, 8(%rcx)
	subl	8(%rsi), %edi
	movl	%edi, 8(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	12(%rcx), %edx
	movl	%edi, 12(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 12(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	4(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	4(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	4(%rcx), %edx
	movl	%edx, 4(%rcx)
	subl	4(%rsi), %edi
	movl	%edi, 4(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	16(%rcx), %edx
	movl	16(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 16(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 16(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	20(%rcx), %edx
	movl	20(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 20(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 20(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	28(%rcx), %edx
	movl	%edi, 28(%rcx)
	subl	%edx, %eax
	movl	%eax, 28(%rsi)
	movl	16(%rcx), %eax
	movl	16(%rsi), %edx
	movl	%eax, %edi
	addl	20(%rcx), %edi
	movl	%edi, 16(%rcx)
	movl	%edx, %edi
	addl	20(%rsi), %edi
	movl	%edi, 16(%rsi)
	subl	20(%rcx), %eax
	movl	%eax, 20(%rcx)
	subl	20(%rsi), %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %eax
	movl	24(%rsi), %edx
	movl	%eax, %edi
	addl	28(%rcx), %edi
	movl	%edi, 24(%rcx)
	movl	%edx, %edi
	addl	28(%rsi), %edi
	movl	%edi, 24(%rsi)
	subl	28(%rcx), %eax
	movl	%eax, 28(%rcx)
	subl	28(%rsi), %edx
	movl	%edx, 28(%rsi)
	movq	-80(%rbp), %r9          # 8-byte Reload
	movl	%r9d, %eax
	shrl	$3, %eax
	movl	$1, %r10d
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r10, -104(%rbp)        # 8-byte Spill
.LBB5_4:                                # %for.body278
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	-92(%rbp), %ecx         # 4-byte Reload
	imull	$7, %ecx, %edx
	movslq	%edx, %rsi
	addq	%rax, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cvttss2si	-4(%rdi,%rsi,4), %edx
	imull	$7, %ecx, %r8d
	movslq	%r8d, %rsi
	addq	%rax, %rsi
	movq	-64(%rbp), %r9          # 8-byte Reload
	cvttss2si	-4(%r9,%rsi,4), %r8d
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %r10d
	movl	%edx, %r11d
	imull	(%rsi,%rax,4), %r11d
	movl	%r8d, %ebx
	movq	-24(%rbp), %r14         # 8-byte Reload
	imull	(%r14,%rax,4), %ebx
	subl	%ebx, %r11d
	movl	%r11d, (%rsi,%rax,4)
	imull	%r8d, %r10d
	imull	(%r14,%rax,4), %edx
	addl	%edx, %r10d
	movl	%r10d, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB5_4
# %bb.5:                                # %for.body316.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_6
.LBB5_6:                                # %for.body316
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %edx
	movq	-80(%rbp), %r8          # 8-byte Reload
	shlq	$3, %r8
	addq	%rax, %r8
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%edx, (%r9,%r8,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB5_6
# %bb.7:                                # %for.inc332
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB5_9
.LBB5_8:                                # %for.end334
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_9:                                # %for.body3.1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.cfi_def_cfa %rbp, 16
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	movq	-120(%rbp), %rdi        # 8-byte Reload
	shlq	$3, %rdi
	addq	%rax, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%esi, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB5_9
# %bb.10:                               # %for.end.1
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	16(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	16(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	16(%rcx), %edx
	movl	%edx, 16(%rcx)
	subl	16(%rsi), %edi
	movl	%edi, 16(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	20(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	20(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	20(%rcx), %edx
	movl	%edx, 20(%rcx)
	subl	20(%rsi), %edi
	movl	%edi, 20(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	12(%rcx), %edx
	movl	12(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 12(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 12(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	20(%rcx), %edx
	movl	%edx, %edi
	addl	20(%rsi), %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 20(%rcx)
	movl	20(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %edx
	movl	24(%rsi), %edi
	movl	%edi, 24(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 24(%rsi)
	movl	28(%rcx), %edx
	movl	28(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 28(%rcx)
	addl	28(%rsi), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 28(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	8(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	8(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	8(%rcx), %edx
	movl	%edx, 8(%rcx)
	subl	8(%rsi), %edi
	movl	%edi, 8(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	12(%rcx), %edx
	movl	%edi, 12(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 12(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	4(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	4(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	4(%rcx), %edx
	movl	%edx, 4(%rcx)
	subl	4(%rsi), %edi
	movl	%edi, 4(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	16(%rcx), %edx
	movl	16(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 16(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 16(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	20(%rcx), %edx
	movl	20(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 20(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 20(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	28(%rcx), %edx
	movl	%edi, 28(%rcx)
	subl	%edx, %eax
	movl	%eax, 28(%rsi)
	movl	16(%rcx), %eax
	movl	16(%rsi), %edx
	movl	%eax, %edi
	addl	20(%rcx), %edi
	movl	%edi, 16(%rcx)
	movl	%edx, %edi
	addl	20(%rsi), %edi
	movl	%edi, 16(%rsi)
	subl	20(%rcx), %eax
	movl	%eax, 20(%rcx)
	subl	20(%rsi), %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %eax
	movl	24(%rsi), %edx
	movl	%eax, %edi
	addl	28(%rcx), %edi
	movl	%edi, 24(%rcx)
	movl	%edx, %edi
	addl	28(%rsi), %edi
	movl	%edi, 24(%rsi)
	subl	28(%rcx), %eax
	movl	%eax, 28(%rcx)
	subl	28(%rsi), %edx
	movl	%edx, 28(%rsi)
	movq	-120(%rbp), %r9         # 8-byte Reload
	movl	%r9d, %eax
	shrl	$3, %eax
	movl	$1, %r10d
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%r10, -144(%rbp)        # 8-byte Spill
.LBB5_11:                               # %for.body278.1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	-132(%rbp), %ecx        # 4-byte Reload
	imull	$7, %ecx, %edx
	movslq	%edx, %rsi
	addq	%rax, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cvttss2si	-4(%rdi,%rsi,4), %edx
	imull	$7, %ecx, %r8d
	movslq	%r8d, %rsi
	addq	%rax, %rsi
	movq	-64(%rbp), %r9          # 8-byte Reload
	cvttss2si	-4(%r9,%rsi,4), %r8d
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %r10d
	movl	%edx, %r11d
	imull	(%rsi,%rax,4), %r11d
	movl	%r8d, %ebx
	movq	-24(%rbp), %r14         # 8-byte Reload
	imull	(%r14,%rax,4), %ebx
	subl	%ebx, %r11d
	movl	%r11d, (%rsi,%rax,4)
	imull	%r8d, %r10d
	imull	(%r14,%rax,4), %edx
	addl	%edx, %r10d
	movl	%r10d, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB5_11
# %bb.12:                               # %for.body316.preheader.1
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB5_13
.LBB5_13:                               # %for.body316.1
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %edx
	movq	-120(%rbp), %r8         # 8-byte Reload
	shlq	$3, %r8
	addq	%rax, %r8
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%edx, (%r9,%r8,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB5_13
# %bb.14:                               # %for.inc332.1
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB5_15:                               # %for.body3.2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	movq	-160(%rbp), %rdi        # 8-byte Reload
	shlq	$3, %rdi
	addq	%rax, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%esi, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB5_15
# %bb.16:                               # %for.end.2
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	16(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	16(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	16(%rcx), %edx
	movl	%edx, 16(%rcx)
	subl	16(%rsi), %edi
	movl	%edi, 16(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	20(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	20(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	20(%rcx), %edx
	movl	%edx, 20(%rcx)
	subl	20(%rsi), %edi
	movl	%edi, 20(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	12(%rcx), %edx
	movl	12(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 12(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 12(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	20(%rcx), %edx
	movl	%edx, %edi
	addl	20(%rsi), %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 20(%rcx)
	movl	20(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %edx
	movl	24(%rsi), %edi
	movl	%edi, 24(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 24(%rsi)
	movl	28(%rcx), %edx
	movl	28(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 28(%rcx)
	addl	28(%rsi), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 28(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	8(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	8(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	8(%rcx), %edx
	movl	%edx, 8(%rcx)
	subl	8(%rsi), %edi
	movl	%edi, 8(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	12(%rcx), %edx
	movl	%edi, 12(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 12(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	4(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	4(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	4(%rcx), %edx
	movl	%edx, 4(%rcx)
	subl	4(%rsi), %edi
	movl	%edi, 4(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	16(%rcx), %edx
	movl	16(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 16(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 16(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	20(%rcx), %edx
	movl	20(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 20(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 20(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	28(%rcx), %edx
	movl	%edi, 28(%rcx)
	subl	%edx, %eax
	movl	%eax, 28(%rsi)
	movl	16(%rcx), %eax
	movl	16(%rsi), %edx
	movl	%eax, %edi
	addl	20(%rcx), %edi
	movl	%edi, 16(%rcx)
	movl	%edx, %edi
	addl	20(%rsi), %edi
	movl	%edi, 16(%rsi)
	subl	20(%rcx), %eax
	movl	%eax, 20(%rcx)
	subl	20(%rsi), %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %eax
	movl	24(%rsi), %edx
	movl	%eax, %edi
	addl	28(%rcx), %edi
	movl	%edi, 24(%rcx)
	movl	%edx, %edi
	addl	28(%rsi), %edi
	movl	%edi, 24(%rsi)
	subl	28(%rcx), %eax
	movl	%eax, 28(%rcx)
	subl	28(%rsi), %edx
	movl	%edx, 28(%rsi)
	movq	-160(%rbp), %r9         # 8-byte Reload
	movl	%r9d, %eax
	shrl	$3, %eax
	movl	$1, %r10d
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movq	%r10, -184(%rbp)        # 8-byte Spill
.LBB5_17:                               # %for.body278.2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	imull	$7, %ecx, %edx
	movslq	%edx, %rsi
	addq	%rax, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cvttss2si	-4(%rdi,%rsi,4), %edx
	imull	$7, %ecx, %r8d
	movslq	%r8d, %rsi
	addq	%rax, %rsi
	movq	-64(%rbp), %r9          # 8-byte Reload
	cvttss2si	-4(%r9,%rsi,4), %r8d
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %r10d
	movl	%edx, %r11d
	imull	(%rsi,%rax,4), %r11d
	movl	%r8d, %ebx
	movq	-24(%rbp), %r14         # 8-byte Reload
	imull	(%r14,%rax,4), %ebx
	subl	%ebx, %r11d
	movl	%r11d, (%rsi,%rax,4)
	imull	%r8d, %r10d
	imull	(%r14,%rax,4), %edx
	addl	%edx, %r10d
	movl	%r10d, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jne	.LBB5_17
# %bb.18:                               # %for.body316.preheader.2
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB5_19
.LBB5_19:                               # %for.body316.2
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-160(%rbp), %rsi        # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %edx
	movq	-160(%rbp), %r8         # 8-byte Reload
	shlq	$3, %r8
	addq	%rax, %r8
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%edx, (%r9,%r8,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB5_19
# %bb.20:                               # %for.inc332.2
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
.LBB5_21:                               # %for.body3.3
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	movq	-200(%rbp), %rdi        # 8-byte Reload
	shlq	$3, %rdi
	addq	%rax, %rdi
	movq	-40(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%esi, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB5_21
# %bb.22:                               # %for.end.3
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movss	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	16(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	16(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	16(%rcx), %edx
	movl	%edx, 16(%rcx)
	subl	16(%rsi), %edi
	movl	%edi, 16(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	20(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	20(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	20(%rcx), %edx
	movl	%edx, 20(%rcx)
	subl	20(%rsi), %edi
	movl	%edi, 20(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	12(%rcx), %edx
	movl	12(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 12(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 12(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	20(%rcx), %edx
	movl	%edx, %edi
	addl	20(%rsi), %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 20(%rcx)
	movl	20(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %edx
	movl	24(%rsi), %edi
	movl	%edi, 24(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 24(%rsi)
	movl	28(%rcx), %edx
	movl	28(%rsi), %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edi
	movl	%edi, 28(%rcx)
	addl	28(%rsi), %edx
	movl	%eax, %edi
	subl	%edx, %edi
	cvtsi2ss	%edi, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %edx
	movl	%edx, 28(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	8(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	8(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	8(%rcx), %edx
	movl	%edx, 8(%rcx)
	subl	8(%rsi), %edi
	movl	%edi, 8(%rsi)
	movl	4(%rcx), %edx
	movl	4(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 4(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 4(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	12(%rcx), %edx
	movl	%edi, 12(%rcx)
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, 12(%rsi)
	movl	(%rcx), %edx
	movl	(%rsi), %edi
	movl	%edx, %r8d
	addl	4(%rcx), %r8d
	movl	%r8d, (%rcx)
	movl	%edi, %r8d
	addl	4(%rsi), %r8d
	movl	%r8d, (%rsi)
	subl	4(%rcx), %edx
	movl	%edx, 4(%rcx)
	subl	4(%rsi), %edi
	movl	%edi, 4(%rsi)
	movl	8(%rcx), %edx
	movl	8(%rsi), %edi
	movl	%edx, %r8d
	addl	12(%rcx), %r8d
	movl	%r8d, 8(%rcx)
	movl	%edi, %r8d
	addl	12(%rsi), %r8d
	movl	%r8d, 8(%rsi)
	subl	12(%rcx), %edx
	movl	%edx, 12(%rcx)
	subl	12(%rsi), %edi
	movl	%edi, 12(%rsi)
	movl	16(%rcx), %edx
	movl	16(%rsi), %edi
	movl	%edx, %r8d
	addl	24(%rcx), %r8d
	movl	%r8d, 16(%rcx)
	movl	%edi, %r8d
	addl	24(%rsi), %r8d
	movl	%r8d, 16(%rsi)
	subl	24(%rcx), %edx
	movl	%edx, 24(%rcx)
	subl	24(%rsi), %edi
	movl	%edi, 24(%rsi)
	movl	20(%rcx), %edx
	movl	20(%rsi), %edi
	movl	%edx, %r8d
	addl	28(%rcx), %r8d
	movl	%r8d, 20(%rcx)
	movl	%edi, %r8d
	addl	28(%rsi), %r8d
	movl	%r8d, 20(%rsi)
	subl	28(%rcx), %edx
	movl	%edx, 28(%rcx)
	subl	28(%rsi), %edi
	movl	%edi, 28(%rsi)
	movl	28(%rcx), %edx
	movl	%edi, 28(%rcx)
	subl	%edx, %eax
	movl	%eax, 28(%rsi)
	movl	16(%rcx), %eax
	movl	16(%rsi), %edx
	movl	%eax, %edi
	addl	20(%rcx), %edi
	movl	%edi, 16(%rcx)
	movl	%edx, %edi
	addl	20(%rsi), %edi
	movl	%edi, 16(%rsi)
	subl	20(%rcx), %eax
	movl	%eax, 20(%rcx)
	subl	20(%rsi), %edx
	movl	%edx, 20(%rsi)
	movl	24(%rcx), %eax
	movl	24(%rsi), %edx
	movl	%eax, %edi
	addl	28(%rcx), %edi
	movl	%edi, 24(%rcx)
	movl	%edx, %edi
	addl	28(%rsi), %edi
	movl	%edi, 24(%rsi)
	subl	28(%rcx), %eax
	movl	%eax, 28(%rcx)
	subl	28(%rsi), %edx
	movl	%edx, 28(%rsi)
	movq	-200(%rbp), %r9         # 8-byte Reload
	movl	%r9d, %eax
	shrl	$3, %eax
	movl	$1, %r10d
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%r10, -224(%rbp)        # 8-byte Spill
.LBB5_23:                               # %for.body278.3
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	-212(%rbp), %ecx        # 4-byte Reload
	imull	$7, %ecx, %edx
	movslq	%edx, %rsi
	addq	%rax, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cvttss2si	-4(%rdi,%rsi,4), %edx
	imull	$7, %ecx, %r8d
	movslq	%r8d, %rsi
	addq	%rax, %rsi
	movq	-64(%rbp), %r9          # 8-byte Reload
	cvttss2si	-4(%r9,%rsi,4), %r8d
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %r10d
	movl	%edx, %r11d
	imull	(%rsi,%rax,4), %r11d
	movl	%r8d, %ebx
	movq	-24(%rbp), %r14         # 8-byte Reload
	imull	(%r14,%rax,4), %ebx
	subl	%ebx, %r11d
	movl	%r11d, (%rsi,%rax,4)
	imull	%r8d, %r10d
	imull	(%r14,%rax,4), %edx
	addl	%edx, %r10d
	movl	%r10d, (%r14,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB5_23
# %bb.24:                               # %for.body316.preheader.3
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB5_25
.LBB5_25:                               # %for.body316.3
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-200(%rbp), %rsi        # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %edx
	movq	-200(%rbp), %r8         # 8-byte Reload
	shlq	$3, %r8
	addq	%rax, %r8
	movq	-40(%rbp), %r9          # 8-byte Reload
	movl	%edx, (%r9,%r8,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB5_25
# %bb.26:                               # %for.inc332.3
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB5_1
	jmp	.LBB5_8
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %rcx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%r8, -8(%rbp)           # 8-byte Spill
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	jmp	.LBB6_1
.LBB6_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB6_2:                                # %for.body3
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB6_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	andl	$2147483640, %ecx       # imm = 0x7FFFFFF8
	movl	%eax, %edx
	andl	$7, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%r9d, (%rdi,%rax,4)
	movslq	4(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$72, %r11d
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	8(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$144, %r11d
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	12(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$216, %r11d
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	16(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$288, %r11d             # imm = 0x120
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	20(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$360, %r11d             # imm = 0x168
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	24(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$432, %r11d             # imm = 0x1B0
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	28(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	addl	$504, %ecx              # imm = 0x1F8
	orl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %r10d
	movl	%r9d, (%rdi,%r10,4)
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB6_1
# %bb.4:                                # %for.end72
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
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_2 Depth 2
                                        #     Child Loop BB7_4 Depth 2
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB7_2:                                # %for.body3
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB7_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%edx, %esi
	andl	$7, %esi
	imull	$72, %eax, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r8d
	movq	-24(%rbp), %r9          # 8-byte Reload
	movl	(%r9,%r8,4), %edi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	%edi, (%r8)
	imull	$72, %eax, %edi
	addl	$8, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 4(%r8)
	imull	$72, %eax, %edi
	addl	$16, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 8(%r8)
	imull	$72, %eax, %edi
	addl	$24, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 12(%r8)
	imull	$72, %eax, %edi
	addl	$32, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 16(%r8)
	imull	$72, %eax, %edi
	addl	$40, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 20(%r8)
	imull	$72, %eax, %edi
	addl	$48, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 24(%r8)
	imull	$72, %eax, %eax
	addl	$56, %eax
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %r10d
	movl	(%r9,%r10,4), %eax
	movl	%eax, 28(%r8)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB7_4:                                # %for.body56
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB7_4
# %bb.5:                                # %for.inc66
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB7_1
# %bb.6:                                # %for.end68
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
	movq	24(%rbp), %rax
	movq	16(%rbp), %rdx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	%r9, -8(%rbp)           # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	jmp	.LBB8_1
.LBB8_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_2 Depth 2
	movq	-40(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB8_2:                                # %for.body3
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB8_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	andl	$2147483640, %ecx       # imm = 0x7FFFFFF8
	movl	%eax, %edx
	andl	$7, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%r9d, (%rdi,%rax,4)
	movslq	4(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$72, %r11d
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	8(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$144, %r11d
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	12(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$216, %r11d
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	16(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$288, %r11d             # imm = 0x120
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	20(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$360, %r11d             # imm = 0x168
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	24(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	movl	%eax, %r11d
	andl	$2147483640, %r11d      # imm = 0x7FFFFFF8
	addl	$432, %r11d             # imm = 0x1B0
	orl	%edx, %r11d
	movl	%r11d, %r11d
	movl	%r11d, %r10d
	movl	%r9d, (%rdi,%r10,4)
	movslq	28(%rsi), %r10
	movl	(%r8,%r10,4), %r9d
	addl	$504, %ecx              # imm = 0x1F8
	orl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %r10d
	movl	%r9d, (%rdi,%r10,4)
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB8_1
# %bb.4:                                # %for.end72
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
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
                                        #     Child Loop BB9_4 Depth 2
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB9_2:                                # %for.body3
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB9_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%edx, %esi
	andl	$7, %esi
	imull	$72, %eax, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r8d
	movq	-24(%rbp), %r9          # 8-byte Reload
	movl	(%r9,%r8,4), %edi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	%edi, (%r8)
	imull	$72, %eax, %edi
	addl	$8, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 4(%r8)
	imull	$72, %eax, %edi
	addl	$16, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 8(%r8)
	imull	$72, %eax, %edi
	addl	$24, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 12(%r8)
	imull	$72, %eax, %edi
	addl	$32, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 16(%r8)
	imull	$72, %eax, %edi
	addl	$40, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 20(%r8)
	imull	$72, %eax, %edi
	addl	$48, %edi
	orl	%esi, %edi
	movl	%edi, %edi
	movl	%edi, %r10d
	movl	(%r9,%r10,4), %edi
	movl	%edi, 24(%r8)
	imull	$72, %eax, %eax
	addl	$56, %eax
	orl	%esi, %eax
	movl	%eax, %eax
	movl	%eax, %r10d
	movl	(%r9,%r10,4), %eax
	movl	%eax, 28(%r8)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB9_4:                                # %for.body56
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$3, %rsi
	addq	%rax, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB9_4
# %bb.5:                                # %for.inc66
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB9_1
# %bb.6:                                # %for.end68
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
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_2 Depth 2
                                        #     Child Loop BB10_4 Depth 2
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
.LBB10_2:                               # %for.body3
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	shlq	$3, %rcx
	addq	%rax, %rcx
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	shlq	$3, %rdi
	addq	%rax, %rdi
	movq	-24(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	%esi, (%rdi,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB10_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movss	.LCPI10_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx), %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi), %r8d
	movl	%esi, %r9d
	addl	16(%rdx), %r9d
	movl	%r9d, (%rdx)
	movl	%r8d, %r9d
	addl	16(%rdi), %r9d
	movl	%r9d, (%rdi)
	subl	16(%rdx), %esi
	movl	%esi, 16(%rdx)
	subl	16(%rdi), %r8d
	movl	%r8d, 16(%rdi)
	movl	4(%rdx), %esi
	movl	4(%rdi), %r8d
	movl	%esi, %r9d
	addl	20(%rdx), %r9d
	movl	%r9d, 4(%rdx)
	movl	%r8d, %r9d
	addl	20(%rdi), %r9d
	movl	%r9d, 4(%rdi)
	subl	20(%rdx), %esi
	movl	%esi, 20(%rdx)
	subl	20(%rdi), %r8d
	movl	%r8d, 20(%rdi)
	movl	8(%rdx), %esi
	movl	8(%rdi), %r8d
	movl	%esi, %r9d
	addl	24(%rdx), %r9d
	movl	%r9d, 8(%rdx)
	movl	%r8d, %r9d
	addl	24(%rdi), %r9d
	movl	%r9d, 8(%rdi)
	subl	24(%rdx), %esi
	movl	%esi, 24(%rdx)
	subl	24(%rdi), %r8d
	movl	%r8d, 24(%rdi)
	movl	12(%rdx), %esi
	movl	12(%rdi), %r8d
	movl	%esi, %r9d
	addl	28(%rdx), %r9d
	movl	%r9d, 12(%rdx)
	movl	%r8d, %r9d
	addl	28(%rdi), %r9d
	movl	%r9d, 12(%rdi)
	subl	28(%rdx), %esi
	movl	%esi, 28(%rdx)
	subl	28(%rdi), %r8d
	movl	%r8d, 28(%rdi)
	movl	20(%rdx), %esi
	movl	%esi, %r8d
	addl	20(%rdi), %r8d
	cvtsi2ss	%r8d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r8d
	movl	%r8d, 20(%rdx)
	movl	20(%rdi), %r8d
	subl	%esi, %r8d
	cvtsi2ss	%r8d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, 20(%rdi)
	movl	24(%rdx), %esi
	movl	24(%rdi), %r8d
	movl	%r8d, 24(%rdx)
	movl	%eax, %r8d
	subl	%esi, %r8d
	movl	%r8d, 24(%rdi)
	movl	28(%rdx), %esi
	movl	28(%rdi), %r8d
	subl	%esi, %r8d
	cvtsi2ss	%r8d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r8d
	movl	%r8d, 28(%rdx)
	addl	28(%rdi), %esi
	movl	%eax, %r8d
	subl	%esi, %r8d
	cvtsi2ss	%r8d, %xmm1
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %esi
	movl	%esi, 28(%rdi)
	movl	(%rdx), %esi
	movl	(%rdi), %r8d
	movl	%esi, %r9d
	addl	8(%rdx), %r9d
	movl	%r9d, (%rdx)
	movl	%r8d, %r9d
	addl	8(%rdi), %r9d
	movl	%r9d, (%rdi)
	subl	8(%rdx), %esi
	movl	%esi, 8(%rdx)
	subl	8(%rdi), %r8d
	movl	%r8d, 8(%rdi)
	movl	4(%rdx), %esi
	movl	4(%rdi), %r8d
	movl	%esi, %r9d
	addl	12(%rdx), %r9d
	movl	%r9d, 4(%rdx)
	movl	%r8d, %r9d
	addl	12(%rdi), %r9d
	movl	%r9d, 4(%rdi)
	subl	12(%rdx), %esi
	movl	%esi, 12(%rdx)
	subl	12(%rdi), %r8d
	movl	%r8d, 12(%rdi)
	movl	12(%rdx), %esi
	movl	%r8d, 12(%rdx)
	movl	%eax, %r8d
	subl	%esi, %r8d
	movl	%r8d, 12(%rdi)
	movl	(%rdx), %esi
	movl	(%rdi), %r8d
	movl	%esi, %r9d
	addl	4(%rdx), %r9d
	movl	%r9d, (%rdx)
	movl	%r8d, %r9d
	addl	4(%rdi), %r9d
	movl	%r9d, (%rdi)
	subl	4(%rdx), %esi
	movl	%esi, 4(%rdx)
	subl	4(%rdi), %r8d
	movl	%r8d, 4(%rdi)
	movl	8(%rdx), %esi
	movl	8(%rdi), %r8d
	movl	%esi, %r9d
	addl	12(%rdx), %r9d
	movl	%r9d, 8(%rdx)
	movl	%r8d, %r9d
	addl	12(%rdi), %r9d
	movl	%r9d, 8(%rdi)
	subl	12(%rdx), %esi
	movl	%esi, 12(%rdx)
	subl	12(%rdi), %r8d
	movl	%r8d, 12(%rdi)
	movl	16(%rdx), %esi
	movl	16(%rdi), %r8d
	movl	%esi, %r9d
	addl	24(%rdx), %r9d
	movl	%r9d, 16(%rdx)
	movl	%r8d, %r9d
	addl	24(%rdi), %r9d
	movl	%r9d, 16(%rdi)
	subl	24(%rdx), %esi
	movl	%esi, 24(%rdx)
	subl	24(%rdi), %r8d
	movl	%r8d, 24(%rdi)
	movl	20(%rdx), %esi
	movl	20(%rdi), %r8d
	movl	%esi, %r9d
	addl	28(%rdx), %r9d
	movl	%r9d, 20(%rdx)
	movl	%r8d, %r9d
	addl	28(%rdi), %r9d
	movl	%r9d, 20(%rdi)
	subl	28(%rdx), %esi
	movl	%esi, 28(%rdx)
	subl	28(%rdi), %r8d
	movl	%r8d, 28(%rdi)
	movl	28(%rdx), %esi
	movl	%r8d, 28(%rdx)
	subl	%esi, %eax
	movl	%eax, 28(%rdi)
	movl	16(%rdx), %eax
	movl	16(%rdi), %esi
	movl	%eax, %r8d
	addl	20(%rdx), %r8d
	movl	%r8d, 16(%rdx)
	movl	%esi, %r8d
	addl	20(%rdi), %r8d
	movl	%r8d, 16(%rdi)
	subl	20(%rdx), %eax
	movl	%eax, 20(%rdx)
	subl	20(%rdi), %esi
	movl	%esi, 20(%rdi)
	movl	24(%rdx), %eax
	movl	24(%rdi), %esi
	movl	%eax, %r8d
	addl	28(%rdx), %r8d
	movl	%r8d, 24(%rdx)
	movl	%esi, %r8d
	addl	28(%rdi), %r8d
	movl	%r8d, 24(%rdi)
	subl	28(%rdx), %eax
	movl	%eax, 28(%rdx)
	subl	28(%rdi), %esi
	movl	%esi, 28(%rdi)
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB10_4:                               # %for.body278
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx,%rax,4), %rdx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rdx,4), %edi
	movq	%rax, %rdx
	shlq	$6, %rdx
	movq	-72(%rbp), %r8          # 8-byte Reload
	addq	%r8, %rdx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movl	%edi, (%r9,%rdx,4)
	movslq	(%rcx,%rax,4), %rdx
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	(%r10,%rdx,4), %edi
	movq	%rax, %rdx
	shlq	$6, %rdx
	addq	%r8, %rdx
	movq	-40(%rbp), %r11         # 8-byte Reload
	movl	%edi, (%r11,%rdx,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB10_4
# %bb.5:                                # %for.inc298
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB10_1
# %bb.6:                                # %for.end300
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
