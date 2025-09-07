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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -21(%rbp)
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-21(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	cmpl	$1, -20(%rbp)
	jne	.LBB0_6
# %bb.5:
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -22(%rbp)
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	-22(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	je	.LBB0_8
# %bb.7:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	$1, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
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
	.addrsig_sym strlen
	.addrsig_sym __ctype_b_loc
