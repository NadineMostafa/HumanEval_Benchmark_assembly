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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movslq	%edi, %rdi	# tmp119,
	movq	%rsi, %rbp	# tmp120, count
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	#,
# eval/problem97/code.c:5:     int *out = malloc(n * sizeof(int));
	salq	$2, %rdi	#, tmp105
# eval/problem97/code.c:4: int *func0(int n, int *count) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem97/code.c:5:     int *out = malloc(n * sizeof(int));
	call	malloc@PLT	#
# eval/problem97/code.c:6:     *count = 0;
	movl	$0, 0(%rbp)	#, *count_23(D)
	xorl	%r9d, %r9d	# pretmp_15
	movl	$2, %edi	#, i
# eval/problem97/code.c:5:     int *out = malloc(n * sizeof(int));
	movq	%rax, %r10	# tmp121, <retval>
	leaq	4(%rax), %r11	#, tmp118
# eval/problem97/code.c:9:     for (i = 2; i < n; i++) {
	cmpl	$2, %ebx	#, n
	jle	.L1	#,
	.p2align 4,,10
	.p2align 3
.L2:
# eval/problem97/code.c:11:         for (j = 0; j < *count; j++) {
	testl	%r9d, %r9d	# pretmp_15
	jle	.L4	#,
	leal	-1(%r9), %eax	#, tmp108
	movq	%r10, %rsi	# <retval>, ivtmp.8
	leaq	(%r11,%rax,4), %r8	#, _36
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L17:
# eval/problem97/code.c:14:             if (i % k == 0) {
	movl	%edi, %eax	# i, tmp114
	cltd
	idivl	%ecx	# k
# eval/problem97/code.c:14:             if (i % k == 0) {
	testl	%edx, %edx	# tmp113
	je	.L5	#,
# eval/problem97/code.c:11:         for (j = 0; j < *count; j++) {
	addq	$4, %rsi	#, ivtmp.8
	cmpq	%r8, %rsi	# _36, ivtmp.8
	je	.L4	#,
.L6:
# eval/problem97/code.c:12:             k = out[j];
	movl	(%rsi), %ecx	# MEM[(int *)_14], k
# eval/problem97/code.c:13:             if (k * k > i) break;
	movl	%ecx, %eax	# k, tmp111
	imull	%ecx, %eax	# k, tmp111
# eval/problem97/code.c:13:             if (k * k > i) break;
	cmpl	%edi, %eax	# i, tmp111
	jle	.L17	#,
.L4:
# eval/problem97/code.c:20:             out[*count] = i;
	movslq	%r9d, %rax	# pretmp_15, pretmp_15
# eval/problem97/code.c:21:             (*count)++;
	addl	$1, %r9d	#, tmp117
# eval/problem97/code.c:20:             out[*count] = i;
	movl	%edi, (%r10,%rax,4)	# i, *_12
# eval/problem97/code.c:21:             (*count)++;
	movl	%r9d, 0(%rbp)	# tmp117, *count_23(D)
.L5:
# eval/problem97/code.c:9:     for (i = 2; i < n; i++) {
	addl	$1, %edi	#, i
# eval/problem97/code.c:9:     for (i = 2; i < n; i++) {
	cmpl	%edi, %ebx	# i, n
	je	.L1	#,
# eval/problem97/code.c:11:         for (j = 0; j < *count; j++) {
	movl	0(%rbp), %r9d	# *count_23(D), pretmp_15
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L1:
# eval/problem97/code.c:25: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	movq	%r10, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
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
