	.text
	.file	"ss_sort_manual.c"
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
	subq	$1120, %rsp             # imm = 0x460
	cmpl	$0, %esi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movl	%esi, -12(%rbp)         # 4-byte Spill
	jle	.LBB0_10
# %bb.1:                                # %for.body.preheader
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	addl	$-1, %eax
	movl	-12(%rbp), %edx         # 4-byte Reload
	andl	$63, %edx
	cmpl	$63, %eax
	movl	%edx, -16(%rbp)         # 4-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jb	.LBB0_5
# %bb.2:                                # %for.body.preheader.new
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax         # 4-byte Reload
	movl	-16(%rbp), %edx         # 4-byte Reload
	subl	%edx, %eax
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movabsq	$.L.str, %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	printf
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movl	-40(%rbp), %esi         # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	4(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	printf
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movl	-52(%rbp), %esi         # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	8(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	printf
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movl	-68(%rbp), %esi         # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	12(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	printf
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movl	-84(%rbp), %esi         # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	16(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	printf
	movq	-112(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-100(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	20(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	printf
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-116(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	24(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	printf
	movq	-144(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-132(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	28(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	printf
	movq	-160(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-148(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	32(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	printf
	movq	-176(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-164(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	36(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	printf
	movq	-192(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-180(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	40(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	printf
	movq	-208(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-196(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	44(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	printf
	movq	-224(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-212(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	48(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -228(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	printf
	movq	-240(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-228(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	52(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	printf
	movq	-256(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-244(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	56(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -260(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	printf
	movq	-272(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-260(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	60(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -276(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	printf
	movq	-288(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-276(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	64(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -292(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	printf
	movq	-304(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-292(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	68(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -308(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	printf
	movq	-320(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-308(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	72(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -324(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	printf
	movq	-336(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-324(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	76(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -340(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -344(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	printf
	movq	-352(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-340(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	80(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -356(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	printf
	movq	-368(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-356(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	84(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -372(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	printf
	movq	-384(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-372(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	88(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -388(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -392(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	printf
	movq	-400(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-388(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	92(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -404(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -408(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	printf
	movq	-416(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-404(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	96(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -420(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	printf
	movq	-432(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-420(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	100(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -436(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -440(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	callq	printf
	movq	-448(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-436(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	104(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -452(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -456(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	printf
	movq	-464(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-452(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	108(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -468(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -472(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	callq	printf
	movq	-480(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-468(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	112(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -484(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -488(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	printf
	movq	-496(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-484(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	116(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -500(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -504(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	callq	printf
	movq	-512(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-500(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	120(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -516(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -520(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	callq	printf
	movq	-528(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-516(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	124(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -532(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -536(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	printf
	movq	-544(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-532(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	128(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -548(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -552(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	callq	printf
	movq	-560(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-548(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	132(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -564(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -568(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	callq	printf
	movq	-576(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-564(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	136(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -580(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -584(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	printf
	movq	-592(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-580(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	140(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -596(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -600(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	callq	printf
	movq	-608(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-596(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	144(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -612(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -616(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	callq	printf
	movq	-624(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-612(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	148(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -628(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -632(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	callq	printf
	movq	-640(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-628(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	152(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -644(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -648(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	callq	printf
	movq	-656(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-644(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	156(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -660(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -664(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	callq	printf
	movq	-672(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-660(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	160(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -676(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -680(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	callq	printf
	movq	-688(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-676(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	164(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -692(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -696(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	callq	printf
	movq	-704(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-692(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	168(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -708(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -712(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	callq	printf
	movq	-720(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-708(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	172(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -724(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -728(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	callq	printf
	movq	-736(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-724(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	176(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -740(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -744(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	callq	printf
	movq	-752(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-740(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	180(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -756(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -760(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	callq	printf
	movq	-768(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-756(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	184(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -772(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -776(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	callq	printf
	movq	-784(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-772(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	188(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -788(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -792(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	callq	printf
	movq	-800(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-788(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	192(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -804(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -808(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	callq	printf
	movq	-816(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-804(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	196(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -820(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -824(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	callq	printf
	movq	-832(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-820(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	200(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -836(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -840(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	callq	printf
	movq	-848(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-836(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	204(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -852(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -856(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	callq	printf
	movq	-864(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-852(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	208(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -868(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -872(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	callq	printf
	movq	-880(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-868(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	212(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -884(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -888(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	callq	printf
	movq	-896(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-884(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	216(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -900(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -904(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	callq	printf
	movq	-912(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-900(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	220(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -916(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -920(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	callq	printf
	movq	-928(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-916(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	224(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -932(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -936(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	callq	printf
	movq	-944(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-932(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	228(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -948(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -952(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	callq	printf
	movq	-960(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-948(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	232(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -964(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -968(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	callq	printf
	movq	-976(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-964(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	236(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -980(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -984(%rbp)        # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	callq	printf
	movq	-992(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	-980(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	240(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -996(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -1000(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	callq	printf
	movq	-1008(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movl	-996(%rbp), %esi        # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	244(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -1012(%rbp)       # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -1016(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	callq	printf
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movl	-1012(%rbp), %esi       # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	248(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -1028(%rbp)       # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -1032(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	callq	printf
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movl	-1028(%rbp), %esi       # 4-byte Reload
	subl	$1, %esi
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	252(%rdx,%rdi,4), %r8d
	movabsq	$.L.str, %rdi
	movl	%esi, -1044(%rbp)       # 4-byte Spill
	movl	%r8d, %esi
	movl	%eax, -1048(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	callq	printf
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movl	-1044(%rbp), %esi       # 4-byte Reload
	subl	$1, %esi
	cmpl	$0, %esi
	movq	%rcx, %rdx
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	jne	.LBB0_3
# %bb.4:                                # %for.end.loopexit.unr-lcssa.loopexit
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB0_5:                                # %for.end.loopexit.unr-lcssa
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	-16(%rbp), %ecx         # 4-byte Reload
	cmpl	$0, %ecx
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	je	.LBB0_9
# %bb.6:                                # %for.body.epil.preheader
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movl	-16(%rbp), %ecx         # 4-byte Reload
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	movl	%ecx, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	movq	-8(%rbp), %rdx          # 8-byte Reload
	movl	(%rdx,%rcx,4), %esi
	movabsq	$.L.str, %rdi
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	movb	$0, %al
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	callq	printf
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	addq	$1, %rcx
	movl	-1096(%rbp), %esi       # 4-byte Reload
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	movl	%esi, -1092(%rbp)       # 4-byte Spill
	jne	.LBB0_7
# %bb.8:                                # %for.end.loopexit.epilog-lcssa
	jmp	.LBB0_9
.LBB0_9:                                # %for.end.loopexit
	jmp	.LBB0_10
.LBB0_10:                               # %for.end
	addq	$1120, %rsp             # imm = 0x460
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
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	4(%rcx,%rax,4), %edx
	movl	%edx, 4(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	4(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	8(%rcx,%rax,4), %edx
	movl	%edx, 8(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	8(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	12(%rcx,%rax,4), %edx
	movl	%edx, 12(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	12(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	16(%rcx,%rax,4), %edx
	movl	%edx, 16(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	16(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	20(%rcx,%rax,4), %edx
	movl	%edx, 20(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	20(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	24(%rcx,%rax,4), %edx
	movl	%edx, 24(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	24(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	28(%rcx,%rax,4), %edx
	movl	%edx, 28(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	28(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	32(%rcx,%rax,4), %edx
	movl	%edx, 32(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	32(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	36(%rcx,%rax,4), %edx
	movl	%edx, 36(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	36(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	40(%rcx,%rax,4), %edx
	movl	%edx, 40(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	40(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	44(%rcx,%rax,4), %edx
	movl	%edx, 44(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	44(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	48(%rcx,%rax,4), %edx
	movl	%edx, 48(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	48(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	52(%rcx,%rax,4), %edx
	movl	%edx, 52(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	52(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	56(%rcx,%rax,4), %edx
	movl	%edx, 56(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movl	56(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	addl	60(%rcx,%rax,4), %edx
	movl	%edx, 60(%rcx,%rax,4)
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	cmpq	$128, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jne	.LBB1_1
# %bb.3:                                # %for.end11
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
	addq	$1, %rsi
	movl	24(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 28(%rcx,%rax,4)
	addq	$1, %rsi
	movl	28(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 32(%rcx,%rax,4)
	addq	$1, %rsi
	movl	32(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 36(%rcx,%rax,4)
	addq	$1, %rsi
	movl	36(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 40(%rcx,%rax,4)
	addq	$1, %rsi
	movl	40(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 44(%rcx,%rax,4)
	addq	$1, %rsi
	movl	44(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 48(%rcx,%rax,4)
	addq	$1, %rsi
	movl	48(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 52(%rcx,%rax,4)
	addq	$1, %rsi
	movl	52(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 56(%rcx,%rax,4)
	addq	$1, %rsi
	movl	56(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 60(%rcx,%rax,4)
	addq	$1, %rsi
	movl	60(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 64(%rcx,%rax,4)
	addq	$1, %rsi
	movl	64(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 68(%rcx,%rax,4)
	addq	$1, %rsi
	movl	68(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 72(%rcx,%rax,4)
	addq	$1, %rsi
	movl	72(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 76(%rcx,%rax,4)
	addq	$1, %rsi
	movl	76(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 80(%rcx,%rax,4)
	addq	$1, %rsi
	movl	80(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 84(%rcx,%rax,4)
	addq	$1, %rsi
	movl	84(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 88(%rcx,%rax,4)
	addq	$1, %rsi
	movl	88(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 92(%rcx,%rax,4)
	addq	$1, %rsi
	movl	92(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 96(%rcx,%rax,4)
	addq	$1, %rsi
	movl	96(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 100(%rcx,%rax,4)
	addq	$1, %rsi
	movl	100(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 104(%rcx,%rax,4)
	addq	$1, %rsi
	movl	104(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 108(%rcx,%rax,4)
	addq	$1, %rsi
	movl	108(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 112(%rcx,%rax,4)
	addq	$1, %rsi
	movl	112(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 116(%rcx,%rax,4)
	addq	$1, %rsi
	movl	116(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 120(%rcx,%rax,4)
	addq	$1, %rsi
	movl	120(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 124(%rcx,%rax,4)
	addq	$1, %rsi
	movl	124(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 128(%rcx,%rax,4)
	addq	$1, %rsi
	movl	128(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 132(%rcx,%rax,4)
	addq	$1, %rsi
	movl	132(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 136(%rcx,%rax,4)
	addq	$1, %rsi
	movl	136(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 140(%rcx,%rax,4)
	addq	$1, %rsi
	movl	140(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 144(%rcx,%rax,4)
	addq	$1, %rsi
	movl	144(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 148(%rcx,%rax,4)
	addq	$1, %rsi
	movl	148(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 152(%rcx,%rax,4)
	addq	$1, %rsi
	movl	152(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 156(%rcx,%rax,4)
	addq	$1, %rsi
	movl	156(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 160(%rcx,%rax,4)
	addq	$1, %rsi
	movl	160(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 164(%rcx,%rax,4)
	addq	$1, %rsi
	movl	164(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 168(%rcx,%rax,4)
	addq	$1, %rsi
	movl	168(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 172(%rcx,%rax,4)
	addq	$1, %rsi
	movl	172(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 176(%rcx,%rax,4)
	addq	$1, %rsi
	movl	176(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 180(%rcx,%rax,4)
	addq	$1, %rsi
	movl	180(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 184(%rcx,%rax,4)
	addq	$1, %rsi
	movl	184(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 188(%rcx,%rax,4)
	addq	$1, %rsi
	movl	188(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 192(%rcx,%rax,4)
	addq	$1, %rsi
	movl	192(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 196(%rcx,%rax,4)
	addq	$1, %rsi
	movl	196(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 200(%rcx,%rax,4)
	addq	$1, %rsi
	movl	200(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 204(%rcx,%rax,4)
	addq	$1, %rsi
	movl	204(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 208(%rcx,%rax,4)
	addq	$1, %rsi
	movl	208(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 212(%rcx,%rax,4)
	addq	$1, %rsi
	movl	212(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 216(%rcx,%rax,4)
	addq	$1, %rsi
	movl	216(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 220(%rcx,%rax,4)
	addq	$1, %rsi
	movl	220(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 224(%rcx,%rax,4)
	addq	$1, %rsi
	movl	224(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 228(%rcx,%rax,4)
	addq	$1, %rsi
	movl	228(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 232(%rcx,%rax,4)
	addq	$1, %rsi
	movl	232(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 236(%rcx,%rax,4)
	addq	$1, %rsi
	movl	236(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 240(%rcx,%rax,4)
	addq	$1, %rsi
	movl	240(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 244(%rcx,%rax,4)
	addq	$1, %rsi
	movl	244(%rcx,%rax,4), %edx
	movq	%rsi, %r8
	shlq	$4, %r8
	addl	-4(%rdi,%r8,4), %edx
	movl	%edx, 248(%rcx,%rax,4)
	movq	%rsi, %rax
	addq	$1, %rax
	cmpq	$128, %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jne	.LBB2_3
# %bb.2:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_3:                                # %for.body.63
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
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, (%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 4(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 8(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 12(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 16(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 20(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 24(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 28(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	32(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 32(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	36(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 36(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	40(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 40(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	44(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 44(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	48(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 48(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	52(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 52(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	56(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 56(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	60(%rcx,%rsi,4), %edx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 60(%rcx,%rsi,4)
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	cmpq	$128, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	jne	.LBB3_1
# %bb.3:                                # %for.end13
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	last_step_scan, .Lfunc_end3-last_step_scan
	.cfi_endproc
                                        # -- End function
	.globl	init                    # -- Begin function init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
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
	jmp	.LBB4_1
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	$0, (%rcx,%rax,4)
	movq	%rax, %rdx
	addq	$1, %rdx
	movl	$0, 4(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 8(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 12(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 16(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 20(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 24(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 28(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 32(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 36(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 40(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 44(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 48(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 52(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 56(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 60(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 64(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 68(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 72(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 76(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 80(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 84(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 88(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 92(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 96(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 100(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 104(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 108(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 112(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 116(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 120(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 124(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 128(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 132(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 136(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 140(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 144(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 148(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 152(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 156(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 160(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 164(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 168(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 172(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 176(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 180(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 184(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 188(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 192(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 196(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 200(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 204(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 208(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 212(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 216(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 220(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 224(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 228(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 232(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 236(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 240(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 244(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 248(%rcx,%rax,4)
	addq	$1, %rdx
	movl	$0, 252(%rcx,%rax,4)
	addq	$1, %rdx
	cmpq	$2048, %rdx             # imm = 0x800
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	jne	.LBB4_1
# %bb.2:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	init, .Lfunc_end4-init
	.cfi_endproc
                                        # -- End function
	.globl	hist                    # -- Begin function hist
	.p2align	4, 0x90
	.type	hist,@function
hist:                                   # @hist
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
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB5_1
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$2, %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movl	-20(%rbp), %esi         # 4-byte Reload
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	shll	$9, %edx
	andl	$1536, %edx             # imm = 0x600
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%eax, %edi
	addl	%edi, %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %r8d
	movq	-8(%rbp), %r9           # 8-byte Reload
	movl	(%r9,%r8,4), %edx
	addl	$1, %edx
	movl	%edx, (%r9,%r8,4)
	shlq	$2, %rax
	movq	-16(%rbp), %r8          # 8-byte Reload
	movl	4(%r8,%rax,4), %edx
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	shll	$9, %edx
	andl	$1536, %edx             # imm = 0x600
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%eax, %edi
	addl	%edi, %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %r10d
	movl	(%r9,%r10,4), %edx
	addl	$1, %edx
	movl	%edx, (%r9,%r10,4)
	shlq	$2, %rax
	movl	8(%r8,%rax,4), %edx
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	shll	$9, %edx
	andl	$1536, %edx             # imm = 0x600
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%eax, %edi
	addl	%edi, %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %r10d
	movl	(%r9,%r10,4), %edx
	addl	$1, %edx
	movl	%edx, (%r9,%r10,4)
	shlq	$2, %rax
	movl	12(%r8,%rax,4), %edx
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	shll	$9, %edx
	andl	$1536, %edx             # imm = 0x600
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%eax, %edi
	addl	%edi, %edx
	addl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %r10d
	movl	(%r9,%r10,4), %edx
	addl	$1, %edx
	movl	%edx, (%r9,%r10,4)
	addq	$1, %rax
	cmpq	$512, %rax              # imm = 0x200
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB5_1
# %bb.3:                                # %for.end12
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	hist, .Lfunc_end5-hist
	.cfi_endproc
                                        # -- End function
	.globl	update                  # -- Begin function update
	.p2align	4, 0x90
	.type	update,@function
update:                                 # @update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	jmp	.LBB6_1
.LBB6_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	shlq	$2, %rax
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %edi
	sarl	%cl, %edi
	shll	$9, %edi
	andl	$1536, %edi             # imm = 0x600
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	addl	%r8d, %edi
	movl	%edi, %edi
	movl	%edi, %r9d
	movq	-24(%rbp), %r10         # 8-byte Reload
	movl	(%r10,%r9,4), %edi
	movslq	%edi, %r9
	movq	-16(%rbp), %r11         # 8-byte Reload
	movl	%edx, (%r11,%r9,4)
	addl	$1, %edi
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	shll	$9, %edx
	andl	$1536, %edx             # imm = 0x600
	movl	%eax, %r8d
	addl	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %r9d
	movl	%edi, (%r10,%r9,4)
	shlq	$2, %rax
	movq	-32(%rbp), %r9          # 8-byte Reload
	movl	4(%r9,%rax,4), %edx
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %edi
	sarl	%cl, %edi
	shll	$9, %edi
	andl	$1536, %edi             # imm = 0x600
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	addl	%r8d, %edi
	movl	%edi, %edi
	movl	%edi, %ebx
	movl	(%r10,%rbx,4), %edi
	movslq	%edi, %rbx
	movl	%edx, (%r11,%rbx,4)
	addl	$1, %edi
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	shll	$9, %edx
	andl	$1536, %edx             # imm = 0x600
	movl	%eax, %r8d
	addl	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %ebx
	movl	%edi, (%r10,%rbx,4)
	shlq	$2, %rax
	movl	8(%r9,%rax,4), %edx
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %edi
	sarl	%cl, %edi
	shll	$9, %edi
	andl	$1536, %edi             # imm = 0x600
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	addl	%r8d, %edi
	movl	%edi, %edi
	movl	%edi, %ebx
	movl	(%r10,%rbx,4), %edi
	movslq	%edi, %rbx
	movl	%edx, (%r11,%rbx,4)
	addl	$1, %edi
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	shll	$9, %edx
	andl	$1536, %edx             # imm = 0x600
	movl	%eax, %r8d
	addl	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %ebx
	movl	%edi, (%r10,%rbx,4)
	shlq	$2, %rax
	movl	12(%r9,%rax,4), %edx
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	movl	%edx, %edi
	sarl	%cl, %edi
	shll	$9, %edi
	andl	$1536, %edi             # imm = 0x600
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	addl	%r8d, %edi
	movl	%edi, %edi
	movl	%edi, %ebx
	movl	(%r10,%rbx,4), %edi
	movslq	%edi, %rbx
	movl	%edx, (%r11,%rbx,4)
	addl	$1, %edi
	movl	%esi, %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	shll	$9, %edx
	andl	$1536, %edx             # imm = 0x600
	movl	%eax, %r8d
	addl	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %ebx
	movl	%edi, (%r10,%rbx,4)
	addq	$1, %rax
	cmpq	$512, %rax              # imm = 0x200
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB6_1
# %bb.3:                                # %for.end19
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	update, .Lfunc_end6-update
	.cfi_endproc
                                        # -- End function
	.globl	ss_sort                 # -- Begin function ss_sort
	.p2align	4, 0x90
	.type	ss_sort,@function
ss_sort:                                # @ss_sort
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	init
# %bb.1:                                # %if.then
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-8(%rbp), %rsi          # 8-byte Reload
	callq	hist
	jmp	.LBB7_3
# %bb.2:                                # %if.else
	.cfi_def_cfa %rsp, 8
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-16(%rbp), %rsi         # 8-byte Reload
	callq	hist
.LBB7_3:                                # %if.end
	.cfi_def_cfa %rbp, 16
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	local_scan
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	sum_scan
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	last_step_scan
# %bb.4:                                # %if.then3
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-8(%rbp), %rdx          # 8-byte Reload
	callq	update
	jmp	.LBB7_6
# %bb.5:                                # %if.else4
	.cfi_def_cfa %rsp, 8
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-16(%rbp), %rdx         # 8-byte Reload
	callq	update
.LBB7_6:                                # %for.inc
	.cfi_def_cfa %rbp, 16
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	ss_sort, .Lfunc_end7-ss_sort
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI8_0:
	.quad	4643176031446892544     # double 255
.LCPI8_1:
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
	subq	$560, %rsp              # imm = 0x230
	movl	$8192, %edi             # imm = 0x2000
	callq	malloc
	movl	$8192, %edi             # imm = 0x2000
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	malloc
	movl	$8192, %edi             # imm = 0x2000
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	malloc
	movl	$512, %edi              # imm = 0x200
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	malloc
	movl	$8650341, %edi          # imm = 0x83FE65
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	srand
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB8_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, (%rcx,%rdx,4)
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 4(%rcx,%rdx,4)
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 8(%rcx,%rdx,4)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 12(%rcx,%rdx,4)
	movq	-72(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 16(%rcx,%rdx,4)
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 20(%rcx,%rdx,4)
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 24(%rcx,%rdx,4)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 28(%rcx,%rdx,4)
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 32(%rcx,%rdx,4)
	movq	-112(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 36(%rcx,%rdx,4)
	movq	-120(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 40(%rcx,%rdx,4)
	movq	-128(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 44(%rcx,%rdx,4)
	movq	-136(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 48(%rcx,%rdx,4)
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 52(%rcx,%rdx,4)
	movq	-152(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 56(%rcx,%rdx,4)
	movq	-160(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 60(%rcx,%rdx,4)
	movq	-168(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 64(%rcx,%rdx,4)
	movq	-176(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 68(%rcx,%rdx,4)
	movq	-184(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 72(%rcx,%rdx,4)
	movq	-192(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 76(%rcx,%rdx,4)
	movq	-200(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 80(%rcx,%rdx,4)
	movq	-208(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 84(%rcx,%rdx,4)
	movq	-216(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 88(%rcx,%rdx,4)
	movq	-224(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 92(%rcx,%rdx,4)
	movq	-232(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 96(%rcx,%rdx,4)
	movq	-240(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 100(%rcx,%rdx,4)
	movq	-248(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 104(%rcx,%rdx,4)
	movq	-256(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 108(%rcx,%rdx,4)
	movq	-264(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 112(%rcx,%rdx,4)
	movq	-272(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 116(%rcx,%rdx,4)
	movq	-280(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 120(%rcx,%rdx,4)
	movq	-288(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 124(%rcx,%rdx,4)
	movq	-296(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 128(%rcx,%rdx,4)
	movq	-304(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 132(%rcx,%rdx,4)
	movq	-312(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 136(%rcx,%rdx,4)
	movq	-320(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 140(%rcx,%rdx,4)
	movq	-328(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 144(%rcx,%rdx,4)
	movq	-336(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 148(%rcx,%rdx,4)
	movq	-344(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 152(%rcx,%rdx,4)
	movq	-352(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 156(%rcx,%rdx,4)
	movq	-360(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 160(%rcx,%rdx,4)
	movq	-368(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 164(%rcx,%rdx,4)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 168(%rcx,%rdx,4)
	movq	-384(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 172(%rcx,%rdx,4)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 176(%rcx,%rdx,4)
	movq	-400(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 180(%rcx,%rdx,4)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 184(%rcx,%rdx,4)
	movq	-416(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 188(%rcx,%rdx,4)
	movq	-424(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 192(%rcx,%rdx,4)
	movq	-432(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 196(%rcx,%rdx,4)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 200(%rcx,%rdx,4)
	movq	-448(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 204(%rcx,%rdx,4)
	movq	-456(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -464(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 208(%rcx,%rdx,4)
	movq	-464(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 212(%rcx,%rdx,4)
	movq	-472(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 216(%rcx,%rdx,4)
	movq	-480(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 220(%rcx,%rdx,4)
	movq	-488(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 224(%rcx,%rdx,4)
	movq	-496(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 228(%rcx,%rdx,4)
	movq	-504(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 232(%rcx,%rdx,4)
	movq	-512(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 236(%rcx,%rdx,4)
	movq	-520(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 240(%rcx,%rdx,4)
	movq	-528(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 244(%rcx,%rdx,4)
	movq	-536(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 248(%rcx,%rdx,4)
	movq	-544(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	callq	rand
	movsd	.LCPI8_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sd	%eax, %xmm2
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 252(%rcx,%rdx,4)
	movq	-552(%rbp), %rsi        # 8-byte Reload
	addq	$1, %rsi
	cmpq	$2048, %rsi             # imm = 0x800
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	jne	.LBB8_1
# %bb.2:                                # %for.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	callq	ss_sort
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	$1, %esi
	callq	print
	xorl	%eax, %eax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\t"
	.size	.L.str, 4

	.ident	"clang version 10.0.1 "
	.section	".note.GNU-stack","",@progbits
