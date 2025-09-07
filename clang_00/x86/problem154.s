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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$-1000, -36(%rbp)               # imm = 0xFC18
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_16
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_12
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-64(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -73(%rbp)
	movsbl	-73(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movsbl	-73(%rbp), %eax
	cmpl	$90, %eax
	jg	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	movsbl	-73(%rbp), %eax
	cmpl	$97, %eax
	jl	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=2
	movsbl	-73(%rbp), %eax
	cmpl	$122, %eax
	jg	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB0_3
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_16:
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
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
	.asciz	"%s.%s"
	.size	.L.str, 6

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sprintf
