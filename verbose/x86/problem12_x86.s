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
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12	# tmp114, b
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# tmp113, a
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# eval/problem12/code.c:6:     int len_a = strlen(a);
	call	strlen@PLT	#
# eval/problem12/code.c:7:     int len_b = strlen(b);
	movq	%r12, %rdi	# b,
# eval/problem12/code.c:6:     int len_a = strlen(a);
	movq	%rax, %rbx	# tmp115, tmp100
# eval/problem12/code.c:7:     int len_b = strlen(b);
	call	strlen@PLT	#
# eval/problem12/code.c:8:     int min_len = len_a < len_b ? len_a : len_b;
	cmpl	%eax, %ebx	# tmp118, tmp100
	cmovg	%eax, %ebx	# tmp100,, tmp118, min_len
# eval/problem12/code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	leal	1(%rbx), %edi	#, tmp105
# eval/problem12/code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	movslq	%edi, %rdi	# tmp105, tmp106
	call	malloc@PLT	#
# eval/problem12/code.c:10:     if (!output) return NULL;
	testq	%rax, %rax	# <retval>
	je	.L1	#,
	movslq	%ebx, %rsi	# min_len, min_len
# eval/problem12/code.c:12:     for (int i = 0; i < min_len; i++) {
	xorl	%edx, %edx	# ivtmp.6
	testl	%ebx, %ebx	# min_len
	jle	.L3	#,
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem12/code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	movzbl	(%r12,%rdx), %ebx	# MEM[(const char *)b_21(D) + ivtmp.6_31 * 1], tmp120
	cmpb	%bl, 0(%rbp,%rdx)	# tmp120, MEM[(const char *)a_19(D) + ivtmp.6_31 * 1]
	setne	%cl	#, tmp112
	addl	$48, %ecx	#, iftmp.0_15
	movb	%cl, (%rax,%rdx)	# iftmp.0_15, MEM[(char *)output_25 + ivtmp.6_31 * 1]
# eval/problem12/code.c:12:     for (int i = 0; i < min_len; i++) {
	addq	$1, %rdx	#, ivtmp.6
	cmpq	%rsi, %rdx	# min_len, ivtmp.6
	jne	.L5	#,
.L3:
# eval/problem12/code.c:15:     output[min_len] = '\0';
	movb	$0, (%rax,%rsi)	#, *_12
.L1:
# eval/problem12/code.c:17: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
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
