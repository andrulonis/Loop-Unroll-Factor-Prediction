	.text
	.file	"bb_gemm_0_16.c"
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
	subq	$544, %rsp              # imm = 0x220
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
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_8 Depth 3
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_12 Depth 3
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_20 Depth 3
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_27 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_32 Depth 3
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_36 Depth 3
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_40 Depth 3
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_47 Depth 2
                                        #       Child Loop BB0_48 Depth 3
                                        #     Child Loop BB0_51 Depth 2
                                        #       Child Loop BB0_52 Depth 3
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #     Child Loop BB0_59 Depth 2
                                        #       Child Loop BB0_60 Depth 3
                                        #     Child Loop BB0_63 Depth 2
                                        #       Child Loop BB0_64 Depth 3
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB0_2:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
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
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB0_2
# %bb.5:                                # %for.inc20
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                # %for.end22
	addq	$544, %rsp              # imm = 0x220
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_7:                                # %for.body3.1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
	.cfi_def_cfa %rbp, 16
	movq	-88(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
.LBB0_8:                                # %for.body6.1
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-100(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB0_8
# %bb.9:                                # %for.inc17.1
                                        #   in Loop: Header=BB0_7 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jne	.LBB0_7
# %bb.10:                               # %for.inc20.1
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB0_11:                               # %for.body3.2
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_12 Depth 3
	movq	-128(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
.LBB0_12:                               # %for.body6.2
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-140(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB0_12
# %bb.13:                               # %for.inc17.2
                                        #   in Loop: Header=BB0_11 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB0_11
# %bb.14:                               # %for.inc20.2
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB0_15:                               # %for.body3.3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
	movq	-168(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-160(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
.LBB0_16:                               # %for.body6.3
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-180(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB0_16
# %bb.17:                               # %for.inc17.3
                                        #   in Loop: Header=BB0_15 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB0_15
# %bb.18:                               # %for.inc20.3
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
.LBB0_19:                               # %for.body3.4
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
	movq	-208(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-200(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movq	%rdx, -232(%rbp)        # 8-byte Spill
.LBB0_20:                               # %for.body6.4
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-220(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jne	.LBB0_20
# %bb.21:                               # %for.inc17.4
                                        #   in Loop: Header=BB0_19 Depth=2
	movq	-216(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB0_19
# %bb.22:                               # %for.inc20.4
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
.LBB0_23:                               # %for.body3.5
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
	movq	-248(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-240(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movq	%rdx, -272(%rbp)        # 8-byte Spill
.LBB0_24:                               # %for.body6.5
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-260(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jne	.LBB0_24
# %bb.25:                               # %for.inc17.5
                                        #   in Loop: Header=BB0_23 Depth=2
	movq	-256(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jne	.LBB0_23
# %bb.26:                               # %for.inc20.5
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-240(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB0_27:                               # %for.body3.6
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
	movq	-288(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-280(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movq	%rdx, -312(%rbp)        # 8-byte Spill
.LBB0_28:                               # %for.body6.6
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-300(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB0_28
# %bb.29:                               # %for.inc17.6
                                        #   in Loop: Header=BB0_27 Depth=2
	movq	-296(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB0_27
# %bb.30:                               # %for.inc20.6
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-280(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
.LBB0_31:                               # %for.body3.7
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_32 Depth 3
	movq	-328(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-320(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movq	%rdx, -352(%rbp)        # 8-byte Spill
.LBB0_32:                               # %for.body6.7
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-340(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB0_32
# %bb.33:                               # %for.inc17.7
                                        #   in Loop: Header=BB0_31 Depth=2
	movq	-336(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jne	.LBB0_31
# %bb.34:                               # %for.inc20.7
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-320(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
.LBB0_35:                               # %for.body3.8
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_36 Depth 3
	movq	-368(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-360(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
.LBB0_36:                               # %for.body6.8
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-380(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jne	.LBB0_36
# %bb.37:                               # %for.inc17.8
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	-376(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jne	.LBB0_35
# %bb.38:                               # %for.inc20.8
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-360(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
.LBB0_39:                               # %for.body3.9
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_40 Depth 3
	movq	-408(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-400(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movq	%rdx, -432(%rbp)        # 8-byte Spill
.LBB0_40:                               # %for.body6.9
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-416(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-420(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jne	.LBB0_40
# %bb.41:                               # %for.inc17.9
                                        #   in Loop: Header=BB0_39 Depth=2
	movq	-416(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jne	.LBB0_39
# %bb.42:                               # %for.inc20.9
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-400(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
.LBB0_43:                               # %for.body3.10
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_44 Depth 3
	movq	-448(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-440(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movl	%ecx, -460(%rbp)        # 4-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
.LBB0_44:                               # %for.body6.10
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-460(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jne	.LBB0_44
# %bb.45:                               # %for.inc17.10
                                        #   in Loop: Header=BB0_43 Depth=2
	movq	-456(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jne	.LBB0_43
# %bb.46:                               # %for.inc20.10
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
.LBB0_47:                               # %for.body3.11
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_48 Depth 3
	movq	-488(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-480(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movq	%rdx, -512(%rbp)        # 8-byte Spill
.LBB0_48:                               # %for.body6.11
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	-496(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-500(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jne	.LBB0_48
# %bb.49:                               # %for.inc17.11
                                        #   in Loop: Header=BB0_47 Depth=2
	movq	-496(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jne	.LBB0_47
# %bb.50:                               # %for.inc20.11
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-480(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
.LBB0_51:                               # %for.body3.12
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
	movq	-528(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-520(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	movq	%rdx, -552(%rbp)        # 8-byte Spill
.LBB0_52:                               # %for.body6.12
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	-536(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-540(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jne	.LBB0_52
# %bb.53:                               # %for.inc17.12
                                        #   in Loop: Header=BB0_51 Depth=2
	movq	-536(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jne	.LBB0_51
# %bb.54:                               # %for.inc20.12
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-520(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	movq	%rcx, -568(%rbp)        # 8-byte Spill
.LBB0_55:                               # %for.body3.13
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
	movq	-568(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-560(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	movq	%rdx, -592(%rbp)        # 8-byte Spill
.LBB0_56:                               # %for.body6.13
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	-576(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-580(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jne	.LBB0_56
# %bb.57:                               # %for.inc17.13
                                        #   in Loop: Header=BB0_55 Depth=2
	movq	-576(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jne	.LBB0_55
# %bb.58:                               # %for.inc20.13
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-560(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	movq	%rcx, -608(%rbp)        # 8-byte Spill
.LBB0_59:                               # %for.body3.14
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_60 Depth 3
	movq	-608(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-600(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	movq	%rdx, -632(%rbp)        # 8-byte Spill
.LBB0_60:                               # %for.body6.14
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	-616(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-620(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jne	.LBB0_60
# %bb.61:                               # %for.inc17.14
                                        #   in Loop: Header=BB0_59 Depth=2
	movq	-616(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jne	.LBB0_59
# %bb.62:                               # %for.inc20.14
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-600(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	movq	%rcx, -648(%rbp)        # 8-byte Spill
.LBB0_63:                               # %for.body3.15
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_64 Depth 3
	movq	-648(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-640(%rbp), %rsi        # 8-byte Reload
	shlq	$10, %rsi
	addq	%rax, %rsi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %ecx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movq	%rdx, -672(%rbp)        # 8-byte Spill
.LBB0_64:                               # %for.body6.15
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	-656(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movl	-660(%rbp), %edx        # 4-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	imull	(%rsi,%rcx,4), %edx
	movq	-640(%rbp), %rcx        # 8-byte Reload
	shlq	$10, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	addl	(%rdi,%rcx,4), %edx
	movl	%edx, (%rdi,%rcx,4)
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jne	.LBB0_64
# %bb.65:                               # %for.inc17.15
                                        #   in Loop: Header=BB0_63 Depth=2
	movq	-656(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$256, %rax              # imm = 0x100
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jne	.LBB0_63
# %bb.66:                               # %for.inc20.15
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$1024, %rax             # imm = 0x400
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB0_1
	jmp	.LBB0_6
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
