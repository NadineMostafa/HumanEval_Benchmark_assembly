	.text
	.file	"code.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function func0
.LCPI0_0:
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.text
	.globl	func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	subq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 288
                                        # kill: def $edi killed $edi def $rdi
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,0,2,0]
	movaps	%xmm0, -128(%rsp)
	cmpl	$4, %edi
	jl	.LBB0_7
# %bb.1:
	leal	1(%rdi), %eax
	movl	$2, -112(%rsp)
	cmpl	$5, %eax
	je	.LBB0_7
# %bb.2:
	movl	%edi, %r8d
	cmpl	$6, %eax
	jne	.LBB0_8
# %bb.3:
	movl	$4, %edx
	movl	$2, %ecx
	movl	$5, %eax
	movl	$2, %esi
	testb	$1, %r8b
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_8:
	leaq	-4(%r8), %r9
	andq	$-2, %r9
	negq	%r9
	movl	$2, %ecx
	movl	$4, %edx
	movl	$2, %esi
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-132(%rsp,%rdx,4), %eax
	addl	%eax, %ecx
	addl	%esi, %ecx
	movl	-128(%rsp,%rdx,4), %esi
	addl	-140(%rsp,%rdx,4), %ecx
	movl	%ecx, -124(%rsp,%rdx,4)
	addl	%esi, %ecx
	addl	%eax, %ecx
	addl	-136(%rsp,%rdx,4), %ecx
	movl	%ecx, -120(%rsp,%rdx,4)
	leaq	(%r9,%rdx), %rax
	addq	$2, %rax
	addq	$2, %rdx
	cmpq	$4, %rax
	jne	.LBB0_9
# %bb.4:
	leaq	1(%rdx), %rax
	testb	$1, %r8b
	je	.LBB0_7
.LBB0_6:
	addl	-132(%rsp,%rdx,4), %ecx
	addl	%esi, %ecx
	addl	-140(%rsp,%rdx,4), %ecx
	movl	%ecx, -128(%rsp,%rax,4)
.LBB0_7:
	movslq	%edi, %rax
	movl	-128(%rsp,%rax,4), %eax
	addq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
