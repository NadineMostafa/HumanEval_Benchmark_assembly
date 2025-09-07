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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$1, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	ucomiss	(%rax,%rcx,4), %xmm0
	jbe	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -24(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movl	-32(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -28(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB0_10
# %bb.9:
	movb	$0, -1(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movb	$1, -1(%rbp)
.LBB0_11:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
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
