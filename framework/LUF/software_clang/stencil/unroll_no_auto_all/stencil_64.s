	.text
	.file	"stencil.c"
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
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB0_2
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
	subq	$4224, %rsp             # imm = 0x1080
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
	movq	%rdx, -568(%rbp)        # 8-byte Spill
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
	movq	-568(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -576(%rbp)        # 8-byte Spill
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
	movq	-576(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -584(%rbp)        # 8-byte Spill
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
	movq	-584(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
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
	movq	-592(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -600(%rbp)        # 8-byte Spill
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
	movq	-600(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
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
	movq	-608(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
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
	movq	-616(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -624(%rbp)        # 8-byte Spill
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
	movq	-624(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
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
	movq	-632(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -640(%rbp)        # 8-byte Spill
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
	movq	-640(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
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
	movq	-648(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
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
	movq	-656(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
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
	movq	-664(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
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
	movq	-672(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -680(%rbp)        # 8-byte Spill
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
	movq	-680(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
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
	movq	-688(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
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
	movq	-696(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -704(%rbp)        # 8-byte Spill
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
	movq	-704(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
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
	movq	-712(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -720(%rbp)        # 8-byte Spill
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
	movq	-720(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
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
	movq	-728(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -736(%rbp)        # 8-byte Spill
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
	movq	-736(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
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
	movq	-744(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
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
	movq	-752(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
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
	movq	-760(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
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
	movq	-768(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
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
	movq	-776(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -784(%rbp)        # 8-byte Spill
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
	movq	-784(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
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
	movq	-792(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -800(%rbp)        # 8-byte Spill
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
	movq	-800(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
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
	movq	-808(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
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
	movq	-816(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
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
	movq	-824(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
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
	movq	-832(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
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
	movq	-840(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -848(%rbp)        # 8-byte Spill
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
	movq	-848(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
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
	movq	-856(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
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
	movq	-864(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
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
	movq	-872(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
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
	movq	-880(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -888(%rbp)        # 8-byte Spill
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
	movq	-888(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -896(%rbp)        # 8-byte Spill
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
	movq	-896(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
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
	movq	-904(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
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
	movq	-912(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
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
	movq	-920(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -928(%rbp)        # 8-byte Spill
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
	movq	-928(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
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
	movq	-936(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -944(%rbp)        # 8-byte Spill
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
	movq	-944(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
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
	movq	-952(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -960(%rbp)        # 8-byte Spill
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
	movq	-960(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
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
	movq	-968(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -976(%rbp)        # 8-byte Spill
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
	movq	-976(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -984(%rbp)        # 8-byte Spill
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
	movq	-984(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -992(%rbp)        # 8-byte Spill
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
	movq	-992(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
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
	movq	-1000(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1008(%rbp)       # 8-byte Spill
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
	movq	-1008(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
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
	movq	-1016(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
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
	movq	-1024(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
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
	movq	-1032(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
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
	movq	-1040(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
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
	movq	-1048(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
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
	movq	-1056(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
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
	movq	-1064(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1072(%rbp)       # 8-byte Spill
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
	movq	-1072(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
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
	movq	-1080(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1088(%rbp)       # 8-byte Spill
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
	movq	-1088(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1096(%rbp)       # 8-byte Spill
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
	movq	-1096(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1104(%rbp)       # 8-byte Spill
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
	movq	-1104(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
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
	movq	-1112(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1120(%rbp)       # 8-byte Spill
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
	movq	-1120(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
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
	movq	-1128(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1136(%rbp)       # 8-byte Spill
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
	movq	-1136(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
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
	movq	-1144(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1152(%rbp)       # 8-byte Spill
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
	movq	-1152(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
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
	movq	-1160(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
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
	movq	-1168(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1176(%rbp)       # 8-byte Spill
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
	movq	-1176(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1184(%rbp)       # 8-byte Spill
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
	movq	-1184(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1192(%rbp)       # 8-byte Spill
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
	movq	-1192(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
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
	movq	-1200(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1208(%rbp)       # 8-byte Spill
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
	movq	-1208(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1216(%rbp)       # 8-byte Spill
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
	movq	-1216(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1224(%rbp)       # 8-byte Spill
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
	movq	-1224(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1232(%rbp)       # 8-byte Spill
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
	movq	-1232(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1240(%rbp)       # 8-byte Spill
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
	movq	-1240(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
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
	movq	-1248(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1256(%rbp)       # 8-byte Spill
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
	movq	-1256(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1264(%rbp)       # 8-byte Spill
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
	movq	-1264(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
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
	movq	-1272(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1280(%rbp)       # 8-byte Spill
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
	movq	-1280(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
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
	movq	-1288(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1296(%rbp)       # 8-byte Spill
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
	movq	-1296(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1304(%rbp)       # 8-byte Spill
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
	movq	-1304(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1312(%rbp)       # 8-byte Spill
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
	movq	-1312(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1320(%rbp)       # 8-byte Spill
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
	movq	-1320(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1328(%rbp)       # 8-byte Spill
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
	movq	-1328(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1336(%rbp)       # 8-byte Spill
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
	movq	-1336(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1344(%rbp)       # 8-byte Spill
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
	movq	-1344(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1352(%rbp)       # 8-byte Spill
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
	movq	-1352(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1360(%rbp)       # 8-byte Spill
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
	movq	-1360(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1368(%rbp)       # 8-byte Spill
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
	movq	-1368(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1376(%rbp)       # 8-byte Spill
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
	movq	-1376(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1384(%rbp)       # 8-byte Spill
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
	movq	-1384(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1392(%rbp)       # 8-byte Spill
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
	movq	-1392(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1400(%rbp)       # 8-byte Spill
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
	movq	-1400(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1408(%rbp)       # 8-byte Spill
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
	movq	-1408(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1416(%rbp)       # 8-byte Spill
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
	movq	-1416(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1424(%rbp)       # 8-byte Spill
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
	movq	-1424(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1432(%rbp)       # 8-byte Spill
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
	movq	-1432(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1440(%rbp)       # 8-byte Spill
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
	movq	-1440(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1448(%rbp)       # 8-byte Spill
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
	movq	-1448(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1456(%rbp)       # 8-byte Spill
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
	movq	-1456(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1464(%rbp)       # 8-byte Spill
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
	movq	-1464(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1472(%rbp)       # 8-byte Spill
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
	movq	-1472(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1480(%rbp)       # 8-byte Spill
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
	movq	-1480(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1488(%rbp)       # 8-byte Spill
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
	movq	-1488(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1496(%rbp)       # 8-byte Spill
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
	movq	-1496(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1504(%rbp)       # 8-byte Spill
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
	movq	-1504(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1512(%rbp)       # 8-byte Spill
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
	movq	-1512(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1520(%rbp)       # 8-byte Spill
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
	movq	-1520(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1528(%rbp)       # 8-byte Spill
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
	movq	-1528(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1536(%rbp)       # 8-byte Spill
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
	movq	-1536(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1544(%rbp)       # 8-byte Spill
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
	movq	-1544(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1552(%rbp)       # 8-byte Spill
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
	movq	-1552(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1560(%rbp)       # 8-byte Spill
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
	movq	-1560(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1568(%rbp)       # 8-byte Spill
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
	movq	-1568(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1576(%rbp)       # 8-byte Spill
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
	movq	-1576(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1584(%rbp)       # 8-byte Spill
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
	movq	-1584(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1592(%rbp)       # 8-byte Spill
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
	movq	-1592(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1600(%rbp)       # 8-byte Spill
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
	movq	-1600(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1608(%rbp)       # 8-byte Spill
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
	movq	-1608(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1616(%rbp)       # 8-byte Spill
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
	movq	-1616(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1624(%rbp)       # 8-byte Spill
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
	movq	-1624(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1632(%rbp)       # 8-byte Spill
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
	movq	-1632(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1640(%rbp)       # 8-byte Spill
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
	movq	-1640(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1648(%rbp)       # 8-byte Spill
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
	movq	-1648(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1656(%rbp)       # 8-byte Spill
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
	movq	-1656(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1664(%rbp)       # 8-byte Spill
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
	movq	-1664(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1672(%rbp)       # 8-byte Spill
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
	movq	-1672(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1680(%rbp)       # 8-byte Spill
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
	movq	-1680(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1688(%rbp)       # 8-byte Spill
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
	movq	-1688(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1696(%rbp)       # 8-byte Spill
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
	movq	-1696(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1704(%rbp)       # 8-byte Spill
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
	movq	-1704(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1712(%rbp)       # 8-byte Spill
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
	movq	-1712(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1720(%rbp)       # 8-byte Spill
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
	movq	-1720(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1728(%rbp)       # 8-byte Spill
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
	movq	-1728(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1736(%rbp)       # 8-byte Spill
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
	movq	-1736(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1744(%rbp)       # 8-byte Spill
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
	movq	-1744(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1752(%rbp)       # 8-byte Spill
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
	movq	-1752(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1760(%rbp)       # 8-byte Spill
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
	movq	-1760(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1768(%rbp)       # 8-byte Spill
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
	movq	-1768(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1776(%rbp)       # 8-byte Spill
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
	movq	-1776(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1784(%rbp)       # 8-byte Spill
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
	movq	-1784(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1792(%rbp)       # 8-byte Spill
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
	movq	-1792(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1800(%rbp)       # 8-byte Spill
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
	movq	-1800(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1808(%rbp)       # 8-byte Spill
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
	movq	-1808(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1816(%rbp)       # 8-byte Spill
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
	movq	-1816(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1824(%rbp)       # 8-byte Spill
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
	movq	-1824(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1832(%rbp)       # 8-byte Spill
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
	movq	-1832(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1840(%rbp)       # 8-byte Spill
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
	movq	-1840(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1848(%rbp)       # 8-byte Spill
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
	movq	-1848(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1856(%rbp)       # 8-byte Spill
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
	movq	-1856(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1864(%rbp)       # 8-byte Spill
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
	movq	-1864(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1872(%rbp)       # 8-byte Spill
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
	movq	-1872(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1880(%rbp)       # 8-byte Spill
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
	movq	-1880(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1888(%rbp)       # 8-byte Spill
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
	movq	-1888(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1896(%rbp)       # 8-byte Spill
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
	movq	-1896(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1904(%rbp)       # 8-byte Spill
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
	movq	-1904(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1912(%rbp)       # 8-byte Spill
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
	movq	-1912(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1920(%rbp)       # 8-byte Spill
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
	movq	-1920(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1928(%rbp)       # 8-byte Spill
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
	movq	-1928(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1936(%rbp)       # 8-byte Spill
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
	movq	-1936(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1944(%rbp)       # 8-byte Spill
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
	movq	-1944(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1952(%rbp)       # 8-byte Spill
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
	movq	-1952(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1960(%rbp)       # 8-byte Spill
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
	movq	-1960(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1968(%rbp)       # 8-byte Spill
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
	movq	-1968(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1976(%rbp)       # 8-byte Spill
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
	movq	-1976(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1984(%rbp)       # 8-byte Spill
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
	movq	-1984(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -1992(%rbp)       # 8-byte Spill
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
	movq	-1992(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2000(%rbp)       # 8-byte Spill
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
	movq	-2000(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2008(%rbp)       # 8-byte Spill
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
	movq	-2008(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2016(%rbp)       # 8-byte Spill
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
	movq	-2016(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2024(%rbp)       # 8-byte Spill
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
	movq	-2024(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2032(%rbp)       # 8-byte Spill
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
	movq	-2032(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2040(%rbp)       # 8-byte Spill
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
	movq	-2040(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2048(%rbp)       # 8-byte Spill
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
	movq	-2048(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2056(%rbp)       # 8-byte Spill
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
	movq	-2056(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2064(%rbp)       # 8-byte Spill
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
	movq	-2064(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2072(%rbp)       # 8-byte Spill
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
	movq	-2072(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2080(%rbp)       # 8-byte Spill
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
	movq	-2080(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2088(%rbp)       # 8-byte Spill
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
	movq	-2088(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2096(%rbp)       # 8-byte Spill
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
	movq	-2096(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2104(%rbp)       # 8-byte Spill
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
	movq	-2104(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2112(%rbp)       # 8-byte Spill
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
	movq	-2112(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2120(%rbp)       # 8-byte Spill
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
	movq	-2120(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2128(%rbp)       # 8-byte Spill
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
	movq	-2128(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2136(%rbp)       # 8-byte Spill
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
	movq	-2136(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2144(%rbp)       # 8-byte Spill
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
	movq	-2144(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2152(%rbp)       # 8-byte Spill
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
	movq	-2152(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2160(%rbp)       # 8-byte Spill
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
	movq	-2160(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2168(%rbp)       # 8-byte Spill
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
	movq	-2168(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2176(%rbp)       # 8-byte Spill
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
	movq	-2176(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2184(%rbp)       # 8-byte Spill
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
	movq	-2184(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2192(%rbp)       # 8-byte Spill
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
	movq	-2192(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2200(%rbp)       # 8-byte Spill
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
	movq	-2200(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2208(%rbp)       # 8-byte Spill
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
	movq	-2208(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2216(%rbp)       # 8-byte Spill
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
	movq	-2216(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2224(%rbp)       # 8-byte Spill
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
	movq	-2224(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2232(%rbp)       # 8-byte Spill
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
	movq	-2232(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2240(%rbp)       # 8-byte Spill
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
	movq	-2240(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2248(%rbp)       # 8-byte Spill
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
	movq	-2248(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2256(%rbp)       # 8-byte Spill
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
	movq	-2256(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2264(%rbp)       # 8-byte Spill
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
	movq	-2264(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2272(%rbp)       # 8-byte Spill
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
	movq	-2272(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2280(%rbp)       # 8-byte Spill
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
	movq	-2280(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2288(%rbp)       # 8-byte Spill
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
	movq	-2288(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2296(%rbp)       # 8-byte Spill
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
	movq	-2296(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2304(%rbp)       # 8-byte Spill
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
	movq	-2304(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2312(%rbp)       # 8-byte Spill
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
	movq	-2312(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2320(%rbp)       # 8-byte Spill
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
	movq	-2320(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2328(%rbp)       # 8-byte Spill
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
	movq	-2328(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2336(%rbp)       # 8-byte Spill
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
	movq	-2336(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2344(%rbp)       # 8-byte Spill
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
	movq	-2344(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2352(%rbp)       # 8-byte Spill
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
	movq	-2352(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2360(%rbp)       # 8-byte Spill
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
	movq	-2360(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2368(%rbp)       # 8-byte Spill
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
	movq	-2368(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2376(%rbp)       # 8-byte Spill
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
	movq	-2376(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2384(%rbp)       # 8-byte Spill
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
	movq	-2384(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2392(%rbp)       # 8-byte Spill
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
	movq	-2392(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2400(%rbp)       # 8-byte Spill
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
	movq	-2400(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2408(%rbp)       # 8-byte Spill
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
	movq	-2408(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2416(%rbp)       # 8-byte Spill
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
	movq	-2416(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2424(%rbp)       # 8-byte Spill
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
	movq	-2424(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2432(%rbp)       # 8-byte Spill
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
	movq	-2432(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2440(%rbp)       # 8-byte Spill
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
	movq	-2440(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2448(%rbp)       # 8-byte Spill
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
	movq	-2448(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2456(%rbp)       # 8-byte Spill
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
	movq	-2456(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2464(%rbp)       # 8-byte Spill
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
	movq	-2464(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2472(%rbp)       # 8-byte Spill
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
	movq	-2472(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2480(%rbp)       # 8-byte Spill
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
	movq	-2480(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2488(%rbp)       # 8-byte Spill
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
	movq	-2488(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2496(%rbp)       # 8-byte Spill
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
	movq	-2496(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2504(%rbp)       # 8-byte Spill
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
	movq	-2504(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2512(%rbp)       # 8-byte Spill
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
	movq	-2512(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2520(%rbp)       # 8-byte Spill
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
	movq	-2520(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2528(%rbp)       # 8-byte Spill
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
	movq	-2528(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2536(%rbp)       # 8-byte Spill
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
	movq	-2536(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2544(%rbp)       # 8-byte Spill
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
	movq	-2544(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2552(%rbp)       # 8-byte Spill
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
	movq	-2552(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2560(%rbp)       # 8-byte Spill
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
	movq	-2560(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2568(%rbp)       # 8-byte Spill
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
	movq	-2568(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2576(%rbp)       # 8-byte Spill
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
	movq	-2576(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2584(%rbp)       # 8-byte Spill
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
	movq	-2584(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2592(%rbp)       # 8-byte Spill
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
	movq	-2592(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2600(%rbp)       # 8-byte Spill
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
	movq	-2600(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2608(%rbp)       # 8-byte Spill
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
	movq	-2608(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2616(%rbp)       # 8-byte Spill
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
	movq	-2616(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2624(%rbp)       # 8-byte Spill
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
	movq	-2624(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2632(%rbp)       # 8-byte Spill
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
	movq	-2632(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2640(%rbp)       # 8-byte Spill
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
	movq	-2640(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2648(%rbp)       # 8-byte Spill
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
	movq	-2648(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2656(%rbp)       # 8-byte Spill
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
	movq	-2656(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2664(%rbp)       # 8-byte Spill
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
	movq	-2664(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2672(%rbp)       # 8-byte Spill
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
	movq	-2672(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2680(%rbp)       # 8-byte Spill
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
	movq	-2680(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2688(%rbp)       # 8-byte Spill
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
	movq	-2688(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2696(%rbp)       # 8-byte Spill
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
	movq	-2696(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2704(%rbp)       # 8-byte Spill
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
	movq	-2704(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2712(%rbp)       # 8-byte Spill
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
	movq	-2712(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2720(%rbp)       # 8-byte Spill
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
	movq	-2720(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2728(%rbp)       # 8-byte Spill
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
	movq	-2728(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2736(%rbp)       # 8-byte Spill
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
	movq	-2736(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2744(%rbp)       # 8-byte Spill
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
	movq	-2744(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2752(%rbp)       # 8-byte Spill
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
	movq	-2752(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2760(%rbp)       # 8-byte Spill
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
	movq	-2760(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2768(%rbp)       # 8-byte Spill
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
	movq	-2768(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2776(%rbp)       # 8-byte Spill
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
	movq	-2776(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2784(%rbp)       # 8-byte Spill
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
	movq	-2784(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2792(%rbp)       # 8-byte Spill
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
	movq	-2792(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2800(%rbp)       # 8-byte Spill
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
	movq	-2800(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2808(%rbp)       # 8-byte Spill
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
	movq	-2808(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2816(%rbp)       # 8-byte Spill
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
	movq	-2816(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2824(%rbp)       # 8-byte Spill
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
	movq	-2824(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2832(%rbp)       # 8-byte Spill
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
	movq	-2832(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2840(%rbp)       # 8-byte Spill
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
	movq	-2840(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2848(%rbp)       # 8-byte Spill
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
	movq	-2848(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2856(%rbp)       # 8-byte Spill
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
	movq	-2856(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2864(%rbp)       # 8-byte Spill
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
	movq	-2864(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2872(%rbp)       # 8-byte Spill
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
	movq	-2872(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2880(%rbp)       # 8-byte Spill
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
	movq	-2880(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2888(%rbp)       # 8-byte Spill
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
	movq	-2888(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2896(%rbp)       # 8-byte Spill
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
	movq	-2896(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2904(%rbp)       # 8-byte Spill
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
	movq	-2904(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2912(%rbp)       # 8-byte Spill
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
	movq	-2912(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2920(%rbp)       # 8-byte Spill
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
	movq	-2920(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2928(%rbp)       # 8-byte Spill
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
	movq	-2928(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2936(%rbp)       # 8-byte Spill
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
	movq	-2936(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2944(%rbp)       # 8-byte Spill
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
	movq	-2944(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2952(%rbp)       # 8-byte Spill
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
	movq	-2952(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2960(%rbp)       # 8-byte Spill
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
	movq	-2960(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2968(%rbp)       # 8-byte Spill
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
	movq	-2968(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2976(%rbp)       # 8-byte Spill
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
	movq	-2976(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2984(%rbp)       # 8-byte Spill
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
	movq	-2984(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -2992(%rbp)       # 8-byte Spill
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
	movq	-2992(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3000(%rbp)       # 8-byte Spill
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
	movq	-3000(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3008(%rbp)       # 8-byte Spill
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
	movq	-3008(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3016(%rbp)       # 8-byte Spill
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
	movq	-3016(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3024(%rbp)       # 8-byte Spill
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
	movq	-3024(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3032(%rbp)       # 8-byte Spill
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
	movq	-3032(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3040(%rbp)       # 8-byte Spill
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
	movq	-3040(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3048(%rbp)       # 8-byte Spill
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
	movq	-3048(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3056(%rbp)       # 8-byte Spill
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
	movq	-3056(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3064(%rbp)       # 8-byte Spill
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
	movq	-3064(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3072(%rbp)       # 8-byte Spill
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
	movq	-3072(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3080(%rbp)       # 8-byte Spill
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
	movq	-3080(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3088(%rbp)       # 8-byte Spill
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
	movq	-3088(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3096(%rbp)       # 8-byte Spill
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
	movq	-3096(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3104(%rbp)       # 8-byte Spill
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
	movq	-3104(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3112(%rbp)       # 8-byte Spill
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
	movq	-3112(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3120(%rbp)       # 8-byte Spill
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
	movq	-3120(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3128(%rbp)       # 8-byte Spill
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
	movq	-3128(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3136(%rbp)       # 8-byte Spill
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
	movq	-3136(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3144(%rbp)       # 8-byte Spill
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
	movq	-3144(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3152(%rbp)       # 8-byte Spill
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
	movq	-3152(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3160(%rbp)       # 8-byte Spill
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
	movq	-3160(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3168(%rbp)       # 8-byte Spill
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
	movq	-3168(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3176(%rbp)       # 8-byte Spill
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
	movq	-3176(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3184(%rbp)       # 8-byte Spill
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
	movq	-3184(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3192(%rbp)       # 8-byte Spill
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
	movq	-3192(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3200(%rbp)       # 8-byte Spill
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
	movq	-3200(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3208(%rbp)       # 8-byte Spill
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
	movq	-3208(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3216(%rbp)       # 8-byte Spill
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
	movq	-3216(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3224(%rbp)       # 8-byte Spill
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
	movq	-3224(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3232(%rbp)       # 8-byte Spill
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
	movq	-3232(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3240(%rbp)       # 8-byte Spill
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
	movq	-3240(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3248(%rbp)       # 8-byte Spill
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
	movq	-3248(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3256(%rbp)       # 8-byte Spill
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
	movq	-3256(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3264(%rbp)       # 8-byte Spill
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
	movq	-3264(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3272(%rbp)       # 8-byte Spill
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
	movq	-3272(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3280(%rbp)       # 8-byte Spill
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
	movq	-3280(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3288(%rbp)       # 8-byte Spill
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
	movq	-3288(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3296(%rbp)       # 8-byte Spill
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
	movq	-3296(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3304(%rbp)       # 8-byte Spill
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
	movq	-3304(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3312(%rbp)       # 8-byte Spill
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
	movq	-3312(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3320(%rbp)       # 8-byte Spill
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
	movq	-3320(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3328(%rbp)       # 8-byte Spill
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
	movq	-3328(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3336(%rbp)       # 8-byte Spill
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
	movq	-3336(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3344(%rbp)       # 8-byte Spill
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
	movq	-3344(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3352(%rbp)       # 8-byte Spill
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
	movq	-3352(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3360(%rbp)       # 8-byte Spill
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
	movq	-3360(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3368(%rbp)       # 8-byte Spill
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
	movq	-3368(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3376(%rbp)       # 8-byte Spill
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
	movq	-3376(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3384(%rbp)       # 8-byte Spill
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
	movq	-3384(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3392(%rbp)       # 8-byte Spill
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
	movq	-3392(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3400(%rbp)       # 8-byte Spill
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
	movq	-3400(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3408(%rbp)       # 8-byte Spill
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
	movq	-3408(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3416(%rbp)       # 8-byte Spill
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
	movq	-3416(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3424(%rbp)       # 8-byte Spill
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
	movq	-3424(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3432(%rbp)       # 8-byte Spill
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
	movq	-3432(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3440(%rbp)       # 8-byte Spill
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
	movq	-3440(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3448(%rbp)       # 8-byte Spill
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
	movq	-3448(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3456(%rbp)       # 8-byte Spill
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
	movq	-3456(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3464(%rbp)       # 8-byte Spill
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
	movq	-3464(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3472(%rbp)       # 8-byte Spill
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
	movq	-3472(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3480(%rbp)       # 8-byte Spill
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
	movq	-3480(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3488(%rbp)       # 8-byte Spill
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
	movq	-3488(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3496(%rbp)       # 8-byte Spill
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
	movq	-3496(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3504(%rbp)       # 8-byte Spill
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
	movq	-3504(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3512(%rbp)       # 8-byte Spill
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
	movq	-3512(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3520(%rbp)       # 8-byte Spill
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
	movq	-3520(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3528(%rbp)       # 8-byte Spill
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
	movq	-3528(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3536(%rbp)       # 8-byte Spill
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
	movq	-3536(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3544(%rbp)       # 8-byte Spill
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
	movq	-3544(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3552(%rbp)       # 8-byte Spill
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
	movq	-3552(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3560(%rbp)       # 8-byte Spill
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
	movq	-3560(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3568(%rbp)       # 8-byte Spill
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
	movq	-3568(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3576(%rbp)       # 8-byte Spill
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
	movq	-3576(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3584(%rbp)       # 8-byte Spill
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
	movq	-3584(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3592(%rbp)       # 8-byte Spill
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
	movq	-3592(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3600(%rbp)       # 8-byte Spill
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
	movq	-3600(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3608(%rbp)       # 8-byte Spill
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
	movq	-3608(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3616(%rbp)       # 8-byte Spill
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
	movq	-3616(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3624(%rbp)       # 8-byte Spill
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
	movq	-3624(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3632(%rbp)       # 8-byte Spill
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
	movq	-3632(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3640(%rbp)       # 8-byte Spill
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
	movq	-3640(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3648(%rbp)       # 8-byte Spill
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
	movq	-3648(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3656(%rbp)       # 8-byte Spill
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
	movq	-3656(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3664(%rbp)       # 8-byte Spill
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
	movq	-3664(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3672(%rbp)       # 8-byte Spill
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
	movq	-3672(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3680(%rbp)       # 8-byte Spill
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
	movq	-3680(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3688(%rbp)       # 8-byte Spill
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
	movq	-3688(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3696(%rbp)       # 8-byte Spill
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
	movq	-3696(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3704(%rbp)       # 8-byte Spill
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
	movq	-3704(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3712(%rbp)       # 8-byte Spill
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
	movq	-3712(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3720(%rbp)       # 8-byte Spill
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
	movq	-3720(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3728(%rbp)       # 8-byte Spill
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
	movq	-3728(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3736(%rbp)       # 8-byte Spill
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
	movq	-3736(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3744(%rbp)       # 8-byte Spill
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
	movq	-3744(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3752(%rbp)       # 8-byte Spill
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
	movq	-3752(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3760(%rbp)       # 8-byte Spill
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
	movq	-3760(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3768(%rbp)       # 8-byte Spill
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
	movq	-3768(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3776(%rbp)       # 8-byte Spill
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
	movq	-3776(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3784(%rbp)       # 8-byte Spill
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
	movq	-3784(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3792(%rbp)       # 8-byte Spill
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
	movq	-3792(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3800(%rbp)       # 8-byte Spill
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
	movq	-3800(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3808(%rbp)       # 8-byte Spill
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
	movq	-3808(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3816(%rbp)       # 8-byte Spill
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
	movq	-3816(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3824(%rbp)       # 8-byte Spill
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
	movq	-3824(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3832(%rbp)       # 8-byte Spill
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
	movq	-3832(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3840(%rbp)       # 8-byte Spill
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
	movq	-3840(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3848(%rbp)       # 8-byte Spill
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
	movq	-3848(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3856(%rbp)       # 8-byte Spill
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
	movq	-3856(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3864(%rbp)       # 8-byte Spill
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
	movq	-3864(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3872(%rbp)       # 8-byte Spill
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
	movq	-3872(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3880(%rbp)       # 8-byte Spill
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
	movq	-3880(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3888(%rbp)       # 8-byte Spill
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
	movq	-3888(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3896(%rbp)       # 8-byte Spill
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
	movq	-3896(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3904(%rbp)       # 8-byte Spill
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
	movq	-3904(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3912(%rbp)       # 8-byte Spill
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
	movq	-3912(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3920(%rbp)       # 8-byte Spill
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
	movq	-3920(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3928(%rbp)       # 8-byte Spill
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
	movq	-3928(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3936(%rbp)       # 8-byte Spill
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
	movq	-3936(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3944(%rbp)       # 8-byte Spill
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
	movq	-3944(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3952(%rbp)       # 8-byte Spill
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
	movq	-3952(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3960(%rbp)       # 8-byte Spill
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
	movq	-3960(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3968(%rbp)       # 8-byte Spill
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
	movq	-3968(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3976(%rbp)       # 8-byte Spill
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
	movq	-3976(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3984(%rbp)       # 8-byte Spill
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
	movq	-3984(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -3992(%rbp)       # 8-byte Spill
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
	movq	-3992(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4000(%rbp)       # 8-byte Spill
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
	movq	-4000(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4008(%rbp)       # 8-byte Spill
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
	movq	-4008(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4016(%rbp)       # 8-byte Spill
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
	movq	-4016(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4024(%rbp)       # 8-byte Spill
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
	movq	-4024(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4032(%rbp)       # 8-byte Spill
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
	movq	-4032(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4040(%rbp)       # 8-byte Spill
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
	movq	-4040(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4048(%rbp)       # 8-byte Spill
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
	movq	-4048(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4056(%rbp)       # 8-byte Spill
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
	movq	-4056(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4064(%rbp)       # 8-byte Spill
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
	movq	-4064(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4072(%rbp)       # 8-byte Spill
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
	movq	-4072(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4080(%rbp)       # 8-byte Spill
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
	movq	-4080(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4088(%rbp)       # 8-byte Spill
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
	movq	-4088(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4096(%rbp)       # 8-byte Spill
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
	movq	-4096(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4104(%rbp)       # 8-byte Spill
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
	movq	-4104(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4112(%rbp)       # 8-byte Spill
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
	movq	-4112(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4120(%rbp)       # 8-byte Spill
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
	movq	-4120(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4128(%rbp)       # 8-byte Spill
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
	movq	-4128(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4136(%rbp)       # 8-byte Spill
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
	movq	-4136(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-40(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4144(%rbp)       # 8-byte Spill
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
	movq	-4144(%rbp), %rdx       # 8-byte Reload
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
	movq	%rax, -4152(%rbp)       # 8-byte Spill
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
	movq	-4152(%rbp), %rcx       # 8-byte Reload
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
	movq	-4152(%rbp), %rcx       # 8-byte Reload
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
	movq	-4152(%rbp), %rcx       # 8-byte Reload
	movl	%eax, 8(%rcx)
	jmp	.LBB1_12
.LBB1_7:                                # %for.body54
	jmp	.LBB1_8
.LBB1_8:                                # %for.body58
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx), %edx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi), %r8d
	movabsq	$.L.str, %rdi
	movl	%eax, %esi
	movl	%edx, -4156(%rbp)       # 4-byte Spill
	movl	%eax, %edx
	movl	-4156(%rbp), %eax       # 4-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	printf
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	4(%rdi), %ecx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movl	4(%r9), %r8d
	movabsq	$.L.str, %rdi
	movl	$1, %edx
	movl	%eax, -4160(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	8(%rdi), %ecx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movl	8(%r9), %r8d
	movabsq	$.L.str, %rdi
	movl	$2, %edx
	movl	%eax, -4164(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	12(%rdi), %ecx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movl	12(%r9), %r8d
	movabsq	$.L.str, %rdi
	movl	$3, %edx
	movl	%eax, -4168(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
# %bb.9:                                # %for.body58.1
	xorl	%edx, %edx
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	16384(%rax), %ecx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	16384(%rsi), %r8d
	movabsq	$.L.str, %rdi
	movl	$1, %r9d
	movl	%r9d, %esi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	16388(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	16388(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$1, %edx
	movl	%edx, %esi
	movl	%eax, -4172(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	16392(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	16392(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$1, %esi
	movl	$2, %edx
	movl	%eax, -4176(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	16396(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	16396(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$1, %esi
	movl	$3, %edx
	movl	%eax, -4180(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
# %bb.10:                               # %for.body58.2
	xorl	%edx, %edx
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	32768(%rax), %ecx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	32768(%rsi), %r8d
	movabsq	$.L.str, %rdi
	movl	$2, %r9d
	movl	%r9d, %esi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	32772(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	32772(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$2, %esi
	movl	$1, %edx
	movl	%eax, -4184(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	32776(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	32776(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$2, %edx
	movl	%edx, %esi
	movl	%eax, -4188(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	32780(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	32780(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$2, %esi
	movl	$3, %edx
	movl	%eax, -4192(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
# %bb.11:                               # %for.body58.3
	xorl	%edx, %edx
	movq	-8(%rbp), %rax          # 8-byte Reload
	movl	49152(%rax), %ecx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movl	49152(%rsi), %r8d
	movabsq	$.L.str, %rdi
	movl	$3, %r9d
	movl	%r9d, %esi
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	49156(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	49156(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$3, %esi
	movl	$1, %edx
	movl	%eax, -4196(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	49160(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	49160(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$3, %esi
	movl	$2, %edx
	movl	%eax, -4200(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	49164(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	49164(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$3, %edx
	movl	%edx, %esi
	movl	%eax, -4204(%rbp)       # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.Lstr, %rdi
	movl	%eax, -4208(%rbp)       # 4-byte Spill
	callq	puts
	xorl	%ecx, %ecx
	movl	%eax, -4212(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	addq	$4224, %rsp             # imm = 0x1080
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_12:                               # %for.body27.1
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
	movq	-4152(%rbp), %rcx       # 8-byte Reload
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
	movq	-4152(%rbp), %rcx       # 8-byte Reload
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
	movq	-4152(%rbp), %rcx       # 8-byte Reload
	movl	%eax, 20(%rcx)
# %bb.13:                               # %for.body27.2
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4152(%rbp), %rcx       # 8-byte Reload
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
	movq	-4152(%rbp), %rcx       # 8-byte Reload
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
	movq	-4152(%rbp), %rcx       # 8-byte Reload
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	callq	stencil
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
