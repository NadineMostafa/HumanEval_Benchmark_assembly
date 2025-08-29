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
# eval/problem129/code.c:5:     if (arr_size == 0) return -32768;
	testl	%esi, %esi	# arr_size
	je	.L6	#,
# eval/problem129/code.c:7:     for (i = 0; i < arr_size; i++) {
	jle	.L7	#,
	leal	-1(%rsi), %eax	#, tmp98
# eval/problem129/code.c:6:     int sum = 0, prods = 1, i;
	xorl	%esi, %esi	# sum
	leaq	4(%rdi,%rax,4), %r8	#, _31
# eval/problem129/code.c:6:     int sum = 0, prods = 1, i;
	movl	$1, %eax	#, prods
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L12:
# eval/problem129/code.c:10:         if (arr[i] < 0) prods = -prods;
	movl	%eax, %ecx	# prods, tmp103
	negl	%ecx	# tmp103
	testl	%edx, %edx	# _4
	cmovs	%ecx, %eax	# tmp103,, prods
# eval/problem129/code.c:7:     for (i = 0; i < arr_size; i++) {
	addq	$4, %rdi	#, ivtmp.7
	cmpq	%r8, %rdi	# _31, ivtmp.7
	je	.L11	#,
.L5:
# eval/problem129/code.c:8:         sum += abs(arr[i]);
	movl	(%rdi), %edx	# MEM[(int *)_9], _4
# eval/problem129/code.c:8:         sum += abs(arr[i]);
	movl	%edx, %ecx	# _4, tmp108
	negl	%ecx	# tmp108
	cmovs	%edx, %ecx	# tmp108,, _4, tmp101
# eval/problem129/code.c:8:         sum += abs(arr[i]);
	addl	%ecx, %esi	# tmp101, sum
# eval/problem129/code.c:9:         if (arr[i] == 0) prods = 0;
	testl	%edx, %edx	# _4
	jne	.L12	#,
# eval/problem129/code.c:7:     for (i = 0; i < arr_size; i++) {
	addq	$4, %rdi	#, ivtmp.7
# eval/problem129/code.c:9:         if (arr[i] == 0) prods = 0;
	xorl	%eax, %eax	# prods
# eval/problem129/code.c:7:     for (i = 0; i < arr_size; i++) {
	cmpq	%r8, %rdi	# _31, ivtmp.7
	jne	.L5	#,
.L11:
# eval/problem129/code.c:12:     return sum * prods;
	imull	%esi, %eax	# sum, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem129/code.c:7:     for (i = 0; i < arr_size; i++) {
	xorl	%eax, %eax	# <retval>
# eval/problem129/code.c:12:     return sum * prods;
	ret	
.L6:
# eval/problem129/code.c:5:     if (arr_size == 0) return -32768;
	movl	$-32768, %eax	#, <retval>
# eval/problem129/code.c:13: }
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
