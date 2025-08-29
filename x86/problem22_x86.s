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
# eval/problem22/code.c:5:     float min = numbers[0], max = numbers[0];
	movss	(%rdi), %xmm0	# *numbers_21(D), pretmp_47
# eval/problem22/code.c:6:     for (int i = 1; i < size; i++) {
	cmpl	$1, %esi	#, size
	jle	.L2	#,
	leal	-2(%rsi), %edx	#, tmp104
	leaq	4(%rdi), %rax	#, ivtmp.24
# eval/problem22/code.c:5:     float min = numbers[0], max = numbers[0];
	movaps	%xmm0, %xmm1	# pretmp_47, max
	leaq	8(%rdi,%rdx,4), %rdx	#, _8
# eval/problem22/code.c:5:     float min = numbers[0], max = numbers[0];
	movaps	%xmm0, %xmm2	# pretmp_47, min
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem22/code.c:7:         if (numbers[i] < min) min = numbers[i];
	movss	(%rax), %xmm3	# MEM[(float *)_30], _4
# eval/problem22/code.c:6:     for (int i = 1; i < size; i++) {
	addq	$4, %rax	#, ivtmp.24
# eval/problem22/code.c:7:         if (numbers[i] < min) min = numbers[i];
	movaps	%xmm3, %xmm4	# _4, min
# eval/problem22/code.c:8:         if (numbers[i] > max) max = numbers[i];
	maxss	%xmm1, %xmm3	# max, _4
# eval/problem22/code.c:7:         if (numbers[i] < min) min = numbers[i];
	minss	%xmm2, %xmm4	# min, min
# eval/problem22/code.c:8:         if (numbers[i] > max) max = numbers[i];
	movaps	%xmm3, %xmm1	# _4, max
# eval/problem22/code.c:7:         if (numbers[i] < min) min = numbers[i];
	movaps	%xmm4, %xmm2	# min, min
# eval/problem22/code.c:6:     for (int i = 1; i < size; i++) {
	cmpq	%rax, %rdx	# ivtmp.24, _8
	jne	.L7	#,
.L8:
# eval/problem22/code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	subss	%xmm2, %xmm1	# min, _49
	xorl	%eax, %eax	# ivtmp.7
	jmp	.L10	#
	.p2align 4,,10
	.p2align 3
.L15:
# eval/problem22/code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movss	(%rdi,%rax,4), %xmm0	# MEM[(float *)numbers_21(D) + ivtmp.7_41 * 4], pretmp_47
.L10:
# eval/problem22/code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	subss	%xmm2, %xmm0	# min, tmp107
# eval/problem22/code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	divss	%xmm1, %xmm0	# _49, tmp108
# eval/problem22/code.c:11:         numbers[i] = (numbers[i] - min) / (max - min);
	movss	%xmm0, (%rdi,%rax,4)	# tmp108, MEM[(float *)numbers_21(D) + ivtmp.7_42 * 4]
# eval/problem22/code.c:10:     for (int i = 0; i < size; i++) {
	addq	$1, %rax	#, ivtmp.7
	cmpl	%eax, %esi	# ivtmp.7, size
	jg	.L15	#,
.L1:
# eval/problem22/code.c:13: }
	ret	
	.p2align 4,,10
	.p2align 3
.L2:
# eval/problem22/code.c:10:     for (int i = 0; i < size; i++) {
	jne	.L1	#,
# eval/problem22/code.c:5:     float min = numbers[0], max = numbers[0];
	movaps	%xmm0, %xmm1	# pretmp_47, max
# eval/problem22/code.c:5:     float min = numbers[0], max = numbers[0];
	movaps	%xmm0, %xmm2	# pretmp_47, min
	jmp	.L8	#
	.cfi_endproc
.LFE23:
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
