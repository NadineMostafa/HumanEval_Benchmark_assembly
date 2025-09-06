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
	subq	$400, %rsp                      # imm = 0x190
	.cfi_def_cfa_offset 416
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	%rsp, %rdi
	movl	$400, %edx                      # imm = 0x190
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$1, 8(%rsp)
	cmpl	$3, %ebx
	jl	.LBB0_7
# %bb.1:
	leal	1(%rbx), %ecx
	movl	(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	cmpl	$4, %ecx
	je	.LBB0_7
# %bb.2:
	cmpl	$5, %ecx
	jne	.LBB0_8
# %bb.3:
	movl	$2, %edx
	movl	$4, %esi
	testb	$1, %cl
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_8:
	leaq	-4(%rcx), %rsi
	andq	$-2, %rsi
	negq	%rsi
	movl	$2, %edx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsp,%rdx,4), %edi
	addl	%edi, %eax
	addl	-4(%rsp,%rdx,4), %eax
	movl	%eax, 8(%rsp,%rdx,4)
	addl	4(%rsp,%rdx,4), %eax
	addl	%edi, %eax
	movl	%eax, 12(%rsp,%rdx,4)
	leaq	(%rsi,%rdx), %rdi
	addq	$2, %rdi
	addq	$2, %rdx
	cmpq	$2, %rdi
	jne	.LBB0_9
# %bb.4:
	leaq	2(%rdx), %rsi
	testb	$1, %cl
	je	.LBB0_7
.LBB0_6:
	addl	(%rsp,%rdx,4), %eax
	addl	-12(%rsp,%rsi,4), %eax
	movl	%eax, (%rsp,%rsi,4)
.LBB0_7:
	movslq	%ebx, %rax
	movl	(%rsp,%rax,4), %eax
	addq	$400, %rsp                      # imm = 0x190
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
