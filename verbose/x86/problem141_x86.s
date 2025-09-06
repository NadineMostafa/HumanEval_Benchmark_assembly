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
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%r15d, %r15d	# j
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14	# tmp113, out
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
# eval/problem141/code.c:5:     int space_len = 0;
	xorl	%r13d, %r13d	# space_len
# eval/problem141/code.c:4: void func0(const char *text, char *out) {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
# eval/problem141/code.c:6:     int j = 0;
	xorl	%r12d, %r12d	# j
# eval/problem141/code.c:4: void func0(const char *text, char *out) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp112, text
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	xorl	%ebx, %ebx	# ivtmp.13
# eval/problem141/code.c:4: void func0(const char *text, char *out) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	leal	1(%r12), %eax	#, j
# eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	cmpl	$1, %r13d	#, space_len
	je	.L16	#,
# eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cmpl	$2, %r13d	#, space_len
	jne	.L17	#,
# eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cltq
# eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rdx)	#, *_95
# eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%r14,%rax)	#, *_73
# eval/problem141/code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	leal	2(%r12), %eax	#, j
.L6:
# eval/problem141/code.c:15:             out[j++] = text[i];
	movzbl	0(%rbp,%rbx), %edx	# MEM[(const char *)text_48(D) + ivtmp.13_90 * 1], _15
# eval/problem141/code.c:15:             out[j++] = text[i];
	leal	1(%rax), %r12d	#, j
	cltq
# eval/problem141/code.c:14:             space_len = 0;
	xorl	%r13d, %r13d	# space_len
	movslq	%r12d, %r15	# j, j
# eval/problem141/code.c:15:             out[j++] = text[i];
	movb	%dl, (%r14,%rax)	# _15, *_14
.L4:
	addq	$1, %rbx	#, ivtmp.13
.L2:
# eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	movq	%rbp, %rdi	# text,
	call	strlen@PLT	#
# eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	leaq	(%r14,%r15), %rdx	#, _95
# eval/problem141/code.c:7:     for (int i = 0; i < strlen(text); i++) {
	cmpq	%rbx, %rax	# ivtmp.13, tmp114
	jbe	.L18	#,
# eval/problem141/code.c:8:         if (text[i] == ' ') {
	cmpb	$32, 0(%rbp,%rbx)	#, MEM[(const char *)text_48(D) + ivtmp.13_90 * 1]
	jne	.L3	#,
# eval/problem141/code.c:9:             space_len++;
	addl	$1, %r13d	#, space_len
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L17:
# eval/problem141/code.c:13:             if (space_len > 2) out[j++] = '-';
	jle	.L19	#,
# eval/problem141/code.c:13:             if (space_len > 2) out[j++] = '-';
	movb	$45, (%rdx)	#, *_95
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L16:
# eval/problem141/code.c:11:             if (space_len == 1) out[j++] = '_';
	movb	$95, (%rdx)	#, *_95
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L18:
# eval/problem141/code.c:18:     if (space_len == 1) out[j++] = '_';
	cmpl	$1, %r13d	#, space_len
	je	.L20	#,
# eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cmpl	$2, %r13d	#, space_len
	jne	.L21	#,
# eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	leal	1(%r12), %eax	#, j
# eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	addl	$2, %r12d	#, j
# eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%rdx)	#, *_95
# eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	cltq
	movslq	%r12d, %r15	# j, j
# eval/problem141/code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	movb	$95, (%r14,%rax)	#, *_23
	jmp	.L11	#
	.p2align 4,,10
	.p2align 3
.L21:
# eval/problem141/code.c:20:     if (space_len > 2) out[j++] = '-';
	jle	.L11	#,
# eval/problem141/code.c:20:     if (space_len > 2) out[j++] = '-';
	movb	$45, (%rdx)	#, *_95
# eval/problem141/code.c:20:     if (space_len > 2) out[j++] = '-';
	addl	$1, %r12d	#, j
	movslq	%r12d, %r15	# j, j
.L11:
# eval/problem141/code.c:21:     out[j] = '\0';
	movb	$0, (%r14,%r15)	#, *_27
# eval/problem141/code.c:22: }
	addq	$8, %rsp	#,
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
.L20:
	.cfi_restore_state
# eval/problem141/code.c:18:     if (space_len == 1) out[j++] = '_';
	addl	$1, %r12d	#, j
# eval/problem141/code.c:18:     if (space_len == 1) out[j++] = '_';
	movb	$95, (%rdx)	#, *_95
	movslq	%r12d, %r15	# j, j
	jmp	.L11	#
.L19:
	movl	%r12d, %eax	# j, j
	jmp	.L6	#
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
