	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	movss	(%rdi), %xmm2                   # xmm2 = mem[0],zero,zero,zero
	movl	%esi, %r8d
	movaps	%xmm2, %xmm0
	movaps	%xmm2, %xmm1
	cmpl	$2, %esi
	jl	.LBB0_7
# %bb.1:
	leaq	-1(%r8), %rcx
	leaq	-2(%r8), %rdx
	movl	%ecx, %eax
	andl	$3, %eax
	cmpq	$3, %rdx
	jae	.LBB0_20
# %bb.2:
	movl	$1, %edx
	movaps	%xmm2, %xmm3
	movaps	%xmm2, %xmm4
	jmp	.LBB0_4
.LBB0_20:
	andq	$-4, %rcx
	xorl	%edx, %edx
	movaps	%xmm2, %xmm3
	movaps	%xmm2, %xmm4
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movss	4(%rdi,%rdx,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	8(%rdi,%rdx,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm5
	minss	%xmm4, %xmm5
	maxss	%xmm3, %xmm0
	movaps	%xmm1, %xmm3
	minss	%xmm5, %xmm3
	maxss	%xmm0, %xmm1
	movss	12(%rdi,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm5
	minss	%xmm3, %xmm5
	maxss	%xmm1, %xmm0
	movss	16(%rdi,%rdx,4), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm4
	minss	%xmm5, %xmm4
	maxss	%xmm0, %xmm3
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_21
# %bb.3:
	addq	$1, %rdx
.LBB0_4:
	movaps	%xmm4, %xmm0
	movaps	%xmm3, %xmm1
	testq	%rax, %rax
	je	.LBB0_7
# %bb.5:
	leaq	(%rdi,%rdx,4), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movss	(%rcx,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm0
	minss	%xmm4, %xmm0
	maxss	%xmm3, %xmm1
	addq	$1, %rdx
	movaps	%xmm1, %xmm3
	movaps	%xmm0, %xmm4
	cmpq	%rdx, %rax
	jne	.LBB0_6
.LBB0_7:
	testl	%esi, %esi
	jle	.LBB0_19
# %bb.8:
	subss	%xmm0, %xmm1
	subss	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	movss	%xmm2, (%rdi)
	cmpl	$1, %esi
	je	.LBB0_19
# %bb.9:
	leaq	-1(%r8), %r9
	movl	$1, %ecx
	cmpq	$4, %r9
	jb	.LBB0_18
# %bb.10:
	movq	%r9, %rcx
	andq	$-4, %rcx
	movaps	%xmm0, %xmm2
	shufps	$0, %xmm0, %xmm2                # xmm2 = xmm2[0,0],xmm0[0,0]
	movaps	%xmm1, %xmm3
	shufps	$0, %xmm1, %xmm3                # xmm3 = xmm3[0,0],xmm1[0,0]
	leaq	-4(%rcx), %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	addq	$1, %rdx
	testq	%rax, %rax
	je	.LBB0_11
# %bb.12:
	movq	%rdx, %rax
	andq	$-2, %rax
	movl	$1, %esi
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movups	(%rdi,%rsi,4), %xmm4
	movups	16(%rdi,%rsi,4), %xmm5
	subps	%xmm2, %xmm4
	divps	%xmm3, %xmm4
	movups	%xmm4, (%rdi,%rsi,4)
	subps	%xmm2, %xmm5
	divps	%xmm3, %xmm5
	movups	%xmm5, 16(%rdi,%rsi,4)
	addq	$8, %rsi
	addq	$-2, %rax
	jne	.LBB0_13
# %bb.14:
	testb	$1, %dl
	je	.LBB0_16
.LBB0_15:
	movups	(%rdi,%rsi,4), %xmm4
	subps	%xmm2, %xmm4
	divps	%xmm3, %xmm4
	movups	%xmm4, (%rdi,%rsi,4)
.LBB0_16:
	cmpq	%rcx, %r9
	je	.LBB0_19
# %bb.17:
	orq	$1, %rcx
	.p2align	4, 0x90
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movss	(%rdi,%rcx,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	subss	%xmm0, %xmm2
	divss	%xmm1, %xmm2
	movss	%xmm2, (%rdi,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %r8
	jne	.LBB0_18
.LBB0_19:
	retq
.LBB0_11:
	movl	$1, %esi
	testb	$1, %dl
	jne	.LBB0_15
	jmp	.LBB0_16
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
