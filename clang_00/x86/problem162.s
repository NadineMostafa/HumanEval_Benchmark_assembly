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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$1024, %eax                     # imm = 0x400
	cmpl	$0, %eax
	je	.LBB0_9
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$256, %eax                      # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movzbl	(%rax,%rcx), %edi
	callq	tolower@PLT
	movb	%al, %dl
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	jmp	.LBB0_8
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	andl	$512, %eax                      # imm = 0x200
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movzbl	(%rax,%rcx), %edi
	callq	toupper@PLT
	movb	%al, %dl
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB0_18
# %bb.13:
	movl	$0, -24(%rbp)
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movl	-16(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-32(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	subl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movb	-25(%rbp), %dl
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	subl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_14
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
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
	.addrsig_sym __ctype_b_loc
	.addrsig_sym tolower
	.addrsig_sym toupper
