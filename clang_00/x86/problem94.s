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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_17
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -33(%rbp)
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbl	-33(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$512, %eax                      # imm = 0x200
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %edi
	callq	toupper@PLT
                                        # kill: def $al killed $al killed $eax
	movb	%al, -33(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movsbl	-33(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$256, %eax                      # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %edi
	callq	tolower@PLT
                                        # kill: def $al killed $al killed $eax
	movb	%al, -33(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -32(%rbp)
.LBB0_8:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_15
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	movsbl	-33(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$10, -32(%rbp)
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movsbl	-33(%rbp), %eax
	addl	$2, %eax
                                        # kill: def $al killed $al killed $eax
	movb	%al, -33(%rbp)
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	jmp	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_8
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movb	-33(%rbp), %dl
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_17:
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	$0, (%rax,%rcx)
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
	.asciz	"aeiouAEIOU"
	.size	.L.str, 11

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __ctype_b_loc
	.addrsig_sym toupper
	.addrsig_sym tolower
