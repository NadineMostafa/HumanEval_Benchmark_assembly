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
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edx
	leaq	func0.xs(%rip), %rdi
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	leaq	func0.xs(%rip), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_6
# %bb.1:
	movl	$0, -16(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-84(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movslq	-16(%rbp), %rcx
	leaq	func0.xs(%rip), %rax
	movb	(%rax,%rcx), %al
	movb	%al, -17(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	subl	-16(%rbp), %eax
	movslq	%eax, %rcx
	leaq	func0.xs(%rip), %rax
	movb	(%rax,%rcx), %dl
	movslq	-16(%rbp), %rcx
	leaq	func0.xs(%rip), %rax
	movb	%dl, (%rax,%rcx)
	movb	-17(%rbp), %dl
	movl	-12(%rbp), %eax
	subl	$1, %eax
	subl	-16(%rbp), %eax
	movslq	%eax, %rcx
	leaq	func0.xs(%rip), %rax
	movb	%dl, (%rax,%rcx)
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_7
.LBB0_6:
	leaq	-80(%rbp), %rdi
	movslq	-12(%rbp), %rax
	leaq	func0.xs(%rip), %rsi
	addq	%rax, %rsi
	movslq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	addq	%rax, %rsi
	callq	strcpy@PLT
	movslq	-8(%rbp), %rax
	movb	$0, -80(%rbp,%rax)
	leaq	-80(%rbp), %rdi
	movl	-12(%rbp), %eax
	subl	-8(%rbp), %eax
	movslq	%eax, %rdx
	leaq	func0.xs(%rip), %rsi
	callq	strncat@PLT
	leaq	-80(%rbp), %rsi
	leaq	func0.xs(%rip), %rdi
	callq	strcpy@PLT
.LBB0_7:
	leaq	func0.xs(%rip), %rax
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.type	func0.xs,@object                # @func0.xs
	.local	func0.xs
	.comm	func0.xs,50,16
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
	.addrsig_sym strlen
	.addrsig_sym strcpy
	.addrsig_sym strncat
	.addrsig_sym func0.xs
