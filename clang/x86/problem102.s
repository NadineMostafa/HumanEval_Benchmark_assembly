	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movl	$-1, %eax
	cmpl	%edi, %esi
	jl	.LBB0_4
# %bb.1:
	movl	%esi, %edx
	shrl	$31, %edx
	addl	%esi, %edx
	andl	$-2, %edx
	movl	%esi, %ecx
	subl	%edx, %ecx
	cmpl	%edi, %esi
	jne	.LBB0_3
# %bb.2:
	cmpl	$1, %ecx
	jne	.LBB0_3
.LBB0_4:
	retq
.LBB0_3:
	xorl	%eax, %eax
	cmpl	$1, %ecx
	sete	%al
	subl	%eax, %esi
	movl	%esi, %eax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
