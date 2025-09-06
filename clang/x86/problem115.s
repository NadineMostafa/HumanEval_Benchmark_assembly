	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	cmpl	$2, %esi
	jl	.LBB0_5
# %bb.1:
	movl	%esi, %r8d
	addq	$-1, %r8
	cmpl	$2, %esi
	jne	.LBB0_6
# %bb.2:
	movl	$1, %edx
	movq	%rax, %rsi
	jmp	.LBB0_3
.LBB0_6:
	movq	%r8, %r9
	andq	$-2, %r9
	negq	%r9
	movl	$1, %edx
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rcx
	sarq	$63, %rcx
	andq	%rsi, %rcx
	addq	(%rdi,%rdx,8), %rcx
	cmpq	%rax, %rcx
	cmovlq	%rcx, %rax
	movq	%rcx, %rsi
	sarq	$63, %rsi
	andq	%rcx, %rsi
	addq	8(%rdi,%rdx,8), %rsi
	cmpq	%rax, %rsi
	cmovlq	%rsi, %rax
	leaq	(%r9,%rdx), %rcx
	addq	$2, %rcx
	addq	$2, %rdx
	cmpq	$1, %rcx
	jne	.LBB0_7
.LBB0_3:
	testb	$1, %r8b
	je	.LBB0_5
# %bb.4:
	movq	%rsi, %rcx
	sarq	$63, %rcx
	andq	%rsi, %rcx
	addq	(%rdi,%rdx,8), %rcx
	cmpq	%rax, %rcx
	cmovlq	%rcx, %rax
.LBB0_5:
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
