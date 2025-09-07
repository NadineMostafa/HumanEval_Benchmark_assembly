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
	movl	%edi, -12(%rbp)
	movl	$2, -16(%rbp)
	movl	$1, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %ecx
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	.L.str(%rip), %rdx
	movq	%rsi, %rdi
	movb	$0, %al
	callq	snprintf@PLT
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movslq	-16(%rbp), %rdi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_6
# %bb.5:
	movq	$0, -8(%rbp)
	jmp	.LBB0_11
.LBB0_6:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	-32(%rbp), %rax
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
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %d"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"0"
	.size	.L.str.1, 2

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym snprintf
	.addrsig_sym malloc
	.addrsig_sym sprintf
