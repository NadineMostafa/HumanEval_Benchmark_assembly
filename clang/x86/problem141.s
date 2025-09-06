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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movb	(%rdi), %al
	testb	%al, %al
	je	.LBB0_1
# %bb.5:
	movq	%rdi, %r12
	xorl	%r15d, %r15d
	movl	$1, %ebx
	xorl	%ebp, %ebp
	cmpb	$32, %al
	jne	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:
	addl	$1, %ebp
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_8:
	movb	$95, %al
	cmpl	$1, %ebp
	je	.LBB0_13
# %bb.9:
	cmpl	$2, %ebp
	jne	.LBB0_11
# %bb.10:
	leal	1(%r15), %ecx
	movslq	%r15d, %rdx
	movb	$95, (%r14,%rdx)
	movl	$2, %ebp
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_11:
	jle	.LBB0_15
# %bb.12:
	movb	$45, %al
	movl	$1, %ebp
.LBB0_13:
	movl	%r15d, %ecx
.LBB0_14:
	addl	%ebp, %r15d
	movslq	%ecx, %rcx
	movb	%al, (%r14,%rcx)
.LBB0_15:
	movb	-1(%r12,%rbx), %al
	movslq	%r15d, %rcx
	addl	$1, %r15d
	movb	%al, (%r14,%rcx)
	xorl	%ebp, %ebp
.LBB0_16:
	movq	%r12, %rdi
	callq	strlen@PLT
	cmpq	%rbx, %rax
	jbe	.LBB0_2
# %bb.17:
	movb	(%r12,%rbx), %al
	addq	$1, %rbx
	cmpb	$32, %al
	jne	.LBB0_8
	jmp	.LBB0_7
.LBB0_2:
	movb	$95, %al
	cmpl	$1, %ebp
	je	.LBB0_20
# %bb.3:
	cmpl	$2, %ebp
	jne	.LBB0_18
# %bb.4:
	leal	1(%r15), %ecx
	movslq	%r15d, %rdx
	movb	$95, (%r14,%rdx)
	movl	$2, %ebp
	jmp	.LBB0_21
.LBB0_1:
	xorl	%r15d, %r15d
	jmp	.LBB0_22
.LBB0_18:
	jle	.LBB0_22
# %bb.19:
	movb	$45, %al
	movl	$1, %ebp
.LBB0_20:
	movl	%r15d, %ecx
.LBB0_21:
	addl	%ebp, %r15d
	movslq	%ecx, %rcx
	movb	%al, (%r14,%rcx)
.LBB0_22:
	movslq	%r15d, %rax
	movb	$0, (%r14,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
