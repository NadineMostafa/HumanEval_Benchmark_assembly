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
	movq	%rdx, %r15
	movl	%esi, (%rcx)
	testl	%esi, %esi
	je	.LBB0_1
# %bb.3:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movslq	%esi, %r12
	leaq	(,%r12,4), %rdi
	callq	malloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_26
# %bb.4:
	movl	%r14d, %r10d
	testl	%r14d, %r14d
	jle	.LBB0_16
# %bb.5:
	cmpl	$8, %r14d
	jae	.LBB0_8
# %bb.6:
	xorl	%edx, %edx
	jmp	.LBB0_7
.LBB0_1:
	movq	$0, (%r15)
	jmp	.LBB0_2
.LBB0_8:
	movl	%r10d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %r8d
	andl	$3, %r8d
	cmpq	$24, %rcx
	jae	.LBB0_10
# %bb.9:
	xorl	%ebp, %ebp
	jmp	.LBB0_12
.LBB0_10:
	andq	$-4, %rdi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movups	(%rbx,%rbp,4), %xmm0
	movups	16(%rbx,%rbp,4), %xmm1
	movups	%xmm0, (%rax,%rbp,4)
	movups	%xmm1, 16(%rax,%rbp,4)
	movups	32(%rbx,%rbp,4), %xmm0
	movups	48(%rbx,%rbp,4), %xmm1
	movups	%xmm0, 32(%rax,%rbp,4)
	movups	%xmm1, 48(%rax,%rbp,4)
	movups	64(%rbx,%rbp,4), %xmm0
	movups	80(%rbx,%rbp,4), %xmm1
	movups	%xmm0, 64(%rax,%rbp,4)
	movups	%xmm1, 80(%rax,%rbp,4)
	movups	96(%rbx,%rbp,4), %xmm0
	movups	112(%rbx,%rbp,4), %xmm1
	movups	%xmm0, 96(%rax,%rbp,4)
	movups	%xmm1, 112(%rax,%rbp,4)
	addq	$32, %rbp
	addq	$-4, %rdi
	jne	.LBB0_11
.LBB0_12:
	testq	%r8, %r8
	je	.LBB0_15
# %bb.13:
	leaq	(%rax,%rbp,4), %rdi
	addq	$16, %rdi
	leaq	(%rbx,%rbp,4), %rbp
	addq	$16, %rbp
	shlq	$5, %r8
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rbp,%rsi), %xmm0
	movups	(%rbp,%rsi), %xmm1
	movups	%xmm0, -16(%rdi,%rsi)
	movups	%xmm1, (%rdi,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %r8
	jne	.LBB0_14
.LBB0_15:
	cmpq	%r10, %rdx
	je	.LBB0_16
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rdx,4), %ecx
	movl	%ecx, (%rax,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.LBB0_7
.LBB0_16:
	cmpl	$2, %r14d
	jl	.LBB0_2
# %bb.17:
	addl	$-1, %r14d
	movl	-4(%rbx,%r12,4), %edx
	addl	(%rbx), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	andl	$-2, %ecx
	subl	%ecx, %edx
	movl	%r14d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_19 Depth=1
	addq	$4, %rdi
	addq	$-1, %r10
	cmpq	%r8, %r9
	je	.LBB0_2
.LBB0_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	movq	%r9, %rbx
	addq	$1, %r9
	cmpq	%r12, %r9
	jge	.LBB0_18
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$1, %esi
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_21 Depth=2
	movl	%ecx, (%rax,%rbx,4)
	movl	%ebp, (%rdi,%rsi,4)
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=2
	addq	$1, %rsi
	cmpq	%rsi, %r10
	je	.LBB0_18
.LBB0_21:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, %edx
	jne	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=2
	movl	(%rax,%rbx,4), %ebp
	movl	(%rdi,%rsi,4), %ecx
	cmpl	%ecx, %ebp
	jg	.LBB0_24
	jmp	.LBB0_25
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_21 Depth=2
	movl	(%rax,%rbx,4), %ebp
	movl	(%rdi,%rsi,4), %ecx
	cmpl	%ecx, %ebp
	jl	.LBB0_24
	jmp	.LBB0_25
.LBB0_2:
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
.LBB0_26:
	.cfi_def_cfa_offset 48
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
