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
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	-35(%rbp), %rdi
	xorl	%esi, %esi
	movl	$3, %edx
	callq	memset@PLT
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	addq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy@PLT
	movq	-48(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcat@PLT
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_30
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$32, %eax
	jne	.LBB0_25
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jle	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	callq	realloc@PLT
	movq	%rax, -24(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movl	$4, (%rax,%rcx,4)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_17
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jle	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	jmp	.LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-72(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	callq	realloc@PLT
	movq	%rax, -24(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movl	$2, (%rax,%rcx,4)
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_24
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jle	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	jmp	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	callq	realloc@PLT
	movq	%rax, -24(%rbp)
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movl	$1, (%rax,%rcx,4)
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	strcpy@PLT
	jmp	.LBB0_28
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -64(%rbp)
	cmpq	$2, -64(%rbp)
	jae	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movq	-64(%rbp), %rax
	movb	%cl, -35(%rbp,%rax)
	movq	-64(%rbp), %rax
	movb	$0, -34(%rbp,%rax)
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_30:
	movq	-48(%rbp), %rdi
	callq	free@PLT
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
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
	.asciz	" "
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"o"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"o|"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	".|"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.zero	1
	.size	.L.str.4, 1

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym strcpy
	.addrsig_sym strcat
	.addrsig_sym strcmp
	.addrsig_sym realloc
	.addrsig_sym free
