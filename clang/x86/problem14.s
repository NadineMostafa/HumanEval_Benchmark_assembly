	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	testl	%esi, %esi
	je	.LBB0_4
# %bb.1:
	movl	%esi, %edx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%ecx, %eax
	testl	%edx, %edx
	jne	.LBB0_2
# %bb.3:
	movl	%ecx, %eax
.LBB0_4:
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
