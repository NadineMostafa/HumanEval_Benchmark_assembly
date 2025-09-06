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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, 12(%rsp)                  # 4-byte Spill
	movslq	%edi, %rbx
	leaq	(,%rbx,4), %rdi
	callq	malloc@PLT
	movq	%rax, %r14
	leal	1(%rbx), %r13d
	movslq	%r13d, %rbp
	shlq	$3, %rbp
	movq	%rbp, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rbp, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movl	%r13d, 8(%rsp)                  # 4-byte Spill
	movl	%r13d, %r13d
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	testl	%ebx, %ebx
	js	.LBB0_1
# %bb.20:
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	$3, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, (%r12,%rbp,8)
	movl	$3, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, (%r15,%rbp,8)
	addq	$1, %rbp
	cmpq	%rbp, %r13
	jne	.LBB0_21
# %bb.2:
	movq	(%r12), %r8
	movq	(%r15), %r9
	jmp	.LBB0_3
.LBB0_1:
                                        # implicit-def: $r9
                                        # implicit-def: $r8
.LBB0_3:
	movl	$0, 8(%r8)
	movq	$0, (%r8)
	movl	$0, 8(%r9)
	movq	$0, (%r9)
	movl	12(%rsp), %r11d                 # 4-byte Reload
	testl	%r11d, %r11d
	jle	.LBB0_9
# %bb.4:
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edi
	imull	%ecx, %edi
	addl	%edx, %edi
	movslq	%edi, %rdi
	imulq	$1431655766, %rdi, %rbp         # imm = 0x55555556
	movq	%rbp, %rax
	shrq	$63, %rax
	shrq	$32, %rbp
	addl	%eax, %ebp
	leal	(%rbp,%rbp,2), %eax
	subl	%eax, %edi
	movl	%edi, -4(%r14,%rcx,4)
	movq	(%r12,%rcx,8), %rax
	movl	(%rsi), %ebp
	movl	%ebp, (%rax)
	movl	4(%rsi), %ebp
	movl	%ebp, 4(%rax)
	movl	8(%rsi), %esi
	movl	%esi, 8(%rax)
	movslq	%edi, %rsi
	addl	$1, (%rax,%rsi,4)
	addq	$1, %rcx
	addl	$-1, %edx
	movq	%rax, %rsi
	cmpq	%rcx, %r13
	jne	.LBB0_5
# %bb.6:
	testl	%r11d, %r11d
	jle	.LBB0_9
# %bb.7:
	leaq	-2(%r13), %r10
	xorl	%esi, %esi
	movq	%r8, %rcx
	movq	%r9, %rdi
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	movq	8(%r15,%rsi,8), %rdi
	movl	(%rax), %ebp
	movl	%ebp, (%rdi)
	movl	4(%rax), %ebp
	movl	%ebp, 4(%rdi)
	movl	8(%rax), %eax
	movl	%eax, 8(%rdi)
	movslq	(%r14,%rsi,4), %rbp
	imulq	$1431655766, %rbp, %rax         # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	leal	(%rax,%rax,2), %eax
	leal	1(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx         # imm = 0x55555556
	movq	%rdx, %rbx
	shrq	$63, %rbx
	shrq	$32, %rdx
	addl	%ebx, %edx
	leal	(%rdx,%rdx,2), %edx
	negl	%edx
	addl	%ebp, %edx
	addl	$1, %edx
	movl	%ebp, %ebx
	subl	%eax, %ebx
	movl	(%rcx), %eax
	movslq	%ebx, %rbx
	addl	%eax, (%rdi,%rbx,4)
	movl	4(%rcx), %eax
	movslq	%edx, %rdx
	addl	%eax, (%rdi,%rdx,4)
	leal	2(%rbp), %eax
	cltq
	imulq	$1431655766, %rax, %rax         # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	leal	(%rax,%rax,2), %eax
	negl	%eax
	addl	%ebp, %eax
	addl	$2, %eax
	movl	8(%rcx), %ecx
	cltq
	addl	%ecx, (%rdi,%rax,4)
	cmpq	%rsi, %r10
	je	.LBB0_9
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	movq	8(%r12,%rsi,8), %rcx
	addq	$1, %rsi
	jmp	.LBB0_8
.LBB0_9:
	testl	%r11d, %r11d
	js	.LBB0_16
# %bb.10:
	movl	(%r9), %eax
	movl	%eax, (%r8)
	movl	$0, (%r9)
	movl	4(%r9), %eax
	movl	%eax, 4(%r8)
	movl	$0, 4(%r9)
	movl	8(%r9), %eax
	movl	%eax, 8(%r8)
	movl	$0, 8(%r9)
	je	.LBB0_16
# %bb.11:
	leaq	-1(%r13), %rcx
	movl	$1, %edx
	cmpl	$2, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB0_14
# %bb.12:
	movq	%rcx, %rsi
	andq	$-2, %rsi
	negq	%rsi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rdx,8), %rax
	movq	(%r12,%rdx,8), %rdi
	movl	(%rax), %ebp
	movl	%ebp, (%rdi)
	movl	$0, (%rax)
	movl	4(%rax), %ebp
	movl	%ebp, 4(%rdi)
	movl	$0, 4(%rax)
	movl	8(%rax), %ebp
	movl	%ebp, 8(%rdi)
	movl	$0, 8(%rax)
	movq	8(%r15,%rdx,8), %rax
	movq	8(%r12,%rdx,8), %rdi
	movl	(%rax), %ebp
	movl	%ebp, (%rdi)
	movl	$0, (%rax)
	movl	4(%rax), %ebp
	movl	%ebp, 4(%rdi)
	movl	$0, 4(%rax)
	movl	8(%rax), %ebp
	movl	%ebp, 8(%rdi)
	movl	$0, 8(%rax)
	leaq	(%rsi,%rdx), %rax
	addq	$2, %rax
	addq	$2, %rdx
	cmpq	$1, %rax
	jne	.LBB0_13
.LBB0_14:
	testb	$1, %cl
	je	.LBB0_16
# %bb.15:
	movq	(%r15,%rdx,8), %rax
	movq	(%r12,%rdx,8), %rcx
	movl	(%rax), %edx
	movl	%edx, (%rcx)
	movl	$0, (%rax)
	movl	4(%rax), %edx
	movl	%edx, 4(%rcx)
	movl	$0, 4(%rax)
	movl	8(%rax), %edx
	movl	%edx, 8(%rcx)
	movl	$0, 8(%rax)
.LBB0_16:
	testl	%r11d, %r11d
	jle	.LBB0_22
# %bb.17:
	leaq	-2(%r13), %r10
	xorl	%esi, %esi
	movq	%r8, %rcx
	movq	%r9, %rdi
	.p2align	4, 0x90
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	movq	8(%r15,%rsi,8), %rdi
	movl	(%rax), %ebp
	movl	%ebp, (%rdi)
	movl	4(%rax), %ebp
	movl	%ebp, 4(%rdi)
	movl	8(%rax), %eax
	movl	%eax, 8(%rdi)
	movslq	(%r14,%rsi,4), %rbp
	imulq	$1431655766, %rbp, %rax         # imm = 0x55555556
	movq	%rax, %rbx
	shrq	$63, %rbx
	shrq	$32, %rax
	addl	%ebx, %eax
	leal	(%rax,%rax,2), %eax
	leal	1(%rbp), %ebx
	movslq	%ebx, %rbx
	imulq	$1431655766, %rbx, %rbx         # imm = 0x55555556
	movq	%rbx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rbx
	addl	%edx, %ebx
	leal	(%rbx,%rbx,2), %edx
	negl	%edx
	addl	%ebp, %edx
	addl	$1, %edx
	movl	%ebp, %ebx
	subl	%eax, %ebx
	movl	(%rcx), %eax
	movslq	%ebx, %rbx
	addl	%eax, (%rdi,%rbx,4)
	movl	4(%rcx), %eax
	movslq	%edx, %rdx
	addl	%eax, (%rdi,%rdx,4)
	leal	2(%rbp), %eax
	cltq
	imulq	$1431655766, %rax, %rax         # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	leal	(%rax,%rax,2), %eax
	negl	%eax
	addl	%ebp, %eax
	addl	$2, %eax
	movl	8(%rcx), %ecx
	cltq
	addl	%ecx, (%rdi,%rax,4)
	cmpq	%rsi, %r10
	je	.LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movq	8(%r12,%rsi,8), %rcx
	addq	$1, %rsi
	jmp	.LBB0_18
.LBB0_22:
	testl	%r11d, %r11d
	js	.LBB0_23
# %bb.24:
	movl	(%r9), %eax
	movl	%eax, (%r8)
	movl	$0, (%r9)
	movl	4(%r9), %eax
	movl	%eax, 4(%r8)
	movl	$0, 4(%r9)
	movl	8(%r9), %eax
	movl	%eax, 8(%r8)
	movl	$0, 8(%r9)
	je	.LBB0_30
# %bb.25:
	leaq	-1(%r13), %rax
	movl	$1, %ecx
	cmpl	$2, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB0_28
# %bb.26:
	movq	%rax, %rdx
	andq	$-2, %rdx
	negq	%rdx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rsi
	movq	(%r12,%rcx,8), %rdi
	movl	(%rsi), %ebp
	movl	%ebp, (%rdi)
	movl	$0, (%rsi)
	movl	4(%rsi), %ebp
	movl	%ebp, 4(%rdi)
	movl	$0, 4(%rsi)
	movl	8(%rsi), %ebp
	movl	%ebp, 8(%rdi)
	movl	$0, 8(%rsi)
	movq	8(%r15,%rcx,8), %rsi
	movq	8(%r12,%rcx,8), %rdi
	movl	(%rsi), %ebp
	movl	%ebp, (%rdi)
	movl	$0, (%rsi)
	movl	4(%rsi), %ebp
	movl	%ebp, 4(%rdi)
	movl	$0, 4(%rsi)
	movl	8(%rsi), %ebp
	movl	%ebp, 8(%rdi)
	movl	$0, 8(%rsi)
	leaq	(%rdx,%rcx), %rsi
	addq	$2, %rsi
	addq	$2, %rcx
	cmpq	$1, %rsi
	jne	.LBB0_27
.LBB0_28:
	testb	$1, %al
	je	.LBB0_30
# %bb.29:
	movq	(%r15,%rcx,8), %rax
	movq	(%r12,%rcx,8), %rcx
	movl	(%rax), %edx
	movl	%edx, (%rcx)
	movl	$0, (%rax)
	movl	4(%rax), %edx
	movl	%edx, 4(%rcx)
	movl	$0, 4(%rax)
	movl	8(%rax), %edx
	movl	%edx, 8(%rcx)
	movl	$0, 8(%rax)
.LBB0_30:
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%r12,%rax,8), %rax
	movl	(%rax), %ebx
	testl	%r11d, %r11d
	js	.LBB0_33
# %bb.31:
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbp,8), %rdi
	callq	free@PLT
	movq	(%r15,%rbp,8), %rdi
	callq	free@PLT
	addq	$1, %rbp
	cmpq	%rbp, %r13
	jne	.LBB0_32
	jmp	.LBB0_33
.LBB0_23:
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%r12,%rax,8), %rax
	movl	(%rax), %ebx
.LBB0_33:
	movq	%r12, %rdi
	callq	free@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movl	%ebx, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
