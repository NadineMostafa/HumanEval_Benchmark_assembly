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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	leaq	-112(%rbp), %rdi
	leaq	.L__const.func0.names(%rip), %rsi
	movl	$80, %edx
	callq	memcpy@PLT
	movl	$0, -116(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-116(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -120(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-120(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-116(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-120(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movl	-120(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-120(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -124(%rbp)
	movq	-8(%rbp), %rax
	movl	-120(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-120(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-124(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-120(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -116(%rbp)
	jl	.LBB0_17
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-8(%rbp), %rax
	movslq	-116(%rbp), %rcx
	cmpl	$1, (%rax,%rcx,4)
	jl	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-8(%rbp), %rax
	movslq	-116(%rbp), %rcx
	cmpl	$9, (%rax,%rcx,4)
	jg	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-116(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_11
.LBB0_17:
	movq	-32(%rbp), %rax
	movslq	(%rax), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)
	movl	$0, -120(%rbp)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -116(%rbp)
	movb	%al, -125(%rbp)                 # 1-byte Spill
	jl	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-120(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	setl	%al
	movb	%al, -125(%rbp)                 # 1-byte Spill
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=1
	movb	-125(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_21
	jmp	.LBB0_26
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-8(%rbp), %rax
	movslq	-116(%rbp), %rcx
	cmpl	$1, (%rax,%rcx,4)
	jl	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-8(%rbp), %rax
	movslq	-116(%rbp), %rcx
	cmpl	$9, (%rax,%rcx,4)
	jg	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-8(%rbp), %rax
	movslq	-116(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rax
	movq	-112(%rbp,%rax,8), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-120(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -120(%rbp)
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-116(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_18
.LBB0_26:
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
	.zero	1
	.size	.L.str, 1

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"One"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Two"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Three"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Four"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Five"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Six"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Seven"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Eight"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Nine"
	.size	.L.str.9, 5

	.type	.L__const.func0.names,@object   # @__const.func0.names
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.func0.names:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.size	.L__const.func0.names, 80

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
