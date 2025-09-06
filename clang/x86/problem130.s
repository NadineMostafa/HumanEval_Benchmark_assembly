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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	testl	%esi, %esi
	jle	.LBB0_1
# %bb.2:
	movl	%esi, %r9d
	leaq	-1(%r9), %r8
	movl	%r9d, %r10d
	andl	$3, %r10d
	movl	%r9d, %r11d
	andl	$-4, %r11d
	xorl	%r15d, %r15d
                                        # implicit-def: $eax
                                        # implicit-def: $edx
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %r15
	cmpq	%r9, %r15
	je	.LBB0_9
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_7 Depth 2
	movq	(%rdi,%r15,8), %r12
	xorl	%ebp, %ebp
	cmpq	$3, %r8
	jb	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	1(%rbp), %ebx
	leal	2(%rbp), %r13d
	cmpl	$1, (%r12,%rbp,4)
	cmovel	%ebp, %eax
	cmovel	%r15d, %edx
	cmpl	$1, 4(%r12,%rbp,4)
	cmovel	%ebx, %eax
	cmovel	%r15d, %edx
	cmpl	$1, 8(%r12,%rbp,4)
	movl	%eax, %ebx
	cmovel	%r13d, %ebx
	cmovel	%r15d, %edx
	leal	3(%rbp), %eax
	cmpl	$1, 12(%r12,%rbp,4)
	cmovel	%r15d, %edx
	cmovnel	%ebx, %eax
	addq	$4, %rbp
	cmpq	%r11, %rbp
	jne	.LBB0_4
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	testq	%r10, %r10
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r10, %rbx
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, (%r12,%rbp,4)
	cmovel	%r15d, %edx
	cmovel	%ebp, %eax
	addq	$1, %rbp
	addq	$-1, %rbx
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_9:
	movl	%esi, %ebp
	imull	%esi, %ebp
	movslq	%eax, %r8
	testl	%edx, %edx
	jle	.LBB0_11
# %bb.10:
	leal	-1(%rdx), %ebx
	movq	(%rdi,%rbx,8), %rbx
	movl	(%rbx,%r8,4), %ebx
	cmpl	%ebp, %ebx
	cmovll	%ebx, %ebp
.LBB0_11:
	addl	$-1, %esi
	movslq	%edx, %rbx
	cmpl	%esi, %edx
	jge	.LBB0_13
# %bb.12:
	movq	8(%rdi,%rbx,8), %rdx
	movl	(%rdx,%r8,4), %edx
	cmpl	%ebp, %edx
	cmovll	%edx, %ebp
.LBB0_13:
	testl	%eax, %eax
	jle	.LBB0_15
# %bb.14:
	movq	(%rdi,%rbx,8), %r9
	leal	-1(%rax), %edx
	movl	(%r9,%rdx,4), %edx
	cmpl	%ebp, %edx
	cmovll	%edx, %ebp
.LBB0_15:
	cmpl	%esi, %eax
	jge	.LBB0_17
# %bb.16:
	movq	(%rdi,%rbx,8), %rax
	movl	4(%rax,%r8,4), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebp
	jmp	.LBB0_17
.LBB0_1:
	imull	%esi, %esi
	movl	%esi, %ebp
.LBB0_17:
	movl	%r14d, (%rcx)
	movslq	%r14d, %rbx
	leaq	(,%rbx,4), %rdi
	callq	malloc@PLT
	testl	%ebx, %ebx
	jle	.LBB0_25
# %bb.18:
	movl	%r14d, %esi
	leaq	-1(%rsi), %rdx
	movl	%esi, %ecx
	andl	$3, %ecx
	cmpq	$3, %rdx
	jae	.LBB0_20
# %bb.19:
	xorl	%edx, %edx
	jmp	.LBB0_22
.LBB0_20:
	andl	$-4, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	$1, (%rax,%rdx,4)
	movl	%ebp, 4(%rax,%rdx,4)
	movl	$1, 8(%rax,%rdx,4)
	movl	%ebp, 12(%rax,%rdx,4)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB0_21
.LBB0_22:
	testq	%rcx, %rcx
	je	.LBB0_25
# %bb.23:
	movl	$1, %esi
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %dl
	movl	%ebp, %edi
	cmovel	%esi, %edi
	movl	%edi, (%rax,%rdx,4)
	addq	$1, %rdx
	addq	$-1, %rcx
	jne	.LBB0_24
.LBB0_25:
	addq	$8, %rsp
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
