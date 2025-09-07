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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_19
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -16(%rbp)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$73, %eax
	jne	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -16(%rbp)
	jmp	.LBB0_11
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -16(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -12(%rbp)
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$46, %eax
	je	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$63, %eax
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$33, %eax
	jne	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -12(%rbp)
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_19:
	movl	-20(%rbp), %eax
	addq	$32, %rsp
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
	.addrsig_sym __ctype_b_loc
