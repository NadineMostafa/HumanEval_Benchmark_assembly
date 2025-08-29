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
	movq	%rdx, %r13	# tmp153, out
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp	# tmp154, out_size
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# tmp151, x
	movslq	%esi, %rdi	# tmp152,
	movq	%rdi, %r12	#,
# eval/problem105/code.c:6:     *out = malloc(size * sizeof(int));
	salq	$2, %rdi	#, tmp122
# eval/problem105/code.c:5: void func0(int *x, int size, int **out, int *out_size) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem105/code.c:6:     *out = malloc(size * sizeof(int));
	call	malloc@PLT	#
# eval/problem105/code.c:6:     *out = malloc(size * sizeof(int));
	movq	%rax, 0(%r13)	# _3, *out_47(D)
# eval/problem105/code.c:7:     *out_size = 0;
	movl	$0, 0(%rbp)	#, *out_size_49(D)
# eval/problem105/code.c:9:     for (int i = 0; i < size; i++) {
	testl	%r12d, %r12d	# size
	jle	.L1	#,
	movq	%rax, %r8	# tmp155, _3
	leal	-1(%r12), %eax	#, tmp125
	movq	%rbx, %r9	# x, ivtmp.25
	xorl	%esi, %esi	# prephitmp_35
	leaq	4(%rbx,%rax,4), %r11	#, _89
# eval/problem105/code.c:16:             num = num / 10;
	movl	$3435973837, %edi	#, tmp150
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem105/code.c:10:         int num = x[i];
	movl	(%r9), %r10d	# MEM[(int *)_18], num
# eval/problem105/code.c:12:         if (num == 0) has_even_digit = true;
	testl	%r10d, %r10d	# num
	je	.L3	#,
# eval/problem105/code.c:14:         while (num > 0 && !has_even_digit) {
	jle	.L4	#,
	movl	%r10d, %eax	# num, num
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem105/code.c:15:             if (num % 2 == 0) has_even_digit = true;
	movl	%eax, %edx	# num, tmp128
	movl	%eax, %eax	# num,
	movq	%rax, %rcx	#,
# eval/problem105/code.c:16:             num = num / 10;
	imulq	%rdi, %rax	# tmp150, tmp131
# eval/problem105/code.c:15:             if (num % 2 == 0) has_even_digit = true;
	notl	%edx	# tmp128
	andl	$1, %edx	#, _28
# eval/problem105/code.c:16:             num = num / 10;
	shrq	$35, %rax	#, num
# eval/problem105/code.c:14:         while (num > 0 && !has_even_digit) {
	cmpl	$9, %ecx	#, num
	jle	.L11	#,
	testb	%dl, %dl	# _28
	je	.L5	#,
.L3:
# eval/problem105/code.c:9:     for (int i = 0; i < size; i++) {
	addq	$4, %r9	#, ivtmp.25
	cmpq	%r11, %r9	# _89, ivtmp.25
	jne	.L7	#,
.L24:
# eval/problem105/code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	leal	-1(%rsi), %edx	#, _76
# eval/problem105/code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	testl	%edx, %edx	# _76
	jle	.L1	#,
	leaq	4(%r8), %r9	#, tmp149
	.p2align 4,,10
	.p2align 3
.L8:
	subl	$1, %edx	#,
	movq	%r8, %rax	# _3, ivtmp.11
	movq	%rdx, %rdi	#,
	leaq	(%r9,%rdx,4), %rsi	#, _42
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem105/code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movl	(%rax), %edx	# MEM[(int *)_78], _22
# eval/problem105/code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	movl	4(%rax), %ecx	# MEM[(int *)_78 + 4B], _27
# eval/problem105/code.c:27:             if ((*out)[j] > (*out)[j + 1]) {
	cmpl	%ecx, %edx	# _27, _22
	jle	.L9	#,
# eval/problem105/code.c:29:                 (*out)[j] = (*out)[j + 1];
	movl	%ecx, (%rax)	# _27, MEM[(int *)_78]
# eval/problem105/code.c:30:                 (*out)[j + 1] = temp;
	movl	%edx, 4(%rax)	# _22, MEM[(int *)_78 + 4B]
.L9:
# eval/problem105/code.c:26:         for (int j = 0; j < *out_size - i - 1; j++) {
	addq	$4, %rax	#, ivtmp.11
	cmpq	%rax, %rsi	# ivtmp.11, _42
	jne	.L10	#,
# eval/problem105/code.c:25:     for (int i = 0; i < *out_size - 1; i++) {
	movl	%edi, %edx	# ivtmp.19, ivtmp.19
	testl	%edi, %edi	# ivtmp.19
	jne	.L8	#,
.L1:
# eval/problem105/code.c:34: }
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
.L11:
	.cfi_restore_state
# eval/problem105/code.c:19:         if (!has_even_digit) {
	testb	%dl, %dl	# _28
	jne	.L3	#,
.L4:
# eval/problem105/code.c:20:             (*out)[*out_size] = x[i];
	movslq	%esi, %rax	# prephitmp_35, prephitmp_35
# eval/problem105/code.c:9:     for (int i = 0; i < size; i++) {
	addq	$4, %r9	#, ivtmp.25
# eval/problem105/code.c:21:             (*out_size)++;
	addl	$1, %esi	#, prephitmp_35
# eval/problem105/code.c:20:             (*out)[*out_size] = x[i];
	movl	%r10d, (%r8,%rax,4)	# num, *_15
# eval/problem105/code.c:21:             (*out_size)++;
	movl	%esi, 0(%rbp)	# prephitmp_35, *out_size_49(D)
# eval/problem105/code.c:9:     for (int i = 0; i < size; i++) {
	cmpq	%r11, %r9	# _89, ivtmp.25
	jne	.L7	#,
	jmp	.L24	#
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
