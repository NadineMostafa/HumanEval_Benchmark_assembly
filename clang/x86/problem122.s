	.text
	.file	"code.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function func0
.LCPI0_0:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.text
	.globl	func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	jle	.LBB0_1
# %bb.2:
	addl	$-1, %esi
	movl	%esi, %r10d
	shrl	%r10d
	addl	$1, %r10d
	xorl	%r9d, %r9d
	cmpl	$16, %esi
	jae	.LBB0_4
# %bb.3:
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_1:
	xorl	%eax, %eax
	retq
.LBB0_4:
	movl	%r10d, %eax
	andl	$7, %eax
	testq	%rax, %rax
	movl	$8, %r8d
	cmovneq	%rax, %r8
	movq	%r10, %rsi
	subq	%r8, %rsi
	leaq	(%rsi,%rsi), %r8
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movdqa	.LCPI0_0(%rip), %xmm2           # xmm2 = [1,1,1,1]
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movups	(%rdi,%rax,8), %xmm3
	movups	16(%rdi,%rax,8), %xmm4
	shufps	$136, %xmm4, %xmm3              # xmm3 = xmm3[0,2],xmm4[0,2]
	movups	32(%rdi,%rax,8), %xmm4
	movups	48(%rdi,%rax,8), %xmm5
	shufps	$136, %xmm5, %xmm4              # xmm4 = xmm4[0,2],xmm5[0,2]
	movaps	%xmm3, %xmm5
	psrld	$31, %xmm5
	paddd	%xmm3, %xmm5
	psrad	$1, %xmm5
	paddd	%xmm5, %xmm5
	movdqa	%xmm3, %xmm6
	psubd	%xmm5, %xmm6
	movaps	%xmm4, %xmm5
	psrld	$31, %xmm5
	paddd	%xmm4, %xmm5
	psrad	$1, %xmm5
	paddd	%xmm5, %xmm5
	movdqa	%xmm4, %xmm7
	psubd	%xmm5, %xmm7
	pcmpeqd	%xmm2, %xmm6
	pcmpeqd	%xmm2, %xmm7
	pand	%xmm3, %xmm6
	paddd	%xmm6, %xmm0
	pand	%xmm4, %xmm7
	paddd	%xmm7, %xmm1
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.LBB0_5
# %bb.6:
	paddd	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
.LBB0_7:
	subq	%rsi, %r10
	leaq	(%rdi,%r8,4), %r8
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rdi,8), %esi
	movl	%esi, %edx
	shrl	$31, %edx
	addl	%esi, %edx
	andl	$-2, %edx
	movl	%esi, %ecx
	subl	%edx, %ecx
	cmpl	$1, %ecx
	cmovnel	%r9d, %esi
	addl	%esi, %eax
	addq	$1, %rdi
	cmpq	%rdi, %r10
	jne	.LBB0_8
# %bb.9:
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
