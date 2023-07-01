	.text
	.file	"fft_4_64.c"
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	24(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	%r8, -8(%rbp)           # 8-byte Spill
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:                                # %for.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%edx, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, (%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 264(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 528(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 792(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1056(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1320(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1584(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1848(%rsi)
	movq	%rcx, -48(%rbp)         # 8-byte Spill
.LBB1_4:                                # %for.body3.1
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
	jne	.LBB1_4
# %bb.5:                                # %for.end.1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 4(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 268(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 532(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 796(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1060(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1324(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1588(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1852(%rsi)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB1_6:                                # %for.body3.2
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB1_6
# %bb.7:                                # %for.end.2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 8(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 272(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 536(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 800(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1064(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1328(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1592(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1856(%rsi)
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB1_8:                                # %for.body3.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$24, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB1_8
# %bb.9:                                # %for.end.3
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 12(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 276(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 540(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 804(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1068(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1332(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1596(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1860(%rsi)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
.LBB1_10:                               # %for.body3.4
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$32, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB1_10
# %bb.11:                               # %for.end.4
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 16(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 280(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 544(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 808(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1072(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1336(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1600(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1864(%rsi)
	movq	%rcx, -80(%rbp)         # 8-byte Spill
.LBB1_12:                               # %for.body3.5
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$40, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB1_12
# %bb.13:                               # %for.end.5
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 20(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 284(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 548(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 812(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1076(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1340(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1604(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1868(%rsi)
	movq	%rcx, -88(%rbp)         # 8-byte Spill
.LBB1_14:                               # %for.body3.6
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$48, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB1_14
# %bb.15:                               # %for.end.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 24(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 288(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 552(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 816(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1080(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1344(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1608(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1872(%rsi)
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB1_16:                               # %for.body3.7
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	addq	$56, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB1_16
# %bb.17:                               # %for.end.7
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 28(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 292(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 556(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 820(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1084(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1348(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1612(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1876(%rsi)
	movq	%rcx, -104(%rbp)        # 8-byte Spill
.LBB1_18:                               # %for.body3.8
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$64, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jne	.LBB1_18
# %bb.19:                               # %for.end.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 32(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 296(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 560(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 824(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1088(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1352(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1616(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1880(%rsi)
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB1_20:                               # %for.body3.9
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$72, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB1_20
# %bb.21:                               # %for.end.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 36(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 300(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 564(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 828(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1092(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1356(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1620(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1884(%rsi)
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB1_22:                               # %for.body3.10
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$80, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB1_22
# %bb.23:                               # %for.end.10
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 40(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 304(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 568(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 832(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1096(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1360(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1624(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1888(%rsi)
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB1_24:                               # %for.body3.11
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$88, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB1_24
# %bb.25:                               # %for.end.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 44(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 308(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 572(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 836(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1100(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1364(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1628(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1892(%rsi)
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB1_26:                               # %for.body3.12
                                        # =>This Inner Loop Header: Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$96, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jne	.LBB1_26
# %bb.27:                               # %for.end.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 48(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 312(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 576(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 840(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1104(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1368(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1632(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1896(%rsi)
	movq	%rcx, -144(%rbp)        # 8-byte Spill
.LBB1_28:                               # %for.body3.13
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$104, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB1_28
# %bb.29:                               # %for.end.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 52(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 316(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 580(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 844(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1108(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1372(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1636(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1900(%rsi)
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB1_30:                               # %for.body3.14
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$112, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB1_30
# %bb.31:                               # %for.end.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 56(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 320(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 584(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 848(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1112(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1376(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1640(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1904(%rsi)
	movq	%rcx, -160(%rbp)        # 8-byte Spill
.LBB1_32:                               # %for.body3.15
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$120, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB1_32
# %bb.33:                               # %for.end.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 60(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 324(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 588(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 852(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1116(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1380(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1644(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1908(%rsi)
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB1_34:                               # %for.body3.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$128, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB1_34
# %bb.35:                               # %for.end.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 64(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 328(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 592(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 856(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1120(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1384(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1648(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1912(%rsi)
	movq	%rcx, -176(%rbp)        # 8-byte Spill
.LBB1_36:                               # %for.body3.17
                                        # =>This Inner Loop Header: Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$136, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB1_36
# %bb.37:                               # %for.end.17
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 68(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 332(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 596(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 860(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1124(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1388(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1652(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1916(%rsi)
	movq	%rcx, -184(%rbp)        # 8-byte Spill
.LBB1_38:                               # %for.body3.18
                                        # =>This Inner Loop Header: Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$144, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jne	.LBB1_38
# %bb.39:                               # %for.end.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 72(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 336(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 600(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 864(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1128(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1392(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1656(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1920(%rsi)
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB1_40:                               # %for.body3.19
                                        # =>This Inner Loop Header: Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$152, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB1_40
# %bb.41:                               # %for.end.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 76(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 340(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 604(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 868(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1132(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1396(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1660(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1924(%rsi)
	movq	%rcx, -200(%rbp)        # 8-byte Spill
.LBB1_42:                               # %for.body3.20
                                        # =>This Inner Loop Header: Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$160, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jne	.LBB1_42
# %bb.43:                               # %for.end.20
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 80(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 344(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 608(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 872(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1136(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1400(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1664(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1928(%rsi)
	movq	%rcx, -208(%rbp)        # 8-byte Spill
.LBB1_44:                               # %for.body3.21
                                        # =>This Inner Loop Header: Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$168, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB1_44
# %bb.45:                               # %for.end.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 84(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 348(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 612(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 876(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1140(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1404(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1668(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1932(%rsi)
	movq	%rcx, -216(%rbp)        # 8-byte Spill
.LBB1_46:                               # %for.body3.22
                                        # =>This Inner Loop Header: Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$176, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jne	.LBB1_46
# %bb.47:                               # %for.end.22
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 88(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 352(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 616(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 880(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1144(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1408(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1672(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1936(%rsi)
	movq	%rcx, -224(%rbp)        # 8-byte Spill
.LBB1_48:                               # %for.body3.23
                                        # =>This Inner Loop Header: Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$184, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB1_48
# %bb.49:                               # %for.end.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 92(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 356(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 620(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 884(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1148(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1412(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1676(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1940(%rsi)
	movq	%rcx, -232(%rbp)        # 8-byte Spill
.LBB1_50:                               # %for.body3.24
                                        # =>This Inner Loop Header: Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$192, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB1_50
# %bb.51:                               # %for.end.24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 96(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 360(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 624(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 888(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1152(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1416(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1680(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1944(%rsi)
	movq	%rcx, -240(%rbp)        # 8-byte Spill
.LBB1_52:                               # %for.body3.25
                                        # =>This Inner Loop Header: Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$200, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jne	.LBB1_52
# %bb.53:                               # %for.end.25
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 100(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 364(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 628(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 892(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1156(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1420(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1684(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1948(%rsi)
	movq	%rcx, -248(%rbp)        # 8-byte Spill
.LBB1_54:                               # %for.body3.26
                                        # =>This Inner Loop Header: Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$208, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jne	.LBB1_54
# %bb.55:                               # %for.end.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 104(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 368(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 632(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 896(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1160(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1424(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1688(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1952(%rsi)
	movq	%rcx, -256(%rbp)        # 8-byte Spill
.LBB1_56:                               # %for.body3.27
                                        # =>This Inner Loop Header: Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$216, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB1_56
# %bb.57:                               # %for.end.27
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 108(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 372(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 636(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 900(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1164(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1428(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1692(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1956(%rsi)
	movq	%rcx, -264(%rbp)        # 8-byte Spill
.LBB1_58:                               # %for.body3.28
                                        # =>This Inner Loop Header: Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$224, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB1_58
# %bb.59:                               # %for.end.28
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 112(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 376(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 640(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 904(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1168(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1432(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1696(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1960(%rsi)
	movq	%rcx, -272(%rbp)        # 8-byte Spill
.LBB1_60:                               # %for.body3.29
                                        # =>This Inner Loop Header: Depth=1
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$232, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jne	.LBB1_60
# %bb.61:                               # %for.end.29
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 116(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 380(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 644(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 908(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1172(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1436(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1700(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1964(%rsi)
	movq	%rcx, -280(%rbp)        # 8-byte Spill
.LBB1_62:                               # %for.body3.30
                                        # =>This Inner Loop Header: Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$240, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jne	.LBB1_62
# %bb.63:                               # %for.end.30
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 120(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 384(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 648(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 912(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1176(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1440(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1704(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1968(%rsi)
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB1_64:                               # %for.body3.31
                                        # =>This Inner Loop Header: Depth=1
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$248, %rcx
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB1_64
# %bb.65:                               # %for.end.31
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 124(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 388(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 652(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 916(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1180(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1444(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1708(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1972(%rsi)
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB1_66:                               # %for.body3.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$256, %rcx              # imm = 0x100
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jne	.LBB1_66
# %bb.67:                               # %for.end.32
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 128(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 392(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 656(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 920(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1184(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1448(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1712(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1976(%rsi)
	movq	%rcx, -304(%rbp)        # 8-byte Spill
.LBB1_68:                               # %for.body3.33
                                        # =>This Inner Loop Header: Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$264, %rcx              # imm = 0x108
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jne	.LBB1_68
# %bb.69:                               # %for.end.33
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 132(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 396(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 660(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 924(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1188(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1452(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1716(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1980(%rsi)
	movq	%rcx, -312(%rbp)        # 8-byte Spill
.LBB1_70:                               # %for.body3.34
                                        # =>This Inner Loop Header: Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$272, %rcx              # imm = 0x110
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB1_70
# %bb.71:                               # %for.end.34
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 136(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 400(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 664(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 928(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1192(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1456(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1720(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1984(%rsi)
	movq	%rcx, -320(%rbp)        # 8-byte Spill
.LBB1_72:                               # %for.body3.35
                                        # =>This Inner Loop Header: Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$280, %rcx              # imm = 0x118
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jne	.LBB1_72
# %bb.73:                               # %for.end.35
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 140(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 404(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 668(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 932(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1196(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1460(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1724(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1988(%rsi)
	movq	%rcx, -328(%rbp)        # 8-byte Spill
.LBB1_74:                               # %for.body3.36
                                        # =>This Inner Loop Header: Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$288, %rcx              # imm = 0x120
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jne	.LBB1_74
# %bb.75:                               # %for.end.36
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 144(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 408(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 672(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 936(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1200(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1464(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1728(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1992(%rsi)
	movq	%rcx, -336(%rbp)        # 8-byte Spill
.LBB1_76:                               # %for.body3.37
                                        # =>This Inner Loop Header: Depth=1
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$296, %rcx              # imm = 0x128
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jne	.LBB1_76
# %bb.77:                               # %for.end.37
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 148(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 412(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 676(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 940(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1204(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1468(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1732(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1996(%rsi)
	movq	%rcx, -344(%rbp)        # 8-byte Spill
.LBB1_78:                               # %for.body3.38
                                        # =>This Inner Loop Header: Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$304, %rcx              # imm = 0x130
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jne	.LBB1_78
# %bb.79:                               # %for.end.38
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 152(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 416(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 680(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 944(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1208(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1472(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1736(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2000(%rsi)
	movq	%rcx, -352(%rbp)        # 8-byte Spill
.LBB1_80:                               # %for.body3.39
                                        # =>This Inner Loop Header: Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$312, %rcx              # imm = 0x138
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB1_80
# %bb.81:                               # %for.end.39
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 156(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 420(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 684(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 948(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1212(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1476(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1740(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2004(%rsi)
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB1_82:                               # %for.body3.40
                                        # =>This Inner Loop Header: Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$320, %rcx              # imm = 0x140
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jne	.LBB1_82
# %bb.83:                               # %for.end.40
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 160(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 424(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 688(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 952(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1216(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1480(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1744(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2008(%rsi)
	movq	%rcx, -368(%rbp)        # 8-byte Spill
.LBB1_84:                               # %for.body3.41
                                        # =>This Inner Loop Header: Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$328, %rcx              # imm = 0x148
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jne	.LBB1_84
# %bb.85:                               # %for.end.41
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 164(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 428(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 692(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 956(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1220(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1484(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1748(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2012(%rsi)
	movq	%rcx, -376(%rbp)        # 8-byte Spill
.LBB1_86:                               # %for.body3.42
                                        # =>This Inner Loop Header: Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$336, %rcx              # imm = 0x150
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jne	.LBB1_86
# %bb.87:                               # %for.end.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 168(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 432(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 696(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 960(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1224(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1488(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1752(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2016(%rsi)
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB1_88:                               # %for.body3.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$344, %rcx              # imm = 0x158
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jne	.LBB1_88
# %bb.89:                               # %for.end.43
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 172(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 436(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 700(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 964(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1228(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1492(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1756(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2020(%rsi)
	movq	%rcx, -392(%rbp)        # 8-byte Spill
.LBB1_90:                               # %for.body3.44
                                        # =>This Inner Loop Header: Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$352, %rcx              # imm = 0x160
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jne	.LBB1_90
# %bb.91:                               # %for.end.44
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 176(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 440(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 704(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 968(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1232(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1496(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1760(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2024(%rsi)
	movq	%rcx, -400(%rbp)        # 8-byte Spill
.LBB1_92:                               # %for.body3.45
                                        # =>This Inner Loop Header: Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$360, %rcx              # imm = 0x168
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jne	.LBB1_92
# %bb.93:                               # %for.end.45
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 180(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 444(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 708(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 972(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1236(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1500(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1764(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2028(%rsi)
	movq	%rcx, -408(%rbp)        # 8-byte Spill
.LBB1_94:                               # %for.body3.46
                                        # =>This Inner Loop Header: Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$368, %rcx              # imm = 0x170
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jne	.LBB1_94
# %bb.95:                               # %for.end.46
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 184(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 448(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 712(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 976(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1240(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1504(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1768(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2032(%rsi)
	movq	%rcx, -416(%rbp)        # 8-byte Spill
.LBB1_96:                               # %for.body3.47
                                        # =>This Inner Loop Header: Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$376, %rcx              # imm = 0x178
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jne	.LBB1_96
# %bb.97:                               # %for.end.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 188(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 452(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 716(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 980(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1244(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1508(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1772(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2036(%rsi)
	movq	%rcx, -424(%rbp)        # 8-byte Spill
.LBB1_98:                               # %for.body3.48
                                        # =>This Inner Loop Header: Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$384, %rcx              # imm = 0x180
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jne	.LBB1_98
# %bb.99:                               # %for.end.48
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 192(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 456(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 720(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 984(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1248(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1512(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1776(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2040(%rsi)
	movq	%rcx, -432(%rbp)        # 8-byte Spill
.LBB1_100:                              # %for.body3.49
                                        # =>This Inner Loop Header: Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$392, %rcx              # imm = 0x188
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jne	.LBB1_100
# %bb.101:                              # %for.end.49
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 196(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 460(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 724(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 988(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1252(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1516(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1780(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2044(%rsi)
	movq	%rcx, -440(%rbp)        # 8-byte Spill
.LBB1_102:                              # %for.body3.50
                                        # =>This Inner Loop Header: Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$400, %rcx              # imm = 0x190
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jne	.LBB1_102
# %bb.103:                              # %for.end.50
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 200(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 464(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 728(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 992(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1256(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1520(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1784(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2048(%rsi)
	movq	%rcx, -448(%rbp)        # 8-byte Spill
.LBB1_104:                              # %for.body3.51
                                        # =>This Inner Loop Header: Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$408, %rcx              # imm = 0x198
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jne	.LBB1_104
# %bb.105:                              # %for.end.51
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 204(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 468(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 732(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 996(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1260(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1524(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1788(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2052(%rsi)
	movq	%rcx, -456(%rbp)        # 8-byte Spill
.LBB1_106:                              # %for.body3.52
                                        # =>This Inner Loop Header: Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$416, %rcx              # imm = 0x1A0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jne	.LBB1_106
# %bb.107:                              # %for.end.52
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 208(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 472(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 736(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1000(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1264(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1528(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1792(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2056(%rsi)
	movq	%rcx, -464(%rbp)        # 8-byte Spill
.LBB1_108:                              # %for.body3.53
                                        # =>This Inner Loop Header: Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$424, %rcx              # imm = 0x1A8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jne	.LBB1_108
# %bb.109:                              # %for.end.53
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 212(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 476(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 740(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1004(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1268(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1532(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1796(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2060(%rsi)
	movq	%rcx, -472(%rbp)        # 8-byte Spill
.LBB1_110:                              # %for.body3.54
                                        # =>This Inner Loop Header: Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$432, %rcx              # imm = 0x1B0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jne	.LBB1_110
# %bb.111:                              # %for.end.54
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 216(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 480(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 744(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1008(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1272(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1536(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1800(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2064(%rsi)
	movq	%rcx, -480(%rbp)        # 8-byte Spill
.LBB1_112:                              # %for.body3.55
                                        # =>This Inner Loop Header: Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$440, %rcx              # imm = 0x1B8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jne	.LBB1_112
# %bb.113:                              # %for.end.55
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 220(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 484(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 748(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1012(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1276(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1540(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1804(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2068(%rsi)
	movq	%rcx, -488(%rbp)        # 8-byte Spill
.LBB1_114:                              # %for.body3.56
                                        # =>This Inner Loop Header: Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$448, %rcx              # imm = 0x1C0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jne	.LBB1_114
# %bb.115:                              # %for.end.56
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 224(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 488(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 752(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1016(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1280(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1544(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1808(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2072(%rsi)
	movq	%rcx, -496(%rbp)        # 8-byte Spill
.LBB1_116:                              # %for.body3.57
                                        # =>This Inner Loop Header: Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$456, %rcx              # imm = 0x1C8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jne	.LBB1_116
# %bb.117:                              # %for.end.57
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 228(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 492(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 756(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1020(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1284(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1548(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1812(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2076(%rsi)
	movq	%rcx, -504(%rbp)        # 8-byte Spill
.LBB1_118:                              # %for.body3.58
                                        # =>This Inner Loop Header: Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$464, %rcx              # imm = 0x1D0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jne	.LBB1_118
# %bb.119:                              # %for.end.58
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 232(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 496(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 760(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1024(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1288(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1552(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1816(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2080(%rsi)
	movq	%rcx, -512(%rbp)        # 8-byte Spill
.LBB1_120:                              # %for.body3.59
                                        # =>This Inner Loop Header: Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$472, %rcx              # imm = 0x1D8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jne	.LBB1_120
# %bb.121:                              # %for.end.59
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 236(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 500(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 764(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1028(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1292(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1556(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1820(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2084(%rsi)
	movq	%rcx, -520(%rbp)        # 8-byte Spill
.LBB1_122:                              # %for.body3.60
                                        # =>This Inner Loop Header: Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$480, %rcx              # imm = 0x1E0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jne	.LBB1_122
# %bb.123:                              # %for.end.60
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 240(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 504(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 768(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1032(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1296(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1560(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1824(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2088(%rsi)
	movq	%rcx, -528(%rbp)        # 8-byte Spill
.LBB1_124:                              # %for.body3.61
                                        # =>This Inner Loop Header: Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$488, %rcx              # imm = 0x1E8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jne	.LBB1_124
# %bb.125:                              # %for.end.61
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 244(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 508(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 772(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1036(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1300(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1564(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1828(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2092(%rsi)
	movq	%rcx, -536(%rbp)        # 8-byte Spill
.LBB1_126:                              # %for.body3.62
                                        # =>This Inner Loop Header: Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$496, %rcx              # imm = 0x1F0
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jne	.LBB1_126
# %bb.127:                              # %for.end.62
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 248(%rsi)
	movslq	4(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 512(%rsi)
	movslq	8(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 776(%rsi)
	movslq	12(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1040(%rsi)
	movslq	16(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1304(%rsi)
	movslq	20(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1568(%rsi)
	movslq	24(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 1832(%rsi)
	movslq	28(%rdx), %r8
	movl	(%rdi,%r8,4), %eax
	movl	%eax, 2096(%rsi)
	movq	%rcx, -544(%rbp)        # 8-byte Spill
.LBB1_128:                              # %for.body3.63
                                        # =>This Inner Loop Header: Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rcx
	addq	$504, %rcx              # imm = 0x1F8
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$8, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jne	.LBB1_128
# %bb.129:                              # %for.end.63
	movq	-24(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	%esi, 252(%rcx)
	movslq	4(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movl	%esi, 516(%rcx)
	movslq	8(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movl	%esi, 780(%rcx)
	movslq	12(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movl	%esi, 1044(%rcx)
	movslq	16(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movl	%esi, 1308(%rcx)
	movslq	20(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movl	%esi, 1572(%rcx)
	movslq	24(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movl	%esi, 1836(%rcx)
	movslq	28(%rax), %rdi
	movl	(%rdx,%rdi,4), %esi
	movl	%esi, 2100(%rcx)
	addq	$416, %rsp              # imm = 0x1A0
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
