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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movslq	-12(%rbp), %rdi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_11
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	sprintf@PLT
	movl	$0, -44(%rbp)
	leaq	-40(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -48(%rbp)
	movl	$1, -52(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movslq	-52(%rbp), %rax
	movsbl	-40(%rbp,%rax), %eax
	subl	$48, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jle	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-40(%rbp), %eax
	subl	$48, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	-40(%rbp), %ecx
	subl	$48, %ecx
	movl	-44(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_11:
	movl	$0, -60(%rbp)
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_21
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movl	$1, -64(%rbp)
.LBB0_14:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-64(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-56(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movq	-8(%rbp), %rax
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-56(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_14
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_12
.LBB0_21:
	movq	-24(%rbp), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rax
	addq	$80, %rsp
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
	.asciz	"%d"
	.size	.L.str, 3

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym sprintf
	.addrsig_sym abs
	.addrsig_sym strlen
	.addrsig_sym free
