	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movl	%edx, %r8d
	movl	%esi, %r9d
	xorl	%ecx, %ecx
	cmpl	$2, %edi
	setge	%cl
	cmpl	$4, %edi
	jl	.LBB0_3
# %bb.1:
	movl	$2, %esi
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	cmovel	%edx, %ecx
	addl	$1, %esi
	movl	%esi, %eax
	imull	%esi, %eax
	cmpl	%edi, %eax
	jle	.LBB0_2
.LBB0_3:
	testl	%ecx, %ecx
	cmovel	%r8d, %r9d
	movl	%r9d, %eax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
