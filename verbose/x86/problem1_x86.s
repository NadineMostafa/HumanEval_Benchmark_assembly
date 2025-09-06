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
# eval/problem1/code.c:7:     for (i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L7	#,
	movslq	%esi, %rcx	# size, _30
	movl	$1, %edx	#, ivtmp.15
	movss	.LC0(%rip), %xmm3	#, tmp99
# eval/problem1/code.c:8:         for (j = i + 1; j < size; j++) {
	cmpq	%rcx, %rdx	# _30, ivtmp.15
	je	.L7	#,
.L14:
# eval/problem1/code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movss	-4(%rdi,%rdx,4), %xmm2	# MEM[(float *)numbers_16(D) + -4B + ivtmp.15_24 * 4], _4
	movq	%rdx, %rax	# ivtmp.15, ivtmp.8
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L13:
# eval/problem1/code.c:8:         for (j = i + 1; j < size; j++) {
	addq	$1, %rax	#, ivtmp.8
	cmpl	%eax, %esi	# ivtmp.8, size
	jle	.L12	#,
.L3:
# eval/problem1/code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	movaps	%xmm2, %xmm1	# _4, tmp94
	subss	(%rdi,%rax,4), %xmm1	# MEM[(float *)numbers_16(D) + ivtmp.8_29 * 4], tmp94
# eval/problem1/code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	andps	%xmm3, %xmm1	# tmp99, tmp95
# eval/problem1/code.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	comiss	%xmm1, %xmm0	# tmp95, threshold
	jbe	.L13	#,
# eval/problem1/code.c:10:                 return 1;
	movl	$1, %eax	#, <retval>
# eval/problem1/code.c:15: }
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
	addq	$1, %rdx	#, ivtmp.15
# eval/problem1/code.c:8:         for (j = i + 1; j < size; j++) {
	cmpq	%rcx, %rdx	# _30, ivtmp.15
	jne	.L14	#,
.L7:
# eval/problem1/code.c:14:     return 0;
	xorl	%eax, %eax	# <retval>
	ret	
	.cfi_endproc
.LFE39:
	.size	func0, .-func0
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
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
