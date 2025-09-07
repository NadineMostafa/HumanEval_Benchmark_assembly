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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$1, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	imull	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
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
