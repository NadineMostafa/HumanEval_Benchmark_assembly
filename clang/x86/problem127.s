	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movb	$1, %al
	cmpl	$2, %esi
	jl	.LBB0_8
# %bb.1:
	movl	%esi, %r8d
	movl	(%rdi), %r9d
	movl	$1, %edx
	movl	$4294967295, %r10d              # imm = 0xFFFFFFFF
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rdx
	addq	$1, %r10
	cmpq	%rdx, %r8
	je	.LBB0_8
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	%r9d, %ecx
	movl	(%rdi,%rdx,4), %r9d
	cmpl	%ecx, %r9d
	jl	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$2, %rdx
	jb	.LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpl	%ecx, %r9d
	jne	.LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r10d, %esi
	cmpl	(%rdi,%rsi,4), %ecx
	jne	.LBB0_2
.LBB0_7:
	xorl	%eax, %eax
.LBB0_8:
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
