	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	callq	strlen@PLT
	cmpq	$3, %rax
	jae	.LBB0_1
.LBB0_6:
	xorl	%eax, %eax
.LBB0_7:
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:
	.cfi_def_cfa_offset 32
	movb	1(%r14), %dl
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, %ebx
	movzbl	(%r14,%rcx), %edx
	cmpb	%bl, %dl
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpb	-2(%r14,%rcx), %dl
	je	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_2
# %bb.5:
	movb	$1, %al
	jmp	.LBB0_7
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
