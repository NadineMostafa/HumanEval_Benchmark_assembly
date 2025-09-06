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
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$2, %esi
	jl	.LBB0_17
# %bb.1:
	leal	-1(%rsi), %r8d
	xorl	%r9d, %r9d
	movl	%r8d, %r10d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$1, %r9d
	addl	$-1, %r10d
	cmpl	%r8d, %r9d
	je	.LBB0_17
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movl	%r10d, %r10d
	movl	%r9d, %eax
	notl	%eax
	addl	%esi, %eax
	testl	%eax, %eax
	jle	.LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	(%rdi), %r14d
	cmpl	$1, %r10d
	jne	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	testb	$1, %r10b
	je	.LBB0_2
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	4(%rdi,%rax,4), %ebp
	cmpl	%ebp, %r14d
	jle	.LBB0_2
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%ebp, (%rdi,%rax,4)
	movl	%r14d, 4(%rdi,%rax,4)
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r10d, %r11d
	andl	$-2, %r11d
	xorl	%ebx, %ebx
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%ebp, 4(%rdi,%rbx,4)
	movl	%r14d, 8(%rdi,%rbx,4)
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=2
	movq	%rax, %rbx
	cmpq	%rax, %r11
	je	.LBB0_6
.LBB0_12:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rdi,%rbx,4), %eax
	cmpl	%eax, %r14d
	jle	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%eax, (%rdi,%rbx,4)
	movl	%r14d, 4(%rdi,%rbx,4)
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%eax, %r14d
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=2
	leaq	2(%rbx), %rax
	movl	8(%rdi,%rbx,4), %ebp
	cmpl	%ebp, %r14d
	jg	.LBB0_10
# %bb.16:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%ebp, %r14d
	jmp	.LBB0_11
.LBB0_17:
	testl	%edx, %edx
	jle	.LBB0_37
# %bb.18:
	subl	%edx, %esi
	movslq	%esi, %r8
	movl	%edx, %r10d
	cmpl	$8, %edx
	jb	.LBB0_19
# %bb.20:
	leaq	(%r8,%r10), %rax
	leaq	(%rdi,%rax,4), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_23
# %bb.21:
	leaq	(%rcx,%r10,4), %rax
	leaq	(%rdi,%r8,4), %rdx
	cmpq	%rax, %rdx
	jae	.LBB0_23
.LBB0_19:
	xorl	%edx, %edx
.LBB0_31:
	movq	%rdx, %rax
	notq	%rax
	addq	%r10, %rax
	movq	%r10, %rsi
	andq	$3, %rsi
	je	.LBB0_34
# %bb.32:
	leaq	(%rdi,%r8,4), %rbp
	.p2align	4, 0x90
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbp,%rdx,4), %ebx
	movl	%ebx, (%rcx,%rdx,4)
	addq	$1, %rdx
	addq	$-1, %rsi
	jne	.LBB0_33
.LBB0_34:
	cmpq	$3, %rax
	jb	.LBB0_37
# %bb.35:
	leaq	(%rdi,%r8,4), %rax
	addq	$12, %rax
	.p2align	4, 0x90
.LBB0_36:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rax,%rdx,4), %esi
	movl	%esi, (%rcx,%rdx,4)
	movl	-8(%rax,%rdx,4), %esi
	movl	%esi, 4(%rcx,%rdx,4)
	movl	-4(%rax,%rdx,4), %esi
	movl	%esi, 8(%rcx,%rdx,4)
	movl	(%rax,%rdx,4), %esi
	movl	%esi, 12(%rcx,%rdx,4)
	addq	$4, %rdx
	cmpq	%rdx, %r10
	jne	.LBB0_36
	jmp	.LBB0_37
.LBB0_23:
	movl	%r10d, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$3, %rsi
	addq	$1, %rsi
	movl	%esi, %r9d
	andl	$3, %r9d
	cmpq	$24, %rax
	jae	.LBB0_25
# %bb.24:
	xorl	%eax, %eax
	jmp	.LBB0_27
.LBB0_25:
	andq	$-4, %rsi
	leaq	(%rdi,%r8,4), %rbx
	addq	$112, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	movups	-112(%rbx,%rax,4), %xmm0
	movups	-96(%rbx,%rax,4), %xmm1
	movups	%xmm0, (%rcx,%rax,4)
	movups	%xmm1, 16(%rcx,%rax,4)
	movups	-80(%rbx,%rax,4), %xmm0
	movups	-64(%rbx,%rax,4), %xmm1
	movups	%xmm0, 32(%rcx,%rax,4)
	movups	%xmm1, 48(%rcx,%rax,4)
	movups	-48(%rbx,%rax,4), %xmm0
	movups	-32(%rbx,%rax,4), %xmm1
	movups	%xmm0, 64(%rcx,%rax,4)
	movups	%xmm1, 80(%rcx,%rax,4)
	movups	-16(%rbx,%rax,4), %xmm0
	movups	(%rbx,%rax,4), %xmm1
	movups	%xmm0, 96(%rcx,%rax,4)
	movups	%xmm1, 112(%rcx,%rax,4)
	addq	$32, %rax
	addq	$-4, %rsi
	jne	.LBB0_26
.LBB0_27:
	testq	%r9, %r9
	je	.LBB0_30
# %bb.28:
	leaq	(%rcx,%rax,4), %rsi
	addq	$16, %rsi
	addq	%r8, %rax
	leaq	(%rdi,%rax,4), %rax
	addq	$16, %rax
	shlq	$5, %r9
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rax,%rbp), %xmm0
	movups	(%rax,%rbp), %xmm1
	movups	%xmm0, -16(%rsi,%rbp)
	movups	%xmm1, (%rsi,%rbp)
	addq	$32, %rbp
	cmpq	%rbp, %r9
	jne	.LBB0_29
.LBB0_30:
	cmpq	%r10, %rdx
	jne	.LBB0_31
.LBB0_37:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
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
