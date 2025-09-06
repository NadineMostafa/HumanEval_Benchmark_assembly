	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"aeiouAEIOU"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB53:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14	# tmp166, s
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
# eval/problem118/code.c:8:     char **out = NULL;
	xorl	%r13d, %r13d	# <retval>
# eval/problem118/code.c:6: char **func0(const char *s, int n, int *returnSize) {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# eval/problem118/code.c:13:     for (int i = 0; i <= length; i++) {
	xorl	%ebx, %ebx	# i
# eval/problem118/code.c:6: char **func0(const char *s, int n, int *returnSize) {
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
# eval/problem118/code.c:6: char **func0(const char *s, int n, int *returnSize) {
	movl	%esi, 12(%rsp)	# tmp167, %sfp
	movq	%rdx, 40(%rsp)	# tmp168, %sfp
# eval/problem118/code.c:10:     size_t length = strlen(s);
	call	strlen@PLT	#
# eval/problem118/code.c:11:     char *current = (char *)malloc(length + 1);
	leaq	1(%rax), %rdi	#, tmp135
# eval/problem118/code.c:10:     size_t length = strlen(s);
	movq	%rax, %r15	# tmp169, tmp133
# eval/problem118/code.c:11:     char *current = (char *)malloc(length + 1);
	call	malloc@PLT	#
	addl	$1, %r15d	#, _74
	movq	%rax, %rbp	# tmp170, current
# eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	call	__ctype_b_loc@PLT	#
# eval/problem118/code.c:9:     int numc = 0, word_count = 0, begin = 0;
	movl	$0, 32(%rsp)	#, %sfp
# eval/problem118/code.c:9:     int numc = 0, word_count = 0, begin = 0;
	xorl	%r11d, %r11d	# begin
# eval/problem118/code.c:9:     int numc = 0, word_count = 0, begin = 0;
	xorl	%r8d, %r8d	# numc
# eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	movq	(%rax), %r12	# *_2, pretmp_90
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem118/code.c:15:             if (numc == n) {
	cmpl	%r8d, 12(%rsp)	# numc, %sfp
	je	.L13	#,
.L4:
# eval/problem118/code.c:22:             begin = i + 1;
	movl	%ebx, %r11d	# i, begin
# eval/problem118/code.c:23:             numc = 0;
	xorl	%r8d, %r8d	# numc
.L5:
# eval/problem118/code.c:13:     for (int i = 0; i <= length; i++) {
	addq	$1, %r14	#, ivtmp.9
	cmpl	%ebx, %r15d	# i, _74
	je	.L14	#,
.L6:
# eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	movsbq	(%r14), %rsi	# MEM[(const char *)_77],
	movl	%ebx, %eax	# i, i
# eval/problem118/code.c:22:             begin = i + 1;
	addl	$1, %ebx	#, i
# eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	movq	%rsi, %rdx	#,
# eval/problem118/code.c:14:         if (isspace(s[i]) || s[i] == '\0') {
	testb	$32, 1(%r12,%rsi,2)	#, *_9
	jne	.L7	#,
	testb	%sil, %sil	# _6
	je	.L7	#,
# eval/problem118/code.c:25:             current[i - begin] = s[i];
	subl	%r11d, %eax	# begin, tmp157
# eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	leaq	.LC0(%rip), %rdi	#,
	movl	%r8d, 36(%rsp)	# numc, %sfp
# eval/problem118/code.c:25:             current[i - begin] = s[i];
	cltq
	movl	%r11d, 24(%rsp)	# begin, %sfp
# eval/problem118/code.c:25:             current[i - begin] = s[i];
	movb	%sil, 0(%rbp,%rax)	# _6, *_26
# eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	movsbl	%sil, %esi	# _6, _6
	movb	%dl, 16(%rsp)	# _6, %sfp
	call	strchr@PLT	#
# eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	movzbl	16(%rsp), %edx	# %sfp,
	movl	24(%rsp), %r11d	# %sfp, begin
	testq	%rax, %rax	# tmp175
	movl	36(%rsp), %r8d	# %sfp, numc
	jne	.L5	#,
# eval/problem118/code.c:26:             if (strchr(vowels, s[i]) == NULL && isalpha((unsigned char)s[i])) {
	movzwl	(%r12,%rdx,2), %eax	# *_32, *_32
	andw	$1024, %ax	#, tmp162
# eval/problem118/code.c:27:                 numc++;
	cmpw	$1, %ax	#, tmp162
	sbbl	$-1, %r8d	#, numc
# eval/problem118/code.c:13:     for (int i = 0; i <= length; i++) {
	addq	$1, %r14	#, ivtmp.9
	cmpl	%ebx, %r15d	# i, _74
	jne	.L6	#,
.L14:
# eval/problem118/code.c:31:     free(current);
	movq	%rbp, %rdi	# current,
	call	free@PLT	#
# eval/problem118/code.c:33:     *returnSize = word_count;
	movq	40(%rsp), %rax	# %sfp, returnSize
	movl	32(%rsp), %ecx	# %sfp, word_count
	movl	%ecx, (%rax)	# word_count, *returnSize_57(D)
# eval/problem118/code.c:35: }
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rax	# <retval>,
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
.L13:
	.cfi_restore_state
# eval/problem118/code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	addl	$1, 32(%rsp)	#, %sfp
	movslq	32(%rsp), %rsi	# %sfp,
# eval/problem118/code.c:16:                 current[i - begin] = '\0';
	subl	%r11d, %eax	# begin, tmp143
# eval/problem118/code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	movq	%r13, %rdi	# <retval>,
# eval/problem118/code.c:16:                 current[i - begin] = '\0';
	cltq
# eval/problem118/code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	salq	$3, %rsi	#, _17
# eval/problem118/code.c:16:                 current[i - begin] = '\0';
	movb	$0, 0(%rbp,%rax)	#, *_14
# eval/problem118/code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	movq	%rsi, 24(%rsp)	# _17, %sfp
	call	realloc@PLT	#
# eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	%rbp, %rdi	# current,
# eval/problem118/code.c:17:                 out = (char **)realloc(out, sizeof(char *) * (word_count + 1));
	movq	%rax, %r13	# tmp172, <retval>
# eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	call	strlen@PLT	#
# eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	leaq	1(%rax), %rdx	#, tmp149
	movq	%rdx, %rdi	# tmp149,
	movq	%rdx, 16(%rsp)	# tmp149, %sfp
	call	malloc@PLT	#
# eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	24(%rsp), %rsi	# %sfp, _17
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	16(%rsp), %rdx	# %sfp, tmp149
# eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	%rax, %rdi	# tmp174, tmp150
# eval/problem118/code.c:18:                 out[word_count] = (char *)malloc(strlen(current) + 1);
	movq	%rax, -8(%r13,%rsi)	# tmp150, *_22
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%rbp, %rsi	# current,
	call	memcpy@PLT	#
	jmp	.L4	#
	.cfi_endproc
.LFE53:
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
