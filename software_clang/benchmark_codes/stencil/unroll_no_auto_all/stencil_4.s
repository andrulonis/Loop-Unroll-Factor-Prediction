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
	subq	$6256, %rsp             # imm = 0x1870
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
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_18 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_24 Depth 2
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_32 Depth 2
                                        #     Child Loop BB1_34 Depth 2
                                        #     Child Loop BB1_36 Depth 2
                                        #     Child Loop BB1_38 Depth 2
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_46 Depth 2
                                        #     Child Loop BB1_48 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #     Child Loop BB1_52 Depth 2
                                        #     Child Loop BB1_54 Depth 2
                                        #     Child Loop BB1_56 Depth 2
                                        #     Child Loop BB1_58 Depth 2
                                        #     Child Loop BB1_60 Depth 2
                                        #     Child Loop BB1_62 Depth 2
                                        #     Child Loop BB1_64 Depth 2
                                        #     Child Loop BB1_66 Depth 2
                                        #     Child Loop BB1_68 Depth 2
                                        #     Child Loop BB1_70 Depth 2
                                        #     Child Loop BB1_72 Depth 2
                                        #     Child Loop BB1_74 Depth 2
                                        #     Child Loop BB1_76 Depth 2
                                        #     Child Loop BB1_78 Depth 2
                                        #     Child Loop BB1_80 Depth 2
                                        #     Child Loop BB1_82 Depth 2
                                        #     Child Loop BB1_84 Depth 2
                                        #     Child Loop BB1_86 Depth 2
                                        #     Child Loop BB1_88 Depth 2
                                        #     Child Loop BB1_90 Depth 2
                                        #     Child Loop BB1_92 Depth 2
                                        #     Child Loop BB1_94 Depth 2
                                        #     Child Loop BB1_96 Depth 2
                                        #     Child Loop BB1_98 Depth 2
                                        #     Child Loop BB1_100 Depth 2
                                        #     Child Loop BB1_102 Depth 2
                                        #     Child Loop BB1_104 Depth 2
                                        #     Child Loop BB1_106 Depth 2
                                        #     Child Loop BB1_108 Depth 2
                                        #     Child Loop BB1_110 Depth 2
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_114 Depth 2
                                        #     Child Loop BB1_116 Depth 2
                                        #     Child Loop BB1_118 Depth 2
                                        #     Child Loop BB1_120 Depth 2
                                        #     Child Loop BB1_122 Depth 2
                                        #     Child Loop BB1_124 Depth 2
                                        #     Child Loop BB1_126 Depth 2
                                        #     Child Loop BB1_128 Depth 2
                                        #     Child Loop BB1_130 Depth 2
                                        #     Child Loop BB1_132 Depth 2
                                        #     Child Loop BB1_134 Depth 2
                                        #     Child Loop BB1_136 Depth 2
                                        #     Child Loop BB1_138 Depth 2
                                        #     Child Loop BB1_140 Depth 2
                                        #     Child Loop BB1_142 Depth 2
                                        #     Child Loop BB1_144 Depth 2
                                        #     Child Loop BB1_146 Depth 2
                                        #     Child Loop BB1_148 Depth 2
                                        #     Child Loop BB1_150 Depth 2
                                        #     Child Loop BB1_152 Depth 2
                                        #     Child Loop BB1_154 Depth 2
                                        #     Child Loop BB1_156 Depth 2
                                        #     Child Loop BB1_158 Depth 2
                                        #     Child Loop BB1_160 Depth 2
                                        #     Child Loop BB1_162 Depth 2
                                        #     Child Loop BB1_164 Depth 2
                                        #     Child Loop BB1_166 Depth 2
                                        #     Child Loop BB1_168 Depth 2
                                        #     Child Loop BB1_170 Depth 2
                                        #     Child Loop BB1_172 Depth 2
                                        #     Child Loop BB1_174 Depth 2
                                        #     Child Loop BB1_176 Depth 2
                                        #     Child Loop BB1_178 Depth 2
                                        #     Child Loop BB1_180 Depth 2
                                        #     Child Loop BB1_182 Depth 2
                                        #     Child Loop BB1_184 Depth 2
                                        #     Child Loop BB1_186 Depth 2
                                        #     Child Loop BB1_188 Depth 2
                                        #     Child Loop BB1_190 Depth 2
                                        #     Child Loop BB1_192 Depth 2
                                        #     Child Loop BB1_194 Depth 2
                                        #     Child Loop BB1_196 Depth 2
                                        #     Child Loop BB1_198 Depth 2
                                        #     Child Loop BB1_200 Depth 2
                                        #     Child Loop BB1_202 Depth 2
                                        #     Child Loop BB1_204 Depth 2
                                        #     Child Loop BB1_206 Depth 2
                                        #     Child Loop BB1_208 Depth 2
                                        #     Child Loop BB1_210 Depth 2
                                        #     Child Loop BB1_212 Depth 2
                                        #     Child Loop BB1_214 Depth 2
                                        #     Child Loop BB1_216 Depth 2
                                        #     Child Loop BB1_218 Depth 2
                                        #     Child Loop BB1_220 Depth 2
                                        #     Child Loop BB1_222 Depth 2
                                        #     Child Loop BB1_224 Depth 2
                                        #     Child Loop BB1_226 Depth 2
                                        #     Child Loop BB1_228 Depth 2
                                        #     Child Loop BB1_230 Depth 2
                                        #     Child Loop BB1_232 Depth 2
                                        #     Child Loop BB1_234 Depth 2
                                        #     Child Loop BB1_236 Depth 2
                                        #     Child Loop BB1_238 Depth 2
                                        #     Child Loop BB1_240 Depth 2
                                        #     Child Loop BB1_242 Depth 2
                                        #     Child Loop BB1_244 Depth 2
                                        #     Child Loop BB1_246 Depth 2
                                        #     Child Loop BB1_248 Depth 2
                                        #     Child Loop BB1_250 Depth 2
                                        #     Child Loop BB1_252 Depth 2
                                        #     Child Loop BB1_254 Depth 2
                                        #     Child Loop BB1_256 Depth 2
                                        #     Child Loop BB1_258 Depth 2
                                        #     Child Loop BB1_260 Depth 2
                                        #     Child Loop BB1_262 Depth 2
                                        #     Child Loop BB1_264 Depth 2
                                        #     Child Loop BB1_266 Depth 2
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
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.inc17
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB1_14
.LBB1_4:                                # %for.body23.preheader
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-108(%rbp), %eax        # 4-byte Reload
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
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	8(%rdi), %ecx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movl	8(%r9), %r8d
	movabsq	$.L.str, %rdi
	movl	$2, %edx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	12(%rdi), %ecx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movl	12(%r9), %r8d
	movabsq	$.L.str, %rdi
	movl	$3, %edx
	movl	%eax, -120(%rbp)        # 4-byte Spill
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
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	16392(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	16392(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$1, %esi
	movl	$2, %edx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	16396(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	16396(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$1, %esi
	movl	$3, %edx
	movl	%eax, -132(%rbp)        # 4-byte Spill
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
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	32776(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	32776(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$2, %edx
	movl	%edx, %esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	32780(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	32780(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$2, %esi
	movl	$3, %edx
	movl	%eax, -144(%rbp)        # 4-byte Spill
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
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	49160(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	49160(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$3, %esi
	movl	$2, %edx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	49164(%rdi), %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movl	49164(%r10), %r8d
	movabsq	$.L.str, %rdi
	movl	$3, %edx
	movl	%edx, %esi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.Lstr, %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	puts
	xorl	%ecx, %ecx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$6256, %rsp             # imm = 0x1870
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%eax, 32(%rcx)
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	callq	stencil
	jmp	.LBB1_7
.LBB1_14:                               # %for.body5.1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-176(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-88(%rbp), %rcx         # 8-byte Reload
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
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-184(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-88(%rbp), %rcx         # 8-byte Reload
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
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-192(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-88(%rbp), %rcx         # 8-byte Reload
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
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	jne	.LBB1_14
# %bb.15:                               # %for.inc17.1
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
.LBB1_16:                               # %for.body5.2
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-224(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-208(%rbp), %rcx        # 8-byte Reload
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
	movq	-208(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-232(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-208(%rbp), %rcx        # 8-byte Reload
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
	movq	-208(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-240(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-208(%rbp), %rcx        # 8-byte Reload
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
	movq	-208(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-248(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-208(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	jne	.LBB1_16
# %bb.17:                               # %for.inc17.2
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-208(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
.LBB1_18:                               # %for.body5.3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-256(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-272(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-256(%rbp), %rcx        # 8-byte Reload
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
	movq	-256(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-280(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-256(%rbp), %rcx        # 8-byte Reload
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
	movq	-256(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-288(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-256(%rbp), %rcx        # 8-byte Reload
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
	movq	-256(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-256(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	jne	.LBB1_18
# %bb.19:                               # %for.inc17.3
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
.LBB1_20:                               # %for.body5.4
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-304(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-320(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-304(%rbp), %rcx        # 8-byte Reload
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
	movq	-304(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-328(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-304(%rbp), %rcx        # 8-byte Reload
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
	movq	-304(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-336(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-304(%rbp), %rcx        # 8-byte Reload
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
	movq	-304(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-344(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-304(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	jne	.LBB1_20
# %bb.21:                               # %for.inc17.4
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-304(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB1_22:                               # %for.body5.5
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-352(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-368(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-352(%rbp), %rcx        # 8-byte Reload
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
	movq	-352(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-376(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-352(%rbp), %rcx        # 8-byte Reload
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
	movq	-352(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-384(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-352(%rbp), %rcx        # 8-byte Reload
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
	movq	-352(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-392(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-352(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	jne	.LBB1_22
# %bb.23:                               # %for.inc17.5
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-352(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
.LBB1_24:                               # %for.body5.6
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-400(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-416(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-400(%rbp), %rcx        # 8-byte Reload
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
	movq	-400(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-424(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-400(%rbp), %rcx        # 8-byte Reload
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
	movq	-400(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-432(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-400(%rbp), %rcx        # 8-byte Reload
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
	movq	-400(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-400(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	jne	.LBB1_24
# %bb.25:                               # %for.inc17.6
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-400(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%rcx, -456(%rbp)        # 8-byte Spill
.LBB1_26:                               # %for.body5.7
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-448(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-464(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-448(%rbp), %rcx        # 8-byte Reload
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
	movq	-448(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-472(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-448(%rbp), %rcx        # 8-byte Reload
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
	movq	-448(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-480(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-448(%rbp), %rcx        # 8-byte Reload
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
	movq	-448(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-488(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-448(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	jne	.LBB1_26
# %bb.27:                               # %for.inc17.7
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-448(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	movq	%rcx, -504(%rbp)        # 8-byte Spill
.LBB1_28:                               # %for.body5.8
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-496(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-512(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-496(%rbp), %rcx        # 8-byte Reload
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
	movq	-496(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-520(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-496(%rbp), %rcx        # 8-byte Reload
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
	movq	-496(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-528(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-496(%rbp), %rcx        # 8-byte Reload
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
	movq	-496(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-496(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	jne	.LBB1_28
# %bb.29:                               # %for.inc17.8
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-496(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
.LBB1_30:                               # %for.body5.9
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-544(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-560(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-544(%rbp), %rcx        # 8-byte Reload
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
	movq	-544(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-568(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-544(%rbp), %rcx        # 8-byte Reload
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
	movq	-544(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-576(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-544(%rbp), %rcx        # 8-byte Reload
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
	movq	-544(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-584(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-544(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	jne	.LBB1_30
# %bb.31:                               # %for.inc17.9
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-544(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	movq	%rcx, -600(%rbp)        # 8-byte Spill
.LBB1_32:                               # %for.body5.10
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-592(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-608(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-592(%rbp), %rcx        # 8-byte Reload
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
	movq	-592(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-616(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-592(%rbp), %rcx        # 8-byte Reload
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
	movq	-592(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-624(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-592(%rbp), %rcx        # 8-byte Reload
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
	movq	-592(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-632(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-592(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	jne	.LBB1_32
# %bb.33:                               # %for.inc17.10
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-592(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	movq	%rcx, -648(%rbp)        # 8-byte Spill
.LBB1_34:                               # %for.body5.11
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-640(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-656(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-640(%rbp), %rcx        # 8-byte Reload
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
	movq	-640(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-664(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-640(%rbp), %rcx        # 8-byte Reload
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
	movq	-640(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-672(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-640(%rbp), %rcx        # 8-byte Reload
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
	movq	-640(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-680(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-640(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	jne	.LBB1_34
# %bb.35:                               # %for.inc17.11
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-640(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	movq	%rcx, -696(%rbp)        # 8-byte Spill
.LBB1_36:                               # %for.body5.12
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-688(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-704(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-688(%rbp), %rcx        # 8-byte Reload
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
	movq	-688(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-712(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-688(%rbp), %rcx        # 8-byte Reload
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
	movq	-688(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-720(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-688(%rbp), %rcx        # 8-byte Reload
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
	movq	-688(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-728(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-688(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	jne	.LBB1_36
# %bb.37:                               # %for.inc17.12
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-688(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	movq	%rcx, -744(%rbp)        # 8-byte Spill
.LBB1_38:                               # %for.body5.13
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-736(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-752(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-736(%rbp), %rcx        # 8-byte Reload
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
	movq	-736(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-760(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-736(%rbp), %rcx        # 8-byte Reload
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
	movq	-736(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-768(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-736(%rbp), %rcx        # 8-byte Reload
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
	movq	-736(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-776(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-736(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	jne	.LBB1_38
# %bb.39:                               # %for.inc17.13
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-736(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -784(%rbp)        # 8-byte Spill
	movq	%rcx, -792(%rbp)        # 8-byte Spill
.LBB1_40:                               # %for.body5.14
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-784(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-800(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-784(%rbp), %rcx        # 8-byte Reload
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
	movq	-784(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-808(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-784(%rbp), %rcx        # 8-byte Reload
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
	movq	-784(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-816(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-784(%rbp), %rcx        # 8-byte Reload
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
	movq	-784(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-824(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-784(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	jne	.LBB1_40
# %bb.41:                               # %for.inc17.14
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-784(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
.LBB1_42:                               # %for.body5.15
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-840(%rbp), %rax        # 8-byte Reload
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-832(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-848(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-832(%rbp), %rcx        # 8-byte Reload
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
	movq	-832(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-856(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-832(%rbp), %rcx        # 8-byte Reload
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
	movq	-832(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-864(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-832(%rbp), %rcx        # 8-byte Reload
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
	movq	-832(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-872(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-832(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	jne	.LBB1_42
# %bb.43:                               # %for.inc17.15
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-832(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	movq	%rcx, -888(%rbp)        # 8-byte Spill
.LBB1_44:                               # %for.body5.16
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-880(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-896(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-880(%rbp), %rcx        # 8-byte Reload
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
	movq	-880(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-904(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-880(%rbp), %rcx        # 8-byte Reload
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
	movq	-880(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-912(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-880(%rbp), %rcx        # 8-byte Reload
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
	movq	-880(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-920(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-880(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	jne	.LBB1_44
# %bb.45:                               # %for.inc17.16
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-880(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -928(%rbp)        # 8-byte Spill
	movq	%rcx, -936(%rbp)        # 8-byte Spill
.LBB1_46:                               # %for.body5.17
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-936(%rbp), %rax        # 8-byte Reload
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-928(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-944(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-928(%rbp), %rcx        # 8-byte Reload
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
	movq	-928(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-952(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-928(%rbp), %rcx        # 8-byte Reload
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
	movq	-928(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-960(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-928(%rbp), %rcx        # 8-byte Reload
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
	movq	-928(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-968(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-928(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	jne	.LBB1_46
# %bb.47:                               # %for.inc17.17
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-928(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	movq	%rcx, -984(%rbp)        # 8-byte Spill
.LBB1_48:                               # %for.body5.18
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-976(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-992(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-976(%rbp), %rcx        # 8-byte Reload
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
	movq	-976(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-1000(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-976(%rbp), %rcx        # 8-byte Reload
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
	movq	-976(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-1008(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-976(%rbp), %rcx        # 8-byte Reload
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
	movq	-976(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	movq	-1016(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-976(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -984(%rbp)        # 8-byte Spill
	jne	.LBB1_48
# %bb.49:                               # %for.inc17.18
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-976(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
.LBB1_50:                               # %for.body5.19
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1040(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1024(%rbp), %rcx       # 8-byte Reload
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
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1048(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1024(%rbp), %rcx       # 8-byte Reload
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
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1056(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1024(%rbp), %rcx       # 8-byte Reload
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
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1064(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	jne	.LBB1_50
# %bb.51:                               # %for.inc17.19
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1024(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1072(%rbp)       # 8-byte Spill
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
.LBB1_52:                               # %for.body5.20
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1088(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1072(%rbp), %rcx       # 8-byte Reload
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
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1096(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1072(%rbp), %rcx       # 8-byte Reload
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
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1104(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1072(%rbp), %rcx       # 8-byte Reload
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
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1112(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	jne	.LBB1_52
# %bb.53:                               # %for.inc17.20
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1072(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1120(%rbp)       # 8-byte Spill
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
.LBB1_54:                               # %for.body5.21
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1136(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1120(%rbp), %rcx       # 8-byte Reload
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
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1144(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1120(%rbp), %rcx       # 8-byte Reload
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
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1152(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1120(%rbp), %rcx       # 8-byte Reload
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
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1160(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	jne	.LBB1_54
# %bb.55:                               # %for.inc17.21
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1120(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
.LBB1_56:                               # %for.body5.22
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1184(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1168(%rbp), %rcx       # 8-byte Reload
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
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1192(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1168(%rbp), %rcx       # 8-byte Reload
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
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1200(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1168(%rbp), %rcx       # 8-byte Reload
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
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1208(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1176(%rbp)       # 8-byte Spill
	jne	.LBB1_56
# %bb.57:                               # %for.inc17.22
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1168(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1216(%rbp)       # 8-byte Spill
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
.LBB1_58:                               # %for.body5.23
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1232(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1216(%rbp), %rcx       # 8-byte Reload
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
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1240(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1216(%rbp), %rcx       # 8-byte Reload
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
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1248(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1216(%rbp), %rcx       # 8-byte Reload
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
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1256(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1224(%rbp)       # 8-byte Spill
	jne	.LBB1_58
# %bb.59:                               # %for.inc17.23
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1216(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1264(%rbp)       # 8-byte Spill
	movq	%rcx, -1272(%rbp)       # 8-byte Spill
.LBB1_60:                               # %for.body5.24
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1272(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1280(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1264(%rbp), %rcx       # 8-byte Reload
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
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1288(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1264(%rbp), %rcx       # 8-byte Reload
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
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1296(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1264(%rbp), %rcx       # 8-byte Reload
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
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1304(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
	jne	.LBB1_60
# %bb.61:                               # %for.inc17.24
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1264(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1312(%rbp)       # 8-byte Spill
	movq	%rcx, -1320(%rbp)       # 8-byte Spill
.LBB1_62:                               # %for.body5.25
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1320(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1328(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1312(%rbp), %rcx       # 8-byte Reload
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
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1336(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1312(%rbp), %rcx       # 8-byte Reload
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
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1344(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1312(%rbp), %rcx       # 8-byte Reload
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
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1352(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1320(%rbp)       # 8-byte Spill
	jne	.LBB1_62
# %bb.63:                               # %for.inc17.25
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1312(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1360(%rbp)       # 8-byte Spill
	movq	%rcx, -1368(%rbp)       # 8-byte Spill
.LBB1_64:                               # %for.body5.26
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1368(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1376(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1360(%rbp), %rcx       # 8-byte Reload
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
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1384(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1360(%rbp), %rcx       # 8-byte Reload
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
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1392(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1360(%rbp), %rcx       # 8-byte Reload
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
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1400(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1368(%rbp)       # 8-byte Spill
	jne	.LBB1_64
# %bb.65:                               # %for.inc17.26
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1360(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1408(%rbp)       # 8-byte Spill
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
.LBB1_66:                               # %for.body5.27
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1416(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1424(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1408(%rbp), %rcx       # 8-byte Reload
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
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1432(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1408(%rbp), %rcx       # 8-byte Reload
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
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1440(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1408(%rbp), %rcx       # 8-byte Reload
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
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1448(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1416(%rbp)       # 8-byte Spill
	jne	.LBB1_66
# %bb.67:                               # %for.inc17.27
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1408(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1456(%rbp)       # 8-byte Spill
	movq	%rcx, -1464(%rbp)       # 8-byte Spill
.LBB1_68:                               # %for.body5.28
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1464(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1472(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1456(%rbp), %rcx       # 8-byte Reload
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
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1480(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1456(%rbp), %rcx       # 8-byte Reload
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
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1488(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1456(%rbp), %rcx       # 8-byte Reload
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
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1496(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1464(%rbp)       # 8-byte Spill
	jne	.LBB1_68
# %bb.69:                               # %for.inc17.28
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1456(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1504(%rbp)       # 8-byte Spill
	movq	%rcx, -1512(%rbp)       # 8-byte Spill
.LBB1_70:                               # %for.body5.29
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1512(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1520(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1504(%rbp), %rcx       # 8-byte Reload
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
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1528(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1504(%rbp), %rcx       # 8-byte Reload
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
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1536(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1504(%rbp), %rcx       # 8-byte Reload
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
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1544(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1512(%rbp)       # 8-byte Spill
	jne	.LBB1_70
# %bb.71:                               # %for.inc17.29
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1504(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1552(%rbp)       # 8-byte Spill
	movq	%rcx, -1560(%rbp)       # 8-byte Spill
.LBB1_72:                               # %for.body5.30
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1560(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1552(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1568(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1552(%rbp), %rcx       # 8-byte Reload
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
	movq	-1552(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1576(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1552(%rbp), %rcx       # 8-byte Reload
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
	movq	-1552(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1584(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1552(%rbp), %rcx       # 8-byte Reload
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
	movq	-1552(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1592(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1552(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1560(%rbp)       # 8-byte Spill
	jne	.LBB1_72
# %bb.73:                               # %for.inc17.30
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1552(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1600(%rbp)       # 8-byte Spill
	movq	%rcx, -1608(%rbp)       # 8-byte Spill
.LBB1_74:                               # %for.body5.31
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1608(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1600(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1616(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1600(%rbp), %rcx       # 8-byte Reload
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
	movq	-1600(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1624(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1600(%rbp), %rcx       # 8-byte Reload
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
	movq	-1600(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1632(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1600(%rbp), %rcx       # 8-byte Reload
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
	movq	-1600(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1640(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1600(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1608(%rbp)       # 8-byte Spill
	jne	.LBB1_74
# %bb.75:                               # %for.inc17.31
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1600(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1648(%rbp)       # 8-byte Spill
	movq	%rcx, -1656(%rbp)       # 8-byte Spill
.LBB1_76:                               # %for.body5.32
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1656(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1664(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1648(%rbp), %rcx       # 8-byte Reload
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
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1672(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1648(%rbp), %rcx       # 8-byte Reload
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
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1680(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1648(%rbp), %rcx       # 8-byte Reload
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
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1688(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1656(%rbp)       # 8-byte Spill
	jne	.LBB1_76
# %bb.77:                               # %for.inc17.32
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1648(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1696(%rbp)       # 8-byte Spill
	movq	%rcx, -1704(%rbp)       # 8-byte Spill
.LBB1_78:                               # %for.body5.33
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1704(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1696(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1712(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1696(%rbp), %rcx       # 8-byte Reload
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
	movq	-1696(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1720(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1696(%rbp), %rcx       # 8-byte Reload
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
	movq	-1696(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1728(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1696(%rbp), %rcx       # 8-byte Reload
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
	movq	-1696(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1736(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1696(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1704(%rbp)       # 8-byte Spill
	jne	.LBB1_78
# %bb.79:                               # %for.inc17.33
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1696(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1744(%rbp)       # 8-byte Spill
	movq	%rcx, -1752(%rbp)       # 8-byte Spill
.LBB1_80:                               # %for.body5.34
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1752(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1744(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1760(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1744(%rbp), %rcx       # 8-byte Reload
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
	movq	-1744(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1768(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1744(%rbp), %rcx       # 8-byte Reload
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
	movq	-1744(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1776(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1744(%rbp), %rcx       # 8-byte Reload
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
	movq	-1744(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1784(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1744(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1752(%rbp)       # 8-byte Spill
	jne	.LBB1_80
# %bb.81:                               # %for.inc17.34
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1744(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1792(%rbp)       # 8-byte Spill
	movq	%rcx, -1800(%rbp)       # 8-byte Spill
.LBB1_82:                               # %for.body5.35
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1800(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1808(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1792(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1808(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1792(%rbp), %rcx       # 8-byte Reload
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
	movq	-1792(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1816(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1792(%rbp), %rcx       # 8-byte Reload
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
	movq	-1792(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1824(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1792(%rbp), %rcx       # 8-byte Reload
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
	movq	-1792(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1832(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1792(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1800(%rbp)       # 8-byte Spill
	jne	.LBB1_82
# %bb.83:                               # %for.inc17.35
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1792(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1840(%rbp)       # 8-byte Spill
	movq	%rcx, -1848(%rbp)       # 8-byte Spill
.LBB1_84:                               # %for.body5.36
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1848(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1840(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1856(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1840(%rbp), %rcx       # 8-byte Reload
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
	movq	-1840(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1864(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1840(%rbp), %rcx       # 8-byte Reload
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
	movq	-1840(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1872(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1840(%rbp), %rcx       # 8-byte Reload
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
	movq	-1840(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1880(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1840(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1848(%rbp)       # 8-byte Spill
	jne	.LBB1_84
# %bb.85:                               # %for.inc17.36
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1840(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1888(%rbp)       # 8-byte Spill
	movq	%rcx, -1896(%rbp)       # 8-byte Spill
.LBB1_86:                               # %for.body5.37
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1896(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1888(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1904(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1888(%rbp), %rcx       # 8-byte Reload
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
	movq	-1888(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1912(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1888(%rbp), %rcx       # 8-byte Reload
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
	movq	-1888(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1920(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1888(%rbp), %rcx       # 8-byte Reload
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
	movq	-1888(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1928(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1888(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1896(%rbp)       # 8-byte Spill
	jne	.LBB1_86
# %bb.87:                               # %for.inc17.37
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1888(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1936(%rbp)       # 8-byte Spill
	movq	%rcx, -1944(%rbp)       # 8-byte Spill
.LBB1_88:                               # %for.body5.38
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1944(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1936(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1952(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1936(%rbp), %rcx       # 8-byte Reload
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
	movq	-1936(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1960(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1936(%rbp), %rcx       # 8-byte Reload
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
	movq	-1936(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1968(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1936(%rbp), %rcx       # 8-byte Reload
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
	movq	-1936(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-1976(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1936(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1944(%rbp)       # 8-byte Spill
	jne	.LBB1_88
# %bb.89:                               # %for.inc17.38
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1936(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1984(%rbp)       # 8-byte Spill
	movq	%rcx, -1992(%rbp)       # 8-byte Spill
.LBB1_90:                               # %for.body5.39
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1992(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2000(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-1984(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2000(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1984(%rbp), %rcx       # 8-byte Reload
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
	movq	-1984(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2008(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1984(%rbp), %rcx       # 8-byte Reload
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
	movq	-1984(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2016(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1984(%rbp), %rcx       # 8-byte Reload
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
	movq	-1984(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2024(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-1984(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -1992(%rbp)       # 8-byte Spill
	jne	.LBB1_90
# %bb.91:                               # %for.inc17.39
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1984(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2032(%rbp)       # 8-byte Spill
	movq	%rcx, -2040(%rbp)       # 8-byte Spill
.LBB1_92:                               # %for.body5.40
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2040(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2048(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2032(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2048(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2032(%rbp), %rcx       # 8-byte Reload
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
	movq	-2032(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2056(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2032(%rbp), %rcx       # 8-byte Reload
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
	movq	-2032(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2064(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2032(%rbp), %rcx       # 8-byte Reload
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
	movq	-2032(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2072(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2032(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2040(%rbp)       # 8-byte Spill
	jne	.LBB1_92
# %bb.93:                               # %for.inc17.40
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2032(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2080(%rbp)       # 8-byte Spill
	movq	%rcx, -2088(%rbp)       # 8-byte Spill
.LBB1_94:                               # %for.body5.41
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2088(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2080(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2096(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2080(%rbp), %rcx       # 8-byte Reload
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
	movq	-2080(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2104(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2080(%rbp), %rcx       # 8-byte Reload
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
	movq	-2080(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2112(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2080(%rbp), %rcx       # 8-byte Reload
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
	movq	-2080(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2120(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2080(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2088(%rbp)       # 8-byte Spill
	jne	.LBB1_94
# %bb.95:                               # %for.inc17.41
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2080(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2128(%rbp)       # 8-byte Spill
	movq	%rcx, -2136(%rbp)       # 8-byte Spill
.LBB1_96:                               # %for.body5.42
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2136(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2144(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2144(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2128(%rbp), %rcx       # 8-byte Reload
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
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2152(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2128(%rbp), %rcx       # 8-byte Reload
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
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2160(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2128(%rbp), %rcx       # 8-byte Reload
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
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2168(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2128(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2136(%rbp)       # 8-byte Spill
	jne	.LBB1_96
# %bb.97:                               # %for.inc17.42
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2128(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2176(%rbp)       # 8-byte Spill
	movq	%rcx, -2184(%rbp)       # 8-byte Spill
.LBB1_98:                               # %for.body5.43
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2184(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2176(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2192(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2176(%rbp), %rcx       # 8-byte Reload
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
	movq	-2176(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2200(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2176(%rbp), %rcx       # 8-byte Reload
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
	movq	-2176(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2208(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2176(%rbp), %rcx       # 8-byte Reload
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
	movq	-2176(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2216(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2176(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2184(%rbp)       # 8-byte Spill
	jne	.LBB1_98
# %bb.99:                               # %for.inc17.43
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2176(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2224(%rbp)       # 8-byte Spill
	movq	%rcx, -2232(%rbp)       # 8-byte Spill
.LBB1_100:                              # %for.body5.44
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2232(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2240(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2224(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2240(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2224(%rbp), %rcx       # 8-byte Reload
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
	movq	-2224(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2248(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2224(%rbp), %rcx       # 8-byte Reload
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
	movq	-2224(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2256(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2224(%rbp), %rcx       # 8-byte Reload
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
	movq	-2224(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2264(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2224(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2232(%rbp)       # 8-byte Spill
	jne	.LBB1_100
# %bb.101:                              # %for.inc17.44
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2224(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2272(%rbp)       # 8-byte Spill
	movq	%rcx, -2280(%rbp)       # 8-byte Spill
.LBB1_102:                              # %for.body5.45
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2280(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2288(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2272(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2288(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2272(%rbp), %rcx       # 8-byte Reload
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
	movq	-2272(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2296(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2272(%rbp), %rcx       # 8-byte Reload
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
	movq	-2272(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2304(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2272(%rbp), %rcx       # 8-byte Reload
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
	movq	-2272(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2312(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2272(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2280(%rbp)       # 8-byte Spill
	jne	.LBB1_102
# %bb.103:                              # %for.inc17.45
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2272(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2320(%rbp)       # 8-byte Spill
	movq	%rcx, -2328(%rbp)       # 8-byte Spill
.LBB1_104:                              # %for.body5.46
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2328(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2336(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2320(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2336(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2320(%rbp), %rcx       # 8-byte Reload
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
	movq	-2320(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2344(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2320(%rbp), %rcx       # 8-byte Reload
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
	movq	-2320(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2352(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2320(%rbp), %rcx       # 8-byte Reload
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
	movq	-2320(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2360(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2320(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2328(%rbp)       # 8-byte Spill
	jne	.LBB1_104
# %bb.105:                              # %for.inc17.46
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2320(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2368(%rbp)       # 8-byte Spill
	movq	%rcx, -2376(%rbp)       # 8-byte Spill
.LBB1_106:                              # %for.body5.47
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2376(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2384(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2368(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2384(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2368(%rbp), %rcx       # 8-byte Reload
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
	movq	-2368(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2392(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2368(%rbp), %rcx       # 8-byte Reload
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
	movq	-2368(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2400(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2368(%rbp), %rcx       # 8-byte Reload
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
	movq	-2368(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2408(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2368(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2376(%rbp)       # 8-byte Spill
	jne	.LBB1_106
# %bb.107:                              # %for.inc17.47
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2368(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2416(%rbp)       # 8-byte Spill
	movq	%rcx, -2424(%rbp)       # 8-byte Spill
.LBB1_108:                              # %for.body5.48
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2424(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2432(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2416(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2432(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2416(%rbp), %rcx       # 8-byte Reload
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
	movq	-2416(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2440(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2416(%rbp), %rcx       # 8-byte Reload
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
	movq	-2416(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2448(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2416(%rbp), %rcx       # 8-byte Reload
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
	movq	-2416(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2456(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2416(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2424(%rbp)       # 8-byte Spill
	jne	.LBB1_108
# %bb.109:                              # %for.inc17.48
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2416(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2464(%rbp)       # 8-byte Spill
	movq	%rcx, -2472(%rbp)       # 8-byte Spill
.LBB1_110:                              # %for.body5.49
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2472(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2480(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2464(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2480(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2464(%rbp), %rcx       # 8-byte Reload
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
	movq	-2464(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2488(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2464(%rbp), %rcx       # 8-byte Reload
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
	movq	-2464(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2496(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2464(%rbp), %rcx       # 8-byte Reload
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
	movq	-2464(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2504(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2464(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2472(%rbp)       # 8-byte Spill
	jne	.LBB1_110
# %bb.111:                              # %for.inc17.49
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2464(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2512(%rbp)       # 8-byte Spill
	movq	%rcx, -2520(%rbp)       # 8-byte Spill
.LBB1_112:                              # %for.body5.50
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2520(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2528(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2512(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2528(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2512(%rbp), %rcx       # 8-byte Reload
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
	movq	-2512(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2536(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2512(%rbp), %rcx       # 8-byte Reload
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
	movq	-2512(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2544(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2512(%rbp), %rcx       # 8-byte Reload
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
	movq	-2512(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2552(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2512(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2520(%rbp)       # 8-byte Spill
	jne	.LBB1_112
# %bb.113:                              # %for.inc17.50
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2512(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2560(%rbp)       # 8-byte Spill
	movq	%rcx, -2568(%rbp)       # 8-byte Spill
.LBB1_114:                              # %for.body5.51
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2568(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2576(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2560(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2576(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2560(%rbp), %rcx       # 8-byte Reload
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
	movq	-2560(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2584(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2560(%rbp), %rcx       # 8-byte Reload
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
	movq	-2560(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2592(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2560(%rbp), %rcx       # 8-byte Reload
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
	movq	-2560(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2600(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2560(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2568(%rbp)       # 8-byte Spill
	jne	.LBB1_114
# %bb.115:                              # %for.inc17.51
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2560(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2608(%rbp)       # 8-byte Spill
	movq	%rcx, -2616(%rbp)       # 8-byte Spill
.LBB1_116:                              # %for.body5.52
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2616(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2624(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2608(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2624(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2608(%rbp), %rcx       # 8-byte Reload
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
	movq	-2608(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2632(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2608(%rbp), %rcx       # 8-byte Reload
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
	movq	-2608(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2640(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2608(%rbp), %rcx       # 8-byte Reload
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
	movq	-2608(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2648(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2608(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2616(%rbp)       # 8-byte Spill
	jne	.LBB1_116
# %bb.117:                              # %for.inc17.52
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2608(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2656(%rbp)       # 8-byte Spill
	movq	%rcx, -2664(%rbp)       # 8-byte Spill
.LBB1_118:                              # %for.body5.53
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2664(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2672(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2656(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2672(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2656(%rbp), %rcx       # 8-byte Reload
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
	movq	-2656(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2680(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2656(%rbp), %rcx       # 8-byte Reload
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
	movq	-2656(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2688(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2656(%rbp), %rcx       # 8-byte Reload
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
	movq	-2656(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2696(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2656(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2664(%rbp)       # 8-byte Spill
	jne	.LBB1_118
# %bb.119:                              # %for.inc17.53
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2656(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2704(%rbp)       # 8-byte Spill
	movq	%rcx, -2712(%rbp)       # 8-byte Spill
.LBB1_120:                              # %for.body5.54
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2712(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2720(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2704(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2720(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2704(%rbp), %rcx       # 8-byte Reload
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
	movq	-2704(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2728(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2704(%rbp), %rcx       # 8-byte Reload
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
	movq	-2704(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2736(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2704(%rbp), %rcx       # 8-byte Reload
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
	movq	-2704(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2744(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2704(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2712(%rbp)       # 8-byte Spill
	jne	.LBB1_120
# %bb.121:                              # %for.inc17.54
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2704(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2752(%rbp)       # 8-byte Spill
	movq	%rcx, -2760(%rbp)       # 8-byte Spill
.LBB1_122:                              # %for.body5.55
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2760(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2768(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2752(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2768(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2752(%rbp), %rcx       # 8-byte Reload
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
	movq	-2752(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2776(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2752(%rbp), %rcx       # 8-byte Reload
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
	movq	-2752(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2784(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2752(%rbp), %rcx       # 8-byte Reload
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
	movq	-2752(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2792(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2752(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2760(%rbp)       # 8-byte Spill
	jne	.LBB1_122
# %bb.123:                              # %for.inc17.55
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2752(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2800(%rbp)       # 8-byte Spill
	movq	%rcx, -2808(%rbp)       # 8-byte Spill
.LBB1_124:                              # %for.body5.56
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2808(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2816(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2800(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2816(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2800(%rbp), %rcx       # 8-byte Reload
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
	movq	-2800(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2824(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2800(%rbp), %rcx       # 8-byte Reload
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
	movq	-2800(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2832(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2800(%rbp), %rcx       # 8-byte Reload
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
	movq	-2800(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2840(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2800(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2808(%rbp)       # 8-byte Spill
	jne	.LBB1_124
# %bb.125:                              # %for.inc17.56
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2800(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2848(%rbp)       # 8-byte Spill
	movq	%rcx, -2856(%rbp)       # 8-byte Spill
.LBB1_126:                              # %for.body5.57
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2856(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2864(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2848(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2864(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2848(%rbp), %rcx       # 8-byte Reload
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
	movq	-2848(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2872(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2848(%rbp), %rcx       # 8-byte Reload
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
	movq	-2848(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2880(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2848(%rbp), %rcx       # 8-byte Reload
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
	movq	-2848(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2888(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2848(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2856(%rbp)       # 8-byte Spill
	jne	.LBB1_126
# %bb.127:                              # %for.inc17.57
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2848(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2896(%rbp)       # 8-byte Spill
	movq	%rcx, -2904(%rbp)       # 8-byte Spill
.LBB1_128:                              # %for.body5.58
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2904(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2912(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2896(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2912(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2896(%rbp), %rcx       # 8-byte Reload
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
	movq	-2896(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2920(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2896(%rbp), %rcx       # 8-byte Reload
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
	movq	-2896(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2928(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2896(%rbp), %rcx       # 8-byte Reload
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
	movq	-2896(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2936(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2896(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2904(%rbp)       # 8-byte Spill
	jne	.LBB1_128
# %bb.129:                              # %for.inc17.58
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2896(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2944(%rbp)       # 8-byte Spill
	movq	%rcx, -2952(%rbp)       # 8-byte Spill
.LBB1_130:                              # %for.body5.59
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2952(%rbp), %rax       # 8-byte Reload
	movq	%rax, -2960(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2944(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2960(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2944(%rbp), %rcx       # 8-byte Reload
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
	movq	-2944(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2968(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2944(%rbp), %rcx       # 8-byte Reload
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
	movq	-2944(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2976(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2944(%rbp), %rcx       # 8-byte Reload
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
	movq	-2944(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-2984(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2944(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -2952(%rbp)       # 8-byte Spill
	jne	.LBB1_130
# %bb.131:                              # %for.inc17.59
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2944(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -2992(%rbp)       # 8-byte Spill
	movq	%rcx, -3000(%rbp)       # 8-byte Spill
.LBB1_132:                              # %for.body5.60
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3000(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3008(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-2992(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3008(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2992(%rbp), %rcx       # 8-byte Reload
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
	movq	-2992(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3016(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2992(%rbp), %rcx       # 8-byte Reload
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
	movq	-2992(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3024(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2992(%rbp), %rcx       # 8-byte Reload
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
	movq	-2992(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3032(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-2992(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3000(%rbp)       # 8-byte Spill
	jne	.LBB1_132
# %bb.133:                              # %for.inc17.60
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-2992(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3040(%rbp)       # 8-byte Spill
	movq	%rcx, -3048(%rbp)       # 8-byte Spill
.LBB1_134:                              # %for.body5.61
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3048(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3056(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3040(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3056(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3040(%rbp), %rcx       # 8-byte Reload
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
	movq	-3040(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3064(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3040(%rbp), %rcx       # 8-byte Reload
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
	movq	-3040(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3072(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3040(%rbp), %rcx       # 8-byte Reload
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
	movq	-3040(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3080(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3040(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3048(%rbp)       # 8-byte Spill
	jne	.LBB1_134
# %bb.135:                              # %for.inc17.61
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3040(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3088(%rbp)       # 8-byte Spill
	movq	%rcx, -3096(%rbp)       # 8-byte Spill
.LBB1_136:                              # %for.body5.62
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3096(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3104(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3088(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3104(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3088(%rbp), %rcx       # 8-byte Reload
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
	movq	-3088(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3112(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3088(%rbp), %rcx       # 8-byte Reload
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
	movq	-3088(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3120(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3088(%rbp), %rcx       # 8-byte Reload
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
	movq	-3088(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3128(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3088(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3096(%rbp)       # 8-byte Spill
	jne	.LBB1_136
# %bb.137:                              # %for.inc17.62
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3088(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3136(%rbp)       # 8-byte Spill
	movq	%rcx, -3144(%rbp)       # 8-byte Spill
.LBB1_138:                              # %for.body5.63
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3144(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3152(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3136(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3152(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3136(%rbp), %rcx       # 8-byte Reload
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
	movq	-3136(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3160(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3136(%rbp), %rcx       # 8-byte Reload
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
	movq	-3136(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3168(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3136(%rbp), %rcx       # 8-byte Reload
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
	movq	-3136(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3176(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3136(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3144(%rbp)       # 8-byte Spill
	jne	.LBB1_138
# %bb.139:                              # %for.inc17.63
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3136(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3184(%rbp)       # 8-byte Spill
	movq	%rcx, -3192(%rbp)       # 8-byte Spill
.LBB1_140:                              # %for.body5.64
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3192(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3200(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3184(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3200(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3184(%rbp), %rcx       # 8-byte Reload
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
	movq	-3184(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3208(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3184(%rbp), %rcx       # 8-byte Reload
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
	movq	-3184(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3216(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3184(%rbp), %rcx       # 8-byte Reload
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
	movq	-3184(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3224(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3184(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3192(%rbp)       # 8-byte Spill
	jne	.LBB1_140
# %bb.141:                              # %for.inc17.64
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3184(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3232(%rbp)       # 8-byte Spill
	movq	%rcx, -3240(%rbp)       # 8-byte Spill
.LBB1_142:                              # %for.body5.65
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3240(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3248(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3232(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3248(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3232(%rbp), %rcx       # 8-byte Reload
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
	movq	-3232(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3256(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3232(%rbp), %rcx       # 8-byte Reload
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
	movq	-3232(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3264(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3232(%rbp), %rcx       # 8-byte Reload
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
	movq	-3232(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3272(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3232(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3240(%rbp)       # 8-byte Spill
	jne	.LBB1_142
# %bb.143:                              # %for.inc17.65
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3232(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3280(%rbp)       # 8-byte Spill
	movq	%rcx, -3288(%rbp)       # 8-byte Spill
.LBB1_144:                              # %for.body5.66
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3288(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3296(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3280(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3296(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3280(%rbp), %rcx       # 8-byte Reload
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
	movq	-3280(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3304(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3280(%rbp), %rcx       # 8-byte Reload
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
	movq	-3280(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3312(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3280(%rbp), %rcx       # 8-byte Reload
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
	movq	-3280(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3320(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3280(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3288(%rbp)       # 8-byte Spill
	jne	.LBB1_144
# %bb.145:                              # %for.inc17.66
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3280(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3328(%rbp)       # 8-byte Spill
	movq	%rcx, -3336(%rbp)       # 8-byte Spill
.LBB1_146:                              # %for.body5.67
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3336(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3344(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3328(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3344(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3328(%rbp), %rcx       # 8-byte Reload
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
	movq	-3328(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3352(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3328(%rbp), %rcx       # 8-byte Reload
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
	movq	-3328(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3360(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3328(%rbp), %rcx       # 8-byte Reload
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
	movq	-3328(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3368(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3328(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3336(%rbp)       # 8-byte Spill
	jne	.LBB1_146
# %bb.147:                              # %for.inc17.67
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3328(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3376(%rbp)       # 8-byte Spill
	movq	%rcx, -3384(%rbp)       # 8-byte Spill
.LBB1_148:                              # %for.body5.68
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3384(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3392(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3376(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3392(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3376(%rbp), %rcx       # 8-byte Reload
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
	movq	-3376(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3400(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3376(%rbp), %rcx       # 8-byte Reload
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
	movq	-3376(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3408(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3376(%rbp), %rcx       # 8-byte Reload
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
	movq	-3376(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3416(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3376(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3384(%rbp)       # 8-byte Spill
	jne	.LBB1_148
# %bb.149:                              # %for.inc17.68
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3376(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3424(%rbp)       # 8-byte Spill
	movq	%rcx, -3432(%rbp)       # 8-byte Spill
.LBB1_150:                              # %for.body5.69
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3432(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3440(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3424(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3440(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3424(%rbp), %rcx       # 8-byte Reload
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
	movq	-3424(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3448(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3424(%rbp), %rcx       # 8-byte Reload
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
	movq	-3424(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3456(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3424(%rbp), %rcx       # 8-byte Reload
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
	movq	-3424(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3464(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3424(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3432(%rbp)       # 8-byte Spill
	jne	.LBB1_150
# %bb.151:                              # %for.inc17.69
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3424(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3472(%rbp)       # 8-byte Spill
	movq	%rcx, -3480(%rbp)       # 8-byte Spill
.LBB1_152:                              # %for.body5.70
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3480(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3488(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3472(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3488(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3472(%rbp), %rcx       # 8-byte Reload
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
	movq	-3472(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3496(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3472(%rbp), %rcx       # 8-byte Reload
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
	movq	-3472(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3504(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3472(%rbp), %rcx       # 8-byte Reload
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
	movq	-3472(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3512(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3472(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3480(%rbp)       # 8-byte Spill
	jne	.LBB1_152
# %bb.153:                              # %for.inc17.70
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3472(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3520(%rbp)       # 8-byte Spill
	movq	%rcx, -3528(%rbp)       # 8-byte Spill
.LBB1_154:                              # %for.body5.71
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3528(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3536(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3520(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3536(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3520(%rbp), %rcx       # 8-byte Reload
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
	movq	-3520(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3544(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3520(%rbp), %rcx       # 8-byte Reload
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
	movq	-3520(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3552(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3520(%rbp), %rcx       # 8-byte Reload
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
	movq	-3520(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3560(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3520(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3528(%rbp)       # 8-byte Spill
	jne	.LBB1_154
# %bb.155:                              # %for.inc17.71
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3520(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3568(%rbp)       # 8-byte Spill
	movq	%rcx, -3576(%rbp)       # 8-byte Spill
.LBB1_156:                              # %for.body5.72
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3576(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3584(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3568(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3584(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3568(%rbp), %rcx       # 8-byte Reload
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
	movq	-3568(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3592(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3568(%rbp), %rcx       # 8-byte Reload
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
	movq	-3568(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3600(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3568(%rbp), %rcx       # 8-byte Reload
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
	movq	-3568(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3608(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3568(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3576(%rbp)       # 8-byte Spill
	jne	.LBB1_156
# %bb.157:                              # %for.inc17.72
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3568(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3616(%rbp)       # 8-byte Spill
	movq	%rcx, -3624(%rbp)       # 8-byte Spill
.LBB1_158:                              # %for.body5.73
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3624(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3632(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3616(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3632(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3616(%rbp), %rcx       # 8-byte Reload
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
	movq	-3616(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3640(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3616(%rbp), %rcx       # 8-byte Reload
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
	movq	-3616(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3648(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3616(%rbp), %rcx       # 8-byte Reload
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
	movq	-3616(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3656(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3616(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3624(%rbp)       # 8-byte Spill
	jne	.LBB1_158
# %bb.159:                              # %for.inc17.73
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3616(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3664(%rbp)       # 8-byte Spill
	movq	%rcx, -3672(%rbp)       # 8-byte Spill
.LBB1_160:                              # %for.body5.74
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3672(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3680(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3664(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3680(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3664(%rbp), %rcx       # 8-byte Reload
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
	movq	-3664(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3688(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3664(%rbp), %rcx       # 8-byte Reload
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
	movq	-3664(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3696(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3664(%rbp), %rcx       # 8-byte Reload
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
	movq	-3664(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3704(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3664(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3672(%rbp)       # 8-byte Spill
	jne	.LBB1_160
# %bb.161:                              # %for.inc17.74
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3664(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3712(%rbp)       # 8-byte Spill
	movq	%rcx, -3720(%rbp)       # 8-byte Spill
.LBB1_162:                              # %for.body5.75
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3720(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3728(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3712(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3728(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3712(%rbp), %rcx       # 8-byte Reload
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
	movq	-3712(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3736(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3712(%rbp), %rcx       # 8-byte Reload
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
	movq	-3712(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3744(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3712(%rbp), %rcx       # 8-byte Reload
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
	movq	-3712(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3752(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3712(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3720(%rbp)       # 8-byte Spill
	jne	.LBB1_162
# %bb.163:                              # %for.inc17.75
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3712(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3760(%rbp)       # 8-byte Spill
	movq	%rcx, -3768(%rbp)       # 8-byte Spill
.LBB1_164:                              # %for.body5.76
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3768(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3776(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3760(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3776(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3760(%rbp), %rcx       # 8-byte Reload
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
	movq	-3760(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3784(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3760(%rbp), %rcx       # 8-byte Reload
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
	movq	-3760(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3792(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3760(%rbp), %rcx       # 8-byte Reload
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
	movq	-3760(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3800(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3760(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3768(%rbp)       # 8-byte Spill
	jne	.LBB1_164
# %bb.165:                              # %for.inc17.76
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3760(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3808(%rbp)       # 8-byte Spill
	movq	%rcx, -3816(%rbp)       # 8-byte Spill
.LBB1_166:                              # %for.body5.77
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3816(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3824(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3808(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3824(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3808(%rbp), %rcx       # 8-byte Reload
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
	movq	-3808(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3832(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3808(%rbp), %rcx       # 8-byte Reload
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
	movq	-3808(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3840(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3808(%rbp), %rcx       # 8-byte Reload
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
	movq	-3808(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3848(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3808(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3816(%rbp)       # 8-byte Spill
	jne	.LBB1_166
# %bb.167:                              # %for.inc17.77
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3808(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3856(%rbp)       # 8-byte Spill
	movq	%rcx, -3864(%rbp)       # 8-byte Spill
.LBB1_168:                              # %for.body5.78
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3864(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3872(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3856(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3872(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3856(%rbp), %rcx       # 8-byte Reload
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
	movq	-3856(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3880(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3856(%rbp), %rcx       # 8-byte Reload
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
	movq	-3856(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3888(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3856(%rbp), %rcx       # 8-byte Reload
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
	movq	-3856(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3896(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3856(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3864(%rbp)       # 8-byte Spill
	jne	.LBB1_168
# %bb.169:                              # %for.inc17.78
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3856(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3904(%rbp)       # 8-byte Spill
	movq	%rcx, -3912(%rbp)       # 8-byte Spill
.LBB1_170:                              # %for.body5.79
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3912(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3920(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3904(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3920(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3904(%rbp), %rcx       # 8-byte Reload
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
	movq	-3904(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3928(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3904(%rbp), %rcx       # 8-byte Reload
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
	movq	-3904(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3936(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3904(%rbp), %rcx       # 8-byte Reload
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
	movq	-3904(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3944(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3904(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3912(%rbp)       # 8-byte Spill
	jne	.LBB1_170
# %bb.171:                              # %for.inc17.79
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3904(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -3952(%rbp)       # 8-byte Spill
	movq	%rcx, -3960(%rbp)       # 8-byte Spill
.LBB1_172:                              # %for.body5.80
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-3960(%rbp), %rax       # 8-byte Reload
	movq	%rax, -3968(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-3952(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3968(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3952(%rbp), %rcx       # 8-byte Reload
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
	movq	-3952(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3976(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3952(%rbp), %rcx       # 8-byte Reload
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
	movq	-3952(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3984(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3952(%rbp), %rcx       # 8-byte Reload
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
	movq	-3952(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-3992(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-3952(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -3960(%rbp)       # 8-byte Spill
	jne	.LBB1_172
# %bb.173:                              # %for.inc17.80
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-3952(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4000(%rbp)       # 8-byte Spill
	movq	%rcx, -4008(%rbp)       # 8-byte Spill
.LBB1_174:                              # %for.body5.81
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4008(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4016(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4000(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4016(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4000(%rbp), %rcx       # 8-byte Reload
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
	movq	-4000(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4024(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4000(%rbp), %rcx       # 8-byte Reload
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
	movq	-4000(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4032(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4000(%rbp), %rcx       # 8-byte Reload
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
	movq	-4000(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4040(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4000(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4008(%rbp)       # 8-byte Spill
	jne	.LBB1_174
# %bb.175:                              # %for.inc17.81
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4000(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4048(%rbp)       # 8-byte Spill
	movq	%rcx, -4056(%rbp)       # 8-byte Spill
.LBB1_176:                              # %for.body5.82
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4056(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4064(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4048(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4064(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4048(%rbp), %rcx       # 8-byte Reload
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
	movq	-4048(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4072(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4048(%rbp), %rcx       # 8-byte Reload
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
	movq	-4048(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4080(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4048(%rbp), %rcx       # 8-byte Reload
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
	movq	-4048(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4088(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4048(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4056(%rbp)       # 8-byte Spill
	jne	.LBB1_176
# %bb.177:                              # %for.inc17.82
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4048(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4096(%rbp)       # 8-byte Spill
	movq	%rcx, -4104(%rbp)       # 8-byte Spill
.LBB1_178:                              # %for.body5.83
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4104(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4112(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4096(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4112(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4096(%rbp), %rcx       # 8-byte Reload
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
	movq	-4096(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4120(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4096(%rbp), %rcx       # 8-byte Reload
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
	movq	-4096(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4128(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4096(%rbp), %rcx       # 8-byte Reload
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
	movq	-4096(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4136(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4096(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4104(%rbp)       # 8-byte Spill
	jne	.LBB1_178
# %bb.179:                              # %for.inc17.83
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4096(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4144(%rbp)       # 8-byte Spill
	movq	%rcx, -4152(%rbp)       # 8-byte Spill
.LBB1_180:                              # %for.body5.84
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4152(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4160(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4160(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4168(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4168(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4176(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4176(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4184(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4184(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4152(%rbp)       # 8-byte Spill
	jne	.LBB1_180
# %bb.181:                              # %for.inc17.84
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4144(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4192(%rbp)       # 8-byte Spill
	movq	%rcx, -4200(%rbp)       # 8-byte Spill
.LBB1_182:                              # %for.body5.85
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4200(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4208(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4208(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4216(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4216(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4224(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4224(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4232(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4232(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4200(%rbp)       # 8-byte Spill
	jne	.LBB1_182
# %bb.183:                              # %for.inc17.85
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4192(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4240(%rbp)       # 8-byte Spill
	movq	%rcx, -4248(%rbp)       # 8-byte Spill
.LBB1_184:                              # %for.body5.86
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4248(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4256(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4256(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4264(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4264(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4272(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4272(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4280(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4280(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4248(%rbp)       # 8-byte Spill
	jne	.LBB1_184
# %bb.185:                              # %for.inc17.86
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4240(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4288(%rbp)       # 8-byte Spill
	movq	%rcx, -4296(%rbp)       # 8-byte Spill
.LBB1_186:                              # %for.body5.87
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4296(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4304(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4304(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4312(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4312(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4320(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4320(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4328(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4328(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4296(%rbp)       # 8-byte Spill
	jne	.LBB1_186
# %bb.187:                              # %for.inc17.87
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4288(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4336(%rbp)       # 8-byte Spill
	movq	%rcx, -4344(%rbp)       # 8-byte Spill
.LBB1_188:                              # %for.body5.88
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4344(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4352(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4352(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4360(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4360(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4368(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4368(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4376(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4376(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4344(%rbp)       # 8-byte Spill
	jne	.LBB1_188
# %bb.189:                              # %for.inc17.88
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4336(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4384(%rbp)       # 8-byte Spill
	movq	%rcx, -4392(%rbp)       # 8-byte Spill
.LBB1_190:                              # %for.body5.89
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4392(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4400(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4400(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4408(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4408(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4416(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4416(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4424(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4424(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4392(%rbp)       # 8-byte Spill
	jne	.LBB1_190
# %bb.191:                              # %for.inc17.89
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4384(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4432(%rbp)       # 8-byte Spill
	movq	%rcx, -4440(%rbp)       # 8-byte Spill
.LBB1_192:                              # %for.body5.90
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4440(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4448(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4448(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4456(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4456(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4464(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4464(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4472(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4472(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4440(%rbp)       # 8-byte Spill
	jne	.LBB1_192
# %bb.193:                              # %for.inc17.90
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4432(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4480(%rbp)       # 8-byte Spill
	movq	%rcx, -4488(%rbp)       # 8-byte Spill
.LBB1_194:                              # %for.body5.91
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4488(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4496(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4496(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4504(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4504(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4512(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4512(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4520(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4520(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4488(%rbp)       # 8-byte Spill
	jne	.LBB1_194
# %bb.195:                              # %for.inc17.91
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4480(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4528(%rbp)       # 8-byte Spill
	movq	%rcx, -4536(%rbp)       # 8-byte Spill
.LBB1_196:                              # %for.body5.92
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4536(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4544(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4528(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4544(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4528(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4552(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4528(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4552(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4528(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4560(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4528(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4560(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4528(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4568(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4528(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4568(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4528(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4536(%rbp)       # 8-byte Spill
	jne	.LBB1_196
# %bb.197:                              # %for.inc17.92
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4528(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4576(%rbp)       # 8-byte Spill
	movq	%rcx, -4584(%rbp)       # 8-byte Spill
.LBB1_198:                              # %for.body5.93
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4584(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4592(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4576(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4592(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4576(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4600(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4576(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4600(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4576(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4608(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4576(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4608(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4576(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4616(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4576(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4616(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4576(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4584(%rbp)       # 8-byte Spill
	jne	.LBB1_198
# %bb.199:                              # %for.inc17.93
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4576(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4624(%rbp)       # 8-byte Spill
	movq	%rcx, -4632(%rbp)       # 8-byte Spill
.LBB1_200:                              # %for.body5.94
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4632(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4640(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4624(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4640(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4624(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4648(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4624(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4648(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4624(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4656(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4624(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4656(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4624(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4664(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4624(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4664(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4624(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4632(%rbp)       # 8-byte Spill
	jne	.LBB1_200
# %bb.201:                              # %for.inc17.94
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4624(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4672(%rbp)       # 8-byte Spill
	movq	%rcx, -4680(%rbp)       # 8-byte Spill
.LBB1_202:                              # %for.body5.95
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4680(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4688(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4672(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4688(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4672(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4696(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4672(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4696(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4672(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4704(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4672(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4704(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4672(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4712(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4672(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4712(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4672(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4680(%rbp)       # 8-byte Spill
	jne	.LBB1_202
# %bb.203:                              # %for.inc17.95
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4672(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4720(%rbp)       # 8-byte Spill
	movq	%rcx, -4728(%rbp)       # 8-byte Spill
.LBB1_204:                              # %for.body5.96
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4728(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4736(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4720(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4736(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4720(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4744(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4720(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4744(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4720(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4752(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4720(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4752(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4720(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4760(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4720(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4760(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4720(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4728(%rbp)       # 8-byte Spill
	jne	.LBB1_204
# %bb.205:                              # %for.inc17.96
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4720(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4768(%rbp)       # 8-byte Spill
	movq	%rcx, -4776(%rbp)       # 8-byte Spill
.LBB1_206:                              # %for.body5.97
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4776(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4784(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4768(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4784(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4768(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4792(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4768(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4792(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4768(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4800(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4768(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4800(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4768(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4808(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4768(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4808(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4768(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4776(%rbp)       # 8-byte Spill
	jne	.LBB1_206
# %bb.207:                              # %for.inc17.97
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4768(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4816(%rbp)       # 8-byte Spill
	movq	%rcx, -4824(%rbp)       # 8-byte Spill
.LBB1_208:                              # %for.body5.98
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4824(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4832(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4816(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4832(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4816(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4840(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4816(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4840(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4816(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4848(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4816(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4848(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4816(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4856(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4816(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4856(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4816(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4824(%rbp)       # 8-byte Spill
	jne	.LBB1_208
# %bb.209:                              # %for.inc17.98
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4816(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4864(%rbp)       # 8-byte Spill
	movq	%rcx, -4872(%rbp)       # 8-byte Spill
.LBB1_210:                              # %for.body5.99
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4872(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4880(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4864(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4880(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4864(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4888(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4864(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4888(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4864(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4896(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4864(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4896(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4864(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4904(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4864(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4904(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4864(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4872(%rbp)       # 8-byte Spill
	jne	.LBB1_210
# %bb.211:                              # %for.inc17.99
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4864(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4912(%rbp)       # 8-byte Spill
	movq	%rcx, -4920(%rbp)       # 8-byte Spill
.LBB1_212:                              # %for.body5.100
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4920(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4928(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4912(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4928(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4912(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4936(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4912(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4936(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4912(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4944(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4912(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4944(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4912(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4952(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4912(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4952(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4912(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4920(%rbp)       # 8-byte Spill
	jne	.LBB1_212
# %bb.213:                              # %for.inc17.100
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4912(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -4960(%rbp)       # 8-byte Spill
	movq	%rcx, -4968(%rbp)       # 8-byte Spill
.LBB1_214:                              # %for.body5.101
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4968(%rbp), %rax       # 8-byte Reload
	movq	%rax, -4976(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4960(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4976(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4960(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4984(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4960(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4984(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4960(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -4992(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4960(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-4992(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4960(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5000(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-4960(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5000(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-4960(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -4968(%rbp)       # 8-byte Spill
	jne	.LBB1_214
# %bb.215:                              # %for.inc17.101
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-4960(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5008(%rbp)       # 8-byte Spill
	movq	%rcx, -5016(%rbp)       # 8-byte Spill
.LBB1_216:                              # %for.body5.102
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5016(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5024(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5024(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5032(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5032(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5040(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5040(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5048(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5048(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5008(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5016(%rbp)       # 8-byte Spill
	jne	.LBB1_216
# %bb.217:                              # %for.inc17.102
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5008(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5056(%rbp)       # 8-byte Spill
	movq	%rcx, -5064(%rbp)       # 8-byte Spill
.LBB1_218:                              # %for.body5.103
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5064(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5072(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5056(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5072(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5056(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5080(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5056(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5080(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5056(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5088(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5056(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5088(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5056(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5096(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5056(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5096(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5056(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5064(%rbp)       # 8-byte Spill
	jne	.LBB1_218
# %bb.219:                              # %for.inc17.103
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5056(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5104(%rbp)       # 8-byte Spill
	movq	%rcx, -5112(%rbp)       # 8-byte Spill
.LBB1_220:                              # %for.body5.104
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5112(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5120(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5120(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5128(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5128(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5136(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5136(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5144(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5144(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5104(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5112(%rbp)       # 8-byte Spill
	jne	.LBB1_220
# %bb.221:                              # %for.inc17.104
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5104(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5152(%rbp)       # 8-byte Spill
	movq	%rcx, -5160(%rbp)       # 8-byte Spill
.LBB1_222:                              # %for.body5.105
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5160(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5168(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5152(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5168(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5152(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5176(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5152(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5176(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5152(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5184(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5152(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5184(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5152(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5192(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5152(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5192(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5152(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5160(%rbp)       # 8-byte Spill
	jne	.LBB1_222
# %bb.223:                              # %for.inc17.105
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5152(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5200(%rbp)       # 8-byte Spill
	movq	%rcx, -5208(%rbp)       # 8-byte Spill
.LBB1_224:                              # %for.body5.106
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5208(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5216(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5200(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5216(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5200(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5224(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5200(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5224(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5200(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5232(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5200(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5232(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5200(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5240(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5200(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5240(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5200(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5208(%rbp)       # 8-byte Spill
	jne	.LBB1_224
# %bb.225:                              # %for.inc17.106
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5200(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5248(%rbp)       # 8-byte Spill
	movq	%rcx, -5256(%rbp)       # 8-byte Spill
.LBB1_226:                              # %for.body5.107
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5256(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5264(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5248(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5264(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5248(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5272(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5248(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5272(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5248(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5280(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5248(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5280(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5248(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5288(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5248(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5288(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5248(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5256(%rbp)       # 8-byte Spill
	jne	.LBB1_226
# %bb.227:                              # %for.inc17.107
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5248(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5296(%rbp)       # 8-byte Spill
	movq	%rcx, -5304(%rbp)       # 8-byte Spill
.LBB1_228:                              # %for.body5.108
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5304(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5312(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5296(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5312(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5296(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5320(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5296(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5320(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5296(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5328(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5296(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5328(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5296(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5336(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5296(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5336(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5296(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5304(%rbp)       # 8-byte Spill
	jne	.LBB1_228
# %bb.229:                              # %for.inc17.108
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5296(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5344(%rbp)       # 8-byte Spill
	movq	%rcx, -5352(%rbp)       # 8-byte Spill
.LBB1_230:                              # %for.body5.109
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5352(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5360(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5344(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5360(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5344(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5368(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5344(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5368(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5344(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5376(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5344(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5376(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5344(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5384(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5344(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5384(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5344(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5352(%rbp)       # 8-byte Spill
	jne	.LBB1_230
# %bb.231:                              # %for.inc17.109
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5344(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5392(%rbp)       # 8-byte Spill
	movq	%rcx, -5400(%rbp)       # 8-byte Spill
.LBB1_232:                              # %for.body5.110
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5400(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5408(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5392(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5408(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5392(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5416(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5392(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5416(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5392(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5424(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5392(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5424(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5392(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5432(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5392(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5432(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5392(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5400(%rbp)       # 8-byte Spill
	jne	.LBB1_232
# %bb.233:                              # %for.inc17.110
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5392(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5440(%rbp)       # 8-byte Spill
	movq	%rcx, -5448(%rbp)       # 8-byte Spill
.LBB1_234:                              # %for.body5.111
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5448(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5456(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5456(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5464(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5464(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5472(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5472(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5480(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5480(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5440(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5448(%rbp)       # 8-byte Spill
	jne	.LBB1_234
# %bb.235:                              # %for.inc17.111
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5440(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5488(%rbp)       # 8-byte Spill
	movq	%rcx, -5496(%rbp)       # 8-byte Spill
.LBB1_236:                              # %for.body5.112
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5496(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5504(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5488(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5504(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5488(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5512(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5488(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5512(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5488(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5520(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5488(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5520(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5488(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5528(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5488(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5528(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5488(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5496(%rbp)       # 8-byte Spill
	jne	.LBB1_236
# %bb.237:                              # %for.inc17.112
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5488(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5536(%rbp)       # 8-byte Spill
	movq	%rcx, -5544(%rbp)       # 8-byte Spill
.LBB1_238:                              # %for.body5.113
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5544(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5552(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5536(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5552(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5536(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5560(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5536(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5560(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5536(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5568(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5536(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5568(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5536(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5576(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5536(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5576(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5536(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5544(%rbp)       # 8-byte Spill
	jne	.LBB1_238
# %bb.239:                              # %for.inc17.113
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5536(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5584(%rbp)       # 8-byte Spill
	movq	%rcx, -5592(%rbp)       # 8-byte Spill
.LBB1_240:                              # %for.body5.114
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5592(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5600(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5584(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5600(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5584(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5608(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5584(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5608(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5584(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5616(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5584(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5616(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5584(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5624(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5584(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5624(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5584(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5592(%rbp)       # 8-byte Spill
	jne	.LBB1_240
# %bb.241:                              # %for.inc17.114
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5584(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5632(%rbp)       # 8-byte Spill
	movq	%rcx, -5640(%rbp)       # 8-byte Spill
.LBB1_242:                              # %for.body5.115
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5640(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5648(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5632(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5648(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5632(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5656(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5632(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5656(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5632(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5664(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5632(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5664(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5632(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5672(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5632(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5672(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5632(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5640(%rbp)       # 8-byte Spill
	jne	.LBB1_242
# %bb.243:                              # %for.inc17.115
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5632(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5680(%rbp)       # 8-byte Spill
	movq	%rcx, -5688(%rbp)       # 8-byte Spill
.LBB1_244:                              # %for.body5.116
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5688(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5696(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5680(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5696(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5680(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5704(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5680(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5704(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5680(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5712(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5680(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5712(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5680(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5720(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5680(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5720(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5680(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5688(%rbp)       # 8-byte Spill
	jne	.LBB1_244
# %bb.245:                              # %for.inc17.116
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5680(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5728(%rbp)       # 8-byte Spill
	movq	%rcx, -5736(%rbp)       # 8-byte Spill
.LBB1_246:                              # %for.body5.117
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5736(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5744(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5728(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5744(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5728(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5752(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5728(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5752(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5728(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5760(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5728(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5760(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5728(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5768(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5728(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5768(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5728(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5736(%rbp)       # 8-byte Spill
	jne	.LBB1_246
# %bb.247:                              # %for.inc17.117
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5728(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5776(%rbp)       # 8-byte Spill
	movq	%rcx, -5784(%rbp)       # 8-byte Spill
.LBB1_248:                              # %for.body5.118
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5784(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5792(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5776(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5792(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5776(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5800(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5776(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5800(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5776(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5808(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5776(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5808(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5776(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5816(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5776(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5816(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5776(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5784(%rbp)       # 8-byte Spill
	jne	.LBB1_248
# %bb.249:                              # %for.inc17.118
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5776(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5824(%rbp)       # 8-byte Spill
	movq	%rcx, -5832(%rbp)       # 8-byte Spill
.LBB1_250:                              # %for.body5.119
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5832(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5840(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5824(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5840(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5824(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5848(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5824(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5848(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5824(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5856(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5824(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5856(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5824(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5864(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5824(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5864(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5824(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5832(%rbp)       # 8-byte Spill
	jne	.LBB1_250
# %bb.251:                              # %for.inc17.119
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5824(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5872(%rbp)       # 8-byte Spill
	movq	%rcx, -5880(%rbp)       # 8-byte Spill
.LBB1_252:                              # %for.body5.120
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5880(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5888(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5872(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5888(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5872(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5896(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5872(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5896(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5872(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5904(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5872(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5904(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5872(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5912(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5872(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5912(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5872(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5880(%rbp)       # 8-byte Spill
	jne	.LBB1_252
# %bb.253:                              # %for.inc17.120
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5872(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5920(%rbp)       # 8-byte Spill
	movq	%rcx, -5928(%rbp)       # 8-byte Spill
.LBB1_254:                              # %for.body5.121
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5928(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5936(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5920(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5936(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5920(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5944(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5920(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5944(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5920(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5952(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5920(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5952(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5920(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5960(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5920(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5960(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5920(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5928(%rbp)       # 8-byte Spill
	jne	.LBB1_254
# %bb.255:                              # %for.inc17.121
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5920(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -5968(%rbp)       # 8-byte Spill
	movq	%rcx, -5976(%rbp)       # 8-byte Spill
.LBB1_256:                              # %for.body5.122
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-5976(%rbp), %rax       # 8-byte Reload
	movq	%rax, -5984(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5968(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5984(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5968(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -5992(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5968(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-5992(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5968(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6000(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5968(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6000(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5968(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6008(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-5968(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6008(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-5968(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -5976(%rbp)       # 8-byte Spill
	jne	.LBB1_256
# %bb.257:                              # %for.inc17.122
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-5968(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -6016(%rbp)       # 8-byte Spill
	movq	%rcx, -6024(%rbp)       # 8-byte Spill
.LBB1_258:                              # %for.body5.123
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-6024(%rbp), %rax       # 8-byte Reload
	movq	%rax, -6032(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6032(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6040(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6040(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6048(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6048(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6056(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6056(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -6024(%rbp)       # 8-byte Spill
	jne	.LBB1_258
# %bb.259:                              # %for.inc17.123
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-6016(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -6064(%rbp)       # 8-byte Spill
	movq	%rcx, -6072(%rbp)       # 8-byte Spill
.LBB1_260:                              # %for.body5.124
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-6072(%rbp), %rax       # 8-byte Reload
	movq	%rax, -6080(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6080(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6088(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6088(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6096(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6096(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6104(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6104(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -6072(%rbp)       # 8-byte Spill
	jne	.LBB1_260
# %bb.261:                              # %for.inc17.124
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-6064(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -6112(%rbp)       # 8-byte Spill
	movq	%rcx, -6120(%rbp)       # 8-byte Spill
.LBB1_262:                              # %for.body5.125
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-6120(%rbp), %rax       # 8-byte Reload
	movq	%rax, -6128(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6128(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6136(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6136(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6144(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6144(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6152(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6152(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -6120(%rbp)       # 8-byte Spill
	jne	.LBB1_262
# %bb.263:                              # %for.inc17.125
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-6112(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -6160(%rbp)       # 8-byte Spill
	movq	%rcx, -6168(%rbp)       # 8-byte Spill
.LBB1_264:                              # %for.body5.126
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-6168(%rbp), %rax       # 8-byte Reload
	movq	%rax, -6176(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6176(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6184(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6184(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6192(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6192(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6200(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6200(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -6168(%rbp)       # 8-byte Spill
	jne	.LBB1_264
# %bb.265:                              # %for.inc17.126
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-6160(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -6208(%rbp)       # 8-byte Spill
	movq	%rcx, -6216(%rbp)       # 8-byte Spill
.LBB1_266:                              # %for.body5.127
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-6216(%rbp), %rax       # 8-byte Reload
	movq	%rax, -6224(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6224(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6232(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6232(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6240(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6240(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	movq	%rdx, -6248(%rbp)       # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-6208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	movq	-6248(%rbp), %rdx       # 8-byte Reload
	addq	%rdx, %rcx
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-6208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -6216(%rbp)       # 8-byte Spill
	jne	.LBB1_266
# %bb.267:                              # %for.inc17.127
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-6208(%rbp), %rax       # 8-byte Reload
	addq	$1, %rax
	cmpq	$4096, %rax             # imm = 0x1000
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB1_1
	jmp	.LBB1_4
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
