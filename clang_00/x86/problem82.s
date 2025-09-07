	.text
	.file	"code.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function func0
.LCPI0_0:
	.quad	0x400fffcb923a29c7              # double 3.9998999999999998
.LCPI0_1:
	.quad	0x400d99ce075f6fd2              # double 3.7000999999999999
.LCPI0_2:
	.quad	0x400a669ad42c3c9f              # double 3.3001
.LCPI0_3:
	.quad	0x400800346dc5d639              # double 3.0001000000000002
.LCPI0_4:
	.quad	0x400599ce075f6fd2              # double 2.7000999999999999
.LCPI0_5:
	.quad	0x4002669ad42c3c9f              # double 2.3001
.LCPI0_6:
	.quad	0x400000346dc5d639              # double 2.0001000000000002
.LCPI0_7:
	.quad	0x3ffb339c0ebedfa4              # double 1.7000999999999999
.LCPI0_8:
	.quad	0x3ff4cd35a858793e              # double 1.3001
.LCPI0_9:
	.quad	0x3ff00068db8bac71              # double 1.0001
.LCPI0_10:
	.quad	0x3fe667381d7dbf48              # double 0.70009999999999994
.LCPI0_11:
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	func0
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_40
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_38
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.1(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_37
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_2(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.2(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_36
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.3(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_35
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_4(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.4(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_34
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_5(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.5(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_33
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_6(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.6(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_32
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_7(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.7(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_31
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_8(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.8(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_30
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_9(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.9(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_29
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_10(%rip), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.10(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_11(%rip), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.11(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	leaq	.L.str.12(%rip), %rdx
	movq	%rdx, (%rax,%rcx,8)
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_38
.LBB0_38:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_39
.LBB0_39:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_40:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
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
	.asciz	"A+"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"A"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"A-"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"B+"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"B"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"B-"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"C+"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"C"
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"C-"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"D+"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"D"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"D-"
	.size	.L.str.11, 3

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"E"
	.size	.L.str.12, 2

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
