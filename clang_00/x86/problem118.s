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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	addq	$1, %rdi
	callq	malloc@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movslq	-76(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	.LBB0_13
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$8192, %eax                     # imm = 0x2000
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$0, (%rax,%rcx)
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	shlq	$3, %rsi
	callq	realloc@PLT
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, %rdi
	addq	$1, %rdi
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-72(%rbp), %rsi
	callq	strcpy@PLT
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB0_11
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	callq	strchr@PLT
	cmpq	$0, %rax
	jne	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_1
.LBB0_13:
	movq	-72(%rbp), %rdi
	callq	free@PLT
	movl	-48(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	addq	$80, %rsp
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
	.asciz	"aeiouAEIOU"
	.size	.L.str, 11

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym __ctype_b_loc
	.addrsig_sym realloc
	.addrsig_sym strcpy
	.addrsig_sym strchr
	.addrsig_sym free
