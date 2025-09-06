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
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdi, %r14	# tmp160, l1
	movslq	%esi, %rdi	# tmp161,
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13	#,
# eval/problem59/code.c:5:     int *out = malloc(size1 * sizeof(int));
	salq	$2, %rdi	#, tmp137
# eval/problem59/code.c:4: int *func0(int *l1, int size1, int *l2, int size2, int *out_size) {
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%ecx, %r12d	# tmp163, size2
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp	# tmp162, l2
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# eval/problem59/code.c:4: int *func0(int *l1, int size1, int *l2, int size2, int *out_size) {
	movq	%r8, %rbx	# tmp164, out_size
# eval/problem59/code.c:5:     int *out = malloc(size1 * sizeof(int));
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp165, <retval>
# eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	testl	%r13d, %r13d	# size1
	jle	.L14	#,
	leal	-1(%r13), %eax	#, tmp140
	movq	%r14, %rsi	# l1, ivtmp.37
	leaq	4(%r8), %r11	#, tmp159
# eval/problem59/code.c:6:     int k = 0, i, j, m;
	xorl	%r9d, %r9d	# k
	leaq	4(%r14,%rax,4), %r10	#, _117
	leal	-1(%r12), %eax	#, tmp144
	leaq	4(%rbp,%rax,4), %rdi	#, _96
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem59/code.c:10:         for (m = 0; m < k; m++) {
	testl	%r9d, %r9d	# k
	je	.L10	#,
	leal	-1(%r9), %ecx	#, tmp148
# eval/problem59/code.c:11:             if (out[m] == l1[i]) {
	movl	(%rsi), %edx	# MEM[(int *)_119], _10
	movq	%r8, %rax	# <retval>, ivtmp.31
	leaq	(%r11,%rcx,4), %rcx	#, _107
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L23:
# eval/problem59/code.c:10:         for (m = 0; m < k; m++) {
	addq	$4, %rax	#, ivtmp.31
	cmpq	%rcx, %rax	# _107, ivtmp.31
	je	.L10	#,
.L5:
# eval/problem59/code.c:11:             if (out[m] == l1[i]) {
	cmpl	%edx, (%rax)	# _10, MEM[(int *)_100]
	jne	.L23	#,
.L4:
# eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	addq	$4, %rsi	#, ivtmp.37
	cmpq	%r10, %rsi	# _117, ivtmp.37
	jne	.L3	#,
.L8:
# eval/problem59/code.c:26:     for (i = 0; i < k - 1; i++) {
	leal	-1(%r9), %edx	#, _79
# eval/problem59/code.c:26:     for (i = 0; i < k - 1; i++) {
	testl	%edx, %edx	# _79
	jle	.L2	#,
	leaq	4(%r8), %r10	#, tmp158
	.p2align 4,,10
	.p2align 3
.L11:
	subl	$1, %edx	#,
	movq	%r8, %rax	# <retval>, ivtmp.12
	movq	%rdx, %rdi	#,
	leaq	(%r10,%rdx,4), %rsi	#, _33
	.p2align 4,,10
	.p2align 3
.L13:
# eval/problem59/code.c:28:             if (out[j] > out[j + 1]) {
	movl	(%rax), %edx	# MEM[(int *)_48], _26
# eval/problem59/code.c:28:             if (out[j] > out[j + 1]) {
	movl	4(%rax), %ecx	# MEM[(int *)_48 + 4B], _31
# eval/problem59/code.c:28:             if (out[j] > out[j + 1]) {
	cmpl	%ecx, %edx	# _31, _26
	jle	.L12	#,
# eval/problem59/code.c:30:                 out[j] = out[j + 1];
	movl	%ecx, (%rax)	# _31, MEM[(int *)_48]
# eval/problem59/code.c:31:                 out[j + 1] = temp;
	movl	%edx, 4(%rax)	# _26, MEM[(int *)_48 + 4B]
.L12:
# eval/problem59/code.c:27:         for (j = 0; j < k - i - 1; j++) {
	addq	$4, %rax	#, ivtmp.12
	cmpq	%rax, %rsi	# ivtmp.12, _33
	jne	.L13	#,
# eval/problem59/code.c:26:     for (i = 0; i < k - 1; i++) {
	movl	%edi, %edx	# ivtmp.20, ivtmp.20
	testl	%edi, %edi	# ivtmp.20
	jne	.L11	#,
.L2:
# eval/problem59/code.c:36:     *out_size = k;
	movl	%r9d, (%rbx)	# k, *out_size_53(D)
# eval/problem59/code.c:38: }
	movq	%r8, %rax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
# eval/problem59/code.c:17:             for (j = 0; j < size2; j++) {
	testl	%r12d, %r12d	# size2
	jle	.L4	#,
# eval/problem59/code.c:18:                 if (l1[i] == l2[j]) {
	movl	(%rsi), %edx	# MEM[(int *)_118], _14
	movq	%rbp, %rax	# l2, ivtmp.26
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem59/code.c:17:             for (j = 0; j < size2; j++) {
	addq	$4, %rax	#, ivtmp.26
	cmpq	%rdi, %rax	# _96, ivtmp.26
	je	.L4	#,
.L7:
# eval/problem59/code.c:18:                 if (l1[i] == l2[j]) {
	cmpl	(%rax), %edx	# MEM[(int *)_89], _14
	jne	.L6	#,
# eval/problem59/code.c:19:                     out[k++] = l1[i];
	movslq	%r9d, %rax	# k, k
# eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	addq	$4, %rsi	#, ivtmp.37
# eval/problem59/code.c:19:                     out[k++] = l1[i];
	addl	$1, %r9d	#, k
# eval/problem59/code.c:19:                     out[k++] = l1[i];
	movl	%edx, (%r8,%rax,4)	# _14, *_21
# eval/problem59/code.c:8:     for (i = 0; i < size1; i++) {
	cmpq	%r10, %rsi	# _117, ivtmp.37
	jne	.L3	#,
	jmp	.L8	#
.L14:
# eval/problem59/code.c:6:     int k = 0, i, j, m;
	xorl	%r9d, %r9d	# k
# eval/problem59/code.c:38: }
	movq	%r8, %rax	# <retval>,
# eval/problem59/code.c:36:     *out_size = k;
	movl	%r9d, (%rbx)	# k, *out_size_53(D)
# eval/problem59/code.c:38: }
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
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
