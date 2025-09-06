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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r13
	leaq	.L.str(%rip), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcmp@PLT
	negl	%eax
	sbbl	%r14d, %r14d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	negl	%eax
	sbbl	%ebp, %ebp
	leaq	.L.str.1(%rip), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	movl	$1, %ebx
	cmovel	%ebx, %r14d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	cmovel	%ebx, %ebp
	leaq	.L.str.2(%rip), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	movl	$2, %ebx
	cmovel	%ebx, %r14d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	cmovel	%ebx, %ebp
	leaq	.L.str.3(%rip), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	movl	$3, %ebx
	cmovel	%ebx, %r14d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	cmovel	%ebx, %ebp
	leaq	.L.str.4(%rip), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	movl	$4, %ebx
	cmovel	%ebx, %r14d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	cmovel	%ebx, %ebp
	leaq	.L.str.5(%rip), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	movl	$5, %ebx
	cmovel	%ebx, %r14d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	cmovel	%ebx, %ebp
	leaq	.L.str.6(%rip), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	movl	$6, %ebx
	cmovel	%ebx, %r14d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	cmovel	%ebx, %ebp
	leaq	.L.str.7(%rip), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	movl	$7, %ebx
	cmovel	%ebx, %r14d
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcmp@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	testl	%eax, %eax
	cmovel	%ebx, %ebp
	cmpl	$-1, %r14d
	je	.LBB0_7
# %bb.1:
	cmpl	$-1, %ebp
	je	.LBB0_7
# %bb.2:
	cmpl	%ebp, %r14d
	je	.LBB0_7
# %bb.3:
	movl	%ebp, %r15d
	cmoval	%r14d, %r15d
	cmoval	%ebp, %r14d
	movl	%r14d, %eax
	notl	%eax
	addl	%r15d, %eax
	movl	%eax, (%rcx)
	testl	%eax, %eax
	jle	.LBB0_7
# %bb.4:
	movl	%eax, %edi
	shlq	$3, %rdi
	callq	malloc@PLT
	leal	1(%r14), %ecx
	cmpl	%r15d, %ecx
	jae	.LBB0_8
# %bb.5:
	movl	%ecx, %ebx
	movl	%r15d, %ecx
	subl	%r14d, %ecx
	leal	-2(%rcx), %r10d
	cmpl	$3, %r10d
	jb	.LBB0_17
# %bb.9:
	addl	$-2, %ecx
	js	.LBB0_17
# %bb.10:
	addq	$1, %r10
	movq	%r10, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %r9
	shrq	$2, %r9
	addq	$1, %r9
	testq	%rcx, %rcx
	je	.LBB0_23
# %bb.11:
	movq	%r9, %rdi
	andq	$-2, %rdi
	leaq	.L__const.func0.planets(%rip), %rcx
	leaq	(%rcx,%rbx,8), %rsi
	addq	$48, %rsi
	xorl	%ecx, %ecx
	movabsq	$17179869184, %r11              # imm = 0x400000000
	movabsq	$34359738368, %r12              # imm = 0x800000000
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	sarq	$29, %rdx
	movups	-48(%rsi,%rbp,8), %xmm0
	movups	-32(%rsi,%rbp,8), %xmm1
	movups	-16(%rsi,%rbp,8), %xmm2
	movups	(%rsi,%rbp,8), %xmm3
	movups	%xmm0, (%rax,%rdx)
	movups	%xmm1, 16(%rax,%rdx)
	leaq	(%rcx,%r11), %rdx
	sarq	$29, %rdx
	movups	%xmm2, (%rax,%rdx)
	movups	%xmm3, 16(%rax,%rdx)
	addq	$8, %rbp
	addq	%r12, %rcx
	addq	$-2, %rdi
	jne	.LBB0_12
# %bb.13:
	testb	$1, %r9b
	je	.LBB0_15
.LBB0_14:
	leaq	(%rbx,%rbp), %rcx
	leaq	.L__const.func0.planets(%rip), %rdx
	movups	(%rdx,%rcx,8), %xmm0
	movups	16(%rdx,%rcx,8), %xmm1
	movslq	%ebp, %rcx
	movups	%xmm0, (%rax,%rcx,8)
	movups	%xmm1, 16(%rax,%rcx,8)
.LBB0_15:
	cmpq	%r8, %r10
	je	.LBB0_8
# %bb.16:
	addq	%r8, %rbx
	leal	(%r14,%r8), %edx
	jmp	.LBB0_18
.LBB0_7:
	movl	$0, (%rcx)
	xorl	%eax, %eax
.LBB0_8:
	addq	$8, %rsp
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
.LBB0_17:
	.cfi_def_cfa_offset 64
	movl	%r14d, %edx
.LBB0_18:
	movl	%r15d, %esi
	subl	%ebx, %esi
	leal	1(%rbx), %ecx
	testb	$1, %sil
	je	.LBB0_20
# %bb.19:
	leaq	.L__const.func0.planets(%rip), %rsi
	movq	(%rsi,%rbx,8), %rsi
	subl	%r14d, %edx
	movslq	%edx, %rdx
	movq	%rsi, (%rax,%rdx,8)
	movl	%ebx, %edx
	addq	$1, %rbx
.LBB0_20:
	cmpl	%ecx, %r15d
	je	.LBB0_8
# %bb.21:
	movl	%r15d, %r8d
	movl	%r14d, %edi
	negl	%edi
	leaq	.L__const.func0.planets(%rip), %r9
	movq	%rbx, %rcx
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	subl	%r14d, %edx
	movslq	%edx, %rdx
	movq	(%r9,%rbx,8), %rsi
	movq	8(%r9,%rbx,8), %rbp
	movq	%rsi, (%rax,%rdx,8)
	leal	(%rdi,%rbx), %edx
	movslq	%edx, %rdx
	movq	%rbp, (%rax,%rdx,8)
	addq	$2, %rcx
	leal	1(%rbx), %edx
	movq	%rcx, %rbx
	cmpl	%ecx, %r8d
	jne	.LBB0_22
	jmp	.LBB0_8
.LBB0_23:
	xorl	%ebp, %ebp
	testb	$1, %r9b
	jne	.LBB0_14
	jmp	.LBB0_15
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
