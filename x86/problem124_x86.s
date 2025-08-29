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
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdx, %rbp	# tmp131, size
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# eval/problem124/code.c:4: void func0(int n, int *out, int *size) {
	movl	%edi, %ebx	# tmp129, n
	movq	%rsi, %rdi	# tmp130, out
# eval/problem124/code.c:6:     *size = 1;
	movl	$1, (%rdx)	#, *size_44(D)
# eval/problem124/code.c:7:     out[0] = 1;
	movl	$1, (%rsi)	#, *out_46(D)
# eval/problem124/code.c:9:     while (n != 1) {
	cmpl	$1, %ebx	#, n
	je	.L2	#,
# eval/problem124/code.c:5:     int capacity = 10;
	movl	$10, %r12d	#, capacity
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem124/code.c:18:             n = n / 2;
	movl	%ebx, %eax	# n, tmp122
	shrl	$31, %eax	#, tmp122
	addl	%ebx, %eax	# n, tmp123
	sarl	%eax	# tmp123
	movl	%eax, %ebx	# tmp123, n
# eval/problem124/code.c:9:     while (n != 1) {
	cmpl	$1, %ebx	#, n
	je	.L2	#,
.L6:
# eval/problem124/code.c:10:         if (n % 2 == 1) {
	movl	%ebx, %edx	# n, tmp110
	shrl	$31, %edx	#, tmp110
	leal	(%rbx,%rdx), %eax	#, tmp111
	andl	$1, %eax	#, tmp112
	subl	%edx, %eax	# tmp110, tmp113
# eval/problem124/code.c:10:         if (n % 2 == 1) {
	cmpl	$1, %eax	#, tmp113
	jne	.L3	#,
# eval/problem124/code.c:11:             if (*size >= capacity) {
	movslq	0(%rbp), %rax	# *size_44(D),
# eval/problem124/code.c:11:             if (*size >= capacity) {
	cmpl	%eax, %r12d	# prephitmp_89, capacity
	jle	.L22	#,
.L4:
# eval/problem124/code.c:15:             out[(*size)++] = n;
	leal	1(%rax), %edx	#, tmp116
	movl	%edx, 0(%rbp)	# tmp116, *size_44(D)
# eval/problem124/code.c:15:             out[(*size)++] = n;
	movl	%ebx, (%rdi,%rax,4)	# n, *_9
# eval/problem124/code.c:16:             n = n * 3 + 1;
	leal	1(%rbx,%rbx,2), %ebx	#, n
# eval/problem124/code.c:9:     while (n != 1) {
	cmpl	$1, %ebx	#, n
	jne	.L6	#,
.L2:
# eval/problem124/code.c:22:     for (int i = 1; i < *size; i++) {
	cmpl	$1, 0(%rbp)	#, *size_44(D)
	movl	$1, %r8d	#, ivtmp.21
	jle	.L1	#,
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem124/code.c:23:         int key = out[i];
	movl	(%rdi,%r8,4), %esi	# MEM[(int *)out_62 + ivtmp.21_82 * 4], key
	leaq	-1(%r8), %rax	#, ivtmp.9
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem124/code.c:26:         while (j >= 0 && out[j] > key) {
	movl	(%rdi,%rax,4), %edx	# MEM[(int *)out_62 + ivtmp.9_69 * 4], _25
	movl	%eax, %ecx	# ivtmp.9, j
# eval/problem124/code.c:26:         while (j >= 0 && out[j] > key) {
	cmpl	%esi, %edx	# key, _25
	jle	.L23	#,
# eval/problem124/code.c:27:             out[j + 1] = out[j];
	movl	%edx, 4(%rdi,%rax,4)	# _25, MEM[(int *)out_62 + 4B + ivtmp.9_69 * 4]
# eval/problem124/code.c:26:         while (j >= 0 && out[j] > key) {
	subq	$1, %rax	#, ivtmp.9
	cmpl	$-1, %eax	#, ivtmp.9
	jne	.L8	#,
	movq	%rdi, %rax	# out, _96
.L9:
# eval/problem124/code.c:30:         out[j + 1] = key;
	movl	%esi, (%rax)	# key, *prephitmp_97
# eval/problem124/code.c:22:     for (int i = 1; i < *size; i++) {
	addq	$1, %r8	#, ivtmp.21
	cmpl	%r8d, 0(%rbp)	# ivtmp.21, *size_44(D)
	jg	.L7	#,
.L1:
# eval/problem124/code.c:32: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L23:
	.cfi_restore_state
# eval/problem124/code.c:30:         out[j + 1] = key;
	addl	$1, %ecx	#, tmp125
	movslq	%ecx, %rcx	# tmp125, tmp126
	leaq	(%rdi,%rcx,4), %rax	#, _96
	jmp	.L9	#
	.p2align 4,,10
	.p2align 3
.L22:
# eval/problem124/code.c:12:                 capacity *= 2;
	addl	%r12d, %r12d	# capacity
# eval/problem124/code.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	movslq	%r12d, %rsi	# capacity, capacity
	salq	$2, %rsi	#, tmp115
	call	realloc@PLT	#
	movq	%rax, %rdi	# tmp132, out
# eval/problem124/code.c:15:             out[(*size)++] = n;
	movslq	0(%rbp), %rax	# *size_44(D),
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
