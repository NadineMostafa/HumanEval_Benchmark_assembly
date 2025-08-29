	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"False"
.LC1:
	.string	"True"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB51:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %r14	# tmp150, c
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdx, %r12	# tmp151, result
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rcx, %rbp	# tmp152, palindrome
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# eval/problem113/code.c:6: void func0(const char *s, const char *c, char *result, char *palindrome) {
	movq	%rdi, %rbx	# tmp149, s
# eval/problem113/code.c:7:     int len = strlen(s);
	call	strlen@PLT	#
# eval/problem113/code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	leal	1(%rax), %edi	#, tmp122
# eval/problem113/code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	movslq	%edi, %rdi	# tmp122, tmp123
	call	malloc@PLT	#
# eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movzbl	(%rbx), %ecx	# *s_34(D), _10
# eval/problem113/code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	movq	%rax, %r13	# tmp154, n
# eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	testb	%cl, %cl	# _10
	je	.L2	#,
# eval/problem113/code.c:13:         while (*temp != '\0') {
	movzbl	(%r14), %r8d	# *c_44(D), _49
	leaq	1(%rbx), %rsi	#, ivtmp.23
# eval/problem113/code.c:9:     int ni = 0;
	xorl	%edi, %edi	# ni
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem113/code.c:13:         while (*temp != '\0') {
	movq	%r14, %rdx	# c, temp
	movl	%r8d, %eax	# _49, _5
	testb	%r8b, %r8b	# _49
	jne	.L5	#,
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L19:
# eval/problem113/code.c:13:         while (*temp != '\0') {
	movzbl	1(%rdx), %eax	# MEM[(const char *)temp_45], _5
# eval/problem113/code.c:18:             temp++;
	addq	$1, %rdx	#, temp
# eval/problem113/code.c:13:         while (*temp != '\0') {
	testb	%al, %al	# _5
	je	.L6	#,
.L5:
# eval/problem113/code.c:14:             if (s[i] == *temp) {
	cmpb	%al, %cl	# _5, _10
	jne	.L19	#,
# eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movzbl	(%rsi), %ecx	# MEM[(const char *)_72 + -1B], _10
# eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	addq	$1, %rsi	#, ivtmp.23
	testb	%cl, %cl	# _10
	jne	.L3	#,
.L21:
# eval/problem113/code.c:24:     n[ni] = '\0';
	movslq	%edi, %rax	# ni, ni
	addq	%r13, %rax	# n, _73
.L2:
# eval/problem113/code.c:24:     n[ni] = '\0';
	movb	$0, (%rax)	#, *prephitmp_74
# eval/problem113/code.c:26:     int n_len = strlen(n);
	movq	%r13, %rdi	# n,
	call	strlen@PLT	#
# eval/problem113/code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	movl	%eax, %esi	# tmp127, tmp129
	shrl	$31, %esi	#, tmp129
	addl	%eax, %esi	# tmp127, tmp130
	sarl	%esi	# tmp131
# eval/problem113/code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	cmpl	$1, %eax	#, tmp127
	jle	.L7	#,
# eval/problem113/code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	leal	-1(%rax), %ecx	#, tmp132
	xorl	%edx, %edx	# ivtmp.10
	movslq	%ecx, %rcx	# tmp132, tmp133
	addq	%r13, %rcx	# n, ivtmp.13
	jmp	.L9	#
	.p2align 4,,10
	.p2align 3
.L20:
# eval/problem113/code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	addq	$1, %rdx	#, ivtmp.10
	subq	$1, %rcx	#, ivtmp.13
	cmpl	%edx, %esi	# ivtmp.10, tmp131
	jle	.L7	#,
.L9:
# eval/problem113/code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	movzbl	(%rcx), %ebx	# MEM[(char *)_29], tmp158
	cmpb	%bl, 0(%r13,%rdx)	# tmp158, MEM[(char *)n_37 + ivtmp.10_70 * 1]
	je	.L20	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%r13, %rsi	# n,
	leaq	1(%rax), %rdx	#, tmp136
	movq	%r12, %rdi	# result,
	call	memcpy@PLT	#
# eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	leaq	.LC0(%rip), %rsi	#, iftmp.1_30
	jmp	.L10	#
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem113/code.c:21:             n[ni++] = s[i];
	movslq	%edi, %rax	# ni, ni
# eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	addq	$1, %rsi	#, ivtmp.23
# eval/problem113/code.c:21:             n[ni++] = s[i];
	addl	$1, %edi	#, ni
# eval/problem113/code.c:21:             n[ni++] = s[i];
	movb	%cl, 0(%r13,%rax)	# _10, *_7
# eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	movzbl	-1(%rsi), %ecx	# MEM[(const char *)_72 + -1B], _10
# eval/problem113/code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	testb	%cl, %cl	# _10
	jne	.L3	#,
	jmp	.L21	#
.L7:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%r13, %rsi	# n,
	leaq	1(%rax), %rdx	#, tmp142
	movq	%r12, %rdi	# result,
	call	memcpy@PLT	#
# eval/problem113/code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	leaq	.LC1(%rip), %rsi	#, iftmp.1_30
.L10:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%rbp, %rdi	# palindrome,
	call	strcpy@PLT	#
# eval/problem113/code.c:39: }
	popq	%rbx	#
	.cfi_def_cfa_offset 40
# eval/problem113/code.c:38:     free(n);
	movq	%r13, %rdi	# n,
# eval/problem113/code.c:39: }
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
# eval/problem113/code.c:38:     free(n);
	jmp	free@PLT	#
	.cfi_endproc
.LFE51:
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
