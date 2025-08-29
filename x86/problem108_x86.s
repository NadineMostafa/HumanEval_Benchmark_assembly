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
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# eval/problem108/code.c:4: int* func0(int n) {
	movl	%edi, %ebx	# tmp138, n
# eval/problem108/code.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	movl	$8, %edi	#,
	call	malloc@PLT	#
# eval/problem108/code.c:6:     counts[0] = 0;
	movq	$0, (%rax)	#, MEM <unsigned long> [(int *)counts_16]
# eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	testl	%ebx, %ebx	# n
	jle	.L1	#,
	leal	1(%rbx), %r10d	#, _9
# eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	movl	$1, %r9d	#, i
# eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	movl	$3435973837, %r8d	#, tmp106
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	movl	%r9d, %ecx	# i, number
# eval/problem108/code.c:10:         int reversed = 0, original = i;
	xorl	%esi, %esi	# reversed
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	movl	%ecx, %edx	# number, number
# eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	leal	(%rsi,%rsi,4), %edi	#, tmp101
# eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	imulq	%r8, %rdx	# tmp106, tmp105
	shrq	$35, %rdx	#, tmp103
	leal	(%rdx,%rdx,4), %esi	#, tmp110
	addl	%esi, %esi	# tmp111
	subl	%esi, %ecx	# tmp111, tmp112
# eval/problem108/code.c:14:             reversed = reversed * 10 + number % 10;
	leal	(%rcx,%rdi,2), %esi	#, reversed
# eval/problem108/code.c:15:             number /= 10;
	movl	%edx, %ecx	# tmp103, number
# eval/problem108/code.c:13:         while (number != 0) {
	testl	%edx, %edx	# number
	jne	.L3	#,
# eval/problem108/code.c:18:         if (original == reversed) {
	cmpl	%esi, %r9d	# reversed, i
	je	.L11	#,
.L4:
# eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	addl	$1, %r9d	#, i
# eval/problem108/code.c:9:     for (int i = 1; i <= n; i++) {
	cmpl	%r9d, %r10d	# i, _9
	jne	.L6	#,
.L1:
# eval/problem108/code.c:25: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
# eval/problem108/code.c:19:             if (original % 2 == 0) counts[0]++;
	testb	$1, %r9b	#, i
	jne	.L5	#,
# eval/problem108/code.c:19:             if (original % 2 == 0) counts[0]++;
	addl	$1, (%rax)	#, *counts_16
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem108/code.c:20:             else counts[1]++;
	addl	$1, 4(%rax)	#, MEM[(int *)counts_16 + 4B]
	jmp	.L4	#
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
