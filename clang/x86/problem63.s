	.text
	.file	"code.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function func0
.LCPI0_0:
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
.LCPI0_1:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
.LCPI0_2:
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	8                               # 0x8
.LCPI0_3:
	.long	12                              # 0xc
	.long	12                              # 0xc
	.long	12                              # 0xc
	.long	12                              # 0xc
.LCPI0_4:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.globl	func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	cmpl	$2, %esi
	jl	.LBB0_16
# %bb.1:
	movl	%esi, %r10d
	leaq	-1(%r10), %r8
	movl	$1, %ecx
	cmpq	$8, %r8
	jb	.LBB0_12
# %bb.2:
	leaq	(%rdi,%r10,4), %rax
	cmpq	%rdx, %rax
	jbe	.LBB0_4
# %bb.3:
	leaq	(%rdx,%r10,4), %rax
	addq	$-4, %rax
	leaq	4(%rdi), %rsi
	cmpq	%rax, %rsi
	jb	.LBB0_12
.LBB0_4:
	movq	%r8, %rcx
	andq	$-8, %rcx
	leaq	-8(%rcx), %rax
	movq	%rax, %r9
	shrq	$3, %r9
	addq	$1, %r9
	testq	%rax, %rax
	je	.LBB0_5
# %bb.6:
	movq	%r9, %rax
	andq	$-2, %rax
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [1,2,3,4]
	xorl	%esi, %esi
	movdqa	.LCPI0_1(%rip), %xmm1           # xmm1 = [4,4,4,4]
	movdqa	.LCPI0_2(%rip), %xmm2           # xmm2 = [8,8,8,8]
	movdqa	.LCPI0_3(%rip), %xmm3           # xmm3 = [12,12,12,12]
	movdqa	.LCPI0_4(%rip), %xmm4           # xmm4 = [16,16,16,16]
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm5
	paddd	%xmm1, %xmm5
	cvtdq2ps	%xmm0, %xmm6
	cvtdq2ps	%xmm5, %xmm5
	movups	4(%rdi,%rsi,4), %xmm7
	mulps	%xmm6, %xmm7
	movups	20(%rdi,%rsi,4), %xmm6
	mulps	%xmm5, %xmm6
	movups	%xmm7, (%rdx,%rsi,4)
	movups	%xmm6, 16(%rdx,%rsi,4)
	movdqa	%xmm0, %xmm5
	paddd	%xmm2, %xmm5
	movdqa	%xmm0, %xmm6
	paddd	%xmm3, %xmm6
	cvtdq2ps	%xmm5, %xmm5
	cvtdq2ps	%xmm6, %xmm6
	movups	36(%rdi,%rsi,4), %xmm7
	mulps	%xmm5, %xmm7
	movups	52(%rdi,%rsi,4), %xmm5
	mulps	%xmm6, %xmm5
	movups	%xmm7, 32(%rdx,%rsi,4)
	movups	%xmm5, 48(%rdx,%rsi,4)
	addq	$16, %rsi
	paddd	%xmm4, %xmm0
	addq	$-2, %rax
	jne	.LBB0_7
# %bb.8:
	testb	$1, %r9b
	je	.LBB0_10
.LBB0_9:
	cvtdq2ps	%xmm0, %xmm1
	paddd	.LCPI0_1(%rip), %xmm0
	cvtdq2ps	%xmm0, %xmm0
	leaq	(,%rsi,4), %rax
	orq	$4, %rax
	movups	(%rdi,%rax), %xmm2
	mulps	%xmm1, %xmm2
	movups	16(%rdi,%rax), %xmm1
	mulps	%xmm0, %xmm1
	movups	%xmm2, (%rdx,%rsi,4)
	movups	%xmm1, 16(%rdx,%rsi,4)
.LBB0_10:
	cmpq	%rcx, %r8
	je	.LBB0_16
# %bb.11:
	orq	$1, %rcx
.LBB0_12:
	movq	%rcx, %rax
	notq	%rax
	testb	$1, %r10b
	jne	.LBB0_14
# %bb.13:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	(%rdi,%rcx,4), %xmm0
	movss	%xmm0, -4(%rdx,%rcx,4)
	addq	$1, %rcx
.LBB0_14:
	addq	%r10, %rax
	je	.LBB0_16
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	mulss	(%rdi,%rcx,4), %xmm0
	leal	1(%rcx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movss	%xmm0, -4(%rdx,%rcx,4)
	mulss	4(%rdi,%rcx,4), %xmm1
	movss	%xmm1, (%rdx,%rcx,4)
	addq	$2, %rcx
	cmpq	%r10, %rcx
	jne	.LBB0_15
.LBB0_16:
	retq
.LBB0_5:
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [1,2,3,4]
	xorl	%esi, %esi
	testb	$1, %r9b
	jne	.LBB0_9
	jmp	.LBB0_10
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
