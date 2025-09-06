	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$312, %rsp	#,
	.cfi_def_cfa_offset 368
# eval/problem159/code.c:5:     char *max = "";
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp145
	movq	%rax, 296(%rsp)	# tmp145, D.2834
	leaq	.LC0(%rip), %rax	#, tmp145
	movq	%rax, 24(%rsp)	# <retval>, %sfp
# eval/problem159/code.c:7:     for (int i = 0; i < count; i++) {
	testl	%esi, %esi	# count
	jle	.L1	#,
	leal	-1(%rsi), %eax	#, tmp108
# eval/problem159/code.c:6:     int maxu = 0;
	movl	$0, 12(%rsp)	#, %sfp
	movq	%rdi, %r12	# words, ivtmp.14
	leaq	32(%rsp), %rbx	#, tmp123
	leaq	8(%rdi,%rax,8), %rax	#, _41
	movq	%rax, 16(%rsp)	# _41, %sfp
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movq	(%r12), %r13	# MEM[(char * *)_23], _39
# eval/problem159/code.c:8:         char unique[256] = {0};
	pxor	%xmm0, %xmm0	# tmp124
	movaps	%xmm0, 32(%rsp)	# tmp124, unique
# eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movzbl	0(%r13), %r15d	# *_39, _11
# eval/problem159/code.c:8:         char unique[256] = {0};
	movaps	%xmm0, 48(%rsp)	# tmp124, unique
	movaps	%xmm0, 64(%rsp)	# tmp124, unique
	movaps	%xmm0, 80(%rsp)	# tmp124, unique
	movaps	%xmm0, 96(%rsp)	# tmp124, unique
	movaps	%xmm0, 112(%rsp)	# tmp124, unique
	movaps	%xmm0, 128(%rsp)	# tmp124, unique
	movaps	%xmm0, 144(%rsp)	# tmp124, unique
	movaps	%xmm0, 160(%rsp)	# tmp124, unique
	movaps	%xmm0, 176(%rsp)	# tmp124, unique
	movaps	%xmm0, 192(%rsp)	# tmp124, unique
	movaps	%xmm0, 208(%rsp)	# tmp124, unique
	movaps	%xmm0, 224(%rsp)	# tmp124, unique
	movaps	%xmm0, 240(%rsp)	# tmp124, unique
	movaps	%xmm0, 256(%rsp)	# tmp124, unique
	movaps	%xmm0, 272(%rsp)	# tmp124, unique
# eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	testb	%r15b, %r15b	# _11
	je	.L10	#,
	leaq	1(%r13), %r14	#, ivtmp.8
# eval/problem159/code.c:9:         int unique_count = 0;
	xorl	%ebp, %ebp	# unique_count
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movzbl	(%r14), %r15d	# MEM[(char *)_7 + -1B], _11
# eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	addq	$1, %r14	#, ivtmp.8
	testb	%r15b, %r15b	# _11
	je	.L3	#,
.L5:
# eval/problem159/code.c:11:             if (!strchr(unique, words[i][j])) {
	movsbl	%r15b, %esi	# _11, _11
	movq	%rbx, %rdi	# tmp123,
	call	strchr@PLT	#
# eval/problem159/code.c:11:             if (!strchr(unique, words[i][j])) {
	testq	%rax, %rax	# tmp142
	jne	.L4	#,
# eval/problem159/code.c:12:                 int len = strlen(unique);
	movq	%rbx, %rdi	# tmp123,
# eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	addq	$1, %r14	#, ivtmp.8
# eval/problem159/code.c:15:                 unique_count++;
	addl	$1, %ebp	#, unique_count
# eval/problem159/code.c:12:                 int len = strlen(unique);
	call	strlen@PLT	#
# eval/problem159/code.c:13:                 unique[len] = words[i][j];
	movslq	%eax, %rsi	# tmp115, len
# eval/problem159/code.c:14:                 unique[len + 1] = '\0';
	addl	$1, %eax	#, tmp118
# eval/problem159/code.c:13:                 unique[len] = words[i][j];
	movb	%r15b, 32(%rsp,%rsi)	# _11, unique[len_33]
# eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	movzbl	-1(%r14), %r15d	# MEM[(char *)_7 + -1B], _11
# eval/problem159/code.c:14:                 unique[len + 1] = '\0';
	cltq
	movb	$0, 32(%rsp,%rax)	#, unique[_4]
# eval/problem159/code.c:10:         for (int j = 0; words[i][j] != '\0'; j++) {
	testb	%r15b, %r15b	# _11
	jne	.L5	#,
.L3:
# eval/problem159/code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	cmpl	%ebp, 12(%rsp)	# unique_count, %sfp
	jl	.L11	#,
# eval/problem159/code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	jne	.L6	#,
# eval/problem159/code.c:18:         if (unique_count > maxu || (unique_count == maxu && strcmp(words[i], max) < 0)) {
	movq	24(%rsp), %r14	# %sfp, <retval>
	movq	%r13, %rdi	# _39,
	movq	%r14, %rsi	# <retval>,
	call	strcmp@PLT	#
	testl	%eax, %eax	# tmp144
	cmovns	%r14, %r13	# <retval>,, _39
	movq	%r13, 24(%rsp)	# _39, %sfp
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem159/code.c:7:     for (int i = 0; i < count; i++) {
	addq	$8, %r12	#, ivtmp.14
	cmpq	16(%rsp), %r12	# %sfp, ivtmp.14
	jne	.L7	#,
.L1:
# eval/problem159/code.c:24: }
	movq	296(%rsp), %rax	# D.2834, tmp146
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	jne	.L17	#,
	movq	24(%rsp), %rax	# %sfp,
	addq	$312, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
	movl	%ebp, 12(%rsp)	# unique_count, %sfp
	movq	%r13, 24(%rsp)	# _39, %sfp
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem159/code.c:9:         int unique_count = 0;
	xorl	%ebp, %ebp	# unique_count
	jmp	.L3	#
.L17:
# eval/problem159/code.c:24: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE35:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
