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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	movl	$1, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	ucomiss	-20(%rbp), %xmm0
	jbe	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movl	$0, -28(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm0
	movss	-20(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_9
.LBB0_12:
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
