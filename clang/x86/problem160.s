	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movl	%edx, %eax
	subl	%esi, %eax
	jge	.LBB0_2
# %bb.1:
	addl	%edi, %edx
	movl	%edx, (%rcx)
	xorl	%eax, %eax
	movl	%eax, 4(%rcx)
	retq
.LBB0_2:
	addl	%edi, %esi
	movl	%esi, (%rcx)
	movl	%eax, 4(%rcx)
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
