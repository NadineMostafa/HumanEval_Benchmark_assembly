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
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movslq	%esi, %r12	# tmp169,
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
# eval/problem34/code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	movl	%r12d, %eax	# size, tmp131
# eval/problem34/code.c:4: void func0(int *l, int size, int *out) {
	movq	%rdx, %rbp	# tmp170, out
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# eval/problem34/code.c:4: void func0(int *l, int size, int *out) {
	movq	%rdi, %rbx	# tmp168, l
# eval/problem34/code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	imulq	$1431655766, %r12, %rdi	#, _76, tmp129
	sarl	$31, %eax	#, tmp131
	shrq	$32, %rdi	#, tmp130
	subl	%eax, %edi	# tmp131, tmp127
# eval/problem34/code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	addl	$1, %edi	#, tmp132
	movslq	%edi, %rdi	# tmp132, tmp133
# eval/problem34/code.c:5:     int *third = malloc((size / 3 + 1) * sizeof(int));
	salq	$2, %rdi	#, tmp134
	call	malloc@PLT	#
	movq	%rax, %rdi	# tmp171, third
# eval/problem34/code.c:8:     for (i = 0; i * 3 < size; i++) {
	testl	%r12d, %r12d	# size
	jle	.L2	#,
	movq	%r12, %r13	#,
	xorl	%edx, %edx	# ivtmp.34
	xorl	%eax, %eax	# ivtmp.30
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem34/code.c:9:         third[i] = l[i * 3];
	movl	(%rbx,%rdx,4), %ecx	# MEM[(int *)l_62(D) + ivtmp.34_108 * 4], MEM[(int *)l_62(D) + ivtmp.34_108 * 4]
	movq	%rax, %r9	# ivtmp.30, ivtmp.30
# eval/problem34/code.c:8:     for (i = 0; i * 3 < size; i++) {
	addq	$3, %rdx	#, ivtmp.34
	movl	%eax, %r11d	# ivtmp.30, i
# eval/problem34/code.c:9:         third[i] = l[i * 3];
	movl	%ecx, (%rdi,%rax,4)	# MEM[(int *)l_62(D) + ivtmp.34_108 * 4], MEM[(int *)third_60 + ivtmp.30_106 * 4]
# eval/problem34/code.c:8:     for (i = 0; i * 3 < size; i++) {
	leaq	1(%r9), %rax	#, ivtmp.30
	cmpl	%edx, %r13d	# ivtmp.34, size
	jg	.L3	#,
# eval/problem34/code.c:13:     for (i = 0; i < third_size - 1; i++) {
	testl	%r11d, %r11d	# i
	je	.L4	#,
	leal	-1(%r11), %r13d	#, _36
	xorl	%esi, %esi	# ivtmp.23
	.p2align 4,,10
	.p2align 3
.L8:
	movl	%esi, %edx	# ivtmp.23, min_idx
	movl	%esi, %r14d	# ivtmp.23, i
	leaq	1(%rsi), %r10	#, ivtmp.23
# eval/problem34/code.c:15:         for (k = i + 1; k < third_size; k++) {
	cmpl	%r11d, %esi	# i, ivtmp.23
	jge	.L5	#,
	movl	%r13d, %ecx	# _36, tmp138
	movq	%r10, %rax	# ivtmp.23, ivtmp.18
	subl	%esi, %ecx	# ivtmp.23, tmp138
	leaq	2(%rsi,%rcx), %r8	#, _38
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem34/code.c:16:             if (third[k] < third[min_idx])
	movslq	%edx, %rcx	# min_idx, min_idx
# eval/problem34/code.c:16:             if (third[k] < third[min_idx])
	movl	(%rdi,%rcx,4), %ecx	# *_19, tmp183
	cmpl	%ecx, (%rdi,%rax,4)	# tmp183, MEM[(int *)third_60 + ivtmp.18_75 * 4]
	cmovl	%eax, %edx	# min_idx,, ivtmp.18, min_idx
# eval/problem34/code.c:15:         for (k = i + 1; k < third_size; k++) {
	addq	$1, %rax	#, ivtmp.18
	cmpq	%rax, %r8	# ivtmp.18, _38
	jne	.L7	#,
# eval/problem34/code.c:19:         if (min_idx != i) {
	cmpl	%edx, %r14d	# min_idx, i
	je	.L5	#,
# eval/problem34/code.c:21:             third[i] = third[min_idx];
	movslq	%edx, %rdx	# min_idx, min_idx
# eval/problem34/code.c:20:             int temp = third[i];
	movl	(%rdi,%rsi,4), %ecx	# MEM[(int *)third_60 + ivtmp.23_39 * 4], temp
# eval/problem34/code.c:21:             third[i] = third[min_idx];
	leaq	(%rdi,%rdx,4), %rax	#, _26
	movl	(%rax), %edx	# *_26, _27
# eval/problem34/code.c:21:             third[i] = third[min_idx];
	movl	%edx, (%rdi,%rsi,4)	# _27, MEM[(int *)third_60 + ivtmp.23_39 * 4]
# eval/problem34/code.c:22:             third[min_idx] = temp;
	movl	%ecx, (%rax)	# temp, *_26
.L5:
# eval/problem34/code.c:13:     for (i = 0; i < third_size - 1; i++) {
	movq	%r10, %rsi	# ivtmp.23, ivtmp.23
	cmpq	%r9, %r10	# ivtmp.30, ivtmp.23
	jne	.L8	#,
.L4:
# eval/problem34/code.c:16:             if (third[k] < third[min_idx])
	xorl	%eax, %eax	# ivtmp.8
# eval/problem34/code.c:28:             out[i] = third[i / 3];
	movl	$2863311531, %ecx	#, tmp167
	jmp	.L11	#
	.p2align 4,,10
	.p2align 3
.L23:
	movl	%eax, %edx	# ivtmp.8, i
	imulq	%rcx, %rdx	# tmp167, tmp156
	shrq	$33, %rdx	#, tmp164
# eval/problem34/code.c:28:             out[i] = third[i / 3];
	movl	(%rdi,%rdx,4), %edx	# *_33, _37
# eval/problem34/code.c:28:             out[i] = third[i / 3];
	movl	%edx, 0(%rbp,%rax,4)	# _37, MEM[(int *)out_63(D) + ivtmp.8_65 * 4]
# eval/problem34/code.c:26:     for (i = 0; i < size; i++) {
	addq	$1, %rax	#, ivtmp.8
	cmpq	%rax, %r12	# ivtmp.8, _76
	je	.L2	#,
.L11:
	imull	$-1431655765, %eax, %edx	#, ivtmp.8, tmp153
# eval/problem34/code.c:27:         if (i % 3 == 0) {
	cmpl	$1431655765, %edx	#, tmp153
	jbe	.L23	#,
# eval/problem34/code.c:30:             out[i] = l[i];
	movl	(%rbx,%rax,4), %edx	# MEM[(int *)l_62(D) + ivtmp.8_65 * 4], _37
# eval/problem34/code.c:28:             out[i] = third[i / 3];
	movl	%edx, 0(%rbp,%rax,4)	# _37, MEM[(int *)out_63(D) + ivtmp.8_65 * 4]
# eval/problem34/code.c:26:     for (i = 0; i < size; i++) {
	addq	$1, %rax	#, ivtmp.8
	cmpq	%rax, %r12	# ivtmp.8, _76
	jne	.L11	#,
.L2:
# eval/problem34/code.c:35: }
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
# eval/problem34/code.c:34:     free(third);
	jmp	free@PLT	#
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
