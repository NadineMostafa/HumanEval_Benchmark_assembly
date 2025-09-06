	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	strlen@PLT
	movb	$1, %cl
	cmpl	$2, %eax
	jl	.LBB0_7
# %bb.1:
	movb	(%rbx), %cl
	leal	-1(%rax), %edx
	movslq	%edx, %rdx
	cmpb	(%rbx,%rdx), %cl
	jne	.LBB0_2
# %bb.3:
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movabsq	$-4294967296, %r9               # imm = 0xFFFFFFFF00000000
	movslq	%ecx, %r8
	movl	%r8d, %r10d
	shlq	$32, %rax
	movabsq	$-8589934592, %rdi              # imm = 0xFFFFFFFE00000000
	addq	%rax, %rdi
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	cmpq	%rcx, %r10
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movzbl	(%rbx,%rax), %edx
	movq	%rdi, %rsi
	sarq	$32, %rsi
	leaq	1(%rax), %rcx
	addq	%r9, %rdi
	cmpb	(%rbx,%rsi), %dl
	je	.LBB0_4
.LBB0_6:
	cmpq	%r8, %rax
	setge	%cl
	jmp	.LBB0_7
.LBB0_2:
	xorl	%ecx, %ecx
.LBB0_7:
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
