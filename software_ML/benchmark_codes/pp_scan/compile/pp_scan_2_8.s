	.text
	.file	"pp_scan_2_8.c"
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_1
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
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
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.4:                                # %for.end11
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
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
	movq	%rax, %rsi
	addq	$1, %rsi
	movl	(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 4(%rcx,%rax,4)
	addq	$1, %rsi
	movl	4(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 8(%rcx,%rax,4)
	addq	$1, %rsi
	movl	8(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 12(%rcx,%rax,4)
	addq	$1, %rsi
	movl	12(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 16(%rcx,%rax,4)
	addq	$1, %rsi
	movl	16(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 20(%rcx,%rax,4)
	addq	$1, %rsi
	movl	20(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 24(%rcx,%rax,4)
	movq	%rsi, %rax
	addq	$1, %rax
	cmpq	$524288, %rax           # imm = 0x80000
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB2_3
# %bb.2:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_3:                                # %for.body.7
                                        #   in Loop: Header=BB2_1 Depth=1
	.cfi_def_cfa %rbp, 16
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rax,%rcx,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	addl	-4(%rdi,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	%edx, (%rax,%rsi,4)
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	jmp	.LBB2_1
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
