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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	strlen@PLT
	movq	%rax, %rcx
	movslq	-24(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -24(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_6
# %bb.5:
	movq	$0, -8(%rbp)
	jmp	.LBB0_11
.LBB0_6:
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -44(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	strcat@PLT
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_11:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
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
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym strcat
