	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	cmpl	%edx, %edi
	cmovgl	%edi, %edx
	movl	%ecx, %edi
	cmpl	%ecx, %esi
	cmovll	%esi, %edi
	subl	%edx, %edi
	leaq	.L.str(%rip), %rcx
	cmpl	$2, %edi
	jge	.LBB0_1
.LBB0_7:
	movq	%rcx, %rax
	retq
.LBB0_1:
	leaq	.L.str.1(%rip), %r8
	cmpl	$4, %edi
	jae	.LBB0_5
# %bb.2:
	movq	%r8, %rax
	retq
.LBB0_5:
	movl	$2, %esi
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_6 Depth=1
	addl	$1, %esi
	movl	%esi, %eax
	imull	%esi, %eax
	cmpl	%edi, %eax
	jle	.LBB0_6
# %bb.4:
	movq	%r8, %rax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"NO"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"YES"
	.size	.L.str.1, 4

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
