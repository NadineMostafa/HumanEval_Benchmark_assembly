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
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movb	(%r14), %dl
	xorl	%ecx, %ecx
	cmpb	$91, %dl
	sete	%cl
	xorl	%esi, %esi
	cmpb	$93, %dl
	sete	%sil
	xorl	%r8d, %r8d
	subl	%esi, %ecx
	cmovsl	%r8d, %ecx
	movl	$1, %edi
	movl	%ecx, %esi
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rdx
	cmpq	%rdi, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movzbl	(%r14,%rdx), %ebx
	xorl	%edi, %edi
	cmpb	$91, %bl
	sete	%dil
	addl	%edi, %esi
	xorl	%edi, %edi
	cmpb	$93, %bl
	sete	%dil
	subl	%edi, %esi
	cmovsl	%r8d, %esi
	cmpl	%ecx, %esi
	cmoval	%esi, %ecx
	leal	-2(%rcx), %ebx
	leaq	1(%rdx), %rdi
	cmpl	%ebx, %esi
	jg	.LBB0_3
.LBB0_5:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	seta	%cl
	jmp	.LBB0_6
.LBB0_1:
	xorl	%ecx, %ecx
.LBB0_6:
	movl	%ecx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
