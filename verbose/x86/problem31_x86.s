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
	movq	%rdx, %rbp	# tmp116, out_count
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# eval/problem31/code.c:4: float* func0(const float* l, int count, int* out_count) {
	movq	%rdi, %rbx	# tmp114, l
	movslq	%esi, %rdi	# tmp115,
	movq	%rdi, %r12	#,
# eval/problem31/code.c:5:     float* out = (float*)malloc(count * sizeof(float));
	salq	$2, %rdi	#, tmp103
	call	malloc@PLT	#
# eval/problem31/code.c:6:     *out_count = 0;
	movl	$0, 0(%rbp)	#, *out_count_19(D)
# eval/problem31/code.c:8:     for (int i = 0; i < count; i++) {
	testl	%r12d, %r12d	# count
	jle	.L1	#,
	leal	-1(%r12), %ecx	#, tmp106
	movq	%rbx, %rdx	# l, ivtmp.7
	pxor	%xmm1, %xmm1	# tmp113
	leaq	4(%rbx,%rcx,4), %rdi	#, _36
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem31/code.c:9:         if (l[i] > 0) {
	movss	(%rdx), %xmm0	# MEM[(const float *)_12], _6
# eval/problem31/code.c:9:         if (l[i] > 0) {
	comiss	%xmm1, %xmm0	# tmp113, _6
	jbe	.L3	#,
# eval/problem31/code.c:10:             out[(*out_count)++] = l[i];
	movslq	0(%rbp), %rcx	# *out_count_19(D),
# eval/problem31/code.c:10:             out[(*out_count)++] = l[i];
	leal	1(%rcx), %esi	#, tmp110
# eval/problem31/code.c:10:             out[(*out_count)++] = l[i];
	movss	%xmm0, (%rax,%rcx,4)	# _6, *_11
# eval/problem31/code.c:10:             out[(*out_count)++] = l[i];
	movl	%esi, 0(%rbp)	# tmp110, *out_count_19(D)
.L3:
# eval/problem31/code.c:8:     for (int i = 0; i < count; i++) {
	addq	$4, %rdx	#, ivtmp.7
	cmpq	%rdi, %rdx	# _36, ivtmp.7
	jne	.L5	#,
.L1:
# eval/problem31/code.c:15: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
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
