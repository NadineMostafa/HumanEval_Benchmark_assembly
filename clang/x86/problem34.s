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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	movslq	%esi, %rbx
	imulq	$1431655766, %rbx, %rax         # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	cltq
	leaq	4(,%rax,4), %rdi
	callq	malloc@PLT
	testl	%ebx, %ebx
	jle	.LBB0_15
# %bb.1:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	movl	(%r12,%rsi,4), %esi
	movl	%esi, (%rax,%rcx,4)
	addq	$1, %rcx
	addl	$3, %edx
	cmpl	%r15d, %edx
	jl	.LBB0_2
# %bb.3:
	cmpl	$2, %ecx
	jl	.LBB0_12
# %bb.4:
	leaq	-1(%rcx), %rdx
	movl	%edx, %r8d
	movl	%ecx, %edx
	movl	$1, %r11d
	xorl	%r9d, %r9d
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	addq	$1, %r11
	cmpq	%r8, %r9
	je	.LBB0_12
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	%r9, %r10
	addq	$1, %r9
	movq	%r11, %rsi
	movl	%r10d, %ecx
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=2
	addq	$1, %rsi
	movl	%ebx, %ecx
	cmpq	%rsi, %rdx
	je	.LBB0_9
.LBB0_6:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax,%rsi,4), %edi
	movslq	%ecx, %rbp
	movl	%esi, %ebx
	cmpl	(%rax,%rbp,4), %edi
	jl	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movl	%ecx, %ebx
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	movl	%ebx, %ecx
	cmpq	%rcx, %r10
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	movl	(%rax,%r10,4), %ecx
	movslq	%ebx, %rsi
	movl	(%rax,%rsi,4), %edi
	movl	%edi, (%rax,%r10,4)
	movl	%ecx, (%rax,%rsi,4)
	jmp	.LBB0_11
.LBB0_12:
	testl	%r15d, %r15d
	jle	.LBB0_15
# %bb.13:
	movl	%r15d, %ecx
	xorl	%edx, %edx
	movl	$2863311531, %esi               # imm = 0xAAAAAAAB
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %edi
	imulq	%rsi, %rdi
	shrq	$33, %rdi
	leal	(%rdi,%rdi,2), %ebp
	cmpl	%ebp, %edx
	leaq	(%rax,%rdi,4), %rdi
	cmovneq	%r12, %rdi
	movl	(%rdi), %edi
	movl	%edi, (%r14,%rdx,4)
	addq	$1, %rdx
	addq	$4, %r12
	cmpq	%rdx, %rcx
	jne	.LBB0_14
.LBB0_15:
	movq	%rax, %rdi
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
