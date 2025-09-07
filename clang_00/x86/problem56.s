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
	subq	$4032, %rsp                     # imm = 0xFC0
	movl	%edi, -4(%rbp)
	leaq	-4016(%rbp), %rdi
	xorl	%esi, %esi
	movl	$4000, %edx                     # imm = 0xFA0
	callq	memset@PLT
	movl	$0, -4016(%rbp)
	movl	$1, -4012(%rbp)
	movl	$2, -4020(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4020(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4020(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-4016(%rbp,%rax,4), %ecx
	movl	-4020(%rbp), %eax
	subl	$2, %eax
	cltq
	addl	-4016(%rbp,%rax,4), %ecx
	movslq	-4020(%rbp), %rax
	movl	%ecx, -4016(%rbp,%rax,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4020(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movslq	-4(%rbp), %rax
	movl	-4016(%rbp,%rax,4), %eax
	addq	$4032, %rsp                     # imm = 0xFC0
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
