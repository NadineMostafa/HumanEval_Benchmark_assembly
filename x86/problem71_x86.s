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
	movq	%rdi, %r10	# tmp138, lst
	movq	%rdx, %r11	# tmp140, out
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
# eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	leal	-1(%rsi), %r12d	#, tmp136
# eval/problem71/code.c:4: void func0(int *lst, int size, int *out) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
# eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	movl	%r12d, %r9d	# tmp136, r
# eval/problem71/code.c:4: void func0(int *lst, int size, int *out) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
# eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	testl	%r12d, %r12d	# tmp136
	jle	.L2	#,
	movl	%esi, %ebx	# tmp139, size
	leaq	8(%rdi), %r13	#, tmp137
	leaq	4(%rdi), %rsi	#, ivtmp.30
	movl	$1, %r8d	#, ivtmp.27
	leal	-2(%rbx), %ebp	#, tmp126
	addq	$2, %rbp	#, _88
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem71/code.c:6:         for (int j = i + 1; j < size; j++) {
	cmpl	%r8d, %ebx	# ivtmp.27, size
	jle	.L8	#,
	movl	%r12d, %eax	# tmp136, tmp129
	subl	%r8d, %eax	# ivtmp.27, tmp129
	leaq	-1(%r8,%rax), %rax	#, tmp131
	leaq	0(%r13,%rax,4), %rdi	#, _53
	movq	%rsi, %rax	# ivtmp.30, ivtmp.22
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem71/code.c:7:             if (lst[i] > lst[j]) {
	movl	-4(%rsi), %edx	# MEM[(int *)_90 + -4B], _4
# eval/problem71/code.c:7:             if (lst[i] > lst[j]) {
	movl	(%rax), %ecx	# MEM[(int *)_36], _8
# eval/problem71/code.c:7:             if (lst[i] > lst[j]) {
	cmpl	%ecx, %edx	# _8, _4
	jle	.L6	#,
# eval/problem71/code.c:9:                 lst[i] = lst[j];
	movl	%ecx, -4(%rsi)	# _8, MEM[(int *)_90 + -4B]
# eval/problem71/code.c:10:                 lst[j] = temp;
	movl	%edx, (%rax)	# _4, MEM[(int *)_36]
.L6:
# eval/problem71/code.c:6:         for (int j = i + 1; j < size; j++) {
	addq	$4, %rax	#, ivtmp.22
	cmpq	%rax, %rdi	# ivtmp.22, _53
	jne	.L7	#,
.L8:
# eval/problem71/code.c:5:     for (int i = 0; i < size - 1; i++) {
	addq	$1, %r8	#, ivtmp.27
	addq	$4, %rsi	#, ivtmp.30
	cmpq	%rbp, %r8	# _88, ivtmp.27
	jne	.L4	#,
.L5:
# eval/problem71/code.c:6:         for (int j = i + 1; j < size; j++) {
	xorl	%eax, %eax	# ivtmp.13
	xorl	%ecx, %ecx	# index
	jmp	.L9	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem71/code.c:23:             out[index++] = lst[r--];
	movslq	%r9d, %rsi	# r, r
# eval/problem71/code.c:18:     while (l <= r) {
	addq	$1, %rax	#, ivtmp.13
# eval/problem71/code.c:23:             out[index++] = lst[r--];
	subl	$1, %r9d	#, r
# eval/problem71/code.c:23:             out[index++] = lst[r--];
	addl	$2, %ecx	#, index
# eval/problem71/code.c:23:             out[index++] = lst[r--];
	movl	(%r10,%rsi,4), %esi	# *_29, _33
# eval/problem71/code.c:23:             out[index++] = lst[r--];
	movl	%esi, 4(%r11,%rdx)	# _33, *_32
# eval/problem71/code.c:18:     while (l <= r) {
	cmpl	%eax, %r9d	# ivtmp.13, r
	jl	.L1	#,
.L9:
# eval/problem71/code.c:20:             out[index++] = lst[l++];
	movslq	%ecx, %rdx	# index, index
# eval/problem71/code.c:20:             out[index++] = lst[l++];
	movl	(%r10,%rax,4), %edi	# MEM[(int *)lst_46(D) + ivtmp.13_81 * 4], pretmp_71
# eval/problem71/code.c:20:             out[index++] = lst[l++];
	leal	1(%rcx), %r8d	#, _83
# eval/problem71/code.c:20:             out[index++] = lst[l++];
	salq	$2, %rdx	#, _70
	leaq	(%r11,%rdx), %rsi	#, _61
# eval/problem71/code.c:20:             out[index++] = lst[l++];
	movl	%edi, (%rsi)	# pretmp_71, *_61
# eval/problem71/code.c:19:         if (l == r) {
	cmpl	%eax, %r9d	# ivtmp.13, r
	jne	.L10	#,
# eval/problem71/code.c:18:     while (l <= r) {
	addq	$1, %rax	#, ivtmp.13
# eval/problem71/code.c:20:             out[index++] = lst[l++];
	movl	%r8d, %ecx	# _83, index
# eval/problem71/code.c:18:     while (l <= r) {
	cmpl	%eax, %r9d	# ivtmp.13, r
	jge	.L9	#,
.L1:
# eval/problem71/code.c:26: }
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
.L2:
	.cfi_restore_state
# eval/problem71/code.c:18:     while (l <= r) {
	testl	%r12d, %r12d	# r
	je	.L5	#,
# eval/problem71/code.c:26: }
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
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
