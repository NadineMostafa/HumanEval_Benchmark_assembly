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
	subq	$16, %rsp
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movss	%xmm2, -16(%rbp)
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	callq	roundf@PLT
	ucomiss	-8(%rbp), %xmm0
	jne	.LBB0_1
	jp	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_2:
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	roundf@PLT
	ucomiss	-12(%rbp), %xmm0
	jne	.LBB0_3
	jp	.LBB0_3
	jmp	.LBB0_4
.LBB0_3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_4:
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	roundf@PLT
	ucomiss	-16(%rbp), %xmm0
	jne	.LBB0_5
	jp	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_6:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	ucomiss	-16(%rbp), %xmm0
	jne	.LBB0_7
	jp	.LBB0_7
	jmp	.LBB0_9
.LBB0_7:
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	ucomiss	-12(%rbp), %xmm0
	jne	.LBB0_8
	jp	.LBB0_8
	jmp	.LBB0_9
.LBB0_8:
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	ucomiss	-8(%rbp), %xmm0
	jne	.LBB0_10
	jp	.LBB0_10
.LBB0_9:
	movl	$1, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:
	movl	$0, -4(%rbp)
.LBB0_11:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
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
