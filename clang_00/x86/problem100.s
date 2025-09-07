	.text
	.file	"code.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function func0
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	atof@PLT
	movsd	%xmm0, -16(%rbp)
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB0_2
# %bb.1:
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	ceil@PLT
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	callq	floor@PLT
	movsd	%xmm0, -24(%rbp)                # 8-byte Spill
.LBB0_3:
	movsd	-24(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	addq	$32, %rsp
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
	.addrsig_sym atof
