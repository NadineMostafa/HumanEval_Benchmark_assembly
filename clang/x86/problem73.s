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
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
                                        # kill: def $esi killed $esi def $rsi
	movl	%esi, %r9d
	shrl	$31, %r9d
	addl	%esi, %r9d
	movl	%r9d, %r8d
	sarl	%r8d
	xorl	%r11d, %r11d
	cmpl	$2, %esi
	jl	.LBB0_5
# %bb.1:
	movl	%r8d, %r10d
	leal	-1(%rsi), %ebp
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %ebx
	movslq	%ebp, %rcx
	cmpl	(%rdi,%rcx,4), %ebx
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	leal	(%r11,%rbx,2), %r11d
	addq	$1, %rax
	addl	$-1, %ebp
	cmpq	%rax, %r10
	jne	.LBB0_2
.LBB0_5:
	andl	$-2, %r9d
	subl	%r9d, %esi
	cmpl	$1, %esi
	jne	.LBB0_7
# %bb.6:
	movslq	%r8d, %rax
	addl	(%rdi,%rax,4), %r11d
.LBB0_7:
	cmpl	%edx, %r11d
	setle	%al
	jmp	.LBB0_8
.LBB0_3:
	xorl	%eax, %eax
.LBB0_8:
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
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
