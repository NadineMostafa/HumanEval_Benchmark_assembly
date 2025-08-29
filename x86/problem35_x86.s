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
	movq	%rdx, %rbp	# tmp161, out_size
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# eval/problem35/code.c:4: int *func0(int *l, int size, int *out_size) {
	movq	%rdi, %rbx	# tmp159, l
	movslq	%esi, %rdi	# tmp160,
	movq	%rdi, %r12	#,
# eval/problem35/code.c:5:     int *out = malloc(size * sizeof(int));
	salq	$2, %rdi	#, tmp135
	call	malloc@PLT	#
	movq	%rax, %r10	# tmp162, <retval>
# eval/problem35/code.c:7:     for (i = 0; i < size; i++) {
	testl	%r12d, %r12d	# size
	jle	.L14	#,
	leal	-1(%r12), %eax	#, tmp138
	movq	%rbx, %rdi	# l, ivtmp.33
	leaq	4(%r10), %r8	#, tmp158
# eval/problem35/code.c:6:     int found, out_count = 0, i, j;
	xorl	%r9d, %r9d	# out_count
	leaq	4(%rbx,%rax,4), %rsi	#, _116
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem35/code.c:16:             out[out_count++] = l[i];
	movl	(%rdi), %edx	# MEM[(int *)_108], pretmp_79
# eval/problem35/code.c:9:         for (j = 0; j < out_count; j++) {
	testl	%r9d, %r9d	# out_count
	je	.L6	#,
	leal	-1(%r9), %ecx	#, tmp142
	movq	%r10, %rax	# <retval>, ivtmp.28
	leaq	(%r8,%rcx,4), %rcx	#, _104
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L24:
# eval/problem35/code.c:9:         for (j = 0; j < out_count; j++) {
	addq	$4, %rax	#, ivtmp.28
	cmpq	%rcx, %rax	# _104, ivtmp.28
	je	.L6	#,
.L5:
# eval/problem35/code.c:10:             if (l[i] == out[j]) {
	cmpl	%edx, (%rax)	# pretmp_79, MEM[(int *)_97]
	jne	.L24	#,
# eval/problem35/code.c:7:     for (i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.33
	cmpq	%rsi, %rdi	# _116, ivtmp.33
	jne	.L3	#,
.L7:
# eval/problem35/code.c:20:     for (i = 0; i < out_count - 1; i++) {
	cmpl	$1, %r9d	#, out_count
	je	.L2	#,
	leal	-2(%r9), %r11d	#, tmp146
	leaq	4(%r10), %rsi	#, ivtmp.21
	movl	$1, %r8d	#, ivtmp.18
	addq	$2, %r11	#, _84
	leal	-1(%r9), %r12d	#, tmp156
	leaq	8(%r10), %rbx	#, tmp157
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem35/code.c:21:         for (j = i + 1; j < out_count; j++) {
	cmpl	%r8d, %r9d	# ivtmp.18, out_count
	jle	.L13	#,
	movl	%r12d, %eax	# tmp156, tmp149
	subl	%r8d, %eax	# ivtmp.18, tmp149
	leaq	-1(%r8,%rax), %rax	#, tmp151
	leaq	(%rbx,%rax,4), %rdi	#, _6
	movq	%rsi, %rax	# ivtmp.21, ivtmp.12
	.p2align 4,,10
	.p2align 3
.L12:
# eval/problem35/code.c:22:             if (out[i] > out[j]) {
	movl	-4(%rsi), %edx	# MEM[(int *)_86 + -4B], _21
# eval/problem35/code.c:22:             if (out[i] > out[j]) {
	movl	(%rax), %ecx	# MEM[(int *)_31], _25
# eval/problem35/code.c:22:             if (out[i] > out[j]) {
	cmpl	%ecx, %edx	# _25, _21
	jle	.L11	#,
# eval/problem35/code.c:24:                 out[i] = out[j];
	movl	%ecx, -4(%rsi)	# _25, MEM[(int *)_86 + -4B]
# eval/problem35/code.c:25:                 out[j] = temp;
	movl	%edx, (%rax)	# _21, MEM[(int *)_31]
.L11:
# eval/problem35/code.c:21:         for (j = i + 1; j < out_count; j++) {
	addq	$4, %rax	#, ivtmp.12
	cmpq	%rax, %rdi	# ivtmp.12, _6
	jne	.L12	#,
.L13:
# eval/problem35/code.c:20:     for (i = 0; i < out_count - 1; i++) {
	addq	$1, %r8	#, ivtmp.18
	addq	$4, %rsi	#, ivtmp.21
	cmpq	%r11, %r8	# _84, ivtmp.18
	jne	.L10	#,
.L2:
# eval/problem35/code.c:32: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# eval/problem35/code.c:30:     *out_size = out_count;
	movl	%r9d, 0(%rbp)	# out_count, *out_size_43(D)
# eval/problem35/code.c:32: }
	movq	%r10, %rax	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
# eval/problem35/code.c:16:             out[out_count++] = l[i];
	movslq	%r9d, %rax	# out_count, out_count
# eval/problem35/code.c:7:     for (i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.33
# eval/problem35/code.c:16:             out[out_count++] = l[i];
	addl	$1, %r9d	#, out_count
# eval/problem35/code.c:16:             out[out_count++] = l[i];
	movl	%edx, (%r10,%rax,4)	# pretmp_79, *_16
# eval/problem35/code.c:7:     for (i = 0; i < size; i++) {
	cmpq	%rsi, %rdi	# _116, ivtmp.33
	jne	.L3	#,
	jmp	.L7	#
.L14:
# eval/problem35/code.c:6:     int found, out_count = 0, i, j;
	xorl	%r9d, %r9d	# out_count
# eval/problem35/code.c:32: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	movq	%r10, %rax	# <retval>,
# eval/problem35/code.c:30:     *out_size = out_count;
	movl	%r9d, 0(%rbp)	# out_count, *out_size_43(D)
# eval/problem35/code.c:32: }
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
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
