	.text
	.file	"bb_gemm_1_16.c"
	.globl	bb_gemm                 # -- Begin function bb_gemm
	.p2align	4, 0x90
	.type	bb_gemm,@function
bb_gemm:                                # @bb_gemm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
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
                                        #       Child Loop BB0_3 Depth 3
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_9 Depth 3
                                        #       Child Loop BB0_11 Depth 3
                                        #       Child Loop BB0_13 Depth 3
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_17 Depth 3
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_35 Depth 3
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB0_2:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_9 Depth 3
                                        #       Child Loop BB0_11 Depth 3
                                        #       Child Loop BB0_13 Depth 3
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_17 Depth 3
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_25 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_35 Depth 3
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
.LBB0_3:                                # %for.body6
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-60(%rbp), %edx         # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB0_3
# %bb.4:                                # %for.inc17
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB0_7
.LBB0_5:                                # %for.inc20
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$1024, %rax             # imm = 0x400
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB0_1
# %bb.6:                                # %for.end22
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_7:                                # %for.body6.1
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.cfi_def_cfa %rbp, 16
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-84(%rbp), %edx         # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB0_7
# %bb.8:                                # %for.inc17.1
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB0_9:                                # %for.body6.2
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-108(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jne	.LBB0_9
# %bb.10:                               # %for.inc17.2
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
.LBB0_11:                               # %for.body6.3
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-132(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB0_11
# %bb.12:                               # %for.inc17.3
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB0_13:                               # %for.body6.4
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-156(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB0_13
# %bb.14:                               # %for.inc17.4
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB0_15:                               # %for.body6.5
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-180(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB0_15
# %bb.16:                               # %for.inc17.5
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
.LBB0_17:                               # %for.body6.6
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-204(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jne	.LBB0_17
# %bb.18:                               # %for.inc17.6
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
.LBB0_19:                               # %for.body6.7
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-228(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jne	.LBB0_19
# %bb.20:                               # %for.inc17.7
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-224(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
.LBB0_21:                               # %for.body6.8
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-252(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jne	.LBB0_21
# %bb.22:                               # %for.inc17.8
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB0_23:                               # %for.body6.9
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-276(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB0_23
# %bb.24:                               # %for.inc17.9
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-272(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
.LBB0_25:                               # %for.body6.10
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-300(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB0_25
# %bb.26:                               # %for.inc17.10
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
.LBB0_27:                               # %for.body6.11
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-320(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-324(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jne	.LBB0_27
# %bb.28:                               # %for.inc17.11
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-320(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB0_29:                               # %for.body6.12
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-348(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jne	.LBB0_29
# %bb.30:                               # %for.inc17.12
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-344(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB0_31:                               # %for.body6.13
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-368(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-372(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jne	.LBB0_31
# %bb.32:                               # %for.inc17.13
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-368(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
.LBB0_33:                               # %for.body6.14
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-396(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jne	.LBB0_33
# %bb.34:                               # %for.inc17.14
                                        #   in Loop: Header=BB0_2 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-392(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rdx, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %eax
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movl	%eax, -420(%rbp)        # 4-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
.LBB0_35:                               # %for.body6.15
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-416(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-420(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jne	.LBB0_35
# %bb.36:                               # %for.inc17.15
                                        #   in Loop: Header=BB0_2 Depth=2
	movq	-416(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB0_2
	jmp	.LBB0_5
.Lfunc_end0:
	.size	bb_gemm, .Lfunc_end0-bb_gemm
	.cfi_endproc
                                        # -- End function
	.globl	print                   # -- Begin function print
	.p2align	4, 0x90
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	cmpl	$0, %esi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movl	%esi, -12(%rbp)         # 4-byte Spill
	jle	.LBB1_4
# %bb.1:                                # %for.body.preheader
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %esi
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	printf
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	-24(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.end.loopexit
	jmp	.LBB1_4
.LBB1_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	print, .Lfunc_end1-print
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI2_0:
	.quad	4638707616191610880     # double 128
.LCPI2_1:
	.quad	4746794007244308480     # double 2147483647
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
	subq	$48, %rsp
	movl	$4194304, %edi          # imm = 0x400000
	callq	malloc
	movl	$4194304, %edi          # imm = 0x400000
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	malloc
	movl	$4194304, %edi          # imm = 0x400000
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	malloc
	movl	$8650341, %edi          # imm = 0x83FE65
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	srand
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	callq	rand
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	$0, (%rsi,%rdx,4)
	addq	$1, %rdx
	cmpq	$1048576, %rdx          # imm = 0x100000
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	jne	.LBB2_1
# %bb.2:                                # %for.end
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	bb_gemm
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$1048576, %esi          # imm = 0x100000
	callq	print
	movl	$10, %edi
	callq	putchar
	xorl	%ecx, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%u\t"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.ident	"clang version 10.0.1 "
	.section	".note.GNU-stack","",@progbits
