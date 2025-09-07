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
	subq	$304, %rsp                      # imm = 0x130
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_14
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-288(%rbp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx                      # imm = 0x100
	callq	memset@PLT
	movl	$0, -292(%rbp)
	movl	$0, -296(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-296(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	leaq	-288(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-296(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	callq	strchr@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	leaq	-288(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -300(%rbp)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-296(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-300(%rbp), %rax
	movb	%cl, -288(%rbp,%rax)
	movl	-300(%rbp), %eax
	addl	$1, %eax
	cltq
	movb	$0, -288(%rbp,%rax)
	movl	-292(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -292(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-296(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -296(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-292(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-292(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jge	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -24(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_14:
	movq	-24(%rbp), %rax
	addq	$304, %rsp                      # imm = 0x130
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
	.zero	1
	.size	.L.str, 1

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strchr
	.addrsig_sym strlen
	.addrsig_sym strcmp
