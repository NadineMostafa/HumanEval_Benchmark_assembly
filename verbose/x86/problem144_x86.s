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
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r12	# tmp157, out
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	movzbl	(%rdi), %eax	# *sentence_45(D), _13
# eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	testb	%al, %al	# _13
	je	.L2	#,
	movq	%rdi, %rbp	# tmp156, sentence
# eval/problem144/code.c:7:     int out_index = 0;
	xorl	%r13d, %r13d	# out_index
# eval/problem144/code.c:6:     int index = 0, word_len = 0;
	xorl	%ecx, %ecx	# word_len
# eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	xorl	%ebx, %ebx	# _64
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L32:
# eval/problem144/code.c:13:             word_len++;
	addl	$1, %ecx	#, word_len
.L4:
	addq	$1, %rbx	#, _64
# eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	movzbl	0(%rbp,%rbx), %eax	# MEM[(const char *)sentence_45(D) + _67 * 1], _13
# eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	testb	%al, %al	# _13
	je	.L31	#,
.L8:
# eval/problem144/code.c:12:         if (sentence[i] != ' ') {
	cmpb	$32, %al	#, _13
	jne	.L32	#,
# eval/problem144/code.c:15:             if (word_len > 1) {
	cmpl	$1, %ecx	#, word_len
	jg	.L33	#,
.L19:
	addq	$1, %rbx	#, _64
# eval/problem144/code.c:34:             word_len = 0;
	xorl	%ecx, %ecx	# word_len
# eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	movzbl	0(%rbp,%rbx), %eax	# MEM[(const char *)sentence_45(D) + _67 * 1], _13
# eval/problem144/code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	testb	%al, %al	# _13
	jne	.L8	#,
.L31:
# eval/problem144/code.c:38:     if (word_len > 1) {
	cmpl	$1, %ecx	#, word_len
	jle	.L29	#,
# eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	cmpl	$3, %ecx	#, word_len
	jle	.L10	#,
# eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	movl	$2, %esi	#, j
# eval/problem144/code.c:41:             if (word_len % j == 0) {
	testb	$1, %cl	#, word_len
	jne	.L11	#,
	jmp	.L29	#
	.p2align 4,,10
	.p2align 3
.L12:
# eval/problem144/code.c:41:             if (word_len % j == 0) {
	movl	%ecx, %eax	# word_len, tmp142
	cltd
	idivl	%esi	# j
# eval/problem144/code.c:41:             if (word_len % j == 0) {
	testl	%edx, %edx	# tmp141
	je	.L29	#,
.L11:
# eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	addl	$1, %esi	#, j
# eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	movl	%esi, %eax	# j, tmp144
	imull	%esi, %eax	# j, tmp144
# eval/problem144/code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	cmpl	%ecx, %eax	# word_len, tmp144
	jle	.L12	#,
.L10:
# eval/problem144/code.c:51:         if (out_index > 0) {
	testl	%r13d, %r13d	# out_index
	je	.L34	#,
# eval/problem144/code.c:52:             out[out_index++] = ' ';
	leal	1(%r13), %eax	#, out_index
	movslq	%r13d, %r13	# out_index, out_index
# eval/problem144/code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movslq	%eax, %rdi	# out_index, out_index
# eval/problem144/code.c:52:             out[out_index++] = ' ';
	movb	$32, (%r12,%r13)	#, *_17
# eval/problem144/code.c:55:         out_index += word_len;
	leal	(%rcx,%rax), %r13d	#, _85
# eval/problem144/code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	addq	%r12, %rdi	# out, _83
.L16:
# eval/problem144/code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	movslq	%ecx, %rdx	# word_len, _18
# eval/problem144/code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	subq	%rdx, %rbx	# _18, tmp147
	leaq	0(%rbp,%rbx), %rsi	#, tmp148
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
.L29:
# eval/problem144/code.c:58:     out[out_index] = '\0';
	movslq	%r13d, %r13	# _85, _85
	addq	%r13, %r12	# _85, out
.L2:
# eval/problem144/code.c:58:     out[out_index] = '\0';
	movb	$0, (%r12)	#, *prephitmp_96
# eval/problem144/code.c:59: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
# eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	cmpl	$3, %ecx	#, word_len
	jle	.L5	#,
# eval/problem144/code.c:18:                     if (word_len % j == 0) {
	testb	$1, %cl	#, word_len
	je	.L19	#,
# eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	movl	$2, %esi	#, j
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem144/code.c:18:                     if (word_len % j == 0) {
	movl	%ecx, %eax	# word_len, tmp123
	cltd
	idivl	%esi	# j
# eval/problem144/code.c:18:                     if (word_len % j == 0) {
	testl	%edx, %edx	# tmp122
	je	.L19	#,
.L6:
# eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	addl	$1, %esi	#, j
# eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	movl	%esi, %eax	# j, tmp124
	imull	%esi, %eax	# j, tmp124
# eval/problem144/code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	cmpl	%ecx, %eax	# word_len, tmp124
	jle	.L7	#,
.L5:
# eval/problem144/code.c:28:                 if (out_index > 0) {
	testl	%r13d, %r13d	# out_index
	je	.L35	#,
# eval/problem144/code.c:29:                     out[out_index++] = ' ';
	leal	1(%r13), %eax	#, out_index
	movslq	%r13d, %r13	# out_index, out_index
# eval/problem144/code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movslq	%eax, %rdi	# out_index, out_index
# eval/problem144/code.c:29:                     out[out_index++] = ' ';
	movb	$32, (%r12,%r13)	#, *_5
# eval/problem144/code.c:32:                 out_index += word_len;
	leal	(%rax,%rcx), %r13d	#, out_index
# eval/problem144/code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	addq	%r12, %rdi	# out, prephitmp_3
.L14:
# eval/problem144/code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movslq	%ecx, %rdx	# word_len, _6
# eval/problem144/code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	movq	%rbx, %rsi	# _64, tmp127
	subq	%rdx, %rsi	# _6, tmp127
	addq	%rbp, %rsi	# sentence, tmp128
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
# eval/problem144/code.c:34:             word_len = 0;
	xorl	%ecx, %ecx	# word_len
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L34:
	movl	%ecx, %r13d	# word_len, _85
	movq	%r12, %rdi	# out, _83
	jmp	.L16	#
	.p2align 4,,10
	.p2align 3
.L35:
	movl	%ecx, %r13d	# word_len, out_index
	movq	%r12, %rdi	# out, prephitmp_3
	jmp	.L14	#
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
