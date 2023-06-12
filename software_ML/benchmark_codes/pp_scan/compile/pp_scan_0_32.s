	.text
	.file	"pp_scan_0_32.c"
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
	jle	.LBB0_4
# %bb.1:                                # %for.body.preheader
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
.LBB0_2:                                # %for.body
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
	jne	.LBB0_2
# %bb.3:                                # %for.end.loopexit
	jmp	.LBB0_4
.LBB0_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	print, .Lfunc_end0-print
	.cfi_endproc
                                        # -- End function
	.globl	local_scan              # -- Begin function local_scan
	.p2align	4, 0x90
	.type	local_scan,@function
local_scan:                             # @local_scan
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #     Child Loop BB1_5 Depth 2
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_11 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_15 Depth 2
                                        #     Child Loop BB1_17 Depth 2
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_21 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_27 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_31 Depth 2
                                        #     Child Loop BB1_33 Depth 2
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_41 Depth 2
                                        #     Child Loop BB1_43 Depth 2
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_47 Depth 2
                                        #     Child Loop BB1_49 Depth 2
                                        #     Child Loop BB1_51 Depth 2
                                        #     Child Loop BB1_53 Depth 2
                                        #     Child Loop BB1_55 Depth 2
                                        #     Child Loop BB1_57 Depth 2
                                        #     Child Loop BB1_59 Depth 2
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_63 Depth 2
                                        #     Child Loop BB1_65 Depth 2
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	$1, %ecx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.inc9
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %for.end11
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_5:                                # %for.body3.1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.cfi_def_cfa %rbp, 16
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB1_5
# %bb.6:                                # %for.inc9.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
.LBB1_7:                                # %for.body3.2
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB1_7
# %bb.8:                                # %for.inc9.2
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
.LBB1_9:                                # %for.body3.3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB1_9
# %bb.10:                               # %for.inc9.3
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB1_11:                               # %for.body3.4
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB1_11
# %bb.12:                               # %for.inc9.4
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB1_13:                               # %for.body3.5
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB1_13
# %bb.14:                               # %for.inc9.5
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB1_15:                               # %for.body3.6
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-120(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB1_15
# %bb.16:                               # %for.inc9.6
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
.LBB1_17:                               # %for.body3.7
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB1_17
# %bb.18:                               # %for.inc9.7
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
.LBB1_19:                               # %for.body3.8
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB1_19
# %bb.20:                               # %for.inc9.8
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
.LBB1_21:                               # %for.body3.9
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-168(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB1_21
# %bb.22:                               # %for.inc9.9
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB1_23:                               # %for.body3.10
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB1_23
# %bb.24:                               # %for.inc9.10
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
.LBB1_25:                               # %for.body3.11
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-200(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB1_25
# %bb.26:                               # %for.inc9.11
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
.LBB1_27:                               # %for.body3.12
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-216(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB1_27
# %bb.28:                               # %for.inc9.12
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
.LBB1_29:                               # %for.body3.13
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-232(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jne	.LBB1_29
# %bb.30:                               # %for.inc9.13
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
.LBB1_31:                               # %for.body3.14
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-248(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB1_31
# %bb.32:                               # %for.inc9.14
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
.LBB1_33:                               # %for.body3.15
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-264(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jne	.LBB1_33
# %bb.34:                               # %for.inc9.15
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB1_35:                               # %for.body3.16
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-280(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB1_35
# %bb.36:                               # %for.inc9.16
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
.LBB1_37:                               # %for.body3.17
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-296(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jne	.LBB1_37
# %bb.38:                               # %for.inc9.17
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
.LBB1_39:                               # %for.body3.18
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jne	.LBB1_39
# %bb.40:                               # %for.inc9.18
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
.LBB1_41:                               # %for.body3.19
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-328(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jne	.LBB1_41
# %bb.42:                               # %for.inc9.19
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
.LBB1_43:                               # %for.body3.20
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-344(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB1_43
# %bb.44:                               # %for.inc9.20
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
.LBB1_45:                               # %for.body3.21
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-360(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-360(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jne	.LBB1_45
# %bb.46:                               # %for.inc9.21
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB1_47:                               # %for.body3.22
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-376(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jne	.LBB1_47
# %bb.48:                               # %for.inc9.22
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
.LBB1_49:                               # %for.body3.23
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-392(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jne	.LBB1_49
# %bb.50:                               # %for.inc9.23
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
.LBB1_51:                               # %for.body3.24
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-408(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jne	.LBB1_51
# %bb.52:                               # %for.inc9.24
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
.LBB1_53:                               # %for.body3.25
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-424(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-424(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jne	.LBB1_53
# %bb.54:                               # %for.inc9.25
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
.LBB1_55:                               # %for.body3.26
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-440(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jne	.LBB1_55
# %bb.56:                               # %for.inc9.26
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
.LBB1_57:                               # %for.body3.27
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-456(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jne	.LBB1_57
# %bb.58:                               # %for.inc9.27
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
.LBB1_59:                               # %for.body3.28
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-472(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jne	.LBB1_59
# %bb.60:                               # %for.inc9.28
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-472(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
.LBB1_61:                               # %for.body3.29
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	-488(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-488(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jne	.LBB1_61
# %bb.62:                               # %for.inc9.29
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-488(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
.LBB1_63:                               # %for.body3.30
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	-504(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-504(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jne	.LBB1_63
# %bb.64:                               # %for.inc9.30
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-504(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movl	$1, %ecx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
.LBB1_65:                               # %for.body3.31
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	-520(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	-4(%rdx,%rcx,4), %esi
	movq	-520(%rbp), %rcx        # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	addl	(%rdx,%rcx,4), %esi
	movl	%esi, (%rdx,%rcx,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jne	.LBB1_65
# %bb.66:                               # %for.inc9.31
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jne	.LBB1_1
	jmp	.LBB1_4
.Lfunc_end1:
	.size	local_scan, .Lfunc_end1-local_scan
	.cfi_endproc
                                        # -- End function
	.globl	sum_scan                # -- Begin function sum_scan
	.p2align	4, 0x90
	.type	sum_scan,@function
sum_scan:                               # @sum_scan
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, (%rdi)
	movl	$1, %eax
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	-4(%rcx,%rax,4), %edx
	movq	%rax, %rsi
	shlq	$4, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	addl	-4(%rdi,%rsi,4), %edx
	movl	%edx, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jne	.LBB2_1
# %bb.2:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	sum_scan, .Lfunc_end2-sum_scan
	.cfi_endproc
                                        # -- End function
	.globl	last_step_scan          # -- Begin function last_step_scan
	.p2align	4, 0x90
	.type	last_step_scan,@function
last_step_scan:                         # @last_step_scan
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
	jmp	.LBB3_1
.LBB3_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	movq	-32(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
.LBB3_2:                                # %for.body3
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	addl	(%rcx,%rdi,4), %esi
	shlq	$4, %rdi
	addq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	movl	%esi, (%r8,%rdi,4)
	addq	$1, %rax
	cmpq	$16, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB3_2
# %bb.3:                                # %for.inc11
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB3_1
# %bb.4:                                # %for.end13
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	last_step_scan, .Lfunc_end3-last_step_scan
	.cfi_endproc
                                        # -- End function
	.globl	pp_scan                 # -- Begin function pp_scan
	.p2align	4, 0x90
	.type	pp_scan,@function
pp_scan:                                # @pp_scan
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	callq	local_scan
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-8(%rbp), %rsi          # 8-byte Reload
	callq	sum_scan
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	last_step_scan
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	pp_scan, .Lfunc_end4-pp_scan
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI5_0:
	.quad	4656722014701092864     # double 2048
.LCPI5_1:
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
	subq	$2097200, %rsp          # imm = 0x200030
	movl	$33554432, %edi         # imm = 0x2000000
	callq	malloc
	movl	$33554432, %edi         # imm = 0x2000000
	movq	%rax, -2097160(%rbp)    # 8-byte Spill
	callq	malloc
	movl	$8650341, %edi          # imm = 0x83FE65
	movq	%rax, -2097168(%rbp)    # 8-byte Spill
	callq	srand
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -2097176(%rbp)    # 8-byte Spill
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-2097176(%rbp), %rax    # 8-byte Reload
	movq	%rax, -2097184(%rbp)    # 8-byte Spill
	callq	rand
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2097160(%rbp), %rcx    # 8-byte Reload
	movq	-2097184(%rbp), %rdx    # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	callq	rand
	movsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2097168(%rbp), %rcx    # 8-byte Reload
	movq	-2097184(%rbp), %rdx    # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	addq	$1, %rdx
	cmpq	$8388608, %rdx          # imm = 0x800000
	movq	%rdx, -2097176(%rbp)    # 8-byte Spill
	jne	.LBB5_1
# %bb.2:                                # %for.end
	movq	-2097160(%rbp), %rdi    # 8-byte Reload
	movl	$1, %esi
	callq	print
	movl	$10, %edi
	callq	putchar
	leaq	-2097152(%rbp), %rdx
	movq	-2097160(%rbp), %rdi    # 8-byte Reload
	movq	-2097168(%rbp), %rsi    # 8-byte Reload
	movl	%eax, -2097188(%rbp)    # 4-byte Spill
	callq	pp_scan
	movq	-2097160(%rbp), %rdi    # 8-byte Reload
	movl	$2, %esi
	callq	print
	movl	$10, %edi
	callq	putchar
	xorl	%ecx, %ecx
	movl	%eax, -2097192(%rbp)    # 4-byte Spill
	movl	%ecx, %eax
	addq	$2097200, %rsp          # imm = 0x200030
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
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
