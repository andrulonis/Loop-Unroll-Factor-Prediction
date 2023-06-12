	.text
	.file	"pp_scan_manual.c"
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
	cmpq	$524288, %rax           # imm = 0x80000
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
	cmpq	$524288, %rax           # imm = 0x80000
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
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB3_1
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
# %bb.2:                                # %for.body3
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movq	-8(%rbp), %rcx          # 8-byte Reload
	movl	(%rcx,%rax,4), %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%edx, (%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	4(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 4(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	8(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 8(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	12(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 12(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	16(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 16(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	20(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 20(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	24(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 24(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	28(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 28(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	32(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 32(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	36(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 36(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	40(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 40(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	44(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 44(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	48(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 48(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	52(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 52(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	56(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 56(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	shlq	$4, %rsi
	movl	60(%rcx,%rsi,4), %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addl	(%rax,%rsi,4), %edx
	shlq	$4, %rsi
	movl	%edx, 60(%rdi,%rsi,4)
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	cmpq	$524288, %rsi           # imm = 0x80000
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	jne	.LBB3_1
# %bb.3:                                # %for.end13
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
	subq	$2097696, %rsp          # imm = 0x200220
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
	movq	%rdx, -2097192(%rbp)    # 8-byte Spill
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
	movl	%eax, 4(%rcx,%rdx,4)
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
	movl	%eax, 4(%rcx,%rdx,4)
	movq	-2097192(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097200(%rbp)    # 8-byte Spill
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
	movl	%eax, 8(%rcx,%rdx,4)
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
	movl	%eax, 8(%rcx,%rdx,4)
	movq	-2097200(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097208(%rbp)    # 8-byte Spill
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
	movl	%eax, 12(%rcx,%rdx,4)
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
	movl	%eax, 12(%rcx,%rdx,4)
	movq	-2097208(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097216(%rbp)    # 8-byte Spill
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
	movl	%eax, 16(%rcx,%rdx,4)
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
	movl	%eax, 16(%rcx,%rdx,4)
	movq	-2097216(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097224(%rbp)    # 8-byte Spill
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
	movl	%eax, 20(%rcx,%rdx,4)
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
	movl	%eax, 20(%rcx,%rdx,4)
	movq	-2097224(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097232(%rbp)    # 8-byte Spill
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
	movl	%eax, 24(%rcx,%rdx,4)
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
	movl	%eax, 24(%rcx,%rdx,4)
	movq	-2097232(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097240(%rbp)    # 8-byte Spill
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
	movl	%eax, 28(%rcx,%rdx,4)
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
	movl	%eax, 28(%rcx,%rdx,4)
	movq	-2097240(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097248(%rbp)    # 8-byte Spill
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
	movl	%eax, 32(%rcx,%rdx,4)
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
	movl	%eax, 32(%rcx,%rdx,4)
	movq	-2097248(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097256(%rbp)    # 8-byte Spill
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
	movl	%eax, 36(%rcx,%rdx,4)
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
	movl	%eax, 36(%rcx,%rdx,4)
	movq	-2097256(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097264(%rbp)    # 8-byte Spill
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
	movl	%eax, 40(%rcx,%rdx,4)
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
	movl	%eax, 40(%rcx,%rdx,4)
	movq	-2097264(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097272(%rbp)    # 8-byte Spill
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
	movl	%eax, 44(%rcx,%rdx,4)
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
	movl	%eax, 44(%rcx,%rdx,4)
	movq	-2097272(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097280(%rbp)    # 8-byte Spill
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
	movl	%eax, 48(%rcx,%rdx,4)
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
	movl	%eax, 48(%rcx,%rdx,4)
	movq	-2097280(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097288(%rbp)    # 8-byte Spill
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
	movl	%eax, 52(%rcx,%rdx,4)
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
	movl	%eax, 52(%rcx,%rdx,4)
	movq	-2097288(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097296(%rbp)    # 8-byte Spill
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
	movl	%eax, 56(%rcx,%rdx,4)
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
	movl	%eax, 56(%rcx,%rdx,4)
	movq	-2097296(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097304(%rbp)    # 8-byte Spill
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
	movl	%eax, 60(%rcx,%rdx,4)
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
	movl	%eax, 60(%rcx,%rdx,4)
	movq	-2097304(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097312(%rbp)    # 8-byte Spill
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
	movl	%eax, 64(%rcx,%rdx,4)
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
	movl	%eax, 64(%rcx,%rdx,4)
	movq	-2097312(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097320(%rbp)    # 8-byte Spill
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
	movl	%eax, 68(%rcx,%rdx,4)
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
	movl	%eax, 68(%rcx,%rdx,4)
	movq	-2097320(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097328(%rbp)    # 8-byte Spill
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
	movl	%eax, 72(%rcx,%rdx,4)
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
	movl	%eax, 72(%rcx,%rdx,4)
	movq	-2097328(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097336(%rbp)    # 8-byte Spill
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
	movl	%eax, 76(%rcx,%rdx,4)
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
	movl	%eax, 76(%rcx,%rdx,4)
	movq	-2097336(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097344(%rbp)    # 8-byte Spill
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
	movl	%eax, 80(%rcx,%rdx,4)
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
	movl	%eax, 80(%rcx,%rdx,4)
	movq	-2097344(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097352(%rbp)    # 8-byte Spill
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
	movl	%eax, 84(%rcx,%rdx,4)
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
	movl	%eax, 84(%rcx,%rdx,4)
	movq	-2097352(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097360(%rbp)    # 8-byte Spill
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
	movl	%eax, 88(%rcx,%rdx,4)
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
	movl	%eax, 88(%rcx,%rdx,4)
	movq	-2097360(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097368(%rbp)    # 8-byte Spill
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
	movl	%eax, 92(%rcx,%rdx,4)
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
	movl	%eax, 92(%rcx,%rdx,4)
	movq	-2097368(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097376(%rbp)    # 8-byte Spill
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
	movl	%eax, 96(%rcx,%rdx,4)
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
	movl	%eax, 96(%rcx,%rdx,4)
	movq	-2097376(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097384(%rbp)    # 8-byte Spill
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
	movl	%eax, 100(%rcx,%rdx,4)
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
	movl	%eax, 100(%rcx,%rdx,4)
	movq	-2097384(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097392(%rbp)    # 8-byte Spill
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
	movl	%eax, 104(%rcx,%rdx,4)
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
	movl	%eax, 104(%rcx,%rdx,4)
	movq	-2097392(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097400(%rbp)    # 8-byte Spill
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
	movl	%eax, 108(%rcx,%rdx,4)
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
	movl	%eax, 108(%rcx,%rdx,4)
	movq	-2097400(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097408(%rbp)    # 8-byte Spill
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
	movl	%eax, 112(%rcx,%rdx,4)
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
	movl	%eax, 112(%rcx,%rdx,4)
	movq	-2097408(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097416(%rbp)    # 8-byte Spill
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
	movl	%eax, 116(%rcx,%rdx,4)
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
	movl	%eax, 116(%rcx,%rdx,4)
	movq	-2097416(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097424(%rbp)    # 8-byte Spill
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
	movl	%eax, 120(%rcx,%rdx,4)
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
	movl	%eax, 120(%rcx,%rdx,4)
	movq	-2097424(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097432(%rbp)    # 8-byte Spill
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
	movl	%eax, 124(%rcx,%rdx,4)
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
	movl	%eax, 124(%rcx,%rdx,4)
	movq	-2097432(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097440(%rbp)    # 8-byte Spill
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
	movl	%eax, 128(%rcx,%rdx,4)
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
	movl	%eax, 128(%rcx,%rdx,4)
	movq	-2097440(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097448(%rbp)    # 8-byte Spill
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
	movl	%eax, 132(%rcx,%rdx,4)
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
	movl	%eax, 132(%rcx,%rdx,4)
	movq	-2097448(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097456(%rbp)    # 8-byte Spill
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
	movl	%eax, 136(%rcx,%rdx,4)
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
	movl	%eax, 136(%rcx,%rdx,4)
	movq	-2097456(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097464(%rbp)    # 8-byte Spill
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
	movl	%eax, 140(%rcx,%rdx,4)
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
	movl	%eax, 140(%rcx,%rdx,4)
	movq	-2097464(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097472(%rbp)    # 8-byte Spill
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
	movl	%eax, 144(%rcx,%rdx,4)
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
	movl	%eax, 144(%rcx,%rdx,4)
	movq	-2097472(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097480(%rbp)    # 8-byte Spill
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
	movl	%eax, 148(%rcx,%rdx,4)
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
	movl	%eax, 148(%rcx,%rdx,4)
	movq	-2097480(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097488(%rbp)    # 8-byte Spill
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
	movl	%eax, 152(%rcx,%rdx,4)
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
	movl	%eax, 152(%rcx,%rdx,4)
	movq	-2097488(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097496(%rbp)    # 8-byte Spill
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
	movl	%eax, 156(%rcx,%rdx,4)
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
	movl	%eax, 156(%rcx,%rdx,4)
	movq	-2097496(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097504(%rbp)    # 8-byte Spill
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
	movl	%eax, 160(%rcx,%rdx,4)
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
	movl	%eax, 160(%rcx,%rdx,4)
	movq	-2097504(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097512(%rbp)    # 8-byte Spill
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
	movl	%eax, 164(%rcx,%rdx,4)
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
	movl	%eax, 164(%rcx,%rdx,4)
	movq	-2097512(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097520(%rbp)    # 8-byte Spill
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
	movl	%eax, 168(%rcx,%rdx,4)
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
	movl	%eax, 168(%rcx,%rdx,4)
	movq	-2097520(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097528(%rbp)    # 8-byte Spill
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
	movl	%eax, 172(%rcx,%rdx,4)
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
	movl	%eax, 172(%rcx,%rdx,4)
	movq	-2097528(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097536(%rbp)    # 8-byte Spill
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
	movl	%eax, 176(%rcx,%rdx,4)
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
	movl	%eax, 176(%rcx,%rdx,4)
	movq	-2097536(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097544(%rbp)    # 8-byte Spill
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
	movl	%eax, 180(%rcx,%rdx,4)
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
	movl	%eax, 180(%rcx,%rdx,4)
	movq	-2097544(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097552(%rbp)    # 8-byte Spill
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
	movl	%eax, 184(%rcx,%rdx,4)
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
	movl	%eax, 184(%rcx,%rdx,4)
	movq	-2097552(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097560(%rbp)    # 8-byte Spill
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
	movl	%eax, 188(%rcx,%rdx,4)
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
	movl	%eax, 188(%rcx,%rdx,4)
	movq	-2097560(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097568(%rbp)    # 8-byte Spill
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
	movl	%eax, 192(%rcx,%rdx,4)
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
	movl	%eax, 192(%rcx,%rdx,4)
	movq	-2097568(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097576(%rbp)    # 8-byte Spill
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
	movl	%eax, 196(%rcx,%rdx,4)
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
	movl	%eax, 196(%rcx,%rdx,4)
	movq	-2097576(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097584(%rbp)    # 8-byte Spill
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
	movl	%eax, 200(%rcx,%rdx,4)
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
	movl	%eax, 200(%rcx,%rdx,4)
	movq	-2097584(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097592(%rbp)    # 8-byte Spill
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
	movl	%eax, 204(%rcx,%rdx,4)
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
	movl	%eax, 204(%rcx,%rdx,4)
	movq	-2097592(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097600(%rbp)    # 8-byte Spill
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
	movl	%eax, 208(%rcx,%rdx,4)
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
	movl	%eax, 208(%rcx,%rdx,4)
	movq	-2097600(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097608(%rbp)    # 8-byte Spill
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
	movl	%eax, 212(%rcx,%rdx,4)
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
	movl	%eax, 212(%rcx,%rdx,4)
	movq	-2097608(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097616(%rbp)    # 8-byte Spill
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
	movl	%eax, 216(%rcx,%rdx,4)
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
	movl	%eax, 216(%rcx,%rdx,4)
	movq	-2097616(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097624(%rbp)    # 8-byte Spill
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
	movl	%eax, 220(%rcx,%rdx,4)
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
	movl	%eax, 220(%rcx,%rdx,4)
	movq	-2097624(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097632(%rbp)    # 8-byte Spill
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
	movl	%eax, 224(%rcx,%rdx,4)
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
	movl	%eax, 224(%rcx,%rdx,4)
	movq	-2097632(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097640(%rbp)    # 8-byte Spill
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
	movl	%eax, 228(%rcx,%rdx,4)
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
	movl	%eax, 228(%rcx,%rdx,4)
	movq	-2097640(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097648(%rbp)    # 8-byte Spill
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
	movl	%eax, 232(%rcx,%rdx,4)
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
	movl	%eax, 232(%rcx,%rdx,4)
	movq	-2097648(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097656(%rbp)    # 8-byte Spill
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
	movl	%eax, 236(%rcx,%rdx,4)
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
	movl	%eax, 236(%rcx,%rdx,4)
	movq	-2097656(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097664(%rbp)    # 8-byte Spill
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
	movl	%eax, 240(%rcx,%rdx,4)
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
	movl	%eax, 240(%rcx,%rdx,4)
	movq	-2097664(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097672(%rbp)    # 8-byte Spill
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
	movl	%eax, 244(%rcx,%rdx,4)
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
	movl	%eax, 244(%rcx,%rdx,4)
	movq	-2097672(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097680(%rbp)    # 8-byte Spill
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
	movl	%eax, 248(%rcx,%rdx,4)
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
	movl	%eax, 248(%rcx,%rdx,4)
	movq	-2097680(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	movq	%rsi, -2097688(%rbp)    # 8-byte Spill
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
	movl	%eax, 252(%rcx,%rdx,4)
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
	movl	%eax, 252(%rcx,%rdx,4)
	movq	-2097688(%rbp), %rsi    # 8-byte Reload
	addq	$1, %rsi
	cmpq	$8388608, %rsi          # imm = 0x800000
	movq	%rsi, -2097176(%rbp)    # 8-byte Spill
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
	movl	%eax, -2097692(%rbp)    # 4-byte Spill
	callq	pp_scan
	movq	-2097160(%rbp), %rdi    # 8-byte Reload
	movl	$2, %esi
	callq	print
	movl	$10, %edi
	callq	putchar
	xorl	%ecx, %ecx
	movl	%eax, -2097696(%rbp)    # 4-byte Spill
	movl	%ecx, %eax
	addq	$2097696, %rsp          # imm = 0x200220
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
