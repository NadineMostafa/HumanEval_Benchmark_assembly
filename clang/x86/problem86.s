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
	xorl	%eax, %eax
	cmpl	$2, %esi
	jl	.LBB0_8
# %bb.1:
	addl	$-2, %esi
	movl	%esi, %ecx
	shrl	%ecx
	addl	$1, %ecx
	xorl	%r9d, %r9d
	cmpl	$16, %esi
	jae	.LBB0_3
# %bb.2:
	movl	$1, %r8d
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_3:
	movl	%ecx, %eax
	andl	$7, %eax
	testq	%rax, %rax
	movl	$8, %r8d
	cmovneq	%rax, %r8
	movq	%rcx, %rsi
	subq	%r8, %rsi
	leaq	(%rsi,%rsi), %r8
	addq	$1, %r8
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movaps	.LCPI0_0(%rip), %xmm3           # xmm3 = [1,1,1,1]
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movups	4(%rdi,%rax,8), %xmm4
	movups	20(%rdi,%rax,8), %xmm5
	shufps	$136, %xmm5, %xmm4              # xmm4 = xmm4[0,2],xmm5[0,2]
	movups	36(%rdi,%rax,8), %xmm5
	movups	52(%rdi,%rax,8), %xmm6
	shufps	$136, %xmm6, %xmm5              # xmm5 = xmm5[0,2],xmm6[0,2]
	movaps	%xmm4, %xmm6
	andps	%xmm3, %xmm6
	movaps	%xmm5, %xmm7
	andps	%xmm3, %xmm7
	pcmpeqd	%xmm0, %xmm6
	pand	%xmm4, %xmm6
	paddd	%xmm6, %xmm2
	pcmpeqd	%xmm0, %xmm7
	pand	%xmm5, %xmm7
	paddd	%xmm7, %xmm1
	addq	$8, %rax
	cmpq	%rax, %rsi
	jne	.LBB0_4
# %bb.5:
	paddd	%xmm2, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %eax
.LBB0_6:
	subq	%rsi, %rcx
	leaq	(%rdi,%r8,4), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rdi,8), %edx
	testb	$1, %dl
	cmovnel	%r9d, %edx
	addl	%edx, %eax
	addq	$1, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB0_7
.LBB0_8:
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
