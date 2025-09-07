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
	movq	%rdi, -16(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$2, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1, -36(%rbp)
	jl	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	callq	strchr@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %esi
	callq	strchr@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %esi
	callq	strchr@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, func0.out(%rip)
	leaq	func0.out(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movb	$0, func0.out(%rip)
	leaq	func0.out(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.type	func0.out,@object               # @func0.out
	.local	func0.out
	.comm	func0.out,2,1
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AEIOUaeiou"
	.size	.L.str, 11

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym strchr
	.addrsig_sym func0.out
