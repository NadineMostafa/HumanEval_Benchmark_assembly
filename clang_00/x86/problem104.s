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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movl	$33, %edi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movl	$32, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	addl	$-1, %edx
	movl	%edx, -36(%rbp)
	movslq	%ecx, %rcx
	movb	$0, (%rax,%rcx)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	addl	$48, %edx
                                        # kill: def $dl killed $dl killed $edx
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %esi
	addl	$-1, %esi
	movl	%esi, -36(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -20(%rbp)
	jg	.LBB0_3
# %bb.5:
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-1"
	.size	.L.str, 3

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
