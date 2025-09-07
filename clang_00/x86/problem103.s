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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_2
# %bb.1:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB0_5
# %bb.3:
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB0_5
# %bb.4:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_8
.LBB0_5:
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB0_7
# %bb.6:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_8
.LBB0_7:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_8:
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
