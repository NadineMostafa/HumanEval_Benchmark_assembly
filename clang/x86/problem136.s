	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$-1, %eax
	cmpl	$2, %esi
	jl	.LBB0_5
# %bb.1:
	movl	%esi, %eax
	movl	(%rdi), %esi
	leaq	-1(%rax), %r8
	addq	$-2, %rax
	movl	%r8d, %r9d
	andl	$3, %r9d
	cmpq	$3, %rax
	jae	.LBB0_6
# %bb.2:
	movl	$-1, %eax
	movl	$1, %edx
	jmp	.LBB0_3
.LBB0_6:
	andq	$-4, %r8
	movl	$-1, %eax
	movl	$1, %edx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %r10d
	movl	4(%rdi,%rdx,4), %r11d
	cmpl	%esi, %r10d
	cmovll	%edx, %eax
	leal	1(%rdx), %esi
	cmpl	%r10d, %r11d
	cmovgel	%eax, %esi
	leal	2(%rdx), %ecx
	movl	8(%rdi,%rdx,4), %r10d
	cmpl	%r11d, %r10d
	cmovgel	%esi, %ecx
	leal	3(%rdx), %eax
	movl	12(%rdi,%rdx,4), %esi
	cmpl	%r10d, %esi
	cmovgel	%ecx, %eax
	addq	$4, %rdx
	addq	$4, %rbx
	cmpq	%r8, %rbx
	jne	.LBB0_7
.LBB0_3:
	testq	%r9, %r9
	je	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rdx,4), %ecx
	cmpl	%esi, %ecx
	cmovll	%edx, %eax
	addq	$1, %rdx
	movl	%ecx, %esi
	addq	$-1, %r9
	jne	.LBB0_4
.LBB0_5:
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
