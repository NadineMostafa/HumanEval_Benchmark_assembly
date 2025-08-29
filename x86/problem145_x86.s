	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB39:
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
	movq	%rsi, %r12	# tmp160, n
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp159, x
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$248, %rsp	#,
	.cfi_def_cfa_offset 304
# eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	movzbl	(%rdi), %edx	# *x_32(D), _3
# eval/problem145/code.c:4: int func0(const char* x, const char* n){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp165
	movq	%rax, 232(%rsp)	# tmp165, D.3267
	xorl	%eax, %eax	# tmp165
# eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmpb	$47, %dl	#, _3
	je	.L11	#,
	movl	$1, %eax	#, ivtmp.36
	leaq	15(%rsp), %rsi	#, tmp153
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem145/code.c:9:         num[i] = x[i];
	movb	%dl, (%rsi,%rax)	# _3, MEM[(char *)&num + -1B + ivtmp.36_24 * 1]
# eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	movslq	%eax, %rcx	# ivtmp.36,
# eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	addq	$1, %rax	#, ivtmp.36
# eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	movzbl	-1(%rbp,%rax), %edx	# MEM[(const char *)x_32(D) + -1B + ivtmp.36_23 * 1], _3
# eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	cmpb	$47, %dl	#, _3
	jne	.L3	#,
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	leal	1(%rcx), %r15d	#, _105
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	movslq	%r15d, %r14	# _105, _107
.L2:
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	leaq	16(%rsp), %r13	#, tmp154
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
# eval/problem145/code.c:11:     num[i] = '\0';
	movb	$0, 16(%rsp,%rcx)	#, num[i_88]
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	%r13, %rdi	# tmp154,
	call	strtol@PLT	#
	movq	%rax, 8(%rsp)	# tmp161, %sfp
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	movzbl	0(%rbp,%r14), %eax	# *_76, _6
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	testb	%al, %al	# _6
	je	.L12	#,
	movslq	%r15d, %r15	# _105, _105
	movl	$1, %edx	#, ivtmp.28
	leaq	127(%rsp), %rsi	#, tmp157
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	addq	%r15, %rbp	# _105, tmp129
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem145/code.c:15:         den[j] = x[i];
	movb	%al, (%rsi,%rdx)	# _6, MEM[(char *)&den + -1B + ivtmp.28_29 * 1]
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	movslq	%edx, %rcx	# ivtmp.28,
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	addq	$1, %rdx	#, ivtmp.28
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	movzbl	-1(%rbp,%rdx), %eax	# MEM[(const char *)_25 + -1B + ivtmp.28_28 * 1], _6
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	testb	%al, %al	# _6
	jne	.L5	#,
.L4:
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	leaq	128(%rsp), %r14	#, tmp158
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
# eval/problem145/code.c:17:     den[j] = '\0';
	movb	$0, 128(%rsp,%rcx)	#, den[j_94]
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	%r14, %rdi	# tmp158,
	call	strtol@PLT	#
# eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	movzbl	(%r12), %ecx	# *n_36(D), _10
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	%rax, %rbp	# tmp162, _54
# eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmpb	$47, %cl	#, _10
	je	.L13	#,
	movl	$1, %edx	#, ivtmp.20
	leaq	15(%rsp), %rsi	#, tmp153
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem145/code.c:21:         num[i] = n[i];
	movb	%cl, (%rsi,%rdx)	# _10, MEM[(char *)&num + -1B + ivtmp.20_68 * 1]
# eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	movslq	%edx, %rax	# ivtmp.20,
# eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	addq	$1, %rdx	#, ivtmp.20
# eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	movzbl	-1(%r12,%rdx), %ecx	# MEM[(const char *)n_36(D) + -1B + ivtmp.20_64 * 1], _10
# eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	cmpb	$47, %cl	#, _10
	jne	.L7	#,
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	leal	1(%rax), %ebx	#, _109
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	movslq	%ebx, %r15	# _109, _111
.L6:
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	%r13, %rdi	# tmp154,
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
# eval/problem145/code.c:23:     num[i] = '\0';
	movb	$0, 16(%rsp,%rax)	#, num[i_91]
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	movzbl	(%r12,%r15), %ecx	# *_66, _16
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	%rax, %r13	# tmp163, _56
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	testb	%cl, %cl	# _16
	je	.L14	#,
	movslq	%ebx, %r8	# _109, _109
	movl	$1, %edx	#, ivtmp.11
	leaq	127(%rsp), %rsi	#, tmp157
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	addq	%r8, %r12	# _109, tmp141
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem145/code.c:27:         den[j] = n[i];
	movb	%cl, (%rsi,%rdx)	# _16, MEM[(char *)&den + -1B + ivtmp.11_74 * 1]
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	movslq	%edx, %rax	# ivtmp.11,
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	addq	$1, %rdx	#, ivtmp.11
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	movzbl	-1(%r12,%rdx), %ecx	# MEM[(const char *)_69 + -1B + ivtmp.11_73 * 1], _16
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	testb	%cl, %cl	# _16
	jne	.L9	#,
.L8:
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	movq	%r14, %rdi	# tmp158,
# eval/problem145/code.c:29:     den[j] = '\0';
	movb	$0, 128(%rsp,%rax)	#, den[j_96]
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
	movq	%rax, %r8	#, tmp164
# eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	movl	8(%rsp), %eax	# %sfp, tmp145
# eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	imull	%r8d, %ebp	# tmp164, tmp146
# eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	imull	%r13d, %eax	# _56, tmp145
# eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	cltd
	idivl	%ebp	# tmp146
# eval/problem145/code.c:32:     if ((a * c) % (b * d) == 0) return 1;
	xorl	%eax, %eax	# tmp150
	testl	%edx, %edx	# tmp148
	sete	%al	#, tmp150
# eval/problem145/code.c:34: }
	movq	232(%rsp), %rdx	# D.3267, tmp166
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp166
	jne	.L21	#,
	addq	$248, %rsp	#,
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
# eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	movl	$1, %r14d	#, _107
	movl	$1, %r15d	#, _105
# eval/problem145/code.c:8:     for (i = 0; x[i] != '/'; i++) {
	xorl	%ecx, %ecx	#
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L12:
# eval/problem145/code.c:14:     for (j = 0, i = i + 1; x[i] != '\0'; i++, j++) {
	xorl	%ecx, %ecx	#
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L13:
# eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	movl	$1, %r15d	#, _111
	movl	$1, %ebx	#, _109
# eval/problem145/code.c:20:     for (i = 0; n[i] != '/'; i++) {
	xorl	%eax, %eax	#
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L14:
# eval/problem145/code.c:26:     for (j = 0, i = i + 1; n[i] != '\0'; i++, j++) {
	xorl	%eax, %eax	#
	jmp	.L8	#
.L21:
# eval/problem145/code.c:34: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE39:
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
