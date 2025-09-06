	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movl	$1, %ecx
	cmpl	$4, %edi
	jl	.LBB0_4
# %bb.1:
	movl	$2, %esi
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addl	$1, %esi
	movl	%esi, %eax
	imull	%esi, %eax
	cmpl	%edi, %eax
	jle	.LBB0_2
.LBB0_4:
	movl	%ecx, %eax
.LBB0_5:
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
