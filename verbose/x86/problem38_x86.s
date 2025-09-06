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
	movq	%rdx, %r12	# tmp136, out
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# tmp134, l
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# eval/problem38/code.c:5: void func0(float *l, int size, float *out) {
	movslq	%esi, %rbx	# tmp135,
# eval/problem38/code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	movl	%ebx, %edi	# size, tmp116
	shrl	$31, %edi	#, tmp116
	addl	%ebx, %edi	# size, tmp117
	sarl	%edi	# tmp118
# eval/problem38/code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	addl	$1, %edi	#, tmp119
	movslq	%edi, %rdi	# tmp119, tmp120
# eval/problem38/code.c:6:     float *even = malloc((size / 2 + 1) * sizeof(float));
	salq	$2, %rdi	#, tmp121
	call	malloc@PLT	#
	movq	%rax, %rdi	# tmp137, even
# eval/problem38/code.c:9:     for (i = 0; i < size; i += 2) {
	testl	%ebx, %ebx	# size
	jle	.L2	#,
	xorl	%eax, %eax	# ivtmp.34
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem38/code.c:10:         even[even_count++] = l[i];
	movss	0(%rbp,%rax,4), %xmm0	# MEM[(float *)l_55(D) + ivtmp.34_99 * 4], MEM[(float *)l_55(D) + ivtmp.34_99 * 4]
	movss	%xmm0, (%rdi,%rax,2)	# MEM[(float *)l_55(D) + ivtmp.34_99 * 4], MEM[(float *)even_53 + ivtmp.34_99 * 2]
# eval/problem38/code.c:9:     for (i = 0; i < size; i += 2) {
	addq	$2, %rax	#, ivtmp.34
	cmpl	%eax, %ebx	# ivtmp.34, size
	jg	.L3	#,
	leal	-1(%rbx), %edx	#, tmp124
# eval/problem38/code.c:13:     for (i = 0; i < even_count - 1; i++) {
	shrl	%edx	# ivtmp.27
	je	.L5	#,
	leaq	4(%rdi), %rsi	#, tmp133
	.p2align 4,,10
	.p2align 3
.L4:
	subl	$1, %edx	#,
	movq	%rdi, %rax	# even, ivtmp.20
	movq	%rdx, %rcx	#,
	leaq	(%rsi,%rdx,4), %rdx	#, _92
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem38/code.c:15:             if (even[j] > even[j + 1]) {
	movss	(%rax), %xmm0	# MEM[(float *)_33], _15
# eval/problem38/code.c:15:             if (even[j] > even[j + 1]) {
	movss	4(%rax), %xmm1	# MEM[(float *)_33 + 4B], _19
# eval/problem38/code.c:15:             if (even[j] > even[j + 1]) {
	comiss	%xmm1, %xmm0	# _19, _15
	jbe	.L6	#,
# eval/problem38/code.c:17:                 even[j] = even[j + 1];
	movss	%xmm1, (%rax)	# _19, MEM[(float *)_33]
# eval/problem38/code.c:18:                 even[j + 1] = temp;
	movss	%xmm0, 4(%rax)	# _15, MEM[(float *)_33 + 4B]
.L6:
# eval/problem38/code.c:14:         for (j = 0; j < even_count - i - 1; j++) {
	addq	$4, %rax	#, ivtmp.20
	cmpq	%rdx, %rax	# _92, ivtmp.20
	jne	.L8	#,
# eval/problem38/code.c:13:     for (i = 0; i < even_count - 1; i++) {
	movl	%ecx, %edx	# ivtmp.27, ivtmp.27
	testl	%ecx, %ecx	# ivtmp.27
	jne	.L4	#,
.L5:
# eval/problem38/code.c:9:     for (i = 0; i < size; i += 2) {
	xorl	%eax, %eax	# ivtmp.10
	jmp	.L11	#
	.p2align 4,,10
	.p2align 3
.L22:
# eval/problem38/code.c:26:             out[i] = even[i / 2];
	movl	%eax, %edx	# ivtmp.10, tmp130
	sarl	%edx	# tmp130
	movslq	%edx, %rdx	# tmp130, tmp131
# eval/problem38/code.c:26:             out[i] = even[i / 2];
	movss	(%rdi,%rdx,4), %xmm0	# *_28, _32
# eval/problem38/code.c:26:             out[i] = even[i / 2];
	movss	%xmm0, (%r12,%rax,4)	# _32, MEM[(float *)out_56(D) + ivtmp.10_58 * 4]
# eval/problem38/code.c:24:     for (i = 0; i < size; i++) {
	addq	$1, %rax	#, ivtmp.10
	cmpq	%rax, %rbx	# ivtmp.10, _41
	je	.L2	#,
.L11:
# eval/problem38/code.c:25:         if (i % 2 == 0) {
	testb	$1, %al	#, ivtmp.10
	je	.L22	#,
# eval/problem38/code.c:28:             out[i] = l[i];
	movss	0(%rbp,%rax,4), %xmm0	# MEM[(float *)l_55(D) + ivtmp.10_58 * 4], _32
# eval/problem38/code.c:26:             out[i] = even[i / 2];
	movss	%xmm0, (%r12,%rax,4)	# _32, MEM[(float *)out_56(D) + ivtmp.10_58 * 4]
# eval/problem38/code.c:24:     for (i = 0; i < size; i++) {
	addq	$1, %rax	#, ivtmp.10
	cmpq	%rax, %rbx	# ivtmp.10, _41
	jne	.L11	#,
.L2:
# eval/problem38/code.c:33: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
# eval/problem38/code.c:32:     free(even);
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
