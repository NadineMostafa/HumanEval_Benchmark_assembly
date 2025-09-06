	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	negl	%eax
	cmovsl	%edi, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	imull	%ecx, %edx
	imull	%ecx, %edx
	addl	$1, %ecx
	cmpl	%eax, %edx
	jb	.LBB0_1
# %bb.2:
	setbe	%al
	movzbl	%al, %eax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
