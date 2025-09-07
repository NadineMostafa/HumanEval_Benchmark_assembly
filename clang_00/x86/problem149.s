	.text
	.file	"code.c"
	.globl	func0                           # -- Begin function func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	-96(%rbp), %rdi
	leaq	.L__const.func0.planets(%rip), %rsi
	movl	$64, %edx
	callq	memcpy@PLT
	movl	$-1, -100(%rbp)
	movl	$-1, -104(%rbp)
	movl	$0, -108(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$8, -108(%rbp)
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	cmpl	$-1, -100(%rbp)
	je	.LBB0_11
# %bb.9:
	cmpl	$-1, -104(%rbp)
	je	.LBB0_11
# %bb.10:
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB0_12
.LBB0_11:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_12:
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jle	.LBB0_14
# %bb.13:
	movl	-100(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB0_14:
	movl	-104(%rbp), %ecx
	subl	-100(%rbp), %ecx
	subl	$1, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jg	.LBB0_16
# %bb.15:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB0_21
.LBB0_16:
	movq	-32(%rbp), %rax
	movslq	(%rax), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, -120(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp,%rax,8), %rdx
	movq	-120(%rbp), %rax
	movl	-108(%rbp), %ecx
	subl	-100(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB0_17
.LBB0_20:
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_21:
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Mercury"
	.size	.L.str, 8

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Venus"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Earth"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Mars"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Jupiter"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Saturn"
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Uranus"
	.size	.L.str.6, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Neptune"
	.size	.L.str.7, 8

	.type	.L__const.func0.planets,@object # @__const.func0.planets
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.func0.planets:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.size	.L__const.func0.planets, 64

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym malloc
