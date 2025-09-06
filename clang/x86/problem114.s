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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	leaq	(,%rbx,8), %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	testl	%ebx, %ebx
	jle	.LBB0_6
# %bb.1:
	movl	%ebp, %r13d
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$100, %edi
	callq	malloc@PLT
	movq	%rax, (%r12,%r15,8)
	movq	%rax, %rdi
	leaq	.L.str(%rip), %rsi
	movl	%ebp, %edx
	movl	%ebp, %ecx
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	sprintf@PLT
	addq	$1, %r15
	cmpq	%r13, %r15
	je	.LBB0_6
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	(%r14,%r15,8), %rax
	movb	(%rax), %cl
	movl	$0, %ebp
	testb	%cl, %cl
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rax
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-48(%rcx), %edx
	andb	$1, %cl
	cmpb	$10, %dl
	movzbl	%cl, %ecx
	cmovael	%ebx, %ecx
	movzbl	%cl, %ecx
	addl	%ecx, %ebp
	movzbl	(%rax), %ecx
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_6:
	movq	%r12, %rax
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
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"the number of odd elements %d in the string %d of the %d input."
	.size	.L.str, 64

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
