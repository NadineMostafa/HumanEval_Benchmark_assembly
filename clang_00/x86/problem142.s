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
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	cmpl	$5, -28(%rbp)
	jge	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_24
.LBB0_2:
	movq	-16(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -29(%rbp)
	movsbl	-29(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB0_6
# %bb.3:
	movsbl	-29(%rbp), %eax
	cmpl	$90, %eax
	jle	.LBB0_5
# %bb.4:
	movsbl	-29(%rbp), %eax
	cmpl	$97, %eax
	jl	.LBB0_6
.LBB0_5:
	movsbl	-29(%rbp), %eax
	cmpl	$122, %eax
	jle	.LBB0_7
.LBB0_6:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_24
.LBB0_7:
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.8:
	movq	-40(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.9:
	movq	-40(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.10:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_24
.LBB0_11:
	movl	$0, -44(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$48, %eax
	jl	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$57, %eax
	jg	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$46, %eax
	jne	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB0_18:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_12
.LBB0_20:
	cmpl	$3, -20(%rbp)
	jg	.LBB0_22
# %bb.21:
	cmpl	$1, -24(%rbp)
	je	.LBB0_23
.LBB0_22:
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_24
.LBB0_23:
	leaq	.L.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB0_24:
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
	.asciz	"No"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	".txt"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".exe"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	".dll"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Yes"
	.size	.L.str.4, 4

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym strcmp
