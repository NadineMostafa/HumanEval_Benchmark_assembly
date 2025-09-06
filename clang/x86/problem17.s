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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$1024, %rsp                     # imm = 0x400
	.cfi_def_cfa_offset 1072
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	%rsp, %rdi
	xorl	%r14d, %r14d
	movl	$1024, %edx                     # imm = 0x400
	xorl	%esi, %esi
	callq	memset@PLT
	movb	(%rbp), %bl
	testb	%bl, %bl
	je	.LBB0_6
# %bb.1:
	callq	__ctype_tolower_loc@PLT
	movq	(%rax), %r15
	addq	$1, %rbp
	xorl	%r14d, %r14d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rbp), %ebx
	addq	$1, %rbp
	testb	%bl, %bl
	je	.LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	%bl, %eax
	movl	(%r15,%rax,4), %ebx
	movsbq	%bl, %r12
	cmpl	$0, (%rsp,%r12,4)
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzbl	%bl, %ecx
	testb	$4, 1(%rax,%rcx,2)
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$1, (%rsp,%r12,4)
	addl	$1, %r14d
	jmp	.LBB0_5
.LBB0_6:
	movl	%r14d, %eax
	addq	$1024, %rsp                     # imm = 0x400
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
