	.text
	.file	"fft_20_64.c"
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
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$64, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB5_1
# %bb.8:                                # %for.end334
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
	subq	$920, %rsp              # imm = 0x398
	movq	16(%rbp), %rax
	movq	%r8, -8(%rbp)           # 8-byte Spill
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB7_1
.LBB7_1:                                # %for.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB7_2
.LBB7_2:                                # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%edx, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB7_2
# %bb.3:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	32(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	64(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	96(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	128(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	160(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	192(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	224(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -40(%rbp)         # 8-byte Spill
.LBB7_4:                                # %for.body56
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	%edx, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB7_4
# %bb.5:                                # %for.inc66
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_6
.LBB7_6:                                # %for.body3.1
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB7_6
# %bb.7:                                # %for.end.1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	4(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	36(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	68(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	100(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	132(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	164(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	196(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	228(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB7_8:                                # %for.body56.1
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$8, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB7_8
# %bb.9:                                # %for.inc66.1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB7_10
.LBB7_10:                               # %for.body3.2
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB7_10
# %bb.11:                               # %for.end.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	8(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	40(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	72(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	104(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	136(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	168(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	200(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	232(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
.LBB7_12:                               # %for.body56.2
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$16, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB7_12
# %bb.13:                               # %for.inc66.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB7_14
.LBB7_14:                               # %for.body3.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$24, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB7_14
# %bb.15:                               # %for.end.3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	12(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	44(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	76(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	108(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	140(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	172(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	204(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	236(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB7_16:                               # %for.body56.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$24, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB7_16
# %bb.17:                               # %for.inc66.3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_18
.LBB7_18:                               # %for.body3.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$32, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB7_18
# %bb.19:                               # %for.end.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	16(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	48(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	80(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	112(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	144(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	176(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	208(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	240(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB7_20:                               # %for.body56.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$32, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB7_20
# %bb.21:                               # %for.inc66.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_22
.LBB7_22:                               # %for.body3.5
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$40, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB7_22
# %bb.23:                               # %for.end.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	20(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	52(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	84(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	116(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	148(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	180(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	212(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	244(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB7_24:                               # %for.body56.5
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$40, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB7_24
# %bb.25:                               # %for.inc66.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB7_26
.LBB7_26:                               # %for.body3.6
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$48, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB7_26
# %bb.27:                               # %for.end.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	24(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	56(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	88(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	120(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	152(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	184(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	216(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	248(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB7_28:                               # %for.body56.6
                                        # =>This Inner Loop Header: Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$48, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jne	.LBB7_28
# %bb.29:                               # %for.inc66.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB7_30
.LBB7_30:                               # %for.body3.7
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$56, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB7_30
# %bb.31:                               # %for.end.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	28(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	60(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	92(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	124(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	156(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	188(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	220(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	252(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB7_32:                               # %for.body56.7
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$56, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB7_32
# %bb.33:                               # %for.inc66.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB7_34
.LBB7_34:                               # %for.body3.8
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$64, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB7_34
# %bb.35:                               # %for.end.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	288(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	320(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	352(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	384(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	416(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	448(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	480(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	512(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB7_36:                               # %for.body56.8
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$64, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB7_36
# %bb.37:                               # %for.inc66.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB7_38
.LBB7_38:                               # %for.body3.9
                                        # =>This Inner Loop Header: Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$72, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB7_38
# %bb.39:                               # %for.end.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	292(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	324(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	356(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	388(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	420(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	452(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	484(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	516(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -184(%rbp)        # 8-byte Spill
.LBB7_40:                               # %for.body56.9
                                        # =>This Inner Loop Header: Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$72, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jne	.LBB7_40
# %bb.41:                               # %for.inc66.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB7_42
.LBB7_42:                               # %for.body3.10
                                        # =>This Inner Loop Header: Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$80, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB7_42
# %bb.43:                               # %for.end.10
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	296(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	328(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	360(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	392(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	424(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	456(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	488(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	520(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -200(%rbp)        # 8-byte Spill
.LBB7_44:                               # %for.body56.10
                                        # =>This Inner Loop Header: Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$80, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jne	.LBB7_44
# %bb.45:                               # %for.inc66.10
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB7_46
.LBB7_46:                               # %for.body3.11
                                        # =>This Inner Loop Header: Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$88, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB7_46
# %bb.47:                               # %for.end.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	300(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	332(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	364(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	396(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	428(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	460(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	492(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	524(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -216(%rbp)        # 8-byte Spill
.LBB7_48:                               # %for.body56.11
                                        # =>This Inner Loop Header: Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$88, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jne	.LBB7_48
# %bb.49:                               # %for.inc66.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB7_50
.LBB7_50:                               # %for.body3.12
                                        # =>This Inner Loop Header: Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$96, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB7_50
# %bb.51:                               # %for.end.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	304(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	336(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	368(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	400(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	432(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	464(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	496(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	528(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -232(%rbp)        # 8-byte Spill
.LBB7_52:                               # %for.body56.12
                                        # =>This Inner Loop Header: Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$96, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB7_52
# %bb.53:                               # %for.inc66.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB7_54
.LBB7_54:                               # %for.body3.13
                                        # =>This Inner Loop Header: Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$104, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jne	.LBB7_54
# %bb.55:                               # %for.end.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	308(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	340(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	372(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	404(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	436(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	468(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	500(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	532(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -248(%rbp)        # 8-byte Spill
.LBB7_56:                               # %for.body56.13
                                        # =>This Inner Loop Header: Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$104, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jne	.LBB7_56
# %bb.57:                               # %for.inc66.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB7_58
.LBB7_58:                               # %for.body3.14
                                        # =>This Inner Loop Header: Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$112, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB7_58
# %bb.59:                               # %for.end.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	312(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	344(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	376(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	408(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	440(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	472(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	504(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	536(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -264(%rbp)        # 8-byte Spill
.LBB7_60:                               # %for.body56.14
                                        # =>This Inner Loop Header: Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$112, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB7_60
# %bb.61:                               # %for.inc66.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB7_62
.LBB7_62:                               # %for.body3.15
                                        # =>This Inner Loop Header: Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$120, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jne	.LBB7_62
# %bb.63:                               # %for.end.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	316(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	348(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	380(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	412(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	444(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	476(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	508(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	540(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -280(%rbp)        # 8-byte Spill
.LBB7_64:                               # %for.body56.15
                                        # =>This Inner Loop Header: Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$120, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jne	.LBB7_64
# %bb.65:                               # %for.inc66.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB7_66
.LBB7_66:                               # %for.body3.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$128, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB7_66
# %bb.67:                               # %for.end.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	576(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	608(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	640(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	672(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	704(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	736(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	768(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	800(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB7_68:                               # %for.body56.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$128, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jne	.LBB7_68
# %bb.69:                               # %for.inc66.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB7_70
.LBB7_70:                               # %for.body3.17
                                        # =>This Inner Loop Header: Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$136, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jne	.LBB7_70
# %bb.71:                               # %for.end.17
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	580(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	612(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	644(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	676(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	708(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	740(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	772(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	804(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -312(%rbp)        # 8-byte Spill
.LBB7_72:                               # %for.body56.17
                                        # =>This Inner Loop Header: Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$136, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB7_72
# %bb.73:                               # %for.inc66.17
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB7_74
.LBB7_74:                               # %for.body3.18
                                        # =>This Inner Loop Header: Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$144, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jne	.LBB7_74
# %bb.75:                               # %for.end.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	584(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	616(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	648(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	680(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	712(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	744(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	776(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	808(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -328(%rbp)        # 8-byte Spill
.LBB7_76:                               # %for.body56.18
                                        # =>This Inner Loop Header: Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$144, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jne	.LBB7_76
# %bb.77:                               # %for.inc66.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB7_78
.LBB7_78:                               # %for.body3.19
                                        # =>This Inner Loop Header: Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$152, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jne	.LBB7_78
# %bb.79:                               # %for.end.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	588(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	620(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	652(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	684(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	716(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	748(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	780(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	812(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -344(%rbp)        # 8-byte Spill
.LBB7_80:                               # %for.body56.19
                                        # =>This Inner Loop Header: Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$152, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jne	.LBB7_80
# %bb.81:                               # %for.inc66.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB7_82
.LBB7_82:                               # %for.body3.20
                                        # =>This Inner Loop Header: Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$160, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB7_82
# %bb.83:                               # %for.end.20
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	592(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	624(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	656(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	688(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	720(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	752(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	784(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	816(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB7_84:                               # %for.body56.20
                                        # =>This Inner Loop Header: Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$160, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jne	.LBB7_84
# %bb.85:                               # %for.inc66.20
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB7_86
.LBB7_86:                               # %for.body3.21
                                        # =>This Inner Loop Header: Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$168, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jne	.LBB7_86
# %bb.87:                               # %for.end.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	596(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	628(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	660(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	692(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	724(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	756(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	788(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	820(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -376(%rbp)        # 8-byte Spill
.LBB7_88:                               # %for.body56.21
                                        # =>This Inner Loop Header: Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$168, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jne	.LBB7_88
# %bb.89:                               # %for.inc66.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB7_90
.LBB7_90:                               # %for.body3.22
                                        # =>This Inner Loop Header: Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$176, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jne	.LBB7_90
# %bb.91:                               # %for.end.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	600(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	632(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	664(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	696(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	728(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	760(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	792(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	824(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -392(%rbp)        # 8-byte Spill
.LBB7_92:                               # %for.body56.22
                                        # =>This Inner Loop Header: Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$176, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jne	.LBB7_92
# %bb.93:                               # %for.inc66.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB7_94
.LBB7_94:                               # %for.body3.23
                                        # =>This Inner Loop Header: Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$184, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jne	.LBB7_94
# %bb.95:                               # %for.end.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	604(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	636(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	668(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	700(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	732(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	764(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	796(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	828(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -408(%rbp)        # 8-byte Spill
.LBB7_96:                               # %for.body56.23
                                        # =>This Inner Loop Header: Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$184, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jne	.LBB7_96
# %bb.97:                               # %for.inc66.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB7_98
.LBB7_98:                               # %for.body3.24
                                        # =>This Inner Loop Header: Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$192, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jne	.LBB7_98
# %bb.99:                               # %for.end.24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	864(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	896(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	928(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	960(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	992(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1024(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1056(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1088(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -424(%rbp)        # 8-byte Spill
.LBB7_100:                              # %for.body56.24
                                        # =>This Inner Loop Header: Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$192, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jne	.LBB7_100
# %bb.101:                              # %for.inc66.24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB7_102
.LBB7_102:                              # %for.body3.25
                                        # =>This Inner Loop Header: Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$200, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jne	.LBB7_102
# %bb.103:                              # %for.end.25
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	868(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	900(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	932(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	964(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	996(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1028(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1060(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1092(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -440(%rbp)        # 8-byte Spill
.LBB7_104:                              # %for.body56.25
                                        # =>This Inner Loop Header: Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$200, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jne	.LBB7_104
# %bb.105:                              # %for.inc66.25
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB7_106
.LBB7_106:                              # %for.body3.26
                                        # =>This Inner Loop Header: Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$208, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jne	.LBB7_106
# %bb.107:                              # %for.end.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	872(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	904(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	936(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	968(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1000(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1032(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1064(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1096(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -456(%rbp)        # 8-byte Spill
.LBB7_108:                              # %for.body56.26
                                        # =>This Inner Loop Header: Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$208, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jne	.LBB7_108
# %bb.109:                              # %for.inc66.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB7_110
.LBB7_110:                              # %for.body3.27
                                        # =>This Inner Loop Header: Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$216, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jne	.LBB7_110
# %bb.111:                              # %for.end.27
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	876(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	908(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	940(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	972(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1004(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1036(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1068(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1100(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -472(%rbp)        # 8-byte Spill
.LBB7_112:                              # %for.body56.27
                                        # =>This Inner Loop Header: Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$216, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jne	.LBB7_112
# %bb.113:                              # %for.inc66.27
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB7_114
.LBB7_114:                              # %for.body3.28
                                        # =>This Inner Loop Header: Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$224, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jne	.LBB7_114
# %bb.115:                              # %for.end.28
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	880(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	912(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	944(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	976(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1008(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1040(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1072(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1104(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -488(%rbp)        # 8-byte Spill
.LBB7_116:                              # %for.body56.28
                                        # =>This Inner Loop Header: Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$224, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jne	.LBB7_116
# %bb.117:                              # %for.inc66.28
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB7_118
.LBB7_118:                              # %for.body3.29
                                        # =>This Inner Loop Header: Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$232, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jne	.LBB7_118
# %bb.119:                              # %for.end.29
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	884(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	916(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	948(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	980(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1012(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1044(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1076(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1108(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -504(%rbp)        # 8-byte Spill
.LBB7_120:                              # %for.body56.29
                                        # =>This Inner Loop Header: Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$232, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jne	.LBB7_120
# %bb.121:                              # %for.inc66.29
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB7_122
.LBB7_122:                              # %for.body3.30
                                        # =>This Inner Loop Header: Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$240, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jne	.LBB7_122
# %bb.123:                              # %for.end.30
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	888(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	920(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	952(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	984(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1016(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1048(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1080(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1112(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -520(%rbp)        # 8-byte Spill
.LBB7_124:                              # %for.body56.30
                                        # =>This Inner Loop Header: Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$240, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jne	.LBB7_124
# %bb.125:                              # %for.inc66.30
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB7_126
.LBB7_126:                              # %for.body3.31
                                        # =>This Inner Loop Header: Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$248, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jne	.LBB7_126
# %bb.127:                              # %for.end.31
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	892(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	924(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	956(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	988(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1020(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1052(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1084(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1116(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -536(%rbp)        # 8-byte Spill
.LBB7_128:                              # %for.body56.31
                                        # =>This Inner Loop Header: Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$248, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jne	.LBB7_128
# %bb.129:                              # %for.inc66.31
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB7_130
.LBB7_130:                              # %for.body3.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jne	.LBB7_130
# %bb.131:                              # %for.end.32
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1152(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1184(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1216(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1248(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1280(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1312(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1344(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1376(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -552(%rbp)        # 8-byte Spill
.LBB7_132:                              # %for.body56.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$256, %rsi              # imm = 0x100
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jne	.LBB7_132
# %bb.133:                              # %for.inc66.32
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB7_134
.LBB7_134:                              # %for.body3.33
                                        # =>This Inner Loop Header: Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$264, %rcx              # imm = 0x108
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jne	.LBB7_134
# %bb.135:                              # %for.end.33
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1156(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1188(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1220(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1252(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1284(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1316(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1348(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1380(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -568(%rbp)        # 8-byte Spill
.LBB7_136:                              # %for.body56.33
                                        # =>This Inner Loop Header: Depth=1
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$264, %rsi              # imm = 0x108
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jne	.LBB7_136
# %bb.137:                              # %for.inc66.33
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB7_138
.LBB7_138:                              # %for.body3.34
                                        # =>This Inner Loop Header: Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$272, %rcx              # imm = 0x110
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jne	.LBB7_138
# %bb.139:                              # %for.end.34
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1160(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1192(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1224(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1256(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1288(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1320(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1352(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1384(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -584(%rbp)        # 8-byte Spill
.LBB7_140:                              # %for.body56.34
                                        # =>This Inner Loop Header: Depth=1
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$272, %rsi              # imm = 0x110
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jne	.LBB7_140
# %bb.141:                              # %for.inc66.34
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB7_142
.LBB7_142:                              # %for.body3.35
                                        # =>This Inner Loop Header: Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$280, %rcx              # imm = 0x118
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jne	.LBB7_142
# %bb.143:                              # %for.end.35
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1164(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1196(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1228(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1260(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1292(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1324(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1356(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1388(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -600(%rbp)        # 8-byte Spill
.LBB7_144:                              # %for.body56.35
                                        # =>This Inner Loop Header: Depth=1
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$280, %rsi              # imm = 0x118
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jne	.LBB7_144
# %bb.145:                              # %for.inc66.35
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB7_146
.LBB7_146:                              # %for.body3.36
                                        # =>This Inner Loop Header: Depth=1
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$288, %rcx              # imm = 0x120
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jne	.LBB7_146
# %bb.147:                              # %for.end.36
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1168(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1200(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1232(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1264(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1296(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1328(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1360(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1392(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -616(%rbp)        # 8-byte Spill
.LBB7_148:                              # %for.body56.36
                                        # =>This Inner Loop Header: Depth=1
	movq	-616(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$288, %rsi              # imm = 0x120
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jne	.LBB7_148
# %bb.149:                              # %for.inc66.36
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB7_150
.LBB7_150:                              # %for.body3.37
                                        # =>This Inner Loop Header: Depth=1
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$296, %rcx              # imm = 0x128
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jne	.LBB7_150
# %bb.151:                              # %for.end.37
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1172(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1204(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1236(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1268(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1300(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1332(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1364(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1396(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -632(%rbp)        # 8-byte Spill
.LBB7_152:                              # %for.body56.37
                                        # =>This Inner Loop Header: Depth=1
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$296, %rsi              # imm = 0x128
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jne	.LBB7_152
# %bb.153:                              # %for.inc66.37
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB7_154
.LBB7_154:                              # %for.body3.38
                                        # =>This Inner Loop Header: Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$304, %rcx              # imm = 0x130
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jne	.LBB7_154
# %bb.155:                              # %for.end.38
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1176(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1208(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1240(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1272(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1304(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1336(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1368(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1400(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -648(%rbp)        # 8-byte Spill
.LBB7_156:                              # %for.body56.38
                                        # =>This Inner Loop Header: Depth=1
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$304, %rsi              # imm = 0x130
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jne	.LBB7_156
# %bb.157:                              # %for.inc66.38
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB7_158
.LBB7_158:                              # %for.body3.39
                                        # =>This Inner Loop Header: Depth=1
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jne	.LBB7_158
# %bb.159:                              # %for.end.39
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1180(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1212(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1244(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1276(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1308(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1340(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1372(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1404(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -664(%rbp)        # 8-byte Spill
.LBB7_160:                              # %for.body56.39
                                        # =>This Inner Loop Header: Depth=1
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$312, %rsi              # imm = 0x138
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jne	.LBB7_160
# %bb.161:                              # %for.inc66.39
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	jmp	.LBB7_162
.LBB7_162:                              # %for.body3.40
                                        # =>This Inner Loop Header: Depth=1
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$320, %rcx              # imm = 0x140
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jne	.LBB7_162
# %bb.163:                              # %for.end.40
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1440(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1472(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1504(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1536(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1568(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1600(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1632(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1664(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -680(%rbp)        # 8-byte Spill
.LBB7_164:                              # %for.body56.40
                                        # =>This Inner Loop Header: Depth=1
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$320, %rsi              # imm = 0x140
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jne	.LBB7_164
# %bb.165:                              # %for.inc66.40
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB7_166
.LBB7_166:                              # %for.body3.41
                                        # =>This Inner Loop Header: Depth=1
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$328, %rcx              # imm = 0x148
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jne	.LBB7_166
# %bb.167:                              # %for.end.41
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1444(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1476(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1508(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1540(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1572(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1604(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1636(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1668(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -696(%rbp)        # 8-byte Spill
.LBB7_168:                              # %for.body56.41
                                        # =>This Inner Loop Header: Depth=1
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$328, %rsi              # imm = 0x148
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jne	.LBB7_168
# %bb.169:                              # %for.inc66.41
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	jmp	.LBB7_170
.LBB7_170:                              # %for.body3.42
                                        # =>This Inner Loop Header: Depth=1
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$336, %rcx              # imm = 0x150
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jne	.LBB7_170
# %bb.171:                              # %for.end.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1448(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1480(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1512(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1544(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1576(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1608(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1640(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1672(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -712(%rbp)        # 8-byte Spill
.LBB7_172:                              # %for.body56.42
                                        # =>This Inner Loop Header: Depth=1
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$336, %rsi              # imm = 0x150
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jne	.LBB7_172
# %bb.173:                              # %for.inc66.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB7_174
.LBB7_174:                              # %for.body3.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-720(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$344, %rcx              # imm = 0x158
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jne	.LBB7_174
# %bb.175:                              # %for.end.43
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1452(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1484(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1516(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1548(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1580(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1612(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1644(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1676(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -728(%rbp)        # 8-byte Spill
.LBB7_176:                              # %for.body56.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$344, %rsi              # imm = 0x158
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jne	.LBB7_176
# %bb.177:                              # %for.inc66.43
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB7_178
.LBB7_178:                              # %for.body3.44
                                        # =>This Inner Loop Header: Depth=1
	movq	-736(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$352, %rcx              # imm = 0x160
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jne	.LBB7_178
# %bb.179:                              # %for.end.44
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1456(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1488(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1520(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1552(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1584(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1616(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1648(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1680(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -744(%rbp)        # 8-byte Spill
.LBB7_180:                              # %for.body56.44
                                        # =>This Inner Loop Header: Depth=1
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$352, %rsi              # imm = 0x160
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jne	.LBB7_180
# %bb.181:                              # %for.inc66.44
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	jmp	.LBB7_182
.LBB7_182:                              # %for.body3.45
                                        # =>This Inner Loop Header: Depth=1
	movq	-752(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$360, %rcx              # imm = 0x168
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jne	.LBB7_182
# %bb.183:                              # %for.end.45
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1460(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1492(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1524(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1556(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1588(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1620(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1652(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1684(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -760(%rbp)        # 8-byte Spill
.LBB7_184:                              # %for.body56.45
                                        # =>This Inner Loop Header: Depth=1
	movq	-760(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$360, %rsi              # imm = 0x168
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jne	.LBB7_184
# %bb.185:                              # %for.inc66.45
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB7_186
.LBB7_186:                              # %for.body3.46
                                        # =>This Inner Loop Header: Depth=1
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$368, %rcx              # imm = 0x170
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jne	.LBB7_186
# %bb.187:                              # %for.end.46
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1464(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1496(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1528(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1560(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1592(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1624(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1656(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1688(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -776(%rbp)        # 8-byte Spill
.LBB7_188:                              # %for.body56.46
                                        # =>This Inner Loop Header: Depth=1
	movq	-776(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$368, %rsi              # imm = 0x170
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jne	.LBB7_188
# %bb.189:                              # %for.inc66.46
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB7_190
.LBB7_190:                              # %for.body3.47
                                        # =>This Inner Loop Header: Depth=1
	movq	-784(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$376, %rcx              # imm = 0x178
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jne	.LBB7_190
# %bb.191:                              # %for.end.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1468(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1500(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1532(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1564(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1596(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1628(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1660(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1692(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -792(%rbp)        # 8-byte Spill
.LBB7_192:                              # %for.body56.47
                                        # =>This Inner Loop Header: Depth=1
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$376, %rsi              # imm = 0x178
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jne	.LBB7_192
# %bb.193:                              # %for.inc66.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	jmp	.LBB7_194
.LBB7_194:                              # %for.body3.48
                                        # =>This Inner Loop Header: Depth=1
	movq	-800(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$384, %rcx              # imm = 0x180
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jne	.LBB7_194
# %bb.195:                              # %for.end.48
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1728(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1760(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1792(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1824(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1856(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1888(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1920(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1952(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -808(%rbp)        # 8-byte Spill
.LBB7_196:                              # %for.body56.48
                                        # =>This Inner Loop Header: Depth=1
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$384, %rsi              # imm = 0x180
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jne	.LBB7_196
# %bb.197:                              # %for.inc66.48
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	jmp	.LBB7_198
.LBB7_198:                              # %for.body3.49
                                        # =>This Inner Loop Header: Depth=1
	movq	-816(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$392, %rcx              # imm = 0x188
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jne	.LBB7_198
# %bb.199:                              # %for.end.49
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1732(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1764(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1796(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1828(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1860(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1892(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1924(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1956(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -824(%rbp)        # 8-byte Spill
.LBB7_200:                              # %for.body56.49
                                        # =>This Inner Loop Header: Depth=1
	movq	-824(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$392, %rsi              # imm = 0x188
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jne	.LBB7_200
# %bb.201:                              # %for.inc66.49
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB7_202
.LBB7_202:                              # %for.body3.50
                                        # =>This Inner Loop Header: Depth=1
	movq	-832(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$400, %rcx              # imm = 0x190
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jne	.LBB7_202
# %bb.203:                              # %for.end.50
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1736(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1768(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1800(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1832(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1864(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1896(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1928(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1960(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -840(%rbp)        # 8-byte Spill
.LBB7_204:                              # %for.body56.50
                                        # =>This Inner Loop Header: Depth=1
	movq	-840(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$400, %rsi              # imm = 0x190
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jne	.LBB7_204
# %bb.205:                              # %for.inc66.50
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jmp	.LBB7_206
.LBB7_206:                              # %for.body3.51
                                        # =>This Inner Loop Header: Depth=1
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$408, %rcx              # imm = 0x198
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jne	.LBB7_206
# %bb.207:                              # %for.end.51
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1740(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1772(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1804(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1836(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1868(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1900(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1932(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1964(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -856(%rbp)        # 8-byte Spill
.LBB7_208:                              # %for.body56.51
                                        # =>This Inner Loop Header: Depth=1
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$408, %rsi              # imm = 0x198
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jne	.LBB7_208
# %bb.209:                              # %for.inc66.51
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB7_210
.LBB7_210:                              # %for.body3.52
                                        # =>This Inner Loop Header: Depth=1
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$416, %rcx              # imm = 0x1A0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jne	.LBB7_210
# %bb.211:                              # %for.end.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1744(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1776(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1808(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1840(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1872(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1904(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1936(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1968(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -872(%rbp)        # 8-byte Spill
.LBB7_212:                              # %for.body56.52
                                        # =>This Inner Loop Header: Depth=1
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$416, %rsi              # imm = 0x1A0
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jne	.LBB7_212
# %bb.213:                              # %for.inc66.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB7_214
.LBB7_214:                              # %for.body3.53
                                        # =>This Inner Loop Header: Depth=1
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$424, %rcx              # imm = 0x1A8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jne	.LBB7_214
# %bb.215:                              # %for.end.53
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1748(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1780(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1812(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1844(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1876(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1908(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1940(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1972(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -888(%rbp)        # 8-byte Spill
.LBB7_216:                              # %for.body56.53
                                        # =>This Inner Loop Header: Depth=1
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$424, %rsi              # imm = 0x1A8
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jne	.LBB7_216
# %bb.217:                              # %for.inc66.53
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB7_218
.LBB7_218:                              # %for.body3.54
                                        # =>This Inner Loop Header: Depth=1
	movq	-896(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$432, %rcx              # imm = 0x1B0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jne	.LBB7_218
# %bb.219:                              # %for.end.54
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1752(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1784(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1816(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1848(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1880(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1912(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1944(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1976(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -904(%rbp)        # 8-byte Spill
.LBB7_220:                              # %for.body56.54
                                        # =>This Inner Loop Header: Depth=1
	movq	-904(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$432, %rsi              # imm = 0x1B0
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jne	.LBB7_220
# %bb.221:                              # %for.inc66.54
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	jmp	.LBB7_222
.LBB7_222:                              # %for.body3.55
                                        # =>This Inner Loop Header: Depth=1
	movq	-912(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$440, %rcx              # imm = 0x1B8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jne	.LBB7_222
# %bb.223:                              # %for.end.55
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	1756(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	1788(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	1820(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	1852(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	1884(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	1916(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	1948(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	1980(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -920(%rbp)        # 8-byte Spill
.LBB7_224:                              # %for.body56.55
                                        # =>This Inner Loop Header: Depth=1
	movq	-920(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$440, %rsi              # imm = 0x1B8
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jne	.LBB7_224
# %bb.225:                              # %for.inc66.55
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	jmp	.LBB7_226
.LBB7_226:                              # %for.body3.56
                                        # =>This Inner Loop Header: Depth=1
	movq	-928(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$448, %rcx              # imm = 0x1C0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jne	.LBB7_226
# %bb.227:                              # %for.end.56
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	2016(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	2048(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	2080(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	2112(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	2144(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	2176(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	2208(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	2240(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -936(%rbp)        # 8-byte Spill
.LBB7_228:                              # %for.body56.56
                                        # =>This Inner Loop Header: Depth=1
	movq	-936(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$448, %rsi              # imm = 0x1C0
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jne	.LBB7_228
# %bb.229:                              # %for.inc66.56
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB7_230
.LBB7_230:                              # %for.body3.57
                                        # =>This Inner Loop Header: Depth=1
	movq	-944(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$456, %rcx              # imm = 0x1C8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jne	.LBB7_230
# %bb.231:                              # %for.end.57
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	2020(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	2052(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	2084(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	2116(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	2148(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	2180(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	2212(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	2244(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -952(%rbp)        # 8-byte Spill
.LBB7_232:                              # %for.body56.57
                                        # =>This Inner Loop Header: Depth=1
	movq	-952(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$456, %rsi              # imm = 0x1C8
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jne	.LBB7_232
# %bb.233:                              # %for.inc66.57
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB7_234
.LBB7_234:                              # %for.body3.58
                                        # =>This Inner Loop Header: Depth=1
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$464, %rcx              # imm = 0x1D0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jne	.LBB7_234
# %bb.235:                              # %for.end.58
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	2024(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	2056(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	2088(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	2120(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	2152(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	2184(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	2216(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	2248(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -968(%rbp)        # 8-byte Spill
.LBB7_236:                              # %for.body56.58
                                        # =>This Inner Loop Header: Depth=1
	movq	-968(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$464, %rsi              # imm = 0x1D0
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jne	.LBB7_236
# %bb.237:                              # %for.inc66.58
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB7_238
.LBB7_238:                              # %for.body3.59
                                        # =>This Inner Loop Header: Depth=1
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$472, %rcx              # imm = 0x1D8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jne	.LBB7_238
# %bb.239:                              # %for.end.59
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	2028(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	2060(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	2092(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	2124(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	2156(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	2188(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	2220(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	2252(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -984(%rbp)        # 8-byte Spill
.LBB7_240:                              # %for.body56.59
                                        # =>This Inner Loop Header: Depth=1
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$472, %rsi              # imm = 0x1D8
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jne	.LBB7_240
# %bb.241:                              # %for.inc66.59
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	jmp	.LBB7_242
.LBB7_242:                              # %for.body3.60
                                        # =>This Inner Loop Header: Depth=1
	movq	-992(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$480, %rcx              # imm = 0x1E0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jne	.LBB7_242
# %bb.243:                              # %for.end.60
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	2032(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	2064(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	2096(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	2128(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	2160(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	2192(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	2224(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	2256(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
.LBB7_244:                              # %for.body56.60
                                        # =>This Inner Loop Header: Depth=1
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$480, %rsi              # imm = 0x1E0
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jne	.LBB7_244
# %bb.245:                              # %for.inc66.60
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB7_246
.LBB7_246:                              # %for.body3.61
                                        # =>This Inner Loop Header: Depth=1
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rcx
	addq	$488, %rcx              # imm = 0x1E8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jne	.LBB7_246
# %bb.247:                              # %for.end.61
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	2036(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	2068(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	2100(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	2132(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	2164(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	2196(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	2228(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	2260(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
.LBB7_248:                              # %for.body56.61
                                        # =>This Inner Loop Header: Depth=1
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$488, %rsi              # imm = 0x1E8
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jne	.LBB7_248
# %bb.249:                              # %for.inc66.61
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB7_250
.LBB7_250:                              # %for.body3.62
                                        # =>This Inner Loop Header: Depth=1
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rcx
	addq	$496, %rcx              # imm = 0x1F0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jne	.LBB7_250
# %bb.251:                              # %for.end.62
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	2040(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	2072(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	2104(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	2136(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	2168(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	2200(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	2232(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	2264(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
.LBB7_252:                              # %for.body56.62
                                        # =>This Inner Loop Header: Depth=1
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$496, %rsi              # imm = 0x1F0
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jne	.LBB7_252
# %bb.253:                              # %for.inc66.62
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB7_254
.LBB7_254:                              # %for.body3.63
                                        # =>This Inner Loop Header: Depth=1
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	%rax, %rcx
	addq	$504, %rcx              # imm = 0x1F8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jne	.LBB7_254
# %bb.255:                              # %for.end.63
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	2044(%rdx), %eax
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi)
	movl	2076(%rdx), %eax
	movl	%eax, 4(%rsi)
	movl	2108(%rdx), %eax
	movl	%eax, 8(%rsi)
	movl	2140(%rdx), %eax
	movl	%eax, 12(%rsi)
	movl	2172(%rdx), %eax
	movl	%eax, 16(%rsi)
	movl	2204(%rdx), %eax
	movl	%eax, 20(%rsi)
	movl	2236(%rdx), %eax
	movl	%eax, 24(%rsi)
	movl	2268(%rdx), %eax
	movl	%eax, 28(%rsi)
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
.LBB7_256:                              # %for.body56.63
                                        # =>This Inner Loop Header: Depth=1
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	addq	$504, %rsi              # imm = 0x1F8
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jne	.LBB7_256
# %bb.257:                              # %for.inc66.63
	addq	$920, %rsp              # imm = 0x398
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
