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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$256, %edi                      # imm = 0x100
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$2, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-28(%rbp), %eax
	imull	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	cmpl	$0, %edx
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	cmpl	$1, -4(%rbp)
	jle	.LBB0_9
# %bb.8:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
.LBB0_9:
	movq	-24(%rbp), %rax
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
	.addrsig_sym malloc
