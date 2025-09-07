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
	cmpl	$2, -8(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_12
.LBB0_2:
	movl	$0, -12(%rbp)
	movl	$2, -16(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movl	-16(%rbp), %eax
	imull	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	cmpl	$0, %edx
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movl	-8(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_5
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_9:
	cmpl	$1, -8(%rbp)
	jle	.LBB0_11
# %bb.10:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB0_11:
	cmpl	$3, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_12:
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
