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
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.1:
	movl	%ecx, %r8d
	cmpl	$8, %ecx
	jae	.LBB0_3
# %bb.2:
	xorl	%ebx, %ebx
	jmp	.LBB0_8
.LBB0_3:
	leaq	(%rdx,%r8,4), %rcx
	leaq	(%rdi,%r8,4), %rax
	cmpq	%rdx, %rax
	seta	%r10b
	leaq	(%rsi,%r8,4), %rax
	cmpq	%rdi, %rcx
	seta	%r11b
	cmpq	%rdx, %rax
	seta	%al
	cmpq	%rsi, %rcx
	seta	%r9b
	xorl	%ebx, %ebx
	testb	%r11b, %r10b
	jne	.LBB0_8
# %bb.4:
	andb	%r9b, %al
	jne	.LBB0_8
# %bb.5:
	movl	%r8d, %ebx
	andl	$-8, %ebx
	leaq	(,%r8,4), %r9
	andq	$-32, %r9
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%rax), %xmm0
	movdqu	16(%rdi,%rax), %xmm1
	movdqu	(%rsi,%rax), %xmm2
	psubd	%xmm2, %xmm0
	movdqu	16(%rsi,%rax), %xmm2
	psubd	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	psrad	$31, %xmm2
	paddd	%xmm2, %xmm0
	pxor	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	psrad	$31, %xmm2
	paddd	%xmm2, %xmm1
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%rdx,%rax)
	movdqu	%xmm1, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%rax, %r9
	jne	.LBB0_6
# %bb.7:
	cmpq	%r8, %rbx
	je	.LBB0_12
.LBB0_8:
	movq	%rbx, %r10
	notq	%r10
	testb	$1, %r8b
	je	.LBB0_10
# %bb.9:
	movl	(%rdi,%rbx,4), %r9d
	subl	(%rsi,%rbx,4), %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	movl	%eax, (%rdx,%rbx,4)
	orq	$1, %rbx
.LBB0_10:
	addq	%r8, %r10
	je	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rbx,4), %ecx
	subl	(%rsi,%rbx,4), %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovsl	%ecx, %eax
	movl	%eax, (%rdx,%rbx,4)
	movl	4(%rdi,%rbx,4), %eax
	subl	4(%rsi,%rbx,4), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	movl	%ecx, 4(%rdx,%rbx,4)
	addq	$2, %rbx
	cmpq	%rbx, %r8
	jne	.LBB0_11
.LBB0_12:
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
