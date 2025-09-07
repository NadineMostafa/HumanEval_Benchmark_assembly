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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-144(%rbp), %rdi
	xorl	%esi, %esi
	movl	$104, %edx
	callq	memset@PLT
	movl	$0, -148(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -164(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-160(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$32, %eax
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-160(%rbp), %rax
	movsbl	(%rax), %eax
	subl	$97, %eax
	movl	%eax, -168(%rbp)
	movslq	-168(%rbp), %rax
	movl	-144(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -144(%rbp,%rax,4)
	movslq	-168(%rbp), %rax
	movl	-144(%rbp,%rax,4), %eax
	cmpl	-148(%rbp), %eax
	jle	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-168(%rbp), %rax
	movl	-144(%rbp,%rax,4), %eax
	movl	%eax, -148(%rbp)
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movl	$0, -172(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	cmpl	$26, -172(%rbp)
	jge	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movslq	-172(%rbp), %rax
	movl	-144(%rbp,%rax,4), %edx
	movq	-16(%rbp), %rax
	movslq	-172(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movslq	-172(%rbp), %rax
	movl	-144(%rbp,%rax,4), %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-172(%rbp), %eax
	addl	$97, %eax
	movb	%al, %dl
	movq	-32(%rbp), %rax
	movl	-164(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -164(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB0_8
.LBB0_13:
	movl	-148(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	addq	$176, %rsp
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
