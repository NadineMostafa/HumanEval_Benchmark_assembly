	.text
	.file	"code.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function func0
.LCPI0_0:
	.long	0x7f7fffff                      # float 3.40282347E+38
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_1:
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
	movss	(%rdi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, (%rdx)
	movss	4(%rdi), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rdx)
	testl	%esi, %esi
	jle	.LBB0_8
# %bb.1:
	movl	%esi, %r8d
	movss	.LCPI0_0(%rip), %xmm3           # xmm3 = mem[0],zero,zero,zero
	xorl	%r9d, %r9d
	movaps	.LCPI0_1(%rip), %xmm2           # xmm2 = [NaN,NaN,NaN,NaN]
	movq	%r8, %r10
	movq	%rdi, %rsi
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$4, %rsi
	addq	$-1, %r10
	cmpq	%r8, %r9
	je	.LBB0_8
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	%r9, %rax
	addq	$1, %r9
	cmpq	%r8, %r9
	jae	.LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$1, %ecx
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=2
	addq	$1, %rcx
	cmpq	%rcx, %r10
	je	.LBB0_2
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rdi,%rax,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm5
	subss	(%rsi,%rcx,4), %xmm5
	andps	%xmm2, %xmm5
	ucomiss	%xmm5, %xmm3
	jbe	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movss	%xmm4, (%rdx)
	movss	(%rsi,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 4(%rdx)
	movaps	%xmm4, %xmm1
	movaps	%xmm5, %xmm3
	jmp	.LBB0_7
.LBB0_8:
	ucomiss	%xmm0, %xmm1
	jbe	.LBB0_10
# %bb.9:
	movss	%xmm0, (%rdx)
	movss	%xmm1, 4(%rdx)
.LBB0_10:
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
