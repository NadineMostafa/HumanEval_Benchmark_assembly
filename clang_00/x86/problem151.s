	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$1, -20(%rbp)
	cmpl	$2, -8(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	$0, -20(%rbp)
.LBB0_2:
	movl	$2, -24(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	imull	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-8(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	cmpl	$0, %edx
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -20(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_8:
	cmpl	$0, -20(%rbp)
	je	.LBB0_10
# %bb.9:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
