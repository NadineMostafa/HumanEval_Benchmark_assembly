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
# eval/problem9/code.c:5:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L4	#,
	leal	-1(%rsi), %eax	#, tmp97
# eval/problem9/code.c:4:     int sum = 0, product = 1;
	movl	$1, %ecx	#, product
# eval/problem9/code.c:4:     int sum = 0, product = 1;
	xorl	%esi, %esi	# sum
	leaq	4(%rdi,%rax,4), %r8	#, _31
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem9/code.c:6:         sum += numbers[i];
	movl	(%rdi), %eax	# MEM[(int *)_20], _4
# eval/problem9/code.c:5:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.7
# eval/problem9/code.c:7:         product *= numbers[i];
	imull	%eax, %ecx	# _4, product
# eval/problem9/code.c:6:         sum += numbers[i];
	addl	%eax, %esi	# _4, sum
# eval/problem9/code.c:5:     for (int i = 0; i < size; i++) {
	cmpq	%r8, %rdi	# _31, ivtmp.7
	jne	.L3	#,
# eval/problem9/code.c:9:     result[0] = sum;
	movl	%esi, (%rdx)	# sum, *result_12(D)
# eval/problem9/code.c:10:     result[1] = product;
	movl	%ecx, 4(%rdx)	# product, MEM[(int *)result_12(D) + 4B]
# eval/problem9/code.c:11: }
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem9/code.c:4:     int sum = 0, product = 1;
	movl	$1, %ecx	#, product
# eval/problem9/code.c:4:     int sum = 0, product = 1;
	xorl	%esi, %esi	# sum
# eval/problem9/code.c:9:     result[0] = sum;
	movl	%esi, (%rdx)	# sum, *result_12(D)
# eval/problem9/code.c:10:     result[1] = product;
	movl	%ecx, 4(%rdx)	# product, MEM[(int *)result_12(D) + 4B]
# eval/problem9/code.c:11: }
	ret	
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
