	.text
	.file	"code.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function func0
.LCPI0_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_1:
	.quad	0xbfe0000000000000              # double -0.5
	.text
	.globl	func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%esi, %esi
	callq	strtod@PLT
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_2
# %bb.1:
	addsd	.LCPI0_1(%rip), %xmm0
	callq	ceil@PLT
	jmp	.LBB0_3
.LBB0_2:
	addsd	.LCPI0_0(%rip), %xmm0
	callq	floor@PLT
.LBB0_3:
	cvttsd2si	%xmm0, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
