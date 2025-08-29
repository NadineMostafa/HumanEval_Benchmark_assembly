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
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%esi, %ebp	# tmp128,
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
# eval/problem117/code.c:6:     for (int i = 0; i < size; i++) {
	testl	%ebp, %ebp	# size
	jle	.L1	#,
	movq	%rdi, %r12	# tmp127, arr
	leaq	4(%rdi), %r10	#, ivtmp.20
	leal	-1(%rbp), %r13d	#, _67
	movl	$1, %ebx	#, ivtmp.17
	addq	$8, %r12	#, tmp124
# eval/problem117/code.c:7:         for (int j = i + 1; j < size; j++) {
	cmpq	%rbp, %rbx	# _69, ivtmp.17
	je	.L1	#,
	.p2align 4,,10
	.p2align 3
.L25:
	movl	%r13d, %eax	# _67, tmp113
	movq	%r10, %rdi	# ivtmp.20, ivtmp.11
	subl	%ebx, %eax	# ivtmp.17, tmp113
	leaq	-1(%rbx,%rax), %rax	#, tmp115
	leaq	(%r12,%rax,4), %r11	#, _59
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem117/code.c:9:             x = arr[i];
	movl	-4(%r10), %r8d	# MEM[(int *)_71 + -4B], x
# eval/problem117/code.c:10:             y = arr[j];
	movl	(%rdi), %r9d	# MEM[(int *)_35], y
# eval/problem117/code.c:11:             while (x > 0) {
	testl	%r8d, %r8d	# x
	jle	.L3	#,
	movl	%r8d, %eax	# x, count_ones
# eval/problem117/code.c:8:             count_ones = 0;
	xorl	%ecx, %ecx	# count_ones
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem117/code.c:12:                 count_ones += x & 1;
	movl	%eax, %edx	# count_ones, tmp118
	andl	$1, %edx	#, tmp118
# eval/problem117/code.c:12:                 count_ones += x & 1;
	addl	%edx, %ecx	# tmp118, count_ones
# eval/problem117/code.c:11:             while (x > 0) {
	sarl	%eax	# count_ones
	jne	.L4	#,
# eval/problem117/code.c:17:             while (y > 0) {
	testl	%r9d, %r9d	# y
	jle	.L5	#,
.L11:
# eval/problem117/code.c:8:             count_ones = 0;
	movl	%r9d, %edx	# y, y
# eval/problem117/code.c:16:             count_ones = 0;
	xorl	%eax, %eax	# count_ones
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem117/code.c:18:                 count_ones += y & 1;
	movl	%edx, %esi	# y, tmp119
	andl	$1, %esi	#, tmp119
# eval/problem117/code.c:18:                 count_ones += y & 1;
	addl	%esi, %eax	# tmp119, count_ones
# eval/problem117/code.c:17:             while (y > 0) {
	sarl	%edx	# y
	jne	.L6	#,
.L5:
# eval/problem117/code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cmpl	%eax, %ecx	# count_ones, count_ones
	jg	.L7	#,
# eval/problem117/code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	sete	%al	#, _33
.L12:
# eval/problem117/code.c:22:             if (y < x || (y == x && arr[j] < arr[i])) {
	cmpl	%r9d, %r8d	# y, x
	jle	.L8	#,
	testb	%al, %al	# _33
	jne	.L7	#,
.L8:
# eval/problem117/code.c:7:         for (int j = i + 1; j < size; j++) {
	addq	$4, %rdi	#, ivtmp.11
	cmpq	%r11, %rdi	# _59, ivtmp.11
	jne	.L9	#,
	addq	$1, %rbx	#, ivtmp.17
	addq	$4, %r10	#, ivtmp.20
# eval/problem117/code.c:7:         for (int j = i + 1; j < size; j++) {
	cmpq	%rbp, %rbx	# _69, ivtmp.17
	jne	.L25	#,
.L1:
# eval/problem117/code.c:29: }
	popq	%rbx	#
	.cfi_remember_state
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
.L7:
	.cfi_restore_state
# eval/problem117/code.c:24:                 arr[i] = arr[j];
	movl	%r9d, -4(%r10)	# y, MEM[(int *)_71 + -4B]
# eval/problem117/code.c:25:                 arr[j] = temp;
	movl	%r8d, (%rdi)	# x, MEM[(int *)_35]
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem117/code.c:8:             count_ones = 0;
	xorl	%ecx, %ecx	# count_ones
# eval/problem117/code.c:17:             while (y > 0) {
	movl	$1, %eax	#, _33
	testl	%r9d, %r9d	# y
	jg	.L11	#,
	jmp	.L12	#
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
