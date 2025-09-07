	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	-22(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	memset@PLT
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	memset@PLT
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_13
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$2048, %eax                     # imm = 0x800
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -36(%rbp)
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -40(%rbp)
	cltq
	movb	%cl, -22(%rbp,%rax)
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -40(%rbp)
	cltq
	movb	%cl, -32(%rbp,%rax)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -36(%rbp)
	jne	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -40(%rbp)
	jle	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_13:
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	leaq	-22(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, %ecx
	movl	-52(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	leaq	-32(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, %ecx
	movl	-48(%rbp), %eax                 # 4-byte Reload
	subl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __ctype_b_loc
	.addrsig_sym atoi
