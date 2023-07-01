	.text
	.file	"md.c"
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
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%edx, (%rsi,%rdi,4)
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	%ecx, (%r8,%rdi,4)
	movq	-72(%rbp), %r9          # 8-byte Reload
	movl	%eax, (%r9,%rdi,4)
	addq	$1, %rdi
	cmpq	$1024, %rdi             # imm = 0x400
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	jne	.LBB0_1
# %bb.4:                                # %for.end43
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
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
