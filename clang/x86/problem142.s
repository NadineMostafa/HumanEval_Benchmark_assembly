	.text
	.file	"code.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function func0
.LCPI0_0:
	.byte	208                             # 0xd0
	.byte	208                             # 0xd0
	.byte	208                             # 0xd0
	.byte	208                             # 0xd0
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI0_1:
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI0_2:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI0_3:
	.byte	46                              # 0x2e
	.byte	46                              # 0x2e
	.byte	46                              # 0x2e
	.byte	46                              # 0x2e
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.text
	.globl	func0
	.p2align	4, 0x90
	.type	func0,@function
func0:                                  # @func0
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	callq	strlen@PLT
	movq	%rax, %rbx
	leaq	.L.str(%rip), %r15
	cmpl	$5, %ebx
	jl	.LBB0_13
# %bb.1:
	movb	(%r14), %r13b
	cmpb	$65, %r13b
	jl	.LBB0_13
# %bb.2:
	leal	-91(%r13), %eax
	cmpb	$36, %al
	ja	.LBB0_4
# %bb.3:
	movzbl	%al, %eax
	movabsq	$133143986239, %rcx             # imm = 0x1F0000003F
	btq	%rax, %rcx
	jae	.LBB0_4
.LBB0_13:
	movq	%r15, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:
	.cfi_def_cfa_offset 48
	movslq	%ebx, %rax
	leaq	(%r14,%rax), %r12
	addq	$-4, %r12
	leaq	.L.str.1(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_7
# %bb.5:
	leaq	.L.str.2(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB0_7
# %bb.6:
	leaq	.L.str.3(%rip), %rsi
	movq	%r12, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	jne	.LBB0_13
.LBB0_7:
	movl	%ebx, %eax
	leal	-48(%r13), %ecx
	xorl	%edi, %edi
	cmpb	$10, %cl
	setb	%dil
	xorl	%ebx, %ebx
	cmpb	$46, %r13b
	sete	%bl
	cmpq	$1, %rax
	je	.LBB0_12
# %bb.8:
	leaq	-1(%rax), %rdx
	movl	$1, %ecx
	cmpq	$8, %rdx
	jb	.LBB0_14
# %bb.9:
	movq	%rdx, %rsi
	andq	$-8, %rsi
	leaq	1(%rsi), %rcx
	movd	%ebx, %xmm13
	movd	%edi, %xmm2
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	movdqa	.LCPI0_0(%rip), %xmm8           # xmm8 = <208,208,208,208,u,u,u,u,u,u,u,u,u,u,u,u>
	movdqa	.LCPI0_1(%rip), %xmm9           # xmm9 = <10,10,10,10,u,u,u,u,u,u,u,u,u,u,u,u>
	pcmpeqd	%xmm10, %xmm10
	movdqa	.LCPI0_2(%rip), %xmm12          # xmm12 = [1,1,1,1]
	movdqa	.LCPI0_3(%rip), %xmm11          # xmm11 = <46,46,46,46,u,u,u,u,u,u,u,u,u,u,u,u>
	pxor	%xmm7, %xmm7
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movd	1(%r14,%rdi), %xmm5             # xmm5 = mem[0],zero,zero,zero
	movd	5(%r14,%rdi), %xmm4             # xmm4 = mem[0],zero,zero,zero
	movdqa	%xmm5, %xmm1
	paddb	%xmm8, %xmm1
	movdqa	%xmm4, %xmm6
	paddb	%xmm8, %xmm6
	movdqa	%xmm1, %xmm3
	pmaxub	%xmm9, %xmm3
	pcmpeqb	%xmm1, %xmm3
	pxor	%xmm10, %xmm3
	punpcklbw	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3]
	pand	%xmm12, %xmm3
	paddd	%xmm3, %xmm2
	movdqa	%xmm6, %xmm1
	pmaxub	%xmm9, %xmm1
	pcmpeqb	%xmm6, %xmm1
	pxor	%xmm10, %xmm1
	punpcklbw	%xmm1, %xmm1            # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1            # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	pand	%xmm12, %xmm1
	paddd	%xmm1, %xmm7
	pcmpeqb	%xmm11, %xmm5
	punpcklbw	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	pand	%xmm12, %xmm5
	paddd	%xmm5, %xmm13
	pcmpeqb	%xmm11, %xmm4
	punpcklbw	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	pand	%xmm12, %xmm4
	paddd	%xmm4, %xmm0
	addq	$8, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB0_10
# %bb.11:
	paddd	%xmm2, %xmm7
	pshufd	$238, %xmm7, %xmm1              # xmm1 = xmm7[2,3,2,3]
	paddd	%xmm7, %xmm1
	pshufd	$85, %xmm1, %xmm2               # xmm2 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm2
	movd	%xmm2, %edi
	paddd	%xmm13, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ebx
	cmpq	%rsi, %rdx
	je	.LBB0_12
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14,%rcx), %edx
	leal	-48(%rdx), %esi
	cmpb	$10, %sil
	adcl	$0, %edi
	xorl	%esi, %esi
	cmpb	$46, %dl
	sete	%sil
	addl	%esi, %ebx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_14
.LBB0_12:
	cmpl	$1, %ebx
	leaq	.L.str(%rip), %rax
	leaq	.L.str.4(%rip), %r15
	cmovneq	%rax, %r15
	cmpl	$4, %edi
	cmovaeq	%rax, %r15
	jmp	.LBB0_13
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	".txt"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".exe"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	".dll"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Yes"
	.size	.L.str.4, 4

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
