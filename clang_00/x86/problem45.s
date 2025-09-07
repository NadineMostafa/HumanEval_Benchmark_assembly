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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	addl	$48, %edx
	movb	%dl, %cl
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	cltq
	movb	%cl, -64(%rbp,%rax)
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movl	$0, -68(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	cltq
	movb	-64(%rbp,%rax), %dl
	movq	-16(%rbp), %rax
	movl	-68(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -68(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_4
.LBB0_6:
	movq	-16(%rbp), %rax
	movslq	-68(%rbp), %rcx
	movb	$0, (%rax,%rcx)
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
