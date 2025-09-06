	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	cltq
	leaq	4(,%rax,4), %rdi
	callq	malloc@PLT
	testl	%r15d, %r15d
	jle	.LBB0_31
# %bb.1:
	leal	-1(%r15), %edx
	movl	%edx, %r8d
	shrl	%r8d
	leal	1(%r8), %esi
	cmpl	$15, %edx
	ja	.LBB0_10
# %bb.2:
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	jmp	.LBB0_3
.LBB0_10:
	movl	%esi, %ecx
	andl	$7, %ecx
	testq	%rcx, %rcx
	movl	$8, %ebx
	cmovneq	%rcx, %rbx
	movq	%rsi, %rdi
	subq	%rbx, %rdi
	leaq	(%rdi,%rdi), %rcx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movups	(%r12,%rbx,8), %xmm0
	movups	16(%r12,%rbx,8), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	movups	32(%r12,%rbx,8), %xmm1
	movups	48(%r12,%rbx,8), %xmm2
	shufps	$136, %xmm2, %xmm1              # xmm1 = xmm1[0,2],xmm2[0,2]
	movups	%xmm0, (%rax,%rbx,4)
	movups	%xmm1, 16(%rax,%rbx,4)
	addq	$8, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB0_11
.LBB0_3:
	leaq	(%rax,%rdi,4), %rbx
	subq	%rdi, %rsi
	leaq	(%r12,%rcx,4), %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movss	(%rcx,%rdi,8), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rbx,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB0_4
# %bb.5:
	cmpl	$2, %edx
	jae	.LBB0_6
.LBB0_12:
	testl	%r15d, %r15d
	jle	.LBB0_31
# %bb.13:
	movl	%r15d, %edx
	cmpl	$1, %r15d
	jne	.LBB0_27
# %bb.14:
	xorl	%ecx, %ecx
	jmp	.LBB0_29
.LBB0_6:
	xorl	%edx, %edx
	movl	%r8d, %esi
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	addl	$1, %edx
	addl	$-1, %esi
	cmpl	%r8d, %edx
	je	.LBB0_12
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
	movl	%esi, %esi
	cmpl	%edx, %r8d
	jbe	.LBB0_26
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	cmpl	$1, %esi
	jne	.LBB0_15
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	xorl	%ebx, %ebx
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=1
	testb	$1, %sil
	je	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=1
	movss	4(%rax,%rbx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	movss	%xmm1, (%rax,%rbx,4)
	movss	%xmm0, 4(%rax,%rbx,4)
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	movl	%esi, %edi
	andl	$-2, %edi
	xorl	%ecx, %ecx
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=2
	movss	%xmm1, 4(%rax,%rcx,4)
	movss	%xmm0, 8(%rax,%rcx,4)
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=2
	movq	%rbx, %rcx
	cmpq	%rbx, %rdi
	je	.LBB0_23
.LBB0_16:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	4(%rax,%rcx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	movss	%xmm1, (%rax,%rcx,4)
	movss	%xmm0, 4(%rax,%rcx,4)
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_16 Depth=2
	movaps	%xmm1, %xmm0
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
	leaq	2(%rcx), %rbx
	movss	8(%rax,%rcx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	movaps	%xmm1, %xmm0
	jmp	.LBB0_22
.LBB0_27:
	movl	%edx, %esi
	andl	$-2, %esi
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	andl	$2147483647, %edi               # imm = 0x7FFFFFFF
	movss	(%rax,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%r14,%rcx,4)
	movss	4(%r12,%rcx,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%r14,%rcx,4)
	addq	$2, %rcx
	addq	$1, %rbx
	cmpq	%rcx, %rsi
	jne	.LBB0_28
.LBB0_29:
	testb	$1, %dl
	je	.LBB0_31
# %bb.30:
	movl	%ecx, %edx
	andl	$-2, %edx
	testb	$1, %cl
	leaq	(%rax,%rdx,2), %rdx
	leaq	(%r12,%rcx,4), %rsi
	cmoveq	%rdx, %rsi
	movss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%r14,%rcx,4)
.LBB0_31:
	movq	%rax, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
