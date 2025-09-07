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
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -24(%rbp)
	jge	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	addq	(%rcx,%rdx,8), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movq	-32(%rbp), %rax
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
