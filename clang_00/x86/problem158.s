	.text
	.file	"code.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function func0
.LCPI0_0:
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
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
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movss	%xmm2, -16(%rbp)
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-12(%rbp), %xmm0
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movaps	.LCPI0_1(%rip), %xmm0           # xmm0 = [NaN,NaN]
	pand	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_3
# %bb.1:
	movss	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movaps	.LCPI0_1(%rip), %xmm0           # xmm0 = [NaN,NaN]
	pand	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_3
# %bb.2:
	movss	-12(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm2                # xmm2 = mem[0],zero,zero,zero
	movss	-16(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	mulss	%xmm2, %xmm1
	addss	%xmm0, %xmm1
	movss	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               # imm = 0x80000000
	movd	%eax, %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm1
	movaps	.LCPI0_1(%rip), %xmm0           # xmm0 = [NaN,NaN]
	pand	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_4
.LBB0_3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$0, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
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
