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
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	malloc@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-44(%rbp), %rax
	addq	%rax, %rsi
	movl	-32(%rbp), %eax
	subl	-44(%rbp), %eax
	movslq	%eax, %rdx
	callq	strncpy@PLT
	movq	-40(%rbp), %rdi
	movslq	-32(%rbp), %rax
	addq	%rax, %rdi
	movslq	-44(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movslq	-44(%rbp), %rdx
	callq	strncpy@PLT
	movq	-40(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	strstr@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movb	$1, -1(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movb	$0, -1(%rbp)
.LBB0_7:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
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
	.addrsig_sym strncpy
	.addrsig_sym strstr
	.addrsig_sym free
