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
# eval/problem147/code.c:6:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L6	#,
	leal	-1(%rsi), %eax	#, tmp100
# eval/problem147/code.c:5:     int num = 0;
	xorl	%r9d, %r9d	# <retval>
# eval/problem147/code.c:12:                 n /= 10;
	movl	$3435973837, %esi	#, tmp128
	leaq	4(%rdi,%rax,4), %r8	#, _31
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem147/code.c:6:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.7
	cmpq	%r8, %rdi	# _31, ivtmp.7
	je	.L1	#,
.L5:
# eval/problem147/code.c:7:         if (nums[i] > 10) {
	movl	(%rdi), %ecx	# MEM[(int *)_20], _4
# eval/problem147/code.c:7:         if (nums[i] > 10) {
	cmpl	$10, %ecx	#, _4
	jle	.L3	#,
	movl	%ecx, %eax	# _4, n
	.p2align 4,,10
	.p2align 3
.L4:
	movl	%eax, %eax	# n,
	movq	%rax, %rdx	#,
# eval/problem147/code.c:12:                 n /= 10;
	imulq	%rsi, %rax	# tmp128, tmp105
	shrq	$35, %rax	#, n
# eval/problem147/code.c:11:             while (n >= 10) {
	cmpl	$99, %edx	#, n
	jg	.L4	#,
# eval/problem147/code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	testb	$1, %al	#, n
	je	.L3	#,
# eval/problem147/code.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	andl	$1, %ecx	#, tmp126
# eval/problem147/code.c:16:                 num += 1;
	cmpl	$1, %ecx	#, tmp126
	sbbl	$-1, %r9d	#, <retval>
# eval/problem147/code.c:6:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.7
	cmpq	%r8, %rdi	# _31, ivtmp.7
	jne	.L5	#,
.L1:
# eval/problem147/code.c:21: }
	movl	%r9d, %eax	# <retval>,
	ret	
.L6:
# eval/problem147/code.c:5:     int num = 0;
	xorl	%r9d, %r9d	# <retval>
# eval/problem147/code.c:21: }
	movl	%r9d, %eax	# <retval>,
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
