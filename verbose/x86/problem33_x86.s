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
.LFB23:
	.cfi_startproc
	endbr64	
# eval/problem33/code.c:9:     value = xs[0];
	movsd	(%rdi), %xmm7	# *xs_35(D), value
# eval/problem33/code.c:4: double func0(const double *xs, int size) {
	movq	%rdi, %r8	# tmp141, xs
	movl	%esi, %r9d	# tmp142, size
# eval/problem33/code.c:10:     for (i = 1; i < size; i++) {
	cmpl	$1, %esi	#, size
	jle	.L15	#,
	movslq	%esi, %rcx	# size, _101
# eval/problem33/code.c:9:     value = xs[0];
	movapd	%xmm7, %xmm3	# value, value
	pxor	%xmm6, %xmm6	# tmp135
# eval/problem33/code.c:10:     for (i = 1; i < size; i++) {
	movl	$1, %edx	#, ivtmp.40
	movsd	.LC0(%rip), %xmm1	#, x_pow
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem33/code.c:12:         for (int j = 0; j < i; j++) {
	xorl	%eax, %eax	# j
# eval/problem33/code.c:11:         x_pow = 1.0;
	movapd	%xmm1, %xmm0	# x_pow, x_pow
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem33/code.c:13:             x_pow *= ans;
	mulsd	%xmm6, %xmm0	# tmp135, x_pow
# eval/problem33/code.c:12:         for (int j = 0; j < i; j++) {
	addl	$1, %eax	#, j
# eval/problem33/code.c:12:         for (int j = 0; j < i; j++) {
	cmpl	%edx, %eax	# ivtmp.40, j
	jne	.L3	#,
# eval/problem33/code.c:15:         value += xs[i] * x_pow;
	mulsd	(%r8,%rdx,8), %xmm0	# MEM[(const double *)xs_35(D) + ivtmp.40_106 * 8], tmp119
# eval/problem33/code.c:10:     for (i = 1; i < size; i++) {
	addq	$1, %rdx	#, ivtmp.40
# eval/problem33/code.c:15:         value += xs[i] * x_pow;
	addsd	%xmm0, %xmm3	# tmp119, value
# eval/problem33/code.c:10:     for (i = 1; i < size; i++) {
	cmpq	%rdx, %rcx	# ivtmp.40, _101
	jne	.L4	#,
.L2:
# eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	movq	.LC2(%rip), %xmm9	#, tmp136
	movapd	%xmm3, %xmm0	# value, tmp120
# eval/problem33/code.c:5:     double ans = 0.0;
	movapd	%xmm6, %xmm1	# tmp135, <retval>
# eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	movsd	.LC3(%rip), %xmm8	#, tmp137
# eval/problem33/code.c:21:             x_pow = 1.0;
	movsd	.LC0(%rip), %xmm5	#, x_pow
	movslq	%r9d, %r10	# size, _116
# eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	andpd	%xmm9, %xmm0	# tmp136, tmp120
# eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	comisd	%xmm8, %xmm0	# tmp137, tmp120
	jbe	.L1	#,
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem33/code.c:20:         for (i = 1; i < size; i++) {
	cmpl	$1, %r9d	#, size
	jle	.L12	#,
	leaq	8(%r8), %rdi	#, ivtmp.30
# eval/problem33/code.c:19:         driv = 0.0;
	movapd	%xmm6, %xmm4	# tmp135, driv
# eval/problem33/code.c:20:         for (i = 1; i < size; i++) {
	movl	$1, %ecx	#, i
# eval/problem33/code.c:21:             x_pow = 1.0;
	movapd	%xmm5, %xmm0	# x_pow, x_pow
	.p2align 4,,10
	.p2align 3
.L13:
# eval/problem33/code.c:25:             driv += i * xs[i] * x_pow;
	pxor	%xmm2, %xmm2	# tmp123
# eval/problem33/code.c:20:         for (i = 1; i < size; i++) {
	leal	1(%rcx), %esi	#, i
# eval/problem33/code.c:25:             driv += i * xs[i] * x_pow;
	cvtsi2sdl	%ecx, %xmm2	# i, tmp123
	mulsd	(%rdi), %xmm2	# MEM[(const double *)_107], tmp124
# eval/problem33/code.c:25:             driv += i * xs[i] * x_pow;
	mulsd	%xmm2, %xmm0	# tmp124, tmp125
# eval/problem33/code.c:25:             driv += i * xs[i] * x_pow;
	addsd	%xmm0, %xmm4	# tmp125, driv
# eval/problem33/code.c:20:         for (i = 1; i < size; i++) {
	cmpl	%esi, %r9d	# i, size
	je	.L27	#,
# eval/problem33/code.c:22:             for (int j = 1; j < i; j++) {
	movl	$1, %eax	#, j
# eval/problem33/code.c:21:             x_pow = 1.0;
	movapd	%xmm5, %xmm0	# x_pow, x_pow
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem33/code.c:23:                 x_pow *= ans;
	mulsd	%xmm1, %xmm0	# <retval>, x_pow
	movl	%eax, %edx	# j, j
# eval/problem33/code.c:22:             for (int j = 1; j < i; j++) {
	addl	$1, %eax	#, j
# eval/problem33/code.c:22:             for (int j = 1; j < i; j++) {
	cmpl	%ecx, %edx	# i, j
	jne	.L7	#,
	addq	$8, %rdi	#, ivtmp.30
# eval/problem33/code.c:22:             for (int j = 1; j < i; j++) {
	movl	%esi, %ecx	# i, i
	jmp	.L13	#
	.p2align 4,,10
	.p2align 3
.L27:
# eval/problem33/code.c:27:         ans = ans - value / driv;
	divsd	%xmm4, %xmm3	# driv, tmp133
# eval/problem33/code.c:27:         ans = ans - value / driv;
	movl	$1, %edx	#, ivtmp.15
	subsd	%xmm3, %xmm1	# tmp133, <retval>
	movapd	%xmm7, %xmm3	# value, value
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem33/code.c:32:             for (int j = 0; j < i; j++) {
	xorl	%eax, %eax	# j
# eval/problem33/code.c:31:             x_pow = 1.0;
	movapd	%xmm5, %xmm0	# x_pow, x_pow
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem33/code.c:33:                 x_pow *= ans;
	mulsd	%xmm1, %xmm0	# <retval>, x_pow
# eval/problem33/code.c:32:             for (int j = 0; j < i; j++) {
	addl	$1, %eax	#, j
# eval/problem33/code.c:32:             for (int j = 0; j < i; j++) {
	cmpl	%edx, %eax	# ivtmp.15, j
	jne	.L9	#,
# eval/problem33/code.c:35:             value += xs[i] * x_pow;
	mulsd	(%r8,%rdx,8), %xmm0	# MEM[(const double *)xs_35(D) + ivtmp.15_121 * 8], tmp126
# eval/problem33/code.c:30:         for (i = 1; i < size; i++) {
	addq	$1, %rdx	#, ivtmp.15
# eval/problem33/code.c:35:             value += xs[i] * x_pow;
	addsd	%xmm0, %xmm3	# tmp126, value
# eval/problem33/code.c:30:         for (i = 1; i < size; i++) {
	cmpq	%rdx, %r10	# ivtmp.15, _116
	jne	.L10	#,
# eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	movapd	%xmm3, %xmm0	# value, tmp127
	andpd	%xmm9, %xmm0	# tmp136, tmp127
# eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	comisd	%xmm8, %xmm0	# tmp137, tmp127
	ja	.L5	#,
.L1:
# eval/problem33/code.c:40: }
	movapd	%xmm1, %xmm0	# <retval>,
	ret	
.L12:
# eval/problem33/code.c:27:         ans = ans - value / driv;
	divsd	%xmm6, %xmm3	# tmp135, tmp131
# eval/problem33/code.c:27:         ans = ans - value / driv;
	subsd	%xmm3, %xmm1	# tmp131, <retval>
# eval/problem33/code.c:29:         value = xs[0];
	movapd	%xmm7, %xmm3	# value, value
# eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	movapd	%xmm3, %xmm0	# value, tmp127
	andpd	%xmm9, %xmm0	# tmp136, tmp127
# eval/problem33/code.c:18:     while (fabs(value) > 1e-6) {
	comisd	%xmm8, %xmm0	# tmp137, tmp127
	ja	.L5	#,
	jmp	.L1	#
.L15:
# eval/problem33/code.c:9:     value = xs[0];
	movapd	%xmm7, %xmm3	# value, value
	pxor	%xmm6, %xmm6	# tmp135
	jmp	.L2	#
	.cfi_endproc
.LFE23:
	.size	func0, .-func0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC3:
	.long	-1598689907
	.long	1051772663
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
