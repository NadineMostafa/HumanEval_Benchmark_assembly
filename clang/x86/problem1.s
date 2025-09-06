	.text
	.file	"code.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function func0
.LCPI0_0:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.text
	.globl	func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	jle	.LBB0_9
# %bb.1:
	movl	%esi, %r8d
	xorl	%edx, %edx
	movaps	.LCPI0_0(%rip), %xmm1           # xmm1 = [NaN,NaN,NaN,NaN]
	movq	%r8, %rcx
	movq	%rdi, %rsi
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$4, %rsi
	addq	$-1, %rcx
	cmpq	%r8, %rdx
	je	.LBB0_9
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	%rdx, %rax
	addq	$1, %rdx
	cmpq	%r8, %rdx
	jae	.LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movss	(%rdi,%rax,4), %xmm2            # xmm2 = mem[0],zero,zero,zero
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movaps	%xmm2, %xmm3
	subss	(%rsi,%rax,4), %xmm3
	andps	%xmm1, %xmm3
	ucomiss	%xmm3, %xmm0
	ja	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	addq	$1, %rax
	cmpq	%rax, %rcx
	jne	.LBB0_5
	jmp	.LBB0_2
.LBB0_7:
	movl	$1, %eax
	retq
.LBB0_9:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
