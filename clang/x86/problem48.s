	.text
	.file	"code.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function func0
.LCPI0_0:
	.long	0x3f000000                      # float 0.5
	.text
	.globl	func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	jle	.LBB0_4
# %bb.1:
	movl	%esi, %r8d
	xorl	%r9d, %r9d
	movq	%r8, %r10
	movq	%rdi, %rdx
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$4, %rdx
	addq	$-1, %r10
	cmpq	%r8, %r9
	je	.LBB0_4
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	movq	%r9, %rax
	addq	$1, %r9
	cmpq	%r8, %r9
	jae	.LBB0_3
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %ecx
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=2
	addq	$1, %rcx
	cmpq	%rcx, %r10
	je	.LBB0_3
.LBB0_8:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rdi,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	(%rdx,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	movss	%xmm1, (%rdi,%rax,4)
	movss	%xmm0, (%rdx,%rcx,4)
	jmp	.LBB0_10
.LBB0_4:
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	movl	%eax, %ecx
	sarl	%ecx
	andl	$-2, %eax
	subl	%eax, %esi
	movslq	%ecx, %rax
	movss	(%rdi,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cmpl	$1, %esi
	je	.LBB0_6
# %bb.5:
	addss	-4(%rdi,%rax,4), %xmm0
	mulss	.LCPI0_0(%rip), %xmm0
.LBB0_6:
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
