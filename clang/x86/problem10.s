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
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	testl	%esi, %esi
	jle	.LBB0_13
# %bb.1:
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	%esi, %r14d
	leaq	(,%r14,4), %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB0_13
# %bb.2:
	movl	(%rbx), %edx
	movl	%edx, (%rax)
	cmpl	$1, %ebp
	je	.LBB0_18
# %bb.3:
	leaq	-1(%r14), %rdi
	addq	$-2, %r14
	movl	%edi, %r8d
	andl	$3, %r8d
	movl	$1, %esi
	cmpq	$3, %r14
	jb	.LBB0_15
# %bb.4:
	andq	$-4, %rdi
	xorl	%esi, %esi
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	movl	%edx, 16(%rax,%rsi,4)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	je	.LBB0_14
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%rsi,4), %ecx
	cmpl	%edx, %ecx
	cmovgl	%ecx, %edx
	movl	%edx, 4(%rax,%rsi,4)
	movl	8(%rbx,%rsi,4), %ebp
	cmpl	%edx, %ebp
	jg	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movl	%edx, %ebp
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	%ebp, 8(%rax,%rsi,4)
	movl	12(%rbx,%rsi,4), %ecx
	cmpl	%ebp, %ecx
	jg	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	movl	%ebp, %ecx
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	movl	%ecx, 12(%rax,%rsi,4)
	movl	16(%rbx,%rsi,4), %edx
	cmpl	%ecx, %edx
	jg	.LBB0_5
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	movl	%ecx, %edx
	jmp	.LBB0_5
.LBB0_13:
	xorl	%eax, %eax
.LBB0_18:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_14:
	.cfi_def_cfa_offset 32
	addq	$1, %rsi
.LBB0_15:
	testq	%r8, %r8
	je	.LBB0_18
# %bb.16:
	leaq	(%rax,%rsi,4), %rdi
	leaq	(%rbx,%rsi,4), %rsi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rbp,4), %ecx
	cmpl	%edx, %ecx
	cmovgl	%ecx, %edx
	movl	%edx, (%rdi,%rbp,4)
	addq	$1, %rbp
	cmpq	%rbp, %r8
	jne	.LBB0_17
	jmp	.LBB0_18
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
