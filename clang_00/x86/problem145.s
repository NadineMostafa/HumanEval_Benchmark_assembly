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
	subq	$272, %rsp                      # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$47, %eax
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-44(%rbp), %rax
	movb	%cl, -160(%rbp,%rax)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movslq	-44(%rbp), %rax
	movb	$0, -160(%rbp,%rax)
	leaq	-160(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, -28(%rbp)
	movl	$0, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-48(%rbp), %rax
	movb	%cl, -272(%rbp,%rax)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movslq	-48(%rbp), %rax
	movb	$0, -272(%rbp,%rax)
	leaq	-272(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, -32(%rbp)
	movl	$0, -44(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$47, %eax
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-44(%rbp), %rax
	movb	%cl, -160(%rbp,%rax)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	movslq	-44(%rbp), %rax
	movb	$0, -160(%rbp,%rax)
	leaq	-160(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, -36(%rbp)
	movl	$0, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-48(%rbp), %rax
	movb	%cl, -272(%rbp,%rax)
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_13
.LBB0_16:
	movslq	-48(%rbp), %rax
	movb	$0, -272(%rbp,%rax)
	leaq	-272(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	imull	-40(%rbp), %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_18
# %bb.17:
	movl	$1, -4(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	movl	$0, -4(%rbp)
.LBB0_19:
	movl	-4(%rbp), %eax
	addq	$272, %rsp                      # imm = 0x110
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
	.addrsig_sym atoi
