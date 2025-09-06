	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	addl	$1, %eax
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%edx, %edx
	cmpb	$62, %cl
	sete	%dl
	addq	$1, %rdi
	subl	%edx, %eax
	js	.LBB0_6
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %ecx
	cmpb	$60, %cl
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	testb	%cl, %cl
	jne	.LBB0_5
# %bb.3:
	testl	%eax, %eax
	sete	%al
                                        # kill: def $al killed $al killed $eax
	retq
.LBB0_6:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
