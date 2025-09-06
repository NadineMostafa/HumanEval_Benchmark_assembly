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
.LFB41:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# eval/problem68/code.c:7:     char num2[10] = "";
	xorl	%edx, %edx	#
# eval/problem68/code.c:5: int func0(const char *s, int n) {
	movl	%esi, %r12d	# tmp127, n
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movzbl	(%rdi), %ebx	# *s_25(D), _12
# eval/problem68/code.c:5: int func0(const char *s, int n) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	movq	%rax, 24(%rsp)	# tmp131, D.3342
	xorl	%eax, %eax	# tmp131
# eval/problem68/code.c:6:     char num1[10] = "";
	xorl	%eax, %eax	#
# eval/problem68/code.c:7:     char num2[10] = "";
	movw	%dx, 22(%rsp)	#, num2
# eval/problem68/code.c:6:     char num1[10] = "";
	movq	$0, 4(%rsp)	#, num1
	movw	%ax, 12(%rsp)	#, num1
# eval/problem68/code.c:7:     char num2[10] = "";
	movq	$0, 14(%rsp)	#, num2
# eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	testb	%bl, %bl	# _12
	je	.L8	#,
	movq	%rdi, %rbp	# tmp126, s
# eval/problem68/code.c:11:         if (isdigit(s[i])) {
	call	__ctype_b_loc@PLT	#
	leaq	1(%rbp), %rdi	#, ivtmp.10
# eval/problem68/code.c:8:     int is12 = 0, j = 0;
	xorl	%edx, %edx	# j
# eval/problem68/code.c:20:                 j = 0;
	xorl	%r9d, %r9d	# tmp124
# eval/problem68/code.c:11:         if (isdigit(s[i])) {
	movq	(%rax), %rsi	# *_1, _2
# eval/problem68/code.c:20:                 j = 0;
	movl	$1, %r8d	#, tmp125
# eval/problem68/code.c:8:     int is12 = 0, j = 0;
	xorl	%eax, %eax	# is12
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L18:
# eval/problem68/code.c:13:                 num1[j++] = s[i];
	movslq	%edx, %rcx	# j, j
# eval/problem68/code.c:12:             if (is12 == 0) {
	testl	%eax, %eax	# is12
	jne	.L4	#,
# eval/problem68/code.c:13:                 num1[j++] = s[i];
	movb	%bl, 4(%rsp,%rcx)	# _12, num1[j_50]
# eval/problem68/code.c:13:                 num1[j++] = s[i];
	addl	$1, %edx	#, j
.L5:
# eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movzbl	(%rdi), %ebx	# MEM[(const char *)_45 + -1B], _12
# eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	addq	$1, %rdi	#, ivtmp.10
	testb	%bl, %bl	# _12
	je	.L8	#,
.L7:
# eval/problem68/code.c:11:         if (isdigit(s[i])) {
	movsbq	%bl, %rcx	# _12, _12
# eval/problem68/code.c:11:         if (isdigit(s[i])) {
	testb	$8, 1(%rsi,%rcx,2)	#, *_5
	jne	.L18	#,
# eval/problem68/code.c:18:             if (is12 == 0 && j > 0) {
	testl	%eax, %eax	# is12
	jne	.L5	#,
# eval/problem68/code.c:18:             if (is12 == 0 && j > 0) {
	testl	%edx, %edx	# j
	setg	%cl	#, tmp120
# eval/problem68/code.c:20:                 j = 0;
	testb	%cl, %cl	# tmp120
	cmovne	%r9d, %edx	# j,, tmp124, j
	cmovne	%r8d, %eax	# is12,, tmp125, is12
# eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movzbl	(%rdi), %ebx	# MEM[(const char *)_45 + -1B], _12
# eval/problem68/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	addq	$1, %rdi	#, ivtmp.10
	testb	%bl, %bl	# _12
	jne	.L7	#,
.L8:
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	leaq	4(%rsp), %rdi	#, tmp109
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
	leaq	14(%rsp), %rdi	#, tmp110
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
# eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	subl	%eax, %r12d	# tmp128, _13
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
# eval/problem68/code.c:24:     return n - atoi(num1) - atoi(num2);
	subl	%eax, %r12d	# tmp129, tmp111
# eval/problem68/code.c:25: }
	movq	24(%rsp), %rax	# D.3342, tmp132
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	jne	.L19	#,
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movl	%r12d, %eax	# tmp111,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
# eval/problem68/code.c:15:                 num2[j++] = s[i];
	movb	%bl, 14(%rsp,%rcx)	# _12, num2[j_50]
# eval/problem68/code.c:15:                 num2[j++] = s[i];
	addl	$1, %edx	#, j
	jmp	.L5	#
.L19:
# eval/problem68/code.c:25: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE41:
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
