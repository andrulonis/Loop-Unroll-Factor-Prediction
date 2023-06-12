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
	subq	$1328, %rsp             # imm = 0x530
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
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_71 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_81 Depth 2
                                        #     Child Loop BB0_83 Depth 2
                                        #     Child Loop BB0_85 Depth 2
                                        #     Child Loop BB0_87 Depth 2
                                        #     Child Loop BB0_89 Depth 2
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_93 Depth 2
                                        #     Child Loop BB0_95 Depth 2
                                        #     Child Loop BB0_97 Depth 2
                                        #     Child Loop BB0_99 Depth 2
                                        #     Child Loop BB0_101 Depth 2
                                        #     Child Loop BB0_103 Depth 2
                                        #     Child Loop BB0_105 Depth 2
                                        #     Child Loop BB0_107 Depth 2
                                        #     Child Loop BB0_109 Depth 2
                                        #     Child Loop BB0_111 Depth 2
                                        #     Child Loop BB0_113 Depth 2
                                        #     Child Loop BB0_115 Depth 2
                                        #     Child Loop BB0_117 Depth 2
                                        #     Child Loop BB0_119 Depth 2
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_123 Depth 2
                                        #     Child Loop BB0_125 Depth 2
                                        #     Child Loop BB0_127 Depth 2
                                        #     Child Loop BB0_129 Depth 2
                                        #     Child Loop BB0_131 Depth 2
                                        #     Child Loop BB0_133 Depth 2
                                        #     Child Loop BB0_135 Depth 2
                                        #     Child Loop BB0_137 Depth 2
                                        #     Child Loop BB0_139 Depth 2
                                        #     Child Loop BB0_141 Depth 2
                                        #     Child Loop BB0_143 Depth 2
                                        #     Child Loop BB0_145 Depth 2
                                        #     Child Loop BB0_147 Depth 2
                                        #     Child Loop BB0_149 Depth 2
                                        #     Child Loop BB0_151 Depth 2
                                        #     Child Loop BB0_153 Depth 2
                                        #     Child Loop BB0_155 Depth 2
                                        #     Child Loop BB0_157 Depth 2
                                        #     Child Loop BB0_159 Depth 2
                                        #     Child Loop BB0_161 Depth 2
                                        #     Child Loop BB0_163 Depth 2
                                        #     Child Loop BB0_165 Depth 2
                                        #     Child Loop BB0_167 Depth 2
                                        #     Child Loop BB0_169 Depth 2
                                        #     Child Loop BB0_171 Depth 2
                                        #     Child Loop BB0_173 Depth 2
                                        #     Child Loop BB0_175 Depth 2
                                        #     Child Loop BB0_177 Depth 2
                                        #     Child Loop BB0_179 Depth 2
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
	cmpq	$4094, %rax             # imm = 0xFFE
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB0_2
# %bb.3:                                # %for.inc78
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %for.end80
	addq	$1328, %rsp             # imm = 0x530
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_5:                                # %for.body3.1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.cfi_def_cfa %rbp, 16
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
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
	movq	-56(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jne	.LBB0_5
# %bb.6:                                # %for.inc78.1
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
.LBB0_7:                                # %for.body3.2
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
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
	movq	-72(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB0_7
# %bb.8:                                # %for.inc78.2
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
.LBB0_9:                                # %for.body3.3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
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
	movq	-88(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jne	.LBB0_9
# %bb.10:                               # %for.inc78.3
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
.LBB0_11:                               # %for.body3.4
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
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
	movq	-104(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jne	.LBB0_11
# %bb.12:                               # %for.inc78.4
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
.LBB0_13:                               # %for.body3.5
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
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
	movq	-120(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jne	.LBB0_13
# %bb.14:                               # %for.inc78.5
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-120(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
.LBB0_15:                               # %for.body3.6
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
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
	movq	-136(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB0_15
# %bb.16:                               # %for.inc78.6
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-136(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
.LBB0_17:                               # %for.body3.7
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
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
	movq	-152(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB0_17
# %bb.18:                               # %for.inc78.7
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
.LBB0_19:                               # %for.body3.8
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
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
	movq	-168(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jne	.LBB0_19
# %bb.20:                               # %for.inc78.8
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-168(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB0_21:                               # %for.body3.9
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
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
	movq	-184(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jne	.LBB0_21
# %bb.22:                               # %for.inc78.9
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
.LBB0_23:                               # %for.body3.10
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
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
	movq	-200(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jne	.LBB0_23
# %bb.24:                               # %for.inc78.10
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
.LBB0_25:                               # %for.body3.11
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
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
	movq	-216(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jne	.LBB0_25
# %bb.26:                               # %for.inc78.11
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
.LBB0_27:                               # %for.body3.12
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
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
	movq	-232(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jne	.LBB0_27
# %bb.28:                               # %for.inc78.12
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-232(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
.LBB0_29:                               # %for.body3.13
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
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
	movq	-248(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jne	.LBB0_29
# %bb.30:                               # %for.inc78.13
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-248(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
.LBB0_31:                               # %for.body3.14
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
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
	movq	-264(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jne	.LBB0_31
# %bb.32:                               # %for.inc78.14
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-264(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
.LBB0_33:                               # %for.body3.15
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
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
	movq	-280(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jne	.LBB0_33
# %bb.34:                               # %for.inc78.15
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-280(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
.LBB0_35:                               # %for.body3.16
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
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
	movq	-296(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jne	.LBB0_35
# %bb.36:                               # %for.inc78.16
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
.LBB0_37:                               # %for.body3.17
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
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
	movq	-312(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jne	.LBB0_37
# %bb.38:                               # %for.inc78.17
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-312(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
.LBB0_39:                               # %for.body3.18
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	-328(%rbp), %rcx        # 8-byte Reload
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
	movq	-328(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jne	.LBB0_39
# %bb.40:                               # %for.inc78.18
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-328(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
.LBB0_41:                               # %for.body3.19
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
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
	movq	-344(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jne	.LBB0_41
# %bb.42:                               # %for.inc78.19
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-344(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
.LBB0_43:                               # %for.body3.20
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-360(%rbp), %rcx        # 8-byte Reload
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
	movq	-360(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jne	.LBB0_43
# %bb.44:                               # %for.inc78.20
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-360(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB0_45:                               # %for.body3.21
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
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
	movq	-376(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jne	.LBB0_45
# %bb.46:                               # %for.inc78.21
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-376(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
.LBB0_47:                               # %for.body3.22
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
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
	movq	-392(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jne	.LBB0_47
# %bb.48:                               # %for.inc78.22
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-392(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
.LBB0_49:                               # %for.body3.23
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
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
	movq	-408(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jne	.LBB0_49
# %bb.50:                               # %for.inc78.23
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-408(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
.LBB0_51:                               # %for.body3.24
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	-424(%rbp), %rcx        # 8-byte Reload
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
	movq	-424(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jne	.LBB0_51
# %bb.52:                               # %for.inc78.24
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-424(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
.LBB0_53:                               # %for.body3.25
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-440(%rbp), %rcx        # 8-byte Reload
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
	movq	-440(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jne	.LBB0_53
# %bb.54:                               # %for.inc78.25
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
.LBB0_55:                               # %for.body3.26
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-456(%rbp), %rcx        # 8-byte Reload
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
	movq	-456(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jne	.LBB0_55
# %bb.56:                               # %for.inc78.26
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-456(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
.LBB0_57:                               # %for.body3.27
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
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
	movq	-472(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jne	.LBB0_57
# %bb.58:                               # %for.inc78.27
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-472(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
.LBB0_59:                               # %for.body3.28
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	-488(%rbp), %rcx        # 8-byte Reload
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
	movq	-488(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jne	.LBB0_59
# %bb.60:                               # %for.inc78.28
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-488(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
.LBB0_61:                               # %for.body3.29
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	-504(%rbp), %rcx        # 8-byte Reload
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
	movq	-504(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jne	.LBB0_61
# %bb.62:                               # %for.inc78.29
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-504(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
.LBB0_63:                               # %for.body3.30
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	-520(%rbp), %rcx        # 8-byte Reload
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
	movq	-520(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jne	.LBB0_63
# %bb.64:                               # %for.inc78.30
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-520(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
.LBB0_65:                               # %for.body3.31
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	-536(%rbp), %rcx        # 8-byte Reload
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
	movq	-536(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jne	.LBB0_65
# %bb.66:                               # %for.inc78.31
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	movq	%rcx, -560(%rbp)        # 8-byte Spill
.LBB0_67:                               # %for.body3.32
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	-552(%rbp), %rcx        # 8-byte Reload
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
	movq	-552(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jne	.LBB0_67
# %bb.68:                               # %for.inc78.32
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-552(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
.LBB0_69:                               # %for.body3.33
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	-568(%rbp), %rcx        # 8-byte Reload
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
	movq	-568(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jne	.LBB0_69
# %bb.70:                               # %for.inc78.33
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-568(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
.LBB0_71:                               # %for.body3.34
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	-584(%rbp), %rcx        # 8-byte Reload
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
	movq	-584(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jne	.LBB0_71
# %bb.72:                               # %for.inc78.34
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-584(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	movq	%rcx, -608(%rbp)        # 8-byte Spill
.LBB0_73:                               # %for.body3.35
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	-600(%rbp), %rcx        # 8-byte Reload
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
	movq	-600(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jne	.LBB0_73
# %bb.74:                               # %for.inc78.35
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-600(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
.LBB0_75:                               # %for.body3.36
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	-616(%rbp), %rcx        # 8-byte Reload
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
	movq	-616(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jne	.LBB0_75
# %bb.76:                               # %for.inc78.36
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-616(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	movq	%rcx, -640(%rbp)        # 8-byte Spill
.LBB0_77:                               # %for.body3.37
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-632(%rbp), %rcx        # 8-byte Reload
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
	movq	-632(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jne	.LBB0_77
# %bb.78:                               # %for.inc78.37
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-632(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	movq	%rcx, -656(%rbp)        # 8-byte Spill
.LBB0_79:                               # %for.body3.38
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	-648(%rbp), %rcx        # 8-byte Reload
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
	movq	-648(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jne	.LBB0_79
# %bb.80:                               # %for.inc78.38
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-648(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	movq	%rcx, -672(%rbp)        # 8-byte Spill
.LBB0_81:                               # %for.body3.39
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	-664(%rbp), %rcx        # 8-byte Reload
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
	movq	-664(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jne	.LBB0_81
# %bb.82:                               # %for.inc78.39
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-664(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	movq	%rcx, -688(%rbp)        # 8-byte Spill
.LBB0_83:                               # %for.body3.40
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	-680(%rbp), %rcx        # 8-byte Reload
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
	movq	-680(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jne	.LBB0_83
# %bb.84:                               # %for.inc78.40
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-680(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movq	%rcx, -704(%rbp)        # 8-byte Spill
.LBB0_85:                               # %for.body3.41
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	-696(%rbp), %rcx        # 8-byte Reload
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
	movq	-696(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jne	.LBB0_85
# %bb.86:                               # %for.inc78.41
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-696(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	movq	%rcx, -720(%rbp)        # 8-byte Spill
.LBB0_87:                               # %for.body3.42
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-720(%rbp), %rax        # 8-byte Reload
	movq	-712(%rbp), %rcx        # 8-byte Reload
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
	movq	-712(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jne	.LBB0_87
# %bb.88:                               # %for.inc78.42
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-712(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	movq	%rcx, -736(%rbp)        # 8-byte Spill
.LBB0_89:                               # %for.body3.43
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-736(%rbp), %rax        # 8-byte Reload
	movq	-728(%rbp), %rcx        # 8-byte Reload
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
	movq	-728(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jne	.LBB0_89
# %bb.90:                               # %for.inc78.43
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-728(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	movq	%rcx, -752(%rbp)        # 8-byte Spill
.LBB0_91:                               # %for.body3.44
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-752(%rbp), %rax        # 8-byte Reload
	movq	-744(%rbp), %rcx        # 8-byte Reload
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
	movq	-744(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jne	.LBB0_91
# %bb.92:                               # %for.inc78.44
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-744(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	movq	%rcx, -768(%rbp)        # 8-byte Spill
.LBB0_93:                               # %for.body3.45
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	-760(%rbp), %rcx        # 8-byte Reload
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
	movq	-760(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jne	.LBB0_93
# %bb.94:                               # %for.inc78.45
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-760(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	movq	%rcx, -784(%rbp)        # 8-byte Spill
.LBB0_95:                               # %for.body3.46
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-784(%rbp), %rax        # 8-byte Reload
	movq	-776(%rbp), %rcx        # 8-byte Reload
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
	movq	-776(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jne	.LBB0_95
# %bb.96:                               # %for.inc78.46
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-776(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	movq	%rcx, -800(%rbp)        # 8-byte Spill
.LBB0_97:                               # %for.body3.47
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-800(%rbp), %rax        # 8-byte Reload
	movq	-792(%rbp), %rcx        # 8-byte Reload
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
	movq	-792(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jne	.LBB0_97
# %bb.98:                               # %for.inc78.47
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-792(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	movq	%rcx, -816(%rbp)        # 8-byte Spill
.LBB0_99:                               # %for.body3.48
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-816(%rbp), %rax        # 8-byte Reload
	movq	-808(%rbp), %rcx        # 8-byte Reload
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
	movq	-808(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jne	.LBB0_99
# %bb.100:                              # %for.inc78.48
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-808(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	movq	%rcx, -832(%rbp)        # 8-byte Spill
.LBB0_101:                              # %for.body3.49
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-832(%rbp), %rax        # 8-byte Reload
	movq	-824(%rbp), %rcx        # 8-byte Reload
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
	movq	-824(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jne	.LBB0_101
# %bb.102:                              # %for.inc78.49
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-824(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	movq	%rcx, -848(%rbp)        # 8-byte Spill
.LBB0_103:                              # %for.body3.50
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	-840(%rbp), %rcx        # 8-byte Reload
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
	movq	-840(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jne	.LBB0_103
# %bb.104:                              # %for.inc78.50
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-840(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	movq	%rcx, -864(%rbp)        # 8-byte Spill
.LBB0_105:                              # %for.body3.51
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	-856(%rbp), %rcx        # 8-byte Reload
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
	movq	-856(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jne	.LBB0_105
# %bb.106:                              # %for.inc78.51
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-856(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	movq	%rcx, -880(%rbp)        # 8-byte Spill
.LBB0_107:                              # %for.body3.52
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-880(%rbp), %rax        # 8-byte Reload
	movq	-872(%rbp), %rcx        # 8-byte Reload
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
	movq	-872(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jne	.LBB0_107
# %bb.108:                              # %for.inc78.52
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-872(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -888(%rbp)        # 8-byte Spill
	movq	%rcx, -896(%rbp)        # 8-byte Spill
.LBB0_109:                              # %for.body3.53
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-896(%rbp), %rax        # 8-byte Reload
	movq	-888(%rbp), %rcx        # 8-byte Reload
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
	movq	-888(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jne	.LBB0_109
# %bb.110:                              # %for.inc78.53
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-888(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	movq	%rcx, -912(%rbp)        # 8-byte Spill
.LBB0_111:                              # %for.body3.54
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-912(%rbp), %rax        # 8-byte Reload
	movq	-904(%rbp), %rcx        # 8-byte Reload
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
	movq	-904(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jne	.LBB0_111
# %bb.112:                              # %for.inc78.54
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-904(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	movq	%rcx, -928(%rbp)        # 8-byte Spill
.LBB0_113:                              # %for.body3.55
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-928(%rbp), %rax        # 8-byte Reload
	movq	-920(%rbp), %rcx        # 8-byte Reload
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
	movq	-920(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jne	.LBB0_113
# %bb.114:                              # %for.inc78.55
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-920(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	movq	%rcx, -944(%rbp)        # 8-byte Spill
.LBB0_115:                              # %for.body3.56
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-944(%rbp), %rax        # 8-byte Reload
	movq	-936(%rbp), %rcx        # 8-byte Reload
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
	movq	-936(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jne	.LBB0_115
# %bb.116:                              # %for.inc78.56
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-936(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	movq	%rcx, -960(%rbp)        # 8-byte Spill
.LBB0_117:                              # %for.body3.57
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	-952(%rbp), %rcx        # 8-byte Reload
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
	movq	-952(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jne	.LBB0_117
# %bb.118:                              # %for.inc78.57
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-952(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	movq	%rcx, -976(%rbp)        # 8-byte Spill
.LBB0_119:                              # %for.body3.58
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	-968(%rbp), %rcx        # 8-byte Reload
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
	movq	-968(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jne	.LBB0_119
# %bb.120:                              # %for.inc78.58
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-968(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -984(%rbp)        # 8-byte Spill
	movq	%rcx, -992(%rbp)        # 8-byte Spill
.LBB0_121:                              # %for.body3.59
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-992(%rbp), %rax        # 8-byte Reload
	movq	-984(%rbp), %rcx        # 8-byte Reload
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
	movq	-984(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jne	.LBB0_121
# %bb.122:                              # %for.inc78.59
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-984(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
.LBB0_123:                              # %for.body3.60
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movq	-1000(%rbp), %rcx       # 8-byte Reload
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
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jne	.LBB0_123
# %bb.124:                              # %for.inc78.60
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1000(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
.LBB0_125:                              # %for.body3.61
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	-1016(%rbp), %rcx       # 8-byte Reload
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
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jne	.LBB0_125
# %bb.126:                              # %for.inc78.61
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1016(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1032(%rbp)       # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
.LBB0_127:                              # %for.body3.62
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	-1032(%rbp), %rcx       # 8-byte Reload
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
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jne	.LBB0_127
# %bb.128:                              # %for.inc78.62
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1032(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
.LBB0_129:                              # %for.body3.63
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movq	-1048(%rbp), %rcx       # 8-byte Reload
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
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jne	.LBB0_129
# %bb.130:                              # %for.inc78.63
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1048(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
.LBB0_131:                              # %for.body3.64
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movq	-1064(%rbp), %rcx       # 8-byte Reload
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
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jne	.LBB0_131
# %bb.132:                              # %for.inc78.64
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1064(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
.LBB0_133:                              # %for.body3.65
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movq	-1080(%rbp), %rcx       # 8-byte Reload
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
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jne	.LBB0_133
# %bb.134:                              # %for.inc78.65
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1080(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1096(%rbp)       # 8-byte Spill
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
.LBB0_135:                              # %for.body3.66
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	-1096(%rbp), %rcx       # 8-byte Reload
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
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jne	.LBB0_135
# %bb.136:                              # %for.inc78.66
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1096(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
.LBB0_137:                              # %for.body3.67
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movq	-1112(%rbp), %rcx       # 8-byte Reload
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
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jne	.LBB0_137
# %bb.138:                              # %for.inc78.67
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1112(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
.LBB0_139:                              # %for.body3.68
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1136(%rbp), %rax       # 8-byte Reload
	movq	-1128(%rbp), %rcx       # 8-byte Reload
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
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jne	.LBB0_139
# %bb.140:                              # %for.inc78.68
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1128(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
.LBB0_141:                              # %for.body3.69
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movq	-1144(%rbp), %rcx       # 8-byte Reload
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
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jne	.LBB0_141
# %bb.142:                              # %for.inc78.69
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1144(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
.LBB0_143:                              # %for.body3.70
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movq	-1160(%rbp), %rcx       # 8-byte Reload
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
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jne	.LBB0_143
# %bb.144:                              # %for.inc78.70
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1160(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1176(%rbp)       # 8-byte Spill
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
.LBB0_145:                              # %for.body3.71
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movq	-1176(%rbp), %rcx       # 8-byte Reload
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
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jne	.LBB0_145
# %bb.146:                              # %for.inc78.71
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1176(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1192(%rbp)       # 8-byte Spill
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
.LBB0_147:                              # %for.body3.72
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movq	-1192(%rbp), %rcx       # 8-byte Reload
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
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jne	.LBB0_147
# %bb.148:                              # %for.inc78.72
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1192(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1208(%rbp)       # 8-byte Spill
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
.LBB0_149:                              # %for.body3.73
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1216(%rbp), %rax       # 8-byte Reload
	movq	-1208(%rbp), %rcx       # 8-byte Reload
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
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jne	.LBB0_149
# %bb.150:                              # %for.inc78.73
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1208(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1224(%rbp)       # 8-byte Spill
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
.LBB0_151:                              # %for.body3.74
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movq	-1224(%rbp), %rcx       # 8-byte Reload
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
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jne	.LBB0_151
# %bb.152:                              # %for.inc78.74
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1224(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1240(%rbp)       # 8-byte Spill
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
.LBB0_153:                              # %for.body3.75
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1248(%rbp), %rax       # 8-byte Reload
	movq	-1240(%rbp), %rcx       # 8-byte Reload
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
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	jne	.LBB0_153
# %bb.154:                              # %for.inc78.75
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1240(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1256(%rbp)       # 8-byte Spill
	movq	%rcx, -1264(%rbp)       # 8-byte Spill
.LBB0_155:                              # %for.body3.76
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movq	-1256(%rbp), %rcx       # 8-byte Reload
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
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jne	.LBB0_155
# %bb.156:                              # %for.inc78.76
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1256(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
.LBB0_157:                              # %for.body3.77
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movq	-1272(%rbp), %rcx       # 8-byte Reload
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
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jne	.LBB0_157
# %bb.158:                              # %for.inc78.77
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1272(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
	movq	%rcx, -1296(%rbp)       # 8-byte Spill
.LBB0_159:                              # %for.body3.78
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movq	-1288(%rbp), %rcx       # 8-byte Reload
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
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jne	.LBB0_159
# %bb.160:                              # %for.inc78.78
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1288(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1304(%rbp)       # 8-byte Spill
	movq	%rcx, -1312(%rbp)       # 8-byte Spill
.LBB0_161:                              # %for.body3.79
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movq	-1304(%rbp), %rcx       # 8-byte Reload
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
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	jne	.LBB0_161
# %bb.162:                              # %for.inc78.79
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1304(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1320(%rbp)       # 8-byte Spill
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
.LBB0_163:                              # %for.body3.80
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1328(%rbp), %rax       # 8-byte Reload
	movq	-1320(%rbp), %rcx       # 8-byte Reload
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
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	jne	.LBB0_163
# %bb.164:                              # %for.inc78.80
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1320(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1336(%rbp)       # 8-byte Spill
	movq	%rcx, -1344(%rbp)       # 8-byte Spill
.LBB0_165:                              # %for.body3.81
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1344(%rbp), %rax       # 8-byte Reload
	movq	-1336(%rbp), %rcx       # 8-byte Reload
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
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	jne	.LBB0_165
# %bb.166:                              # %for.inc78.81
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1336(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1352(%rbp)       # 8-byte Spill
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
.LBB0_167:                              # %for.body3.82
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movq	-1352(%rbp), %rcx       # 8-byte Reload
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
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	jne	.LBB0_167
# %bb.168:                              # %for.inc78.82
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1352(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1368(%rbp)       # 8-byte Spill
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
.LBB0_169:                              # %for.body3.83
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1376(%rbp), %rax       # 8-byte Reload
	movq	-1368(%rbp), %rcx       # 8-byte Reload
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
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	jne	.LBB0_169
# %bb.170:                              # %for.inc78.83
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1368(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1384(%rbp)       # 8-byte Spill
	movq	%rcx, -1392(%rbp)       # 8-byte Spill
.LBB0_171:                              # %for.body3.84
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movq	-1384(%rbp), %rcx       # 8-byte Reload
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
	movq	-1384(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jne	.LBB0_171
# %bb.172:                              # %for.inc78.84
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1384(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1400(%rbp)       # 8-byte Spill
	movq	%rcx, -1408(%rbp)       # 8-byte Spill
.LBB0_173:                              # %for.body3.85
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1408(%rbp), %rax       # 8-byte Reload
	movq	-1400(%rbp), %rcx       # 8-byte Reload
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
	movq	-1400(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	jne	.LBB0_173
# %bb.174:                              # %for.inc78.85
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1400(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1416(%rbp)       # 8-byte Spill
	movq	%rcx, -1424(%rbp)       # 8-byte Spill
.LBB0_175:                              # %for.body3.86
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1424(%rbp), %rax       # 8-byte Reload
	movq	-1416(%rbp), %rcx       # 8-byte Reload
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
	movq	-1416(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	jne	.LBB0_175
# %bb.176:                              # %for.inc78.86
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1416(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1432(%rbp)       # 8-byte Spill
	movq	%rcx, -1440(%rbp)       # 8-byte Spill
.LBB0_177:                              # %for.body3.87
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1440(%rbp), %rax       # 8-byte Reload
	movq	-1432(%rbp), %rcx       # 8-byte Reload
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
	movq	-1432(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	jne	.LBB0_177
# %bb.178:                              # %for.inc78.87
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-1432(%rbp), %rdx       # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -1448(%rbp)       # 8-byte Spill
	movq	%rcx, -1456(%rbp)       # 8-byte Spill
.LBB0_179:                              # %for.body3.88
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1456(%rbp), %rax       # 8-byte Reload
	movq	-1448(%rbp), %rcx       # 8-byte Reload
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
	movq	-1448(%rbp), %rcx       # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movl	(%rdx), %esi
	imull	(%rdi,%rcx,4), %esi
	movl	4(%rdx), %r8d
	imull	4(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	8(%rdx), %r8d
	imull	8(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	12(%rdx), %r8d
	imull	16384(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	16(%rdx), %r8d
	imull	16388(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	20(%rdx), %r8d
	imull	16392(%rdi,%rcx,4), %r8d
	addl	%r8d, %esi
	movl	24(%rdx), %r8d
	imull	32768(%rdi,%rcx,4), %r8d
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
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	jne	.LBB0_179
# %bb.180:                              # %for.inc78.88
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-1448(%rbp), %rax       # 8-byte Reload
	addq	$1, %rax
	cmpq	$4094, %rax             # imm = 0xFFE
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB0_1
	jmp	.LBB0_4
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$8650341, %edi          # imm = 0x83FE65
	callq	srand
	movl	$67108864, %edi         # imm = 0x4000000
	callq	malloc
	movl	$67108864, %edi         # imm = 0x4000000
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	malloc
	movl	$36, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	malloc
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #     Child Loop BB1_20 Depth 2
	movq	-56(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
.LBB1_2:                                # %for.body5
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
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
	movq	-64(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	%rdx, %rcx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# %bb.3:                                # %for.inc17
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_20
.LBB1_4:                                # %for.body23.preheader
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
.LBB1_5:                                # %for.body23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #     Child Loop BB1_17 Depth 2
	movq	-120(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
.LBB1_6:                                # %for.body27
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	imulq	$3, %rcx, %rdx
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rsi
	cmpq	$3, %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	jne	.LBB1_15
# %bb.7:                                # %for.inc45
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$3, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB1_16
# %bb.8:                                # %for.end47
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	stencil
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB1_9:                                # %for.body54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_13 Depth 2
	movq	-168(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
.LBB1_10:                               # %for.body58
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %ecx
	movq	-176(%rbp), %rsi        # 8-byte Reload
	shlq	$12, %rsi
	addq	%rax, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %r8d
	movl	%eax, %r9d
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movl	%esi, %r10d
	movabsq	$.L.str, %rdi
	movl	%r10d, %esi
	movl	%r9d, %edx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	printf
	movq	-192(%rbp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	movq	-176(%rbp), %r11        # 8-byte Reload
	shlq	$12, %r11
	addq	%rdi, %r11
	movq	-32(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%r11,4), %ecx
	movq	-176(%rbp), %r11        # 8-byte Reload
	shlq	$12, %r11
	addq	%rdi, %r11
	movq	-40(%rbp), %r14         # 8-byte Reload
	movl	(%r14,%r11,4), %r8d
	movl	%edi, %edx
	movq	-176(%rbp), %r11        # 8-byte Reload
	movl	%r11d, %esi
	movabsq	$.L.str, %r15
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-200(%rbp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	cmpq	$4, %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	jne	.LBB1_10
# %bb.11:                               # %for.inc71
                                        #   in Loop: Header=BB1_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %for.end73
	movabsq	$.Lstr, %rdi
	callq	puts
	xorl	%ecx, %ecx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_13:                               # %for.body58.1
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.cfi_def_cfa %rbp, 16
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	shlq	$12, %rcx
	addq	%rax, %rcx
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %ecx
	movq	-216(%rbp), %rsi        # 8-byte Reload
	shlq	$12, %rsi
	addq	%rax, %rsi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %r8d
	movl	%eax, %r9d
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	%esi, %r10d
	movabsq	$.L.str, %rdi
	movl	%r10d, %esi
	movl	%r9d, %edx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	printf
	movq	-240(%rbp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	movq	-216(%rbp), %r11        # 8-byte Reload
	shlq	$12, %r11
	addq	%rdi, %r11
	movq	-32(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx,%r11,4), %ecx
	movq	-216(%rbp), %r11        # 8-byte Reload
	shlq	$12, %r11
	addq	%rdi, %r11
	movq	-40(%rbp), %r14         # 8-byte Reload
	movl	(%r14,%r11,4), %r8d
	movl	%edi, %edx
	movq	-216(%rbp), %r11        # 8-byte Reload
	movl	%r11d, %esi
	movabsq	$.L.str, %r15
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-248(%rbp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	cmpq	$4, %rdi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	jne	.LBB1_13
# %bb.14:                               # %for.inc71.1
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	cmpq	$4, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jne	.LBB1_9
	jmp	.LBB1_12
.LBB1_15:                               # %for.body27.1
                                        #   in Loop: Header=BB1_6 Depth=2
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	imulq	$3, %rcx, %rdx
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
.LBB1_16:                               # %for.body23.1
                                        #   in Loop: Header=BB1_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB1_17
.LBB1_17:                               # %for.body27.138
                                        #   Parent Loop BB1_5 Depth=1
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
	movq	-160(%rbp), %rcx        # 8-byte Reload
	imulq	$3, %rcx, %rdx
	movq	-272(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rsi
	cmpq	$3, %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	jne	.LBB1_19
# %bb.18:                               # %for.inc45.1
                                        #   in Loop: Header=BB1_5 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_19:                               # %for.body27.1.1
                                        #   in Loop: Header=BB1_17 Depth=2
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	imulq	$3, %rcx, %rdx
	movq	-280(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, (%rdi,%rdx,4)
	addq	$1, %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	jmp	.LBB1_17
.LBB1_20:                               # %for.body5.1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-288(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-96(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
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
	movq	-96(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	movq	-296(%rbp), %rdx        # 8-byte Reload
	addq	%rdx, %rcx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, (%rsi,%rcx,4)
	movq	-96(%rbp), %rcx         # 8-byte Reload
	shlq	$12, %rcx
	addq	%rdx, %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	$0, (%rdi,%rcx,4)
	addq	$1, %rdx
	cmpq	$4096, %rdx             # imm = 0x1000
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jne	.LBB1_20
# %bb.21:                               # %for.inc17.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$4096, %rax             # imm = 0x1000
	movq	%rax, -56(%rbp)         # 8-byte Spill
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
