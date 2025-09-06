	.text
	.file	"code.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function func0
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_2:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI0_3:
	.quad	0x8000000000000000              # double -0
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
	movsd	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	movl	%esi, %r9d
	movapd	%xmm1, %xmm2
	cmpl	$2, %esi
	jl	.LBB0_9
# %bb.1:
	movl	$1, %edx
	xorl	%r8d, %r8d
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	xorpd	%xmm3, %xmm3
	movapd	%xmm1, %xmm2
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	mulsd	(%rdi,%rdx,8), %xmm4
	addsd	%xmm4, %xmm2
	addq	$1, %rdx
	addq	$1, %r8
	cmpq	%r9, %rdx
	je	.LBB0_9
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_7 Depth 2
	movapd	%xmm0, %xmm4
	cmpq	$7, %r8
	jb	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
	andq	$-8, %rcx
	movapd	%xmm0, %xmm4
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	addq	$-8, %rcx
	jne	.LBB0_4
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	testb	$7, %dl
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mulsd	%xmm3, %xmm4
	addq	$-1, %rax
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_9:
	movapd	.LCPI0_1(%rip), %xmm3           # xmm3 = [NaN,NaN]
	andpd	%xmm2, %xmm3
	xorpd	%xmm0, %xmm0
	ucomisd	.LCPI0_2(%rip), %xmm3
	jbe	.LBB0_33
# %bb.10:
	xorpd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm6           # xmm6 = mem[0],zero
	movapd	.LCPI0_1(%rip), %xmm9           # xmm9 = [NaN,NaN]
	movsd	.LCPI0_2(%rip), %xmm5           # xmm5 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm8           # xmm8 = mem[0],zero
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=1
	divsd	%xmm8, %xmm2
	addsd	%xmm2, %xmm0
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=1
	movapd	%xmm1, %xmm2
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	movapd	%xmm2, %xmm3
	andpd	%xmm9, %xmm3
	ucomisd	%xmm5, %xmm3
	jbe	.LBB0_33
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_22 Depth 3
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	cmpl	$2, %esi
	jl	.LBB0_11
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	xorpd	%xmm7, %xmm7
	movl	$1, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	xorps	%xmm4, %xmm4
	cvtsi2sd	%ecx, %xmm4
	mulsd	(%rdi,%rcx,8), %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm7
	addq	$1, %rcx
	addq	$1, %rax
	cmpq	%r9, %rcx
	je	.LBB0_24
.LBB0_16:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_19 Depth 3
                                        #       Child Loop BB0_22 Depth 3
	movapd	%xmm6, %xmm3
	cmpq	$2, %rcx
	jb	.LBB0_23
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	leaq	-1(%rax), %rdx
	movapd	%xmm6, %xmm3
	cmpq	$7, %rdx
	jb	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	movq	%rax, %rdx
	andq	$-8, %rdx
	movapd	%xmm6, %xmm3
	.p2align	4, 0x90
.LBB0_19:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	addq	$-8, %rdx
	jne	.LBB0_19
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	testb	$7, %al
	je	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=2
	movl	%eax, %edx
	andl	$7, %edx
	.p2align	4, 0x90
.LBB0_22:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mulsd	%xmm0, %xmm3
	addq	$-1, %rdx
	jne	.LBB0_22
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=1
	divsd	%xmm7, %xmm2
	subsd	%xmm2, %xmm0
	cmpl	$2, %esi
	jl	.LBB0_12
# %bb.25:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$1, %ecx
	xorl	%edx, %edx
	movapd	%xmm1, %xmm2
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_26 Depth=2
	mulsd	(%rdi,%rcx,8), %xmm3
	addsd	%xmm3, %xmm2
	addq	$1, %rcx
	addq	$1, %rdx
	cmpq	%r9, %rcx
	je	.LBB0_13
.LBB0_26:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	movapd	%xmm6, %xmm3
	cmpq	$7, %rdx
	jb	.LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=2
	movq	%rcx, %rax
	andq	$-8, %rax
	movapd	%xmm6, %xmm3
	.p2align	4, 0x90
.LBB0_28:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	addq	$-8, %rax
	jne	.LBB0_28
.LBB0_29:                               #   in Loop: Header=BB0_26 Depth=2
	testb	$7, %cl
	je	.LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_26 Depth=2
	movl	%ecx, %eax
	andl	$7, %eax
	.p2align	4, 0x90
.LBB0_31:                               #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	mulsd	%xmm0, %xmm3
	addq	$-1, %rax
	jne	.LBB0_31
	jmp	.LBB0_32
.LBB0_33:
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
