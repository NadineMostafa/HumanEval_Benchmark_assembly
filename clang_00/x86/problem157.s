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
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-128(%rbp), %rdi
	leaq	.L__const.func0.rep(%rip), %rsi
	movl	$104, %edx
	callq	memcpy@PLT
	leaq	-192(%rbp), %rdi
	leaq	.L__const.func0.num(%rip), %rsi
	movl	$52, %edx
	callq	memcpy@PLT
	movl	$0, -196(%rbp)
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$0, -4(%rbp)
	jle	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	movslq	-196(%rbp), %rcx
	cmpl	-192(%rbp,%rcx,4), %eax
	jl	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-16(%rbp), %rdi
	movslq	-196(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rsi
	callq	strcat@PLT
	movslq	-196(%rbp), %rax
	movl	-192(%rbp,%rax,4), %ecx
	movl	-4(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -4(%rbp)
	jle	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_8:
	addq	$208, %rsp
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
	.asciz	"m"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cm"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"d"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"cd"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"c"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"xc"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"l"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"xl"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"x"
	.size	.L.str.8, 2

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"ix"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"v"
	.size	.L.str.10, 2

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"iv"
	.size	.L.str.11, 3

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"i"
	.size	.L.str.12, 2

	.type	.L__const.func0.rep,@object     # @__const.func0.rep
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.func0.rep:
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
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.size	.L__const.func0.rep, 104

	.type	.L__const.func0.num,@object     # @__const.func0.num
	.section	.rodata,"a",@progbits
	.p2align	4
.L__const.func0.num:
	.long	1000                            # 0x3e8
	.long	900                             # 0x384
	.long	500                             # 0x1f4
	.long	400                             # 0x190
	.long	100                             # 0x64
	.long	90                              # 0x5a
	.long	50                              # 0x32
	.long	40                              # 0x28
	.long	10                              # 0xa
	.long	9                               # 0x9
	.long	5                               # 0x5
	.long	4                               # 0x4
	.long	1                               # 0x1
	.size	.L__const.func0.num, 52

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcat
