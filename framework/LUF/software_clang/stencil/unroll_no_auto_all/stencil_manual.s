	.text
	.file	"stencil_manual.c"
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
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
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
	movl	%esi, (%r9,%rcx,4)
	addq	$1, %rax
	cmpq	$4094, %rax             # imm = 0xFFE
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB0_5
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
.LBB0_5:                                # %for.body3.62
                                        #   in Loop: Header=BB0_2 Depth=2
	.cfi_def_cfa %rbp, 16
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$12, %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx), %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	imull	(%rdi,%rax,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	28(%rdx), %r8d
	imull	32772(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	32(%rdx), %r8d
	imull	32776(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movq	-16(%rbp), %r9          # 8-byte Reload
	movl	%esi, (%r9,%rax,4)
	addq	$1, %rcx
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$12, %rax
	addq	%rcx, %rax
	movl	(%rdx), %esi
	imull	(%rdi,%rax,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	28(%rdx), %r8d
	imull	32772(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	32(%rdx), %r8d
	imull	32776(%rdi,%rax,4), %r8d
	addl	%r8d, %esi
	movl	%esi, (%r9,%rax,4)
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_2
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
	subq	$608, %rsp              # imm = 0x260
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
	movq	%rdx, -64(%rbp)         # 8-byte Spill
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
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
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
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
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
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
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
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
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
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
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
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
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
	movq	-112(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
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
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
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
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
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
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
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
	movq	-144(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
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
	movq	-152(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
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
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
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
	movq	-168(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
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
	movq	-176(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
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
	movq	-184(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
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
	movq	-192(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
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
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
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
	movq	-208(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
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
	movq	-216(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
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
	movq	-224(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
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
	movq	-232(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
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
	movq	-240(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
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
	movq	-248(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
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
	movq	-256(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
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
	movq	-264(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
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
	movq	-272(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
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
	movq	-280(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
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
	movq	-288(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
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
	movq	-296(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
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
	movq	-304(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
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
	movq	-312(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
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
	movq	-320(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
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
	movq	-328(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
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
	movq	-336(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
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
	movq	-344(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
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
	movq	-352(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
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
	movq	-360(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -368(%rbp)        # 8-byte Spill
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
	movq	-368(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
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
	movq	-376(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -384(%rbp)        # 8-byte Spill
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
	movq	-384(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
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
	movq	-392(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
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
	movq	-400(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -408(%rbp)        # 8-byte Spill
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
	movq	-408(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -416(%rbp)        # 8-byte Spill
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
	movq	-416(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
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
	movq	-424(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -432(%rbp)        # 8-byte Spill
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
	movq	-432(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
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
	movq	-440(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
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
	movq	-448(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
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
	movq	-456(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
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
	movq	-464(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
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
	movq	-472(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -480(%rbp)        # 8-byte Spill
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
	movq	-480(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
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
	movq	-488(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
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
	movq	-496(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
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
	movq	-504(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
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
	movq	-512(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
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
	movq	-520(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -528(%rbp)        # 8-byte Spill
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
	movq	-528(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
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
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -544(%rbp)        # 8-byte Spill
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
	movq	-544(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
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
	movq	-552(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
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
	movq	-560(%rbp), %rdx        # 8-byte Reload
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
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -568(%rbp)        # 8-byte Spill
# %bb.5:                                # %for.body23
	jmp	.LBB1_6
.LBB1_6:                                # %for.body27
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, (%rcx)
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 4(%rcx)
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 8(%rcx)
	jmp	.LBB1_10
.LBB1_7:                                # %for.body54
                                        # =>This Inner Loop Header: Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
# %bb.8:                                # %for.body58
                                        #   in Loop: Header=BB1_7 Depth=1
	xorl	%edx, %edx
	movq	-584(%rbp), %rax        # 8-byte Reload
	shlq	$12, %rax
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %esi
	movq	-584(%rbp), %rax        # 8-byte Reload
	shlq	$12, %rax
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rax,4), %r8d
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	%eax, %r9d
	movabsq	$.L.str, %rdi
	movl	%esi, -588(%rbp)        # 4-byte Spill
	movl	%r9d, %esi
	movl	-588(%rbp), %r9d        # 4-byte Reload
	movl	%r9d, %ecx
	movb	$0, %al
	callq	printf
	movq	-584(%rbp), %rdi        # 8-byte Reload
	shlq	$12, %rdi
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	4(%r10,%rdi,4), %ecx
	movq	-584(%rbp), %rdi        # 8-byte Reload
	shlq	$12, %rdi
	movq	-16(%rbp), %r11         # 8-byte Reload
	movl	4(%r11,%rdi,4), %r8d
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %edx
	movabsq	$.L.str, %rdi
	movl	%edx, %esi
	movl	$1, %edx
	movl	%eax, -592(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-584(%rbp), %rdi        # 8-byte Reload
	shlq	$12, %rdi
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	8(%r10,%rdi,4), %ecx
	movq	-584(%rbp), %rdi        # 8-byte Reload
	shlq	$12, %rdi
	movq	-16(%rbp), %r11         # 8-byte Reload
	movl	8(%r11,%rdi,4), %r8d
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %edx
	movabsq	$.L.str, %rdi
	movl	%edx, %esi
	movl	$2, %edx
	movl	%eax, -596(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-584(%rbp), %rdi        # 8-byte Reload
	shlq	$12, %rdi
	movq	-8(%rbp), %r10          # 8-byte Reload
	movl	12(%r10,%rdi,4), %ecx
	movq	-584(%rbp), %rdi        # 8-byte Reload
	shlq	$12, %rdi
	movq	-16(%rbp), %r11         # 8-byte Reload
	movl	12(%r11,%rdi,4), %r8d
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %edx
	movabsq	$.L.str, %rdi
	movl	%edx, %esi
	movl	$3, %edx
	movl	%eax, -600(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-584(%rbp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	cmpq	$4, %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	jne	.LBB1_7
# %bb.9:                                # %for.end73
	movabsq	$.Lstr, %rdi
	callq	puts
	xorl	%ecx, %ecx
	movl	%eax, -604(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_10:                               # %for.body27.1
	.cfi_def_cfa %rbp, 16
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 12(%rcx)
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 16(%rcx)
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 20(%rcx)
# %bb.11:                               # %for.body27.2
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 24(%rcx)
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 28(%rcx)
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	callq	stencil
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
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
