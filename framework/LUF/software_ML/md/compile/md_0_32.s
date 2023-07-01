	.text
	.file	"md_0_32.c"
	.globl	md                      # -- Begin function md
	.p2align	4, 0x90
	.type	md,@function
md:                                     # @md
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
	subq	$1728, %rsp             # imm = 0x6C0
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r11, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_11 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_21 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_27 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_39 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_47 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_65 Depth 2
	movq	-104(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rax,4), %edi
	movq	-56(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rax,4), %r9d
	movq	-48(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rax,4), %r11d
	movl	%ecx, %ebx
	movl	%ecx, %r14d
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movl	%r9d, -120(%rbp)        # 4-byte Spill
	movl	%r11d, -124(%rbp)       # 4-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	movl	%r14d, -144(%rbp)       # 4-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
.LBB0_2:                                # %for.body7
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	-144(%rbp), %ecx        # 4-byte Reload
	movl	-140(%rbp), %edx        # 4-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-116(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-120(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-124(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -148(%rbp)       # 4-byte Spill
	movl	%r9d, -144(%rbp)        # 4-byte Spill
	movl	%edi, -140(%rbp)        # 4-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%edx, -160(%rbp)        # 4-byte Spill
	jne	.LBB0_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	-152(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-112(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %eax        # 4-byte Reload
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	%edx, -184(%rbp)        # 4-byte Spill
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movl	%r13d, -196(%rbp)       # 4-byte Spill
	movl	%esi, -200(%rbp)        # 4-byte Spill
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %for.end43
	addq	$1728, %rsp             # imm = 0x6C0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_5:                                # %for.body7.1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.cfi_def_cfa %rbp, 16
	movl	-204(%rbp), %eax        # 4-byte Reload
	movl	-200(%rbp), %ecx        # 4-byte Reload
	movl	-196(%rbp), %edx        # 4-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-168(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-180(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-184(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -204(%rbp)       # 4-byte Spill
	movl	%r9d, -200(%rbp)        # 4-byte Spill
	movl	%edi, -196(%rbp)        # 4-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	%edx, -216(%rbp)        # 4-byte Spill
	jne	.LBB0_5
# %bb.6:                                # %for.end.1
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-208(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-176(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-176(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %eax        # 4-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%edx, -240(%rbp)        # 4-byte Spill
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movl	%r13d, -252(%rbp)       # 4-byte Spill
	movl	%esi, -256(%rbp)        # 4-byte Spill
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB0_7:                                # %for.body7.2
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	-256(%rbp), %ecx        # 4-byte Reload
	movl	-252(%rbp), %edx        # 4-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-224(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-236(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-240(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -260(%rbp)       # 4-byte Spill
	movl	%r9d, -256(%rbp)        # 4-byte Spill
	movl	%edi, -252(%rbp)        # 4-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	%edx, -272(%rbp)        # 4-byte Spill
	jne	.LBB0_7
# %bb.8:                                # %for.end.2
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	-268(%rbp), %ecx        # 4-byte Reload
	movl	-264(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-232(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-232(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -276(%rbp)        # 4-byte Spill
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %eax        # 4-byte Reload
	movq	%r9, -288(%rbp)         # 8-byte Spill
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	%edx, -296(%rbp)        # 4-byte Spill
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movl	%r13d, -308(%rbp)       # 4-byte Spill
	movl	%esi, -312(%rbp)        # 4-byte Spill
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB0_9:                                # %for.body7.3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	-312(%rbp), %ecx        # 4-byte Reload
	movl	-308(%rbp), %edx        # 4-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	-288(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-280(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-292(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-296(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -316(%rbp)       # 4-byte Spill
	movl	%r9d, -312(%rbp)        # 4-byte Spill
	movl	%edi, -308(%rbp)        # 4-byte Spill
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	%edx, -328(%rbp)        # 4-byte Spill
	jne	.LBB0_9
# %bb.10:                               # %for.end.3
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	-324(%rbp), %ecx        # 4-byte Reload
	movl	-320(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-288(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-288(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -332(%rbp)        # 4-byte Spill
	movl	%eax, -336(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %eax        # 4-byte Reload
	movq	%r9, -344(%rbp)         # 8-byte Spill
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	%edx, -352(%rbp)        # 4-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movl	%r13d, -364(%rbp)       # 4-byte Spill
	movl	%esi, -368(%rbp)        # 4-byte Spill
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB0_11:                               # %for.body7.4
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	-368(%rbp), %ecx        # 4-byte Reload
	movl	-364(%rbp), %edx        # 4-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	-344(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-336(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-348(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-352(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -372(%rbp)       # 4-byte Spill
	movl	%r9d, -368(%rbp)        # 4-byte Spill
	movl	%edi, -364(%rbp)        # 4-byte Spill
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	%edx, -384(%rbp)        # 4-byte Spill
	jne	.LBB0_11
# %bb.12:                               # %for.end.4
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-384(%rbp), %eax        # 4-byte Reload
	movl	-380(%rbp), %ecx        # 4-byte Reload
	movl	-376(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-344(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-344(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -388(%rbp)        # 4-byte Spill
	movl	%eax, -392(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %eax        # 4-byte Reload
	movq	%r9, -400(%rbp)         # 8-byte Spill
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	%edx, -408(%rbp)        # 4-byte Spill
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movl	%r13d, -420(%rbp)       # 4-byte Spill
	movl	%esi, -424(%rbp)        # 4-byte Spill
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB0_13:                               # %for.body7.5
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-428(%rbp), %eax        # 4-byte Reload
	movl	-424(%rbp), %ecx        # 4-byte Reload
	movl	-420(%rbp), %edx        # 4-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-400(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-392(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-404(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-408(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -428(%rbp)       # 4-byte Spill
	movl	%r9d, -424(%rbp)        # 4-byte Spill
	movl	%edi, -420(%rbp)        # 4-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	%edx, -440(%rbp)        # 4-byte Spill
	jne	.LBB0_13
# %bb.14:                               # %for.end.5
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-440(%rbp), %eax        # 4-byte Reload
	movl	-436(%rbp), %ecx        # 4-byte Reload
	movl	-432(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-400(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-400(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -444(%rbp)        # 4-byte Spill
	movl	%eax, -448(%rbp)        # 4-byte Spill
	movl	-444(%rbp), %eax        # 4-byte Reload
	movq	%r9, -456(%rbp)         # 8-byte Spill
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movl	%edx, -464(%rbp)        # 4-byte Spill
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movl	%r13d, -476(%rbp)       # 4-byte Spill
	movl	%esi, -480(%rbp)        # 4-byte Spill
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB0_15:                               # %for.body7.6
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	-480(%rbp), %ecx        # 4-byte Reload
	movl	-476(%rbp), %edx        # 4-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	-456(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-448(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-460(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-464(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -484(%rbp)       # 4-byte Spill
	movl	%r9d, -480(%rbp)        # 4-byte Spill
	movl	%edi, -476(%rbp)        # 4-byte Spill
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movl	%eax, -488(%rbp)        # 4-byte Spill
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	movl	%edx, -496(%rbp)        # 4-byte Spill
	jne	.LBB0_15
# %bb.16:                               # %for.end.6
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	-492(%rbp), %ecx        # 4-byte Reload
	movl	-488(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-456(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-456(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -500(%rbp)        # 4-byte Spill
	movl	%eax, -504(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %eax        # 4-byte Reload
	movq	%r9, -512(%rbp)         # 8-byte Spill
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	movl	%edx, -520(%rbp)        # 4-byte Spill
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movl	%r13d, -532(%rbp)       # 4-byte Spill
	movl	%esi, -536(%rbp)        # 4-byte Spill
	movl	%eax, -540(%rbp)        # 4-byte Spill
.LBB0_17:                               # %for.body7.7
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-540(%rbp), %eax        # 4-byte Reload
	movl	-536(%rbp), %ecx        # 4-byte Reload
	movl	-532(%rbp), %edx        # 4-byte Reload
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movq	-512(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-504(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-516(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-520(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -540(%rbp)       # 4-byte Spill
	movl	%r9d, -536(%rbp)        # 4-byte Spill
	movl	%edi, -532(%rbp)        # 4-byte Spill
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	movl	%eax, -544(%rbp)        # 4-byte Spill
	movl	%ecx, -548(%rbp)        # 4-byte Spill
	movl	%edx, -552(%rbp)        # 4-byte Spill
	jne	.LBB0_17
# %bb.18:                               # %for.end.7
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-552(%rbp), %eax        # 4-byte Reload
	movl	-548(%rbp), %ecx        # 4-byte Reload
	movl	-544(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-512(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-512(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -556(%rbp)        # 4-byte Spill
	movl	%eax, -560(%rbp)        # 4-byte Spill
	movl	-556(%rbp), %eax        # 4-byte Reload
	movq	%r9, -568(%rbp)         # 8-byte Spill
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	movl	%edx, -576(%rbp)        # 4-byte Spill
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movl	%r13d, -588(%rbp)       # 4-byte Spill
	movl	%esi, -592(%rbp)        # 4-byte Spill
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB0_19:                               # %for.body7.8
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-596(%rbp), %eax        # 4-byte Reload
	movl	-592(%rbp), %ecx        # 4-byte Reload
	movl	-588(%rbp), %edx        # 4-byte Reload
	movq	-584(%rbp), %rsi        # 8-byte Reload
	movq	-568(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-560(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-572(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-576(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -596(%rbp)       # 4-byte Spill
	movl	%r9d, -592(%rbp)        # 4-byte Spill
	movl	%edi, -588(%rbp)        # 4-byte Spill
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	movl	%eax, -600(%rbp)        # 4-byte Spill
	movl	%ecx, -604(%rbp)        # 4-byte Spill
	movl	%edx, -608(%rbp)        # 4-byte Spill
	jne	.LBB0_19
# %bb.20:                               # %for.end.8
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-608(%rbp), %eax        # 4-byte Reload
	movl	-604(%rbp), %ecx        # 4-byte Reload
	movl	-600(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-568(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-568(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -612(%rbp)        # 4-byte Spill
	movl	%eax, -616(%rbp)        # 4-byte Spill
	movl	-612(%rbp), %eax        # 4-byte Reload
	movq	%r9, -624(%rbp)         # 8-byte Spill
	movl	%ecx, -628(%rbp)        # 4-byte Spill
	movl	%edx, -632(%rbp)        # 4-byte Spill
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movl	%r13d, -644(%rbp)       # 4-byte Spill
	movl	%esi, -648(%rbp)        # 4-byte Spill
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB0_21:                               # %for.body7.9
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	-648(%rbp), %ecx        # 4-byte Reload
	movl	-644(%rbp), %edx        # 4-byte Reload
	movq	-640(%rbp), %rsi        # 8-byte Reload
	movq	-624(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-616(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-628(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-632(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -652(%rbp)       # 4-byte Spill
	movl	%r9d, -648(%rbp)        # 4-byte Spill
	movl	%edi, -644(%rbp)        # 4-byte Spill
	movq	%rsi, -640(%rbp)        # 8-byte Spill
	movl	%eax, -656(%rbp)        # 4-byte Spill
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movl	%edx, -664(%rbp)        # 4-byte Spill
	jne	.LBB0_21
# %bb.22:                               # %for.end.9
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-664(%rbp), %eax        # 4-byte Reload
	movl	-660(%rbp), %ecx        # 4-byte Reload
	movl	-656(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-624(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-624(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -668(%rbp)        # 4-byte Spill
	movl	%eax, -672(%rbp)        # 4-byte Spill
	movl	-668(%rbp), %eax        # 4-byte Reload
	movq	%r9, -680(%rbp)         # 8-byte Spill
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movl	%edx, -688(%rbp)        # 4-byte Spill
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movl	%r13d, -700(%rbp)       # 4-byte Spill
	movl	%esi, -704(%rbp)        # 4-byte Spill
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB0_23:                               # %for.body7.10
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	-704(%rbp), %ecx        # 4-byte Reload
	movl	-700(%rbp), %edx        # 4-byte Reload
	movq	-696(%rbp), %rsi        # 8-byte Reload
	movq	-680(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-672(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-684(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-688(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -708(%rbp)       # 4-byte Spill
	movl	%r9d, -704(%rbp)        # 4-byte Spill
	movl	%edi, -700(%rbp)        # 4-byte Spill
	movq	%rsi, -696(%rbp)        # 8-byte Spill
	movl	%eax, -712(%rbp)        # 4-byte Spill
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	movl	%edx, -720(%rbp)        # 4-byte Spill
	jne	.LBB0_23
# %bb.24:                               # %for.end.10
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-720(%rbp), %eax        # 4-byte Reload
	movl	-716(%rbp), %ecx        # 4-byte Reload
	movl	-712(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-680(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-680(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -724(%rbp)        # 4-byte Spill
	movl	%eax, -728(%rbp)        # 4-byte Spill
	movl	-724(%rbp), %eax        # 4-byte Reload
	movq	%r9, -736(%rbp)         # 8-byte Spill
	movl	%ecx, -740(%rbp)        # 4-byte Spill
	movl	%edx, -744(%rbp)        # 4-byte Spill
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movl	%r13d, -756(%rbp)       # 4-byte Spill
	movl	%esi, -760(%rbp)        # 4-byte Spill
	movl	%eax, -764(%rbp)        # 4-byte Spill
.LBB0_25:                               # %for.body7.11
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-764(%rbp), %eax        # 4-byte Reload
	movl	-760(%rbp), %ecx        # 4-byte Reload
	movl	-756(%rbp), %edx        # 4-byte Reload
	movq	-752(%rbp), %rsi        # 8-byte Reload
	movq	-736(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-728(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-740(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-744(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -764(%rbp)       # 4-byte Spill
	movl	%r9d, -760(%rbp)        # 4-byte Spill
	movl	%edi, -756(%rbp)        # 4-byte Spill
	movq	%rsi, -752(%rbp)        # 8-byte Spill
	movl	%eax, -768(%rbp)        # 4-byte Spill
	movl	%ecx, -772(%rbp)        # 4-byte Spill
	movl	%edx, -776(%rbp)        # 4-byte Spill
	jne	.LBB0_25
# %bb.26:                               # %for.end.11
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-776(%rbp), %eax        # 4-byte Reload
	movl	-772(%rbp), %ecx        # 4-byte Reload
	movl	-768(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-736(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-736(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -780(%rbp)        # 4-byte Spill
	movl	%eax, -784(%rbp)        # 4-byte Spill
	movl	-780(%rbp), %eax        # 4-byte Reload
	movq	%r9, -792(%rbp)         # 8-byte Spill
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	movl	%edx, -800(%rbp)        # 4-byte Spill
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movl	%r13d, -812(%rbp)       # 4-byte Spill
	movl	%esi, -816(%rbp)        # 4-byte Spill
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB0_27:                               # %for.body7.12
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-820(%rbp), %eax        # 4-byte Reload
	movl	-816(%rbp), %ecx        # 4-byte Reload
	movl	-812(%rbp), %edx        # 4-byte Reload
	movq	-808(%rbp), %rsi        # 8-byte Reload
	movq	-792(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-784(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-796(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-800(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -820(%rbp)       # 4-byte Spill
	movl	%r9d, -816(%rbp)        # 4-byte Spill
	movl	%edi, -812(%rbp)        # 4-byte Spill
	movq	%rsi, -808(%rbp)        # 8-byte Spill
	movl	%eax, -824(%rbp)        # 4-byte Spill
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	movl	%edx, -832(%rbp)        # 4-byte Spill
	jne	.LBB0_27
# %bb.28:                               # %for.end.12
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-832(%rbp), %eax        # 4-byte Reload
	movl	-828(%rbp), %ecx        # 4-byte Reload
	movl	-824(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-792(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-792(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -836(%rbp)        # 4-byte Spill
	movl	%eax, -840(%rbp)        # 4-byte Spill
	movl	-836(%rbp), %eax        # 4-byte Reload
	movq	%r9, -848(%rbp)         # 8-byte Spill
	movl	%ecx, -852(%rbp)        # 4-byte Spill
	movl	%edx, -856(%rbp)        # 4-byte Spill
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movl	%r13d, -868(%rbp)       # 4-byte Spill
	movl	%esi, -872(%rbp)        # 4-byte Spill
	movl	%eax, -876(%rbp)        # 4-byte Spill
.LBB0_29:                               # %for.body7.13
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-876(%rbp), %eax        # 4-byte Reload
	movl	-872(%rbp), %ecx        # 4-byte Reload
	movl	-868(%rbp), %edx        # 4-byte Reload
	movq	-864(%rbp), %rsi        # 8-byte Reload
	movq	-848(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-840(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-852(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-856(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -876(%rbp)       # 4-byte Spill
	movl	%r9d, -872(%rbp)        # 4-byte Spill
	movl	%edi, -868(%rbp)        # 4-byte Spill
	movq	%rsi, -864(%rbp)        # 8-byte Spill
	movl	%eax, -880(%rbp)        # 4-byte Spill
	movl	%ecx, -884(%rbp)        # 4-byte Spill
	movl	%edx, -888(%rbp)        # 4-byte Spill
	jne	.LBB0_29
# %bb.30:                               # %for.end.13
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-888(%rbp), %eax        # 4-byte Reload
	movl	-884(%rbp), %ecx        # 4-byte Reload
	movl	-880(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-848(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-848(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -892(%rbp)        # 4-byte Spill
	movl	%eax, -896(%rbp)        # 4-byte Spill
	movl	-892(%rbp), %eax        # 4-byte Reload
	movq	%r9, -904(%rbp)         # 8-byte Spill
	movl	%ecx, -908(%rbp)        # 4-byte Spill
	movl	%edx, -912(%rbp)        # 4-byte Spill
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movl	%r13d, -924(%rbp)       # 4-byte Spill
	movl	%esi, -928(%rbp)        # 4-byte Spill
	movl	%eax, -932(%rbp)        # 4-byte Spill
.LBB0_31:                               # %for.body7.14
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-932(%rbp), %eax        # 4-byte Reload
	movl	-928(%rbp), %ecx        # 4-byte Reload
	movl	-924(%rbp), %edx        # 4-byte Reload
	movq	-920(%rbp), %rsi        # 8-byte Reload
	movq	-904(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-896(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-908(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-912(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -932(%rbp)       # 4-byte Spill
	movl	%r9d, -928(%rbp)        # 4-byte Spill
	movl	%edi, -924(%rbp)        # 4-byte Spill
	movq	%rsi, -920(%rbp)        # 8-byte Spill
	movl	%eax, -936(%rbp)        # 4-byte Spill
	movl	%ecx, -940(%rbp)        # 4-byte Spill
	movl	%edx, -944(%rbp)        # 4-byte Spill
	jne	.LBB0_31
# %bb.32:                               # %for.end.14
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-944(%rbp), %eax        # 4-byte Reload
	movl	-940(%rbp), %ecx        # 4-byte Reload
	movl	-936(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-904(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-904(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -948(%rbp)        # 4-byte Spill
	movl	%eax, -952(%rbp)        # 4-byte Spill
	movl	-948(%rbp), %eax        # 4-byte Reload
	movq	%r9, -960(%rbp)         # 8-byte Spill
	movl	%ecx, -964(%rbp)        # 4-byte Spill
	movl	%edx, -968(%rbp)        # 4-byte Spill
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movl	%r13d, -980(%rbp)       # 4-byte Spill
	movl	%esi, -984(%rbp)        # 4-byte Spill
	movl	%eax, -988(%rbp)        # 4-byte Spill
.LBB0_33:                               # %for.body7.15
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-988(%rbp), %eax        # 4-byte Reload
	movl	-984(%rbp), %ecx        # 4-byte Reload
	movl	-980(%rbp), %edx        # 4-byte Reload
	movq	-976(%rbp), %rsi        # 8-byte Reload
	movq	-960(%rbp), %rdi        # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-952(%rbp), %r12d       # 4-byte Reload
	subl	%r11d, %r12d
	movl	-964(%rbp), %r11d       # 4-byte Reload
	subl	%r14d, %r11d
	movl	-968(%rbp), %r14d       # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -988(%rbp)       # 4-byte Spill
	movl	%r9d, -984(%rbp)        # 4-byte Spill
	movl	%edi, -980(%rbp)        # 4-byte Spill
	movq	%rsi, -976(%rbp)        # 8-byte Spill
	movl	%eax, -992(%rbp)        # 4-byte Spill
	movl	%ecx, -996(%rbp)        # 4-byte Spill
	movl	%edx, -1000(%rbp)       # 4-byte Spill
	jne	.LBB0_33
# %bb.34:                               # %for.end.15
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1000(%rbp), %eax       # 4-byte Reload
	movl	-996(%rbp), %ecx        # 4-byte Reload
	movl	-992(%rbp), %edx        # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-960(%rbp), %r9         # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-960(%rbp), %r14        # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1004(%rbp)       # 4-byte Spill
	movl	%eax, -1008(%rbp)       # 4-byte Spill
	movl	-1004(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1016(%rbp)        # 8-byte Spill
	movl	%ecx, -1020(%rbp)       # 4-byte Spill
	movl	%edx, -1024(%rbp)       # 4-byte Spill
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movl	%r13d, -1036(%rbp)      # 4-byte Spill
	movl	%esi, -1040(%rbp)       # 4-byte Spill
	movl	%eax, -1044(%rbp)       # 4-byte Spill
.LBB0_35:                               # %for.body7.16
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1044(%rbp), %eax       # 4-byte Reload
	movl	-1040(%rbp), %ecx       # 4-byte Reload
	movl	-1036(%rbp), %edx       # 4-byte Reload
	movq	-1032(%rbp), %rsi       # 8-byte Reload
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1008(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1020(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1024(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1044(%rbp)      # 4-byte Spill
	movl	%r9d, -1040(%rbp)       # 4-byte Spill
	movl	%edi, -1036(%rbp)       # 4-byte Spill
	movq	%rsi, -1032(%rbp)       # 8-byte Spill
	movl	%eax, -1048(%rbp)       # 4-byte Spill
	movl	%ecx, -1052(%rbp)       # 4-byte Spill
	movl	%edx, -1056(%rbp)       # 4-byte Spill
	jne	.LBB0_35
# %bb.36:                               # %for.end.16
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1056(%rbp), %eax       # 4-byte Reload
	movl	-1052(%rbp), %ecx       # 4-byte Reload
	movl	-1048(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1016(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1016(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1060(%rbp)       # 4-byte Spill
	movl	%eax, -1064(%rbp)       # 4-byte Spill
	movl	-1060(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1072(%rbp)        # 8-byte Spill
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	movl	%edx, -1080(%rbp)       # 4-byte Spill
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movl	%r13d, -1092(%rbp)      # 4-byte Spill
	movl	%esi, -1096(%rbp)       # 4-byte Spill
	movl	%eax, -1100(%rbp)       # 4-byte Spill
.LBB0_37:                               # %for.body7.17
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1100(%rbp), %eax       # 4-byte Reload
	movl	-1096(%rbp), %ecx       # 4-byte Reload
	movl	-1092(%rbp), %edx       # 4-byte Reload
	movq	-1088(%rbp), %rsi       # 8-byte Reload
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1064(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1076(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1080(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1100(%rbp)      # 4-byte Spill
	movl	%r9d, -1096(%rbp)       # 4-byte Spill
	movl	%edi, -1092(%rbp)       # 4-byte Spill
	movq	%rsi, -1088(%rbp)       # 8-byte Spill
	movl	%eax, -1104(%rbp)       # 4-byte Spill
	movl	%ecx, -1108(%rbp)       # 4-byte Spill
	movl	%edx, -1112(%rbp)       # 4-byte Spill
	jne	.LBB0_37
# %bb.38:                               # %for.end.17
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1112(%rbp), %eax       # 4-byte Reload
	movl	-1108(%rbp), %ecx       # 4-byte Reload
	movl	-1104(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1072(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1072(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1116(%rbp)       # 4-byte Spill
	movl	%eax, -1120(%rbp)       # 4-byte Spill
	movl	-1116(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1128(%rbp)        # 8-byte Spill
	movl	%ecx, -1132(%rbp)       # 4-byte Spill
	movl	%edx, -1136(%rbp)       # 4-byte Spill
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movl	%r13d, -1148(%rbp)      # 4-byte Spill
	movl	%esi, -1152(%rbp)       # 4-byte Spill
	movl	%eax, -1156(%rbp)       # 4-byte Spill
.LBB0_39:                               # %for.body7.18
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1156(%rbp), %eax       # 4-byte Reload
	movl	-1152(%rbp), %ecx       # 4-byte Reload
	movl	-1148(%rbp), %edx       # 4-byte Reload
	movq	-1144(%rbp), %rsi       # 8-byte Reload
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1120(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1132(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1136(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1156(%rbp)      # 4-byte Spill
	movl	%r9d, -1152(%rbp)       # 4-byte Spill
	movl	%edi, -1148(%rbp)       # 4-byte Spill
	movq	%rsi, -1144(%rbp)       # 8-byte Spill
	movl	%eax, -1160(%rbp)       # 4-byte Spill
	movl	%ecx, -1164(%rbp)       # 4-byte Spill
	movl	%edx, -1168(%rbp)       # 4-byte Spill
	jne	.LBB0_39
# %bb.40:                               # %for.end.18
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1168(%rbp), %eax       # 4-byte Reload
	movl	-1164(%rbp), %ecx       # 4-byte Reload
	movl	-1160(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1128(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1128(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1172(%rbp)       # 4-byte Spill
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	movl	-1172(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1184(%rbp)        # 8-byte Spill
	movl	%ecx, -1188(%rbp)       # 4-byte Spill
	movl	%edx, -1192(%rbp)       # 4-byte Spill
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movl	%r13d, -1204(%rbp)      # 4-byte Spill
	movl	%esi, -1208(%rbp)       # 4-byte Spill
	movl	%eax, -1212(%rbp)       # 4-byte Spill
.LBB0_41:                               # %for.body7.19
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1212(%rbp), %eax       # 4-byte Reload
	movl	-1208(%rbp), %ecx       # 4-byte Reload
	movl	-1204(%rbp), %edx       # 4-byte Reload
	movq	-1200(%rbp), %rsi       # 8-byte Reload
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1176(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1188(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1192(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1212(%rbp)      # 4-byte Spill
	movl	%r9d, -1208(%rbp)       # 4-byte Spill
	movl	%edi, -1204(%rbp)       # 4-byte Spill
	movq	%rsi, -1200(%rbp)       # 8-byte Spill
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	movl	%ecx, -1220(%rbp)       # 4-byte Spill
	movl	%edx, -1224(%rbp)       # 4-byte Spill
	jne	.LBB0_41
# %bb.42:                               # %for.end.19
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1224(%rbp), %eax       # 4-byte Reload
	movl	-1220(%rbp), %ecx       # 4-byte Reload
	movl	-1216(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1184(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1184(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1228(%rbp)       # 4-byte Spill
	movl	%eax, -1232(%rbp)       # 4-byte Spill
	movl	-1228(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1240(%rbp)        # 8-byte Spill
	movl	%ecx, -1244(%rbp)       # 4-byte Spill
	movl	%edx, -1248(%rbp)       # 4-byte Spill
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
	movl	%r13d, -1260(%rbp)      # 4-byte Spill
	movl	%esi, -1264(%rbp)       # 4-byte Spill
	movl	%eax, -1268(%rbp)       # 4-byte Spill
.LBB0_43:                               # %for.body7.20
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1268(%rbp), %eax       # 4-byte Reload
	movl	-1264(%rbp), %ecx       # 4-byte Reload
	movl	-1260(%rbp), %edx       # 4-byte Reload
	movq	-1256(%rbp), %rsi       # 8-byte Reload
	movq	-1240(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1232(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1244(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1248(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1268(%rbp)      # 4-byte Spill
	movl	%r9d, -1264(%rbp)       # 4-byte Spill
	movl	%edi, -1260(%rbp)       # 4-byte Spill
	movq	%rsi, -1256(%rbp)       # 8-byte Spill
	movl	%eax, -1272(%rbp)       # 4-byte Spill
	movl	%ecx, -1276(%rbp)       # 4-byte Spill
	movl	%edx, -1280(%rbp)       # 4-byte Spill
	jne	.LBB0_43
# %bb.44:                               # %for.end.20
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1280(%rbp), %eax       # 4-byte Reload
	movl	-1276(%rbp), %ecx       # 4-byte Reload
	movl	-1272(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1240(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1240(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1284(%rbp)       # 4-byte Spill
	movl	%eax, -1288(%rbp)       # 4-byte Spill
	movl	-1284(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1296(%rbp)        # 8-byte Spill
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
	movl	%edx, -1304(%rbp)       # 4-byte Spill
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	movl	%r13d, -1316(%rbp)      # 4-byte Spill
	movl	%esi, -1320(%rbp)       # 4-byte Spill
	movl	%eax, -1324(%rbp)       # 4-byte Spill
.LBB0_45:                               # %for.body7.21
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1324(%rbp), %eax       # 4-byte Reload
	movl	-1320(%rbp), %ecx       # 4-byte Reload
	movl	-1316(%rbp), %edx       # 4-byte Reload
	movq	-1312(%rbp), %rsi       # 8-byte Reload
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1288(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1300(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1304(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1324(%rbp)      # 4-byte Spill
	movl	%r9d, -1320(%rbp)       # 4-byte Spill
	movl	%edi, -1316(%rbp)       # 4-byte Spill
	movq	%rsi, -1312(%rbp)       # 8-byte Spill
	movl	%eax, -1328(%rbp)       # 4-byte Spill
	movl	%ecx, -1332(%rbp)       # 4-byte Spill
	movl	%edx, -1336(%rbp)       # 4-byte Spill
	jne	.LBB0_45
# %bb.46:                               # %for.end.21
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1336(%rbp), %eax       # 4-byte Reload
	movl	-1332(%rbp), %ecx       # 4-byte Reload
	movl	-1328(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1296(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1296(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1340(%rbp)       # 4-byte Spill
	movl	%eax, -1344(%rbp)       # 4-byte Spill
	movl	-1340(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1352(%rbp)        # 8-byte Spill
	movl	%ecx, -1356(%rbp)       # 4-byte Spill
	movl	%edx, -1360(%rbp)       # 4-byte Spill
	movq	%rdi, -1368(%rbp)       # 8-byte Spill
	movl	%r13d, -1372(%rbp)      # 4-byte Spill
	movl	%esi, -1376(%rbp)       # 4-byte Spill
	movl	%eax, -1380(%rbp)       # 4-byte Spill
.LBB0_47:                               # %for.body7.22
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1380(%rbp), %eax       # 4-byte Reload
	movl	-1376(%rbp), %ecx       # 4-byte Reload
	movl	-1372(%rbp), %edx       # 4-byte Reload
	movq	-1368(%rbp), %rsi       # 8-byte Reload
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1344(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1356(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1360(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1380(%rbp)      # 4-byte Spill
	movl	%r9d, -1376(%rbp)       # 4-byte Spill
	movl	%edi, -1372(%rbp)       # 4-byte Spill
	movq	%rsi, -1368(%rbp)       # 8-byte Spill
	movl	%eax, -1384(%rbp)       # 4-byte Spill
	movl	%ecx, -1388(%rbp)       # 4-byte Spill
	movl	%edx, -1392(%rbp)       # 4-byte Spill
	jne	.LBB0_47
# %bb.48:                               # %for.end.22
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1392(%rbp), %eax       # 4-byte Reload
	movl	-1388(%rbp), %ecx       # 4-byte Reload
	movl	-1384(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1352(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1352(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1396(%rbp)       # 4-byte Spill
	movl	%eax, -1400(%rbp)       # 4-byte Spill
	movl	-1396(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1408(%rbp)        # 8-byte Spill
	movl	%ecx, -1412(%rbp)       # 4-byte Spill
	movl	%edx, -1416(%rbp)       # 4-byte Spill
	movq	%rdi, -1424(%rbp)       # 8-byte Spill
	movl	%r13d, -1428(%rbp)      # 4-byte Spill
	movl	%esi, -1432(%rbp)       # 4-byte Spill
	movl	%eax, -1436(%rbp)       # 4-byte Spill
.LBB0_49:                               # %for.body7.23
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1436(%rbp), %eax       # 4-byte Reload
	movl	-1432(%rbp), %ecx       # 4-byte Reload
	movl	-1428(%rbp), %edx       # 4-byte Reload
	movq	-1424(%rbp), %rsi       # 8-byte Reload
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1400(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1412(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1416(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1436(%rbp)      # 4-byte Spill
	movl	%r9d, -1432(%rbp)       # 4-byte Spill
	movl	%edi, -1428(%rbp)       # 4-byte Spill
	movq	%rsi, -1424(%rbp)       # 8-byte Spill
	movl	%eax, -1440(%rbp)       # 4-byte Spill
	movl	%ecx, -1444(%rbp)       # 4-byte Spill
	movl	%edx, -1448(%rbp)       # 4-byte Spill
	jne	.LBB0_49
# %bb.50:                               # %for.end.23
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1448(%rbp), %eax       # 4-byte Reload
	movl	-1444(%rbp), %ecx       # 4-byte Reload
	movl	-1440(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1408(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1408(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1452(%rbp)       # 4-byte Spill
	movl	%eax, -1456(%rbp)       # 4-byte Spill
	movl	-1452(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1464(%rbp)        # 8-byte Spill
	movl	%ecx, -1468(%rbp)       # 4-byte Spill
	movl	%edx, -1472(%rbp)       # 4-byte Spill
	movq	%rdi, -1480(%rbp)       # 8-byte Spill
	movl	%r13d, -1484(%rbp)      # 4-byte Spill
	movl	%esi, -1488(%rbp)       # 4-byte Spill
	movl	%eax, -1492(%rbp)       # 4-byte Spill
.LBB0_51:                               # %for.body7.24
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1492(%rbp), %eax       # 4-byte Reload
	movl	-1488(%rbp), %ecx       # 4-byte Reload
	movl	-1484(%rbp), %edx       # 4-byte Reload
	movq	-1480(%rbp), %rsi       # 8-byte Reload
	movq	-1464(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1456(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1468(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1472(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1492(%rbp)      # 4-byte Spill
	movl	%r9d, -1488(%rbp)       # 4-byte Spill
	movl	%edi, -1484(%rbp)       # 4-byte Spill
	movq	%rsi, -1480(%rbp)       # 8-byte Spill
	movl	%eax, -1496(%rbp)       # 4-byte Spill
	movl	%ecx, -1500(%rbp)       # 4-byte Spill
	movl	%edx, -1504(%rbp)       # 4-byte Spill
	jne	.LBB0_51
# %bb.52:                               # %for.end.24
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1504(%rbp), %eax       # 4-byte Reload
	movl	-1500(%rbp), %ecx       # 4-byte Reload
	movl	-1496(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1464(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1464(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1508(%rbp)       # 4-byte Spill
	movl	%eax, -1512(%rbp)       # 4-byte Spill
	movl	-1508(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1520(%rbp)        # 8-byte Spill
	movl	%ecx, -1524(%rbp)       # 4-byte Spill
	movl	%edx, -1528(%rbp)       # 4-byte Spill
	movq	%rdi, -1536(%rbp)       # 8-byte Spill
	movl	%r13d, -1540(%rbp)      # 4-byte Spill
	movl	%esi, -1544(%rbp)       # 4-byte Spill
	movl	%eax, -1548(%rbp)       # 4-byte Spill
.LBB0_53:                               # %for.body7.25
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1548(%rbp), %eax       # 4-byte Reload
	movl	-1544(%rbp), %ecx       # 4-byte Reload
	movl	-1540(%rbp), %edx       # 4-byte Reload
	movq	-1536(%rbp), %rsi       # 8-byte Reload
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1512(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1524(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1528(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1548(%rbp)      # 4-byte Spill
	movl	%r9d, -1544(%rbp)       # 4-byte Spill
	movl	%edi, -1540(%rbp)       # 4-byte Spill
	movq	%rsi, -1536(%rbp)       # 8-byte Spill
	movl	%eax, -1552(%rbp)       # 4-byte Spill
	movl	%ecx, -1556(%rbp)       # 4-byte Spill
	movl	%edx, -1560(%rbp)       # 4-byte Spill
	jne	.LBB0_53
# %bb.54:                               # %for.end.25
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1560(%rbp), %eax       # 4-byte Reload
	movl	-1556(%rbp), %ecx       # 4-byte Reload
	movl	-1552(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1520(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1520(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1564(%rbp)       # 4-byte Spill
	movl	%eax, -1568(%rbp)       # 4-byte Spill
	movl	-1564(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1576(%rbp)        # 8-byte Spill
	movl	%ecx, -1580(%rbp)       # 4-byte Spill
	movl	%edx, -1584(%rbp)       # 4-byte Spill
	movq	%rdi, -1592(%rbp)       # 8-byte Spill
	movl	%r13d, -1596(%rbp)      # 4-byte Spill
	movl	%esi, -1600(%rbp)       # 4-byte Spill
	movl	%eax, -1604(%rbp)       # 4-byte Spill
.LBB0_55:                               # %for.body7.26
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1604(%rbp), %eax       # 4-byte Reload
	movl	-1600(%rbp), %ecx       # 4-byte Reload
	movl	-1596(%rbp), %edx       # 4-byte Reload
	movq	-1592(%rbp), %rsi       # 8-byte Reload
	movq	-1576(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1568(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1580(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1584(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1604(%rbp)      # 4-byte Spill
	movl	%r9d, -1600(%rbp)       # 4-byte Spill
	movl	%edi, -1596(%rbp)       # 4-byte Spill
	movq	%rsi, -1592(%rbp)       # 8-byte Spill
	movl	%eax, -1608(%rbp)       # 4-byte Spill
	movl	%ecx, -1612(%rbp)       # 4-byte Spill
	movl	%edx, -1616(%rbp)       # 4-byte Spill
	jne	.LBB0_55
# %bb.56:                               # %for.end.26
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1616(%rbp), %eax       # 4-byte Reload
	movl	-1612(%rbp), %ecx       # 4-byte Reload
	movl	-1608(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1576(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1576(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1620(%rbp)       # 4-byte Spill
	movl	%eax, -1624(%rbp)       # 4-byte Spill
	movl	-1620(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1632(%rbp)        # 8-byte Spill
	movl	%ecx, -1636(%rbp)       # 4-byte Spill
	movl	%edx, -1640(%rbp)       # 4-byte Spill
	movq	%rdi, -1648(%rbp)       # 8-byte Spill
	movl	%r13d, -1652(%rbp)      # 4-byte Spill
	movl	%esi, -1656(%rbp)       # 4-byte Spill
	movl	%eax, -1660(%rbp)       # 4-byte Spill
.LBB0_57:                               # %for.body7.27
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1660(%rbp), %eax       # 4-byte Reload
	movl	-1656(%rbp), %ecx       # 4-byte Reload
	movl	-1652(%rbp), %edx       # 4-byte Reload
	movq	-1648(%rbp), %rsi       # 8-byte Reload
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1624(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1636(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1640(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1660(%rbp)      # 4-byte Spill
	movl	%r9d, -1656(%rbp)       # 4-byte Spill
	movl	%edi, -1652(%rbp)       # 4-byte Spill
	movq	%rsi, -1648(%rbp)       # 8-byte Spill
	movl	%eax, -1664(%rbp)       # 4-byte Spill
	movl	%ecx, -1668(%rbp)       # 4-byte Spill
	movl	%edx, -1672(%rbp)       # 4-byte Spill
	jne	.LBB0_57
# %bb.58:                               # %for.end.27
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1672(%rbp), %eax       # 4-byte Reload
	movl	-1668(%rbp), %ecx       # 4-byte Reload
	movl	-1664(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1632(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1632(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1676(%rbp)       # 4-byte Spill
	movl	%eax, -1680(%rbp)       # 4-byte Spill
	movl	-1676(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1688(%rbp)        # 8-byte Spill
	movl	%ecx, -1692(%rbp)       # 4-byte Spill
	movl	%edx, -1696(%rbp)       # 4-byte Spill
	movq	%rdi, -1704(%rbp)       # 8-byte Spill
	movl	%r13d, -1708(%rbp)      # 4-byte Spill
	movl	%esi, -1712(%rbp)       # 4-byte Spill
	movl	%eax, -1716(%rbp)       # 4-byte Spill
.LBB0_59:                               # %for.body7.28
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1716(%rbp), %eax       # 4-byte Reload
	movl	-1712(%rbp), %ecx       # 4-byte Reload
	movl	-1708(%rbp), %edx       # 4-byte Reload
	movq	-1704(%rbp), %rsi       # 8-byte Reload
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1680(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1692(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1696(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1716(%rbp)      # 4-byte Spill
	movl	%r9d, -1712(%rbp)       # 4-byte Spill
	movl	%edi, -1708(%rbp)       # 4-byte Spill
	movq	%rsi, -1704(%rbp)       # 8-byte Spill
	movl	%eax, -1720(%rbp)       # 4-byte Spill
	movl	%ecx, -1724(%rbp)       # 4-byte Spill
	movl	%edx, -1728(%rbp)       # 4-byte Spill
	jne	.LBB0_59
# %bb.60:                               # %for.end.28
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1728(%rbp), %eax       # 4-byte Reload
	movl	-1724(%rbp), %ecx       # 4-byte Reload
	movl	-1720(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1688(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1688(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1732(%rbp)       # 4-byte Spill
	movl	%eax, -1736(%rbp)       # 4-byte Spill
	movl	-1732(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1744(%rbp)        # 8-byte Spill
	movl	%ecx, -1748(%rbp)       # 4-byte Spill
	movl	%edx, -1752(%rbp)       # 4-byte Spill
	movq	%rdi, -1760(%rbp)       # 8-byte Spill
	movl	%r13d, -1764(%rbp)      # 4-byte Spill
	movl	%esi, -1768(%rbp)       # 4-byte Spill
	movl	%eax, -1772(%rbp)       # 4-byte Spill
.LBB0_61:                               # %for.body7.29
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1772(%rbp), %eax       # 4-byte Reload
	movl	-1768(%rbp), %ecx       # 4-byte Reload
	movl	-1764(%rbp), %edx       # 4-byte Reload
	movq	-1760(%rbp), %rsi       # 8-byte Reload
	movq	-1744(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1736(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1748(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1752(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1772(%rbp)      # 4-byte Spill
	movl	%r9d, -1768(%rbp)       # 4-byte Spill
	movl	%edi, -1764(%rbp)       # 4-byte Spill
	movq	%rsi, -1760(%rbp)       # 8-byte Spill
	movl	%eax, -1776(%rbp)       # 4-byte Spill
	movl	%ecx, -1780(%rbp)       # 4-byte Spill
	movl	%edx, -1784(%rbp)       # 4-byte Spill
	jne	.LBB0_61
# %bb.62:                               # %for.end.29
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1784(%rbp), %eax       # 4-byte Reload
	movl	-1780(%rbp), %ecx       # 4-byte Reload
	movl	-1776(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1744(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1744(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1788(%rbp)       # 4-byte Spill
	movl	%eax, -1792(%rbp)       # 4-byte Spill
	movl	-1788(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1800(%rbp)        # 8-byte Spill
	movl	%ecx, -1804(%rbp)       # 4-byte Spill
	movl	%edx, -1808(%rbp)       # 4-byte Spill
	movq	%rdi, -1816(%rbp)       # 8-byte Spill
	movl	%r13d, -1820(%rbp)      # 4-byte Spill
	movl	%esi, -1824(%rbp)       # 4-byte Spill
	movl	%eax, -1828(%rbp)       # 4-byte Spill
.LBB0_63:                               # %for.body7.30
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1828(%rbp), %eax       # 4-byte Reload
	movl	-1824(%rbp), %ecx       # 4-byte Reload
	movl	-1820(%rbp), %edx       # 4-byte Reload
	movq	-1816(%rbp), %rsi       # 8-byte Reload
	movq	-1800(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1792(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1804(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1808(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1828(%rbp)      # 4-byte Spill
	movl	%r9d, -1824(%rbp)       # 4-byte Spill
	movl	%edi, -1820(%rbp)       # 4-byte Spill
	movq	%rsi, -1816(%rbp)       # 8-byte Spill
	movl	%eax, -1832(%rbp)       # 4-byte Spill
	movl	%ecx, -1836(%rbp)       # 4-byte Spill
	movl	%edx, -1840(%rbp)       # 4-byte Spill
	jne	.LBB0_63
# %bb.64:                               # %for.end.30
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1840(%rbp), %eax       # 4-byte Reload
	movl	-1836(%rbp), %ecx       # 4-byte Reload
	movl	-1832(%rbp), %edx       # 4-byte Reload
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-1800(%rbp), %r9        # 8-byte Reload
	movl	%edx, (%r8,%r9,4)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	%ecx, (%r10,%r9,4)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movl	%eax, (%r11,%r9,4)
	addq	$1, %r9
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-1800(%rbp), %r14       # 8-byte Reload
	movl	4(%rbx,%r14,4), %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	movl	4(%r15,%r14,4), %ecx
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	4(%r12,%r14,4), %edx
	movl	%esi, %r13d
	movl	%esi, -1844(%rbp)       # 4-byte Spill
	movl	%eax, -1848(%rbp)       # 4-byte Spill
	movl	-1844(%rbp), %eax       # 4-byte Reload
	movq	%r9, -1856(%rbp)        # 8-byte Spill
	movl	%ecx, -1860(%rbp)       # 4-byte Spill
	movl	%edx, -1864(%rbp)       # 4-byte Spill
	movq	%rdi, -1872(%rbp)       # 8-byte Spill
	movl	%r13d, -1876(%rbp)      # 4-byte Spill
	movl	%esi, -1880(%rbp)       # 4-byte Spill
	movl	%eax, -1884(%rbp)       # 4-byte Spill
.LBB0_65:                               # %for.body7.31
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1884(%rbp), %eax       # 4-byte Reload
	movl	-1880(%rbp), %ecx       # 4-byte Reload
	movl	-1876(%rbp), %edx       # 4-byte Reload
	movq	-1872(%rbp), %rsi       # 8-byte Reload
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	shlq	$5, %rdi
	addq	%rsi, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r9d
	movslq	%r9d, %rdi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%rdi,4), %r11d
	movslq	%r9d, %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%rdi,4), %r14d
	movslq	%r9d, %rdi
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	(%r15,%rdi,4), %r9d
	movl	-1848(%rbp), %r12d      # 4-byte Reload
	subl	%r11d, %r12d
	movl	-1860(%rbp), %r11d      # 4-byte Reload
	subl	%r14d, %r11d
	movl	-1864(%rbp), %r14d      # 4-byte Reload
	subl	%r9d, %r14d
	movl	%r12d, %r9d
	imull	%r9d, %r9d
	movl	%r11d, %r13d
	imull	%r13d, %r13d
	movl	%r14d, %edi
	imull	%edi, %edi
	addl	%r13d, %r9d
	addl	%edi, %r9d
	movl	%r9d, %edi
	imull	%edi, %edi
	imull	%r9d, %edi
	imull	%edi, %r9d
	imull	$15, %edi, %edi
	addl	$-20, %edi
	imull	%edi, %r9d
	imull	%r9d, %r12d
	addl	%r12d, %eax
	imull	%r9d, %r11d
	addl	%r11d, %ecx
	imull	%r9d, %r14d
	addl	%r14d, %edx
	addq	$1, %rsi
	cmpq	$1024, %rsi             # imm = 0x400
	movl	%edx, %edi
	movl	%ecx, %r9d
	movl	%eax, %r11d
	movl	%r11d, -1884(%rbp)      # 4-byte Spill
	movl	%r9d, -1880(%rbp)       # 4-byte Spill
	movl	%edi, -1876(%rbp)       # 4-byte Spill
	movq	%rsi, -1872(%rbp)       # 8-byte Spill
	movl	%eax, -1888(%rbp)       # 4-byte Spill
	movl	%ecx, -1892(%rbp)       # 4-byte Spill
	movl	%edx, -1896(%rbp)       # 4-byte Spill
	jne	.LBB0_65
# %bb.66:                               # %for.end.31
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-1896(%rbp), %eax       # 4-byte Reload
	movl	-1892(%rbp), %ecx       # 4-byte Reload
	movl	-1888(%rbp), %edx       # 4-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movl	%edx, (%rsi,%rdi,4)
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	%ecx, (%r8,%rdi,4)
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	%eax, (%r9,%rdi,4)
	addq	$1, %rdi
	cmpq	$1024, %rdi             # imm = 0x400
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	jne	.LBB0_1
	jmp	.LBB0_4
.Lfunc_end0:
	.size	md, .Lfunc_end0-md
	.cfi_endproc
                                        # -- End function
	.globl	distance                # -- Begin function distance
	.p2align	4, 0x90
	.type	distance,@function
distance:                               # @distance
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %r9d
	movslq	%r8d, %rax
	subl	(%rdi,%rax,4), %r9d
	movslq	%ecx, %rax
	movl	(%rsi,%rax,4), %r10d
	movslq	%r8d, %rax
	subl	(%rsi,%rax,4), %r10d
	movslq	%ecx, %rax
	movl	(%rdx,%rax,4), %ecx
	movslq	%r8d, %rax
	subl	(%rdx,%rax,4), %ecx
	imull	%r9d, %r9d
	imull	%r10d, %r10d
	addl	%r10d, %r9d
	imull	%ecx, %ecx
	addl	%ecx, %r9d
	movl	%r9d, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	distance, .Lfunc_end1-distance
	.cfi_endproc
                                        # -- End function
	.globl	buildNeighborList       # -- Begin function buildNeighborList
	.p2align	4, 0x90
	.type	buildNeighborList,@function
buildNeighborList:                      # @buildNeighborList
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$8320, %rsp             # imm = 0x2080
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%eax, %eax
	leaq	-4096(%rbp), %r9
	leaq	-8192(%rbp), %r10
	movq	%rdi, -8200(%rbp)       # 8-byte Spill
	movq	%rsi, -8208(%rbp)       # 8-byte Spill
	movq	%rdx, -8216(%rbp)       # 8-byte Spill
	movq	%rcx, -8224(%rbp)       # 8-byte Spill
	movq	%r9, -8232(%rbp)        # 8-byte Spill
	movq	%r10, -8240(%rbp)       # 8-byte Spill
	movq	%r8, -8248(%rbp)        # 8-byte Spill
	movl	%eax, -8252(%rbp)       # 4-byte Spill
.LBB2_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
                                        #     Child Loop BB2_4 Depth 2
	movl	-8252(%rbp), %eax       # 4-byte Reload
	movq	-8248(%rbp), %rcx       # 8-byte Reload
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	%eax, -8256(%rbp)       # 4-byte Spill
	movq	%rcx, -8264(%rbp)       # 8-byte Spill
	movq	%rsi, -8272(%rbp)       # 8-byte Spill
.LBB2_2:                                # %for.body3
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8272(%rbp), %rax       # 8-byte Reload
	movl	$0, -4096(%rbp,%rax,4)
	movl	$999999999, -8192(%rbp,%rax,4) # imm = 0x3B9AC9FF
	movq	%rax, %rcx
	addq	$1, %rcx
	movl	$0, -4092(%rbp,%rax,4)
	movl	$999999999, -8188(%rbp,%rax,4) # imm = 0x3B9AC9FF
	addq	$1, %rcx
	movl	$0, -4088(%rbp,%rax,4)
	movl	$999999999, -8184(%rbp,%rax,4) # imm = 0x3B9AC9FF
	addq	$1, %rcx
	movl	$0, -4084(%rbp,%rax,4)
	movl	$999999999, -8180(%rbp,%rax,4) # imm = 0x3B9AC9FF
	addq	$1, %rcx
	cmpq	$1024, %rcx             # imm = 0x400
	movq	%rcx, -8272(%rbp)       # 8-byte Spill
	jne	.LBB2_2
# %bb.3:                                # %for.body8.preheader
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8280(%rbp)       # 8-byte Spill
	jmp	.LBB2_4
.LBB2_4:                                # %for.body8
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8280(%rbp), %rax       # 8-byte Reload
	movq	-8264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	movq	%rax, -8288(%rbp)       # 8-byte Spill
	je	.LBB2_6
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	-8288(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movq	-8264(%rbp), %rdx       # 8-byte Reload
	movl	%edx, %esi
	movq	-8200(%rbp), %rdi       # 8-byte Reload
	movq	-8208(%rbp), %r8        # 8-byte Reload
	movl	%esi, -8292(%rbp)       # 4-byte Spill
	movq	%r8, %rsi
	movq	-8216(%rbp), %rdx       # 8-byte Reload
	movl	-8292(%rbp), %r9d       # 4-byte Reload
	movl	%ecx, -8296(%rbp)       # 4-byte Spill
	movl	%r9d, %ecx
	movl	-8296(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, %r8d
	callq	distance
	movq	-8288(%rbp), %rdx       # 8-byte Reload
	movl	%edx, %ecx
	movl	%ecx, -4096(%rbp,%rdx,4)
	movl	%eax, -8192(%rbp,%rdx,4)
.LBB2_6:                                # %for.inc14
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	-8288(%rbp), %rax       # 8-byte Reload
	addq	$1, %rax
	cmpq	$1024, %rax             # imm = 0x400
	movq	%rax, -8280(%rbp)       # 8-byte Spill
	jne	.LBB2_4
# %bb.7:                                # %for.end16
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8264(%rbp), %rax       # 8-byte Reload
	movl	%eax, %ecx
	movq	-8240(%rbp), %rdi       # 8-byte Reload
	movq	-8232(%rbp), %rsi       # 8-byte Reload
	movl	%ecx, %edx
	movq	-8224(%rbp), %rcx       # 8-byte Reload
	callq	populateNeighborList
	movl	-8256(%rbp), %edx       # 4-byte Reload
	addl	%eax, %edx
	movq	-8264(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	cmpq	$1024, %rcx             # imm = 0x400
	movl	%edx, %eax
	movq	%rcx, -8248(%rbp)       # 8-byte Spill
	movl	%eax, -8252(%rbp)       # 4-byte Spill
	movl	%edx, -8300(%rbp)       # 4-byte Spill
	jne	.LBB2_1
# %bb.8:                                # %for.end21
	movl	-8300(%rbp), %eax       # 4-byte Reload
	movabsq	$.L.str, %rdi
	movl	%eax, %esi
	movl	%eax, -8304(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	-8304(%rbp), %ecx       # 4-byte Reload
	movl	%eax, -8308(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	addq	$8320, %rsp             # imm = 0x2080
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	buildNeighborList, .Lfunc_end2-buildNeighborList
	.cfi_endproc
                                        # -- End function
	.globl	populateNeighborList    # -- Begin function populateNeighborList
	.p2align	4, 0x90
	.type	populateNeighborList,@function
populateNeighborList:                   # @populateNeighborList
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rsi, -8(%rbp)          # 8-byte Spill
	movl	%edx, -12(%rbp)         # 4-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%r8, -32(%rbp)          # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movl	-12(%rbp), %esi         # 4-byte Reload
	movslq	%esi, %rdi
	shlq	$12, %rdi
	movq	-24(%rbp), %r8          # 8-byte Reload
	addq	%rdi, %r8
	movq	%rax, %rdi
	shlq	$2, %rdi
	addq	%rdi, %r8
	movl	%edx, (%r8)
	movq	%rax, %rdi
	addq	$1, %rdi
	movl	4(%rcx,%rax,4), %edx
	movslq	%esi, %r8
	shlq	$12, %r8
	movq	-24(%rbp), %r9          # 8-byte Reload
	addq	%r8, %r9
	movq	%rdi, %r8
	shlq	$2, %r8
	addq	%r8, %r9
	movl	%edx, (%r9)
	addq	$1, %rdi
	movl	8(%rcx,%rax,4), %edx
	movslq	%esi, %r8
	shlq	$12, %r8
	movq	-24(%rbp), %r9          # 8-byte Reload
	addq	%r8, %r9
	movq	%rdi, %r8
	shlq	$2, %r8
	addq	%r8, %r9
	movl	%edx, (%r9)
	addq	$1, %rdi
	movl	12(%rcx,%rax,4), %edx
	movslq	%esi, %rax
	shlq	$12, %rax
	movq	-24(%rbp), %r8          # 8-byte Reload
	addq	%rax, %r8
	movq	%rdi, %rax
	shlq	$2, %rax
	addq	%rax, %r8
	movl	%edx, (%r8)
	addq	$1, %rdi
	cmpq	$1024, %rdi             # imm = 0x400
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	jne	.LBB3_1
# %bb.2:                                # %for.end
	movl	$1024, %eax             # imm = 0x400
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	populateNeighborList, .Lfunc_end3-populateNeighborList
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
	subq	$4223072, %rsp          # imm = 0x407060
	movl	$8650341, %edi          # imm = 0x83FE65
	callq	srand
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -4222984(%rbp)    # 8-byte Spill
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-4222984(%rbp), %rax    # 8-byte Reload
	movq	%rax, -4222992(%rbp)    # 8-byte Spill
	callq	rand
	movq	-4222992(%rbp), %rcx    # 8-byte Reload
	movl	%eax, -4096(%rbp,%rcx,4)
	callq	rand
	movq	-4222992(%rbp), %rcx    # 8-byte Reload
	movl	%eax, -8192(%rbp,%rcx,4)
	callq	rand
	movq	-4222992(%rbp), %rcx    # 8-byte Reload
	movl	%eax, -12288(%rbp,%rcx,4)
	addq	$1, %rcx
	cmpq	$1024, %rcx             # imm = 0x400
	movq	%rcx, -4222984(%rbp)    # 8-byte Spill
	jne	.LBB4_1
# %bb.2:                                # %for.body9.preheader
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -4223000(%rbp)    # 8-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %for.body9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	movq	-4223000(%rbp), %rax    # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -4223008(%rbp)    # 8-byte Spill
	movq	%rdx, -4223016(%rbp)    # 8-byte Spill
.LBB4_4:                                # %for.body12
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4223016(%rbp), %rax    # 8-byte Reload
	movq	-4223008(%rbp), %rcx    # 8-byte Reload
	shlq	$12, %rcx
	leaq	-4218880(%rbp), %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movq	%rax, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rsi
	movl	$0, (%rsi)
	addq	$1, %rax
	movq	-4223008(%rbp), %rcx    # 8-byte Reload
	shlq	$12, %rcx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movq	%rax, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rsi
	movl	$0, (%rsi)
	addq	$1, %rax
	movq	-4223008(%rbp), %rcx    # 8-byte Reload
	shlq	$12, %rcx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movq	%rax, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rsi
	movl	$0, (%rsi)
	addq	$1, %rax
	movq	-4223008(%rbp), %rcx    # 8-byte Reload
	shlq	$12, %rcx
	addq	%rcx, %rdx
	movq	%rax, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movl	$0, (%rdx)
	addq	$1, %rax
	cmpq	$1024, %rax             # imm = 0x400
	movq	%rax, -4223016(%rbp)    # 8-byte Spill
	jne	.LBB4_4
# %bb.5:                                # %for.inc20
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-4223008(%rbp), %rax    # 8-byte Reload
	addq	$1, %rax
	cmpq	$1024, %rax             # imm = 0x400
	movq	%rax, -4223000(%rbp)    # 8-byte Spill
	jne	.LBB4_3
# %bb.6:                                # %for.end22
	leaq	-4218880(%rbp), %rcx
	leaq	-12288(%rbp), %rdx
	leaq	-8192(%rbp), %rsi
	leaq	-4096(%rbp), %rdi
	callq	buildNeighborList
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rcx, -4223024(%rbp)    # 8-byte Spill
.LBB4_7:                                # %for.body29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	movq	-4223024(%rbp), %rax    # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -4223032(%rbp)    # 8-byte Spill
	movq	%rdx, -4223040(%rbp)    # 8-byte Spill
.LBB4_8:                                # %for.body32
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4223040(%rbp), %rax    # 8-byte Reload
	movq	-4223032(%rbp), %rcx    # 8-byte Reload
	shlq	$12, %rcx
	leaq	-4218880(%rbp), %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movq	%rax, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rsi
	movl	(%rsi), %edi
	movq	-4223032(%rbp), %rcx    # 8-byte Reload
	shlq	$5, %rcx
	addq	%rax, %rcx
	movl	%edi, -4222976(%rbp,%rcx,4)
	addq	$1, %rax
	movq	-4223032(%rbp), %rcx    # 8-byte Reload
	shlq	$12, %rcx
	addq	%rcx, %rdx
	movq	%rax, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rdx), %edi
	movq	-4223032(%rbp), %rcx    # 8-byte Reload
	shlq	$5, %rcx
	addq	%rax, %rcx
	movl	%edi, -4222976(%rbp,%rcx,4)
	addq	$1, %rax
	cmpq	$32, %rax
	movq	%rax, -4223040(%rbp)    # 8-byte Spill
	jne	.LBB4_8
# %bb.9:                                # %for.inc42
                                        #   in Loop: Header=BB4_7 Depth=1
	movq	-4223032(%rbp), %rax    # 8-byte Reload
	addq	$1, %rax
	cmpq	$32, %rax
	movq	%rax, -4223024(%rbp)    # 8-byte Spill
	jne	.LBB4_7
# %bb.10:                               # %for.end44
	leaq	-4222976(%rbp), %rax
	leaq	-12288(%rbp), %r9
	leaq	-8192(%rbp), %r8
	leaq	-4096(%rbp), %rcx
	leaq	-24576(%rbp), %rdx
	leaq	-20480(%rbp), %rsi
	leaq	-16384(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	md
	xorl	%r10d, %r10d
	movl	%r10d, %eax
	movq	%rax, -4223048(%rbp)    # 8-byte Spill
.LBB4_11:                               # %for.body54
                                        # =>This Inner Loop Header: Depth=1
	movq	-4223048(%rbp), %rax    # 8-byte Reload
	movl	-16384(%rbp,%rax,4), %esi
	movl	-20480(%rbp,%rax,4), %edx
	movl	-24576(%rbp,%rax,4), %ecx
	movabsq	$.L.str.1, %rdi
	movq	%rax, -4223056(%rbp)    # 8-byte Spill
	movb	$0, %al
	callq	printf
	movq	-4223056(%rbp), %rdi    # 8-byte Reload
	addq	$1, %rdi
	cmpq	$1024, %rdi             # imm = 0x400
	movl	%eax, -4223060(%rbp)    # 4-byte Spill
	movq	%rdi, -4223048(%rbp)    # 8-byte Spill
	jne	.LBB4_11
# %bb.12:                               # %for.end64
	xorl	%eax, %eax
	addq	$4223072, %rsp          # imm = 0x407060
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"total pairs - %i \n"
	.size	.L.str, 19

	.type	.L__const.main.probSizes,@object # @__const.main.probSizes
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.L__const.main.probSizes:
	.long	12288                   # 0x3000
	.long	24576                   # 0x6000
	.long	36864                   # 0x9000
	.long	73728                   # 0x12000
	.size	.L__const.main.probSizes, 16

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"after, X:%i Y:%i Z%i \n"
	.size	.L.str.1, 23

	.ident	"clang version 10.0.1 "
	.section	".note.GNU-stack","",@progbits
