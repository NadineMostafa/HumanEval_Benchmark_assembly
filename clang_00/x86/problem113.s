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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$0, %rdi
	callq	malloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	-8(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	.LBB0_11
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	-64(%rbp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$1, -65(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_3
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	testb	$1, -65(%rbp)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_1
.LBB0_11:
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-48(%rbp), %rdi
	callq	strlen@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -72(%rbp)
	movb	$1, -73(%rbp)
	movl	$0, -80(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movl	-72(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-84(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_17
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movq	-48(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	-72(%rbp), %edx
	subl	$1, %edx
	subl	-80(%rbp), %edx
	movslq	%edx, %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_15
# %bb.14:
	movb	$0, -73(%rbp)
	jmp	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_12
.LBB0_17:
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	strcpy@PLT
	movq	-32(%rbp), %rdi
	movb	-73(%rbp), %cl
	leaq	.L.str.1(%rip), %rsi
	leaq	.L.str(%rip), %rax
	testb	$1, %cl
	cmovneq	%rax, %rsi
	callq	strcpy@PLT
	movq	-48(%rbp), %rdi
	callq	free@PLT
	addq	$96, %rsp
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
	.asciz	"True"
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"False"
	.size	.L.str.1, 6

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym strlen
	.addrsig_sym malloc
	.addrsig_sym strcpy
	.addrsig_sym free
