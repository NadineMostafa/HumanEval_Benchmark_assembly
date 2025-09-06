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
.LFB51:
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
	movq	%rdi, %r13	# tmp121, a
# eval/problem155/code.c:8:     int len_b = strlen(b);
	movq	%rsi, %rdi	# b,
# eval/problem155/code.c:6: bool func0(const char *a, const char *b) {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp	# tmp122, b
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# eval/problem155/code.c:8:     int len_b = strlen(b);
	call	strlen@PLT	#
# eval/problem155/code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	leal	1(%rax,%rax), %edi	#, tmp111
# eval/problem155/code.c:8:     int len_b = strlen(b);
	movq	%rax, %rbx	# tmp123, tmp108
# eval/problem155/code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	movslq	%edi, %rdi	# tmp111, tmp112
	call	malloc@PLT	#
	movq	%rax, %r15	# tmp124, temp
# eval/problem155/code.c:11:     for (int i = 0; i < len_b; i++) {
	testl	%ebx, %ebx	# tmp108
	jle	.L6	#,
# eval/problem155/code.c:13:         strncpy(temp + len_b - i, b, i);
	movslq	%ebx, %r14	# tmp108, _33
# eval/problem155/code.c:14:         temp[len_b] = '\0';
	leaq	(%rax,%r14), %r12	#, tmp120
	leal	-1(%rbx), %eax	#, _49
	xorl	%ebx, %ebx	# ivtmp.6
	movq	%rax, 8(%rsp)	# _49, %sfp
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem155/code.c:11:     for (int i = 0; i < len_b; i++) {
	leaq	1(%rbx), %rax	#, ivtmp.6
	cmpq	8(%rsp), %rbx	# %sfp, ivtmp.6
	je	.L6	#,
	movq	%rax, %rbx	# ivtmp.6, ivtmp.6
.L5:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:95:   return __builtin___strncpy_chk (__dest, __src, __len,
	movq	%r14, %rdx	# _33, tmp115
	leaq	0(%rbp,%rbx), %rsi	#, tmp116
	movq	%r15, %rdi	# temp,
	subq	%rbx, %rdx	# ivtmp.6, tmp115
	call	strncpy@PLT	#
	movq	%r12, %rdi	# tmp120, tmp118
	movq	%rbp, %rsi	# b,
	movq	%rbx, %rdx	# ivtmp.6,
	subq	%rbx, %rdi	# ivtmp.6, tmp118
	call	strncpy@PLT	#
# eval/problem155/code.c:14:         temp[len_b] = '\0';
	movb	$0, (%r12)	#, *_36
# eval/problem155/code.c:15:         if (strstr(a, temp)) {
	movq	%r15, %rsi	# temp,
	movq	%r13, %rdi	# a,
	call	strstr@PLT	#
# eval/problem155/code.c:15:         if (strstr(a, temp)) {
	testq	%rax, %rax	# tmp125
	je	.L4	#,
# eval/problem155/code.c:16:             free(temp);
	movq	%r15, %rdi	# temp,
	call	free@PLT	#
# eval/problem155/code.c:23: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# eval/problem155/code.c:17:             return true;
	movl	$1, %eax	#, <retval>
# eval/problem155/code.c:23: }
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
.L6:
	.cfi_restore_state
# eval/problem155/code.c:21:     free(temp);
	movq	%r15, %rdi	# temp,
	call	free@PLT	#
# eval/problem155/code.c:23: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 56
# eval/problem155/code.c:22:     return false;
	xorl	%eax, %eax	# <retval>
# eval/problem155/code.c:23: }
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
