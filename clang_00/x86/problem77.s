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
	movl	$1, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-8(%rbp), %ecx
	movb	%al, -21(%rbp)                  # 1-byte Spill
	jg	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$100, -20(%rbp)
	setl	%al
	movb	%al, -21(%rbp)                  # 1-byte Spill
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-21(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB0_6
# %bb.5:
	movl	$1, -4(%rbp)
	jmp	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movl	$0, -4(%rbp)
.LBB0_8:
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
