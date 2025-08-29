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
# eval/problem21/code.c:9:     out[0] = numbers[0];
	movss	(%rdi), %xmm0	# *numbers_25(D), pretmp_37
# eval/problem21/code.c:5: void func0(float numbers[], int size, float out[2]) {
	movq	%rdx, %rcx	# tmp124, out
# eval/problem21/code.c:9:     out[0] = numbers[0];
	movss	%xmm0, (%rdx)	# pretmp_37, *out_26(D)
# eval/problem21/code.c:10:     out[1] = numbers[1];
	movss	4(%rdi), %xmm1	# MEM[(float *)numbers_25(D) + 4B], pretmp_52
	movss	%xmm1, 4(%rdx)	# pretmp_52, MEM[(float *)out_26(D) + 4B]
# eval/problem21/code.c:12:     for (i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L2	#,
	movl	%esi, %r9d	# size, _70
	leaq	4(%rdi), %rdx	#, ivtmp.17
	leal	-1(%rsi), %r10d	#, _68
	movl	$1, %r8d	#, ivtmp.15
# eval/problem21/code.c:6:     float min_diff = FLT_MAX;
	movss	.LC0(%rip), %xmm2	#, min_diff
	addq	$8, %rdi	#, tmp120
	movss	.LC1(%rip), %xmm3	#, tmp121
# eval/problem21/code.c:13:         for (j = i + 1; j < size; j++) {
	cmpq	%r9, %r8	# _70, ivtmp.15
	je	.L14	#,
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%r10d, %eax	# _68, tmp112
	subl	%r8d, %eax	# ivtmp.15, tmp112
	leaq	-1(%r8,%rax), %rax	#, tmp114
	leaq	(%rdi,%rax,4), %rsi	#, _60
	movq	%rdx, %rax	# ivtmp.17, ivtmp.9
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem21/code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	movss	-4(%rdx), %xmm1	# MEM[(float *)_72 + -4B], _6
# eval/problem21/code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	movaps	%xmm1, %xmm0	# _6, tmp117
	subss	(%rax), %xmm0	# MEM[(float *)_19], tmp117
# eval/problem21/code.c:14:             float diff = fabs(numbers[i] - numbers[j]);
	andps	%xmm3, %xmm0	# tmp121, diff
# eval/problem21/code.c:15:             if (diff < min_diff) {
	comiss	%xmm0, %xmm2	# diff, min_diff
	jbe	.L4	#,
# eval/problem21/code.c:17:                 out[0] = numbers[i];
	movss	%xmm1, (%rcx)	# _6, *out_26(D)
# eval/problem21/code.c:18:                 out[1] = numbers[j];
	movss	(%rax), %xmm1	# MEM[(float *)_19], _12
# eval/problem21/code.c:16:                 min_diff = diff;
	movaps	%xmm0, %xmm2	# diff, min_diff
# eval/problem21/code.c:18:                 out[1] = numbers[j];
	movss	%xmm1, 4(%rcx)	# _12, MEM[(float *)out_26(D) + 4B]
.L4:
# eval/problem21/code.c:13:         for (j = i + 1; j < size; j++) {
	addq	$4, %rax	#, ivtmp.9
	cmpq	%rsi, %rax	# _60, ivtmp.9
	jne	.L6	#,
	addq	$1, %r8	#, ivtmp.15
	addq	$4, %rdx	#, ivtmp.17
# eval/problem21/code.c:13:         for (j = i + 1; j < size; j++) {
	cmpq	%r9, %r8	# _70, ivtmp.15
	jne	.L3	#,
.L14:
# eval/problem21/code.c:23:     if (out[0] > out[1]) {
	movss	(%rcx), %xmm0	# *out_26(D), pretmp_37
# eval/problem21/code.c:23:     if (out[0] > out[1]) {
	movss	4(%rcx), %xmm1	# MEM[(float *)out_26(D) + 4B], pretmp_52
.L2:
# eval/problem21/code.c:23:     if (out[0] > out[1]) {
	comiss	%xmm1, %xmm0	# pretmp_52, pretmp_37
	jbe	.L1	#,
# eval/problem21/code.c:25:         out[0] = out[1];
	movss	%xmm1, (%rcx)	# pretmp_52, *out_26(D)
# eval/problem21/code.c:26:         out[1] = temp;
	movss	%xmm0, 4(%rcx)	# pretmp_37, MEM[(float *)out_26(D) + 4B]
.L1:
# eval/problem21/code.c:28: }
	ret	
	.cfi_endproc
.LFE23:
	.size	func0, .-func0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	2139095039
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
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
