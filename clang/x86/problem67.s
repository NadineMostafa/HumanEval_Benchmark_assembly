	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movb	(%rdi), %dl
	testb	%dl, %dl
	je	.LBB0_1
# %bb.3:
	addq	$1, %rdi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	leal	-65(%rdx), %esi
	cmpb	$26, %sil
	movzbl	%dl, %edx
	cmovael	%ecx, %edx
	movzbl	%dl, %edx
	addl	%edx, %eax
	movzbl	(%rdi), %edx
	addq	$1, %rdi
	testb	%dl, %dl
	jne	.LBB0_4
# %bb.2:
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
