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
	movq	%rdx, %r14
	movq	%rsi, %rax
	movl	$1, (%rdx)
	movl	$1, (%rsi)
	cmpl	$1, %edi
	jne	.LBB0_1
.LBB0_4:
	cmpl	$2, (%r14)
	jl	.LBB0_11
# %bb.5:
	movl	$1, %ecx
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	movslq	%esi, %rsi
	movl	%edx, (%rax,%rsi,4)
	addq	$1, %rcx
	movslq	(%r14), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB0_11
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	(%rax,%rcx,4), %edx
	movq	%rcx, %rsi
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rsi), %rdi
	movl	%edi, %ebp
	movl	(%rax,%rbp,4), %ebp
	cmpl	%edx, %ebp
	jle	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movl	%ebp, (%rax,%rsi,4)
	leaq	1(%rdi), %rbp
	movq	%rdi, %rsi
	cmpq	$1, %rbp
	jg	.LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	xorl	%esi, %esi
	jmp	.LBB0_10
.LBB0_11:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:
	.cfi_def_cfa_offset 32
	movl	%edi, %ebx
	movl	$10, %ebp
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	sarl	%ecx
	movl	%ecx, %ebx
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	cmpl	$1, %ebx
	je	.LBB0_4
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	shrl	$31, %ecx
	addl	%ebx, %ecx
	movl	%ecx, %edx
	andl	$-2, %edx
	movl	%ebx, %esi
	subl	%edx, %esi
	cmpl	$1, %esi
	jne	.LBB0_3
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	movl	(%r14), %ecx
	cmpl	%ebp, %ecx
	jl	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_2 Depth=1
	addl	%ebp, %ebp
	movslq	%ebp, %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	callq	realloc@PLT
	movl	(%r14), %ecx
.LBB0_14:                               #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rcx), %edx
	movl	%edx, (%r14)
	movslq	%ecx, %rcx
	movl	%ebx, (%rax,%rcx,4)
	leal	(%rbx,%rbx,2), %ebx
	addl	$1, %ebx
	jmp	.LBB0_15
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
