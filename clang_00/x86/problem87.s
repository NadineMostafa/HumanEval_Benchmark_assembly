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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -92(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #     Child Loop BB0_17 Depth 2
	movl	-92(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_24
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$32, %eax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB0_21
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -96(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
	movl	-96(%rbp), %eax
	movl	-88(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_14
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-100(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB0_12
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=3
	movslq	-96(%rbp), %rax
	movsbl	-80(%rbp,%rax), %eax
	movslq	-100(%rbp), %rcx
	movsbl	-80(%rbp,%rcx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=3
	movslq	-96(%rbp), %rax
	movb	-80(%rbp,%rax), %al
	movb	%al, -101(%rbp)
	movslq	-100(%rbp), %rax
	movb	-80(%rbp,%rax), %cl
	movslq	-96(%rbp), %rax
	movb	%cl, -80(%rbp,%rax)
	movb	-101(%rbp), %cl
	movslq	-100(%rbp), %rax
	movb	%cl, -80(%rbp,%rax)
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=3
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=3
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB0_7
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB0_5
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -84(%rbp)
	jle	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-84(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -84(%rbp)
	movslq	%ecx, %rcx
	movb	$32, (%rax,%rcx)
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -108(%rbp)
.LBB0_17:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	movslq	-108(%rbp), %rax
	movb	-80(%rbp,%rax), %dl
	movq	-24(%rbp), %rax
	movl	-84(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -84(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_17
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -88(%rbp)
	jmp	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movl	-88(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -88(%rbp)
	cltq
	movb	%cl, -80(%rbp,%rax)
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_1
.LBB0_24:
	movq	-24(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-24(%rbp), %rax
	addq	$112, %rsp
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
	.addrsig_sym malloc
