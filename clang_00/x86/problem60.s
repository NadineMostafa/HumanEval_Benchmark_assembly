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
	movl	%edi, -4(%rbp)
	movl	$2, -8(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-8(%rbp), %eax
	imull	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %edx
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	setg	%al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
	movb	-9(%rbp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_9:
	movl	-4(%rbp), %eax
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
