	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	callq	strlen@PLT
	xorl	%r14d, %r14d
	cmpq	$10, %rax
	jne	.LBB0_16
# %bb.1:
	movb	(%rbx), %al
	leal	-58(%rax), %ecx
	cmpb	$-10, %cl
	jb	.LBB0_16
# %bb.2:
	movb	1(%rbx), %cl
	leal	-58(%rcx), %edx
	cmpb	$-10, %dl
	jb	.LBB0_16
# %bb.3:
	cmpb	$45, 2(%rbx)
	jne	.LBB0_16
# %bb.4:
	movb	3(%rbx), %r8b
	leal	-58(%r8), %esi
	cmpb	$-10, %sil
	jb	.LBB0_16
# %bb.5:
	movb	4(%rbx), %sil
	leal	-58(%rsi), %edi
	cmpb	$-10, %dil
	jb	.LBB0_16
# %bb.6:
	cmpb	$45, 5(%rbx)
	jne	.LBB0_16
# %bb.7:
	movb	6(%rbx), %dl
	addb	$-58, %dl
	cmpb	$-10, %dl
	jb	.LBB0_16
# %bb.8:
	movb	7(%rbx), %dl
	addb	$-58, %dl
	cmpb	$-10, %dl
	jb	.LBB0_16
# %bb.9:
	movb	8(%rbx), %dl
	addb	$-58, %dl
	cmpb	$-10, %dl
	jb	.LBB0_16
# %bb.10:
	movb	9(%rbx), %dl
	addb	$-58, %dl
	cmpb	$-10, %dl
	jb	.LBB0_16
# %bb.11:
	movb	%al, 5(%rsp)
	movb	%cl, 6(%rsp)
	movb	$0, 7(%rsp)
	movb	%r8b, 2(%rsp)
	movb	%sil, 3(%rsp)
	movb	$0, 4(%rsp)
	xorl	%r14d, %r14d
	leaq	5(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %rbx
	leaq	2(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	leal	-13(%rbx), %ecx
	cmpl	$-12, %ecx
	jb	.LBB0_16
# %bb.12:
	leal	-32(%rax), %ecx
	cmpl	$-31, %ecx
	jb	.LBB0_16
# %bb.13:
	movl	%ebx, %ecx
	andl	$-3, %ecx
	cmpl	$4, %ecx
	setne	%dl
	cmpl	$9, %ecx
	setne	%cl
	testb	%dl, %cl
	jne	.LBB0_15
# %bb.14:
	cmpl	$31, %eax
	je	.LBB0_16
.LBB0_15:
	cmpl	$2, %ebx
	setne	%cl
	cmpl	$30, %eax
	setb	%al
	orb	%cl, %al
	movzbl	%al, %r14d
.LBB0_16:
	movl	%r14d, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
