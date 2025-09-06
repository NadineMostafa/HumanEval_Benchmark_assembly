	.text
	.file	"code.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function func0
.LCPI0_0:
	.zero	16,133
.LCPI0_1:
	.zero	16,229
.LCPI0_2:
	.zero	16,191
.LCPI0_3:
	.zero	16,25
.LCPI0_4:
	.zero	16,32
.LCPI0_5:
	.zero	16,224
.LCPI0_6:
	.byte	133                             # 0x85
	.byte	133                             # 0x85
	.byte	133                             # 0x85
	.byte	133                             # 0x85
	.byte	133                             # 0x85
	.byte	133                             # 0x85
	.byte	133                             # 0x85
	.byte	133                             # 0x85
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI0_7:
	.byte	230                             # 0xe6
	.byte	230                             # 0xe6
	.byte	230                             # 0xe6
	.byte	230                             # 0xe6
	.byte	230                             # 0xe6
	.byte	230                             # 0xe6
	.byte	230                             # 0xe6
	.byte	230                             # 0xe6
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI0_8:
	.byte	191                             # 0xbf
	.byte	191                             # 0xbf
	.byte	191                             # 0xbf
	.byte	191                             # 0xbf
	.byte	191                             # 0xbf
	.byte	191                             # 0xbf
	.byte	191                             # 0xbf
	.byte	191                             # 0xbf
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI0_9:
	.byte	26                              # 0x1a
	.byte	26                              # 0x1a
	.byte	26                              # 0x1a
	.byte	26                              # 0x1a
	.byte	26                              # 0x1a
	.byte	26                              # 0x1a
	.byte	26                              # 0x1a
	.byte	26                              # 0x1a
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI0_10:
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.byte	32                              # 0x20
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
.LCPI0_11:
	.byte	224                             # 0xe0
	.byte	224                             # 0xe0
	.byte	224                             # 0xe0
	.byte	224                             # 0xe0
	.byte	224                             # 0xe0
	.byte	224                             # 0xe0
	.byte	224                             # 0xe0
	.byte	224                             # 0xe0
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	strlen@PLT
	testl	%eax, %eax
	jle	.LBB0_19
# %bb.1:
	movl	%eax, %r8d
	cmpq	$8, %r8
	jae	.LBB0_3
# %bb.2:
	xorl	%edx, %edx
	jmp	.LBB0_15
.LBB0_3:
	leaq	(%rbx,%r8), %rdx
	cmpq	%r14, %rdx
	jbe	.LBB0_6
# %bb.4:
	leaq	(%r14,%r8), %rdx
	cmpq	%rbx, %rdx
	jbe	.LBB0_6
# %bb.5:
	xorl	%edx, %edx
	jmp	.LBB0_15
.LBB0_6:
	cmpl	$16, %r8d
	jae	.LBB0_8
# %bb.7:
	xorl	%edx, %edx
	jmp	.LBB0_12
.LBB0_8:
	movl	%eax, %esi
	andl	$15, %esi
	movq	%r8, %rdx
	subq	%rsi, %rdx
	xorl	%edi, %edi
	movdqa	.LCPI0_0(%rip), %xmm8           # xmm8 = [133,133,133,133,133,133,133,133,133,133,133,133,133,133,133,133]
	movdqa	.LCPI0_1(%rip), %xmm9           # xmm9 = [229,229,229,229,229,229,229,229,229,229,229,229,229,229,229,229]
	movdqa	.LCPI0_2(%rip), %xmm2           # xmm2 = [191,191,191,191,191,191,191,191,191,191,191,191,191,191,191,191]
	movdqa	.LCPI0_3(%rip), %xmm3           # xmm3 = [25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25]
	movdqa	.LCPI0_4(%rip), %xmm4           # xmm4 = [32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32]
	movdqa	.LCPI0_5(%rip), %xmm5           # xmm5 = [224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224]
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rbx,%rdi), %xmm1
	movdqa	%xmm1, %xmm6
	paddb	%xmm8, %xmm6
	movdqa	%xmm6, %xmm7
	pminub	%xmm9, %xmm7
	pcmpeqb	%xmm6, %xmm7
	movdqa	%xmm1, %xmm0
	paddb	%xmm2, %xmm0
	movdqa	%xmm0, %xmm6
	pminub	%xmm3, %xmm6
	pcmpeqb	%xmm0, %xmm6
	movdqa	%xmm1, %xmm0
	paddb	%xmm4, %xmm0
	pand	%xmm6, %xmm0
	pandn	%xmm1, %xmm6
	por	%xmm0, %xmm6
	paddb	%xmm5, %xmm1
	pand	%xmm7, %xmm6
	pandn	%xmm1, %xmm7
	por	%xmm6, %xmm7
	movdqu	%xmm7, (%r14,%rdi)
	addq	$16, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_9
# %bb.10:
	testq	%rsi, %rsi
	je	.LBB0_19
# %bb.11:
	cmpl	$8, %esi
	jb	.LBB0_15
.LBB0_12:
	movq	%rdx, %rsi
	movl	%eax, %edi
	andl	$7, %edi
	movq	%r8, %rdx
	subq	%rdi, %rdx
	movdqa	.LCPI0_6(%rip), %xmm8           # xmm8 = <133,133,133,133,133,133,133,133,u,u,u,u,u,u,u,u>
	movdqa	.LCPI0_7(%rip), %xmm9           # xmm9 = <230,230,230,230,230,230,230,230,u,u,u,u,u,u,u,u>
	movdqa	.LCPI0_8(%rip), %xmm10          # xmm10 = <191,191,191,191,191,191,191,191,u,u,u,u,u,u,u,u>
	movdqa	.LCPI0_9(%rip), %xmm3           # xmm3 = <26,26,26,26,26,26,26,26,u,u,u,u,u,u,u,u>
	movdqa	.LCPI0_10(%rip), %xmm4          # xmm4 = <32,32,32,32,32,32,32,32,u,u,u,u,u,u,u,u>
	movdqa	.LCPI0_11(%rip), %xmm5          # xmm5 = <224,224,224,224,224,224,224,224,u,u,u,u,u,u,u,u>
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rsi), %xmm6              # xmm6 = mem[0],zero
	movdqa	%xmm6, %xmm7
	paddb	%xmm8, %xmm7
	movdqa	%xmm7, %xmm0
	pmaxub	%xmm9, %xmm0
	pcmpeqb	%xmm7, %xmm0
	movdqa	%xmm6, %xmm1
	paddb	%xmm10, %xmm1
	movdqa	%xmm1, %xmm7
	pmaxub	%xmm3, %xmm7
	pcmpeqb	%xmm1, %xmm7
	movdqa	%xmm6, %xmm1
	paddb	%xmm4, %xmm1
	movdqa	%xmm7, %xmm2
	pand	%xmm6, %xmm2
	pandn	%xmm1, %xmm7
	por	%xmm2, %xmm7
	paddb	%xmm5, %xmm6
	pand	%xmm0, %xmm6
	pandn	%xmm7, %xmm0
	por	%xmm0, %xmm6
	movq	%xmm6, (%r14,%rsi)
	addq	$8, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB0_13
# %bb.14:
	testq	%rdi, %rdi
	jne	.LBB0_15
.LBB0_19:
	cltq
	movb	$0, (%r14,%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=1
	.cfi_def_cfa_offset 32
	leal	-65(%rsi), %edi
	leal	32(%rsi), %ecx
	cmpb	$26, %dil
	movzbl	%sil, %edi
	movzbl	%cl, %esi
	cmovael	%edi, %esi
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=1
	movb	%sil, (%r14,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r8
	je	.LBB0_19
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rdx), %esi
	leal	-97(%rsi), %edi
	cmpb	$25, %dil
	ja	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	addb	$-32, %sil
	jmp	.LBB0_18
.Lfunc_end0:
	.size	func0, .Lfunc_end0-func0
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
