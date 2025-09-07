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
	subq	$1056, %rsp                     # imm = 0x420
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	leaq	-1040(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1024, %edx                     # imm = 0x400
	callq	memset@PLT
	movl	$0, -1044(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movslq	-1044(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-1044(%rbp), %rcx
	movzbl	(%rax,%rcx), %edi
	callq	tolower@PLT
                                        # kill: def $al killed $al killed $eax
	movb	%al, -1045(%rbp)
	movsbq	-1045(%rbp), %rax
	cmpl	$0, -1040(%rbp,%rax,4)
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-1045(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movsbq	-1045(%rbp), %rax
	movl	$1, -1040(%rbp,%rax,4)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-1044(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1044(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movl	-12(%rbp), %eax
	addq	$1056, %rsp                     # imm = 0x420
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym tolower
	.addrsig_sym __ctype_b_loc
