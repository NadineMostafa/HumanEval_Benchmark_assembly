	.text
	.file	"code.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function func0
.LCPI0_0:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
	.text
	.globl	func0
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -32(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$0, -32(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	subss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [NaN,NaN]
	pand	%xmm0, %xmm1
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movss	-24(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
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
