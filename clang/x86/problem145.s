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
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r15
	movb	(%rdi), %cl
	xorl	%eax, %eax
	cmpb	$47, %cl
	je	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movb	%cl, 112(%rsp,%rax)
	movzbl	1(%r15,%rax), %ecx
	addq	$1, %rax
	cmpb	$47, %cl
	jne	.LBB0_2
.LBB0_3:
	movl	%eax, %ebp
	movb	$0, 112(%rsp,%rbp)
	xorl	%ebx, %ebx
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r14
	movb	1(%rbp,%r15), %al
	movl	$0, %ecx
	testb	%al, %al
	je	.LBB0_7
# %bb.4:
	leaq	(%r15,%rbp), %rdx
	addq	$2, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movb	%al, (%rsp,%rcx)
	movzbl	(%rdx,%rcx), %eax
	addq	$1, %rcx
	testb	%al, %al
	jne	.LBB0_5
# %bb.6:
	movl	%ecx, %ecx
.LBB0_7:
	movb	$0, (%rsp,%rcx)
	movq	%rsp, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r15
	movb	(%r13), %al
	cmpb	$47, %al
	je	.LBB0_10
# %bb.8:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movb	%al, 112(%rsp,%rbx)
	movzbl	1(%r13,%rbx), %eax
	addq	$1, %rbx
	cmpb	$47, %al
	jne	.LBB0_9
.LBB0_10:
	movl	%ebx, %ebp
	movb	$0, 112(%rsp,%rbp)
	xorl	%ebx, %ebx
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %r12
	movb	1(%rbp,%r13), %al
	testb	%al, %al
	je	.LBB0_14
# %bb.11:
	leaq	2(,%r13), %rdx
	addq	%rbp, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movb	%al, (%rsp,%rcx)
	movzbl	(%rdx,%rcx), %eax
	addq	$1, %rcx
	testb	%al, %al
	jne	.LBB0_12
# %bb.13:
	movl	%ecx, %ebx
.LBB0_14:
	movb	$0, (%rsp,%rbx)
	movq	%rsp, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol@PLT
	movq	%rax, %rcx
	imull	%r12d, %r14d
	imull	%r15d, %ecx
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	addq	$216, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
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
