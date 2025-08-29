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
	movq	%rsi, %rbp	# tmp117, size
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx	# tmp116, n
# eval/problem26/code.c:5:     int* out = malloc(sizeof(int) * 64);
	movl	$256, %edi	#,
# eval/problem26/code.c:4: int* func0(int n, int* size) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem26/code.c:5:     int* out = malloc(sizeof(int) * 64);
	call	malloc@PLT	#
# eval/problem26/code.c:6:     *size = 0;
	movl	$0, 0(%rbp)	#, *size_22(D)
	movl	$2, %ecx	#, i
# eval/problem26/code.c:5:     int* out = malloc(sizeof(int) * 64);
	movq	%rax, %r8	# tmp118, <retval>
# eval/problem26/code.c:7:     for (int i = 2; i * i <= n; i++) {
	cmpl	$3, %ebx	#, n
	jle	.L3	#,
	.p2align 4,,10
	.p2align 3
.L2:
# eval/problem26/code.c:8:         while (n % i == 0) {
	movl	%ebx, %eax	# n, tmp112
	cltd
	idivl	%ecx	# i
# eval/problem26/code.c:8:         while (n % i == 0) {
	testl	%edx, %edx	# tmp111
	jne	.L6	#,
	movl	0(%rbp), %eax	# *size_22(D), tmp120
	leal	1(%rax), %esi	#, tmp99
	movslq	%esi, %rsi	# tmp99, ivtmp.8
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem26/code.c:9:             n = n / i;
	movl	%ebx, %eax	# n, n
# eval/problem26/code.c:10:             out[(*size)++] = i;
	movl	%ecx, -4(%r8,%rsi,4)	# i, MEM[(int *)out_21 + -4B + ivtmp.8_37 * 4]
# eval/problem26/code.c:10:             out[(*size)++] = i;
	movl	%esi, %edi	# ivtmp.8, _2
# eval/problem26/code.c:8:         while (n % i == 0) {
	addq	$1, %rsi	#, ivtmp.8
# eval/problem26/code.c:9:             n = n / i;
	cltd
	idivl	%ecx	# i
# eval/problem26/code.c:8:         while (n % i == 0) {
	cltd
# eval/problem26/code.c:9:             n = n / i;
	movl	%eax, %ebx	# n, n
# eval/problem26/code.c:8:         while (n % i == 0) {
	idivl	%ecx	# i
# eval/problem26/code.c:8:         while (n % i == 0) {
	testl	%edx, %edx	# tmp104
	je	.L4	#,
	movl	%edi, 0(%rbp)	# _2, *size_22(D)
.L6:
# eval/problem26/code.c:7:     for (int i = 2; i * i <= n; i++) {
	addl	$1, %ecx	#, i
# eval/problem26/code.c:7:     for (int i = 2; i * i <= n; i++) {
	movl	%ecx, %eax	# i, tmp106
	imull	%ecx, %eax	# i, tmp106
# eval/problem26/code.c:7:     for (int i = 2; i * i <= n; i++) {
	cmpl	%ebx, %eax	# n, tmp106
	jle	.L2	#,
.L3:
# eval/problem26/code.c:13:     if (n > 1) {
	cmpl	$1, %ebx	#, n
	jle	.L1	#,
# eval/problem26/code.c:14:         out[(*size)++] = n;
	movslq	0(%rbp), %rax	# *size_22(D),
# eval/problem26/code.c:14:         out[(*size)++] = n;
	leal	1(%rax), %edx	#, tmp113
# eval/problem26/code.c:14:         out[(*size)++] = n;
	movl	%ebx, (%r8,%rax,4)	# n, *_12
# eval/problem26/code.c:14:         out[(*size)++] = n;
	movl	%edx, 0(%rbp)	# tmp113, *size_22(D)
.L1:
# eval/problem26/code.c:17: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	movq	%r8, %rax	# <retval>,
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
