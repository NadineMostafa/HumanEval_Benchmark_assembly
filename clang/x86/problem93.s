	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movss	%xmm2, 4(%rsp)                  # 4-byte Spill
	movss	%xmm1, 8(%rsp)                  # 4-byte Spill
	movss	%xmm0, 16(%rsp)                 # 4-byte Spill
	callq	roundf@PLT
	movss	%xmm0, 20(%rsp)                 # 4-byte Spill
	movss	8(%rsp), %xmm0                  # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	roundf@PLT
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	movss	4(%rsp), %xmm0                  # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	roundf@PLT
	movss	16(%rsp), %xmm3                 # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	movss	20(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm1
	jne	.LBB0_4
	jp	.LBB0_4
# %bb.1:
	movss	8(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	12(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB0_4
	jp	.LBB0_4
# %bb.2:
	movss	4(%rsp), %xmm2                  # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	jne	.LBB0_4
	jp	.LBB0_4
# %bb.3:
	movaps	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	%xmm2, %xmm0
	setnp	%al
	sete	%cl
	andb	%al, %cl
	movaps	%xmm3, %xmm0
	addss	%xmm2, %xmm0
	ucomiss	%xmm1, %xmm0
	setnp	%al
	sete	%dl
	andb	%al, %dl
	orb	%cl, %dl
	addss	%xmm2, %xmm1
	ucomiss	%xmm3, %xmm1
	setnp	%al
	sete	%cl
	andb	%al, %cl
	orb	%dl, %cl
	movzbl	%cl, %eax
.LBB0_4:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
