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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	addq	$2, %rsi
	callq	realloc@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	$0, 1(%rax,%rcx)
	movq	-40(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, %rdi
	addq	$1, %rdi
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-40(%rbp), %rsi
	callq	strcpy@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	addq	$64, %rsp
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
	.addrsig_sym realloc
	.addrsig_sym strcpy
	.addrsig_sym free
