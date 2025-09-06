	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	cmpq	$2, %rdi
	jge	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.LBB0_2:
	movb	$1, %al
	cmpq	$4, %rdi
	jb	.LBB0_10
# %bb.3:
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rdi, %rax
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.LBB0_8
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	testq	%rdx, %rdx
	je	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$1, %rcx
	movq	%rcx, %rax
	imulq	%rcx, %rax
	cmpq	%rdi, %rax
	jle	.LBB0_4
.LBB0_9:
	testq	%rdx, %rdx
	setne	%al
.LBB0_10:
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
