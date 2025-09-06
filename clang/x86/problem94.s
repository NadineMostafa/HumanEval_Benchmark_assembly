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
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movb	(%rdi), %bpl
	testb	%bpl, %bpl
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	callq	__ctype_b_loc@PLT
	movq	%rax, %r12
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	movsbq	%bpl, %r13
	movzwl	(%rax,%r13,2), %eax
	testl	$512, %eax                      # imm = 0x200
	jne	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	testl	$256, %eax                      # imm = 0x100
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	callq	__ctype_tolower_loc@PLT
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	callq	__ctype_toupper_loc@PLT
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	(%rax), %rax
	movzbl	(%rax,%r13,4), %ebp
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	leal	-65(%rbp), %eax
	cmpb	$52, %al
	ja	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	movzbl	%al, %eax
	movabsq	$4575140898685201, %rcx         # imm = 0x10411100104111
	btq	%rax, %rcx
	jae	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	addb	$2, %bpl
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movb	%bpl, (%r14,%rbx)
	movzbl	1(%r15,%rbx), %ebp
	addq	$1, %rbx
	testb	%bpl, %bpl
	jne	.LBB0_3
# %bb.12:
	movl	%ebx, %eax
	jmp	.LBB0_13
.LBB0_1:
	xorl	%eax, %eax
.LBB0_13:
	movb	$0, (%r14,%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
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
