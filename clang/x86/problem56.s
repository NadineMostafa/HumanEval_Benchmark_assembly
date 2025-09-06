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
	subq	$4000, %rsp                     # imm = 0xFA0
	.cfi_def_cfa_offset 4016
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	%rsp, %rdi
	movl	$4000, %edx                     # imm = 0xFA0
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$1, 4(%rsp)
	cmpl	$2, %ebx
	jl	.LBB0_7
# %bb.1:
	leal	1(%rbx), %ecx
	movl	$1, 8(%rsp)
	cmpl	$3, %ecx
	je	.LBB0_7
# %bb.2:
	leaq	-3(%rcx), %rsi
	addq	$-4, %rcx
	movl	%esi, %eax
	andl	$3, %eax
	cmpq	$3, %rcx
	jae	.LBB0_8
# %bb.3:
	movl	$2, %esi
	movl	$1, %ecx
	movl	$3, %edx
	testq	%rax, %rax
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_8:
	andq	$-4, %rsi
	negq	%rsi
	movl	$1, %ecx
	movl	$3, %edx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	addl	-8(%rsp,%rdx,4), %ecx
	movl	%ecx, (%rsp,%rdx,4)
	movl	-4(%rsp,%rdx,4), %edi
	addl	%ecx, %edi
	movl	%edi, 4(%rsp,%rdx,4)
	addl	%edi, %ecx
	movl	%ecx, 8(%rsp,%rdx,4)
	addl	%edi, %ecx
	movl	%ecx, 12(%rsp,%rdx,4)
	leaq	(%rsi,%rdx), %rdi
	addq	$4, %rdi
	addq	$4, %rdx
	cmpq	$3, %rdi
	jne	.LBB0_9
# %bb.4:
	leaq	-1(%rdx), %rsi
	testq	%rax, %rax
	je	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	addl	-4(%rsp,%rsi,4), %ecx
	movl	%ecx, (%rsp,%rdx,4)
	movq	%rdx, %rsi
	addq	$1, %rdx
	addq	$-1, %rax
	jne	.LBB0_6
.LBB0_7:
	movslq	%ebx, %rax
	movl	(%rsp,%rax,4), %eax
	addq	$4000, %rsp                     # imm = 0xFA0
	.cfi_def_cfa_offset 16
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
