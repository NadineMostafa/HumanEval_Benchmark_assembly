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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	movl	$40, %edx
	callq	memset@PLT
	leaq	-128(%rbp), %rdi
	leaq	.L__const.func0.numto(%rip), %rsi
	movl	$80, %edx
	callq	memcpy@PLT
	movl	$0, -132(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_17
# %bb.1:
	jmp	.LBB0_2
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	movl	$0, -136(%rbp)
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movslq	-136(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$32, %ecx
	movb	%al, -151(%rbp)                 # 1-byte Spill
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-136(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -151(%rbp)                 # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
	movb	-151(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-136(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-136(%rbp), %rax
	movb	%cl, -150(%rbp,%rax)
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	movslq	-136(%rbp), %rax
	movb	$0, -150(%rbp,%rax)
	movl	$0, -140(%rbp)
.LBB0_9:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$10, -140(%rbp)
	jge	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	leaq	-150(%rbp), %rdi
	movslq	-140(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	movslq	-140(%rbp), %rax
	movl	-48(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -48(%rbp,%rax,4)
	jmp	.LBB0_14
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_2 Depth=1
	movl	-136(%rbp), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
# %bb.15:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, -1(%rax)
	jne	.LBB0_2
# %bb.16:
	jmp	.LBB0_17
.LBB0_17:
	movl	$0, -136(%rbp)
.LBB0_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_22 Depth 3
	cmpl	$10, -136(%rbp)
	jge	.LBB0_29
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movl	$0, -140(%rbp)
.LBB0_20:                               #   Parent Loop BB0_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_22 Depth 3
	movl	-140(%rbp), %eax
	movslq	-136(%rbp), %rcx
	cmpl	-48(%rbp,%rcx,4), %eax
	jge	.LBB0_27
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	movl	$0, -144(%rbp)
.LBB0_22:                               #   Parent Loop BB0_18 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-136(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movslq	-144(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=3
	movslq	-136(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movslq	-144(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movslq	-132(%rbp), %rcx
	leaq	func0.out(%rip), %rax
	movb	%dl, (%rax,%rcx)
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=3
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB0_22
.LBB0_25:                               #   in Loop: Header=BB0_20 Depth=2
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -132(%rbp)
	movslq	%eax, %rcx
	leaq	func0.out(%rip), %rax
	movb	$32, (%rax,%rcx)
# %bb.26:                               #   in Loop: Header=BB0_20 Depth=2
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB0_20
.LBB0_27:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_18 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB0_18
.LBB0_29:
	cmpl	$0, -132(%rbp)
	jle	.LBB0_31
# %bb.30:
	movl	-132(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	leaq	func0.out(%rip), %rax
	movb	$0, (%rax,%rcx)
	jmp	.LBB0_32
.LBB0_31:
	movb	$0, func0.out(%rip)
.LBB0_32:
	leaq	func0.out(%rip), %rax
	addq	$160, %rsp
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
	.asciz	"zero"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"one"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"two"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"three"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"four"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"five"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"six"
	.size	.L.str.6, 4

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"seven"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"eight"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"nine"
	.size	.L.str.9, 5

	.type	.L__const.func0.numto,@object   # @__const.func0.numto
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4
.L__const.func0.numto:
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
	.size	.L__const.func0.numto, 80

	.type	func0.out,@object               # @func0.out
	.local	func0.out
	.comm	func0.out,1000,16
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strcmp
	.addrsig_sym func0.out
