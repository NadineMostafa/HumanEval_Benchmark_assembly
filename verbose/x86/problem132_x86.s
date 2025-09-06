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
# eval/problem132/code.c:4:     int prod = 1, has_odd = 0, digit;
	xorl	%r8d, %r8d	# <retval>
# eval/problem132/code.c:5:     while (n > 0) {
	testl	%edi, %edi	# n
	jle	.L1	#,
# eval/problem132/code.c:4:     int prod = 1, has_odd = 0, digit;
	movl	$1, %r9d	#, prod
# eval/problem132/code.c:6:         digit = n % 10;
	movl	$3435973837, %esi	#, tmp90
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem132/code.c:11:         n /= 10;
	movl	%eax, %edi	# n, n
.L4:
# eval/problem132/code.c:6:         digit = n % 10;
	movl	%edi, %eax	# n, n
	movq	%rax, %rdx	# n, tmp89
	imulq	%rsi, %rdx	# tmp90, tmp89
	shrq	$35, %rdx	#, digit
	leal	(%rdx,%rdx,4), %ecx	#, tmp94
	movl	%edi, %edx	# n, digit
	addl	%ecx, %ecx	# tmp95
	subl	%ecx, %edx	# tmp95, digit
# eval/problem132/code.c:7:         if (digit % 2 == 1) {
	movl	%edi, %ecx	# n, _1
	andl	$1, %ecx	#, _1
	je	.L3	#,
# eval/problem132/code.c:9:             prod *= digit;
	imull	%edx, %r9d	# digit, prod
# eval/problem132/code.c:8:             has_odd = 1;
	movl	%ecx, %r8d	# _1, <retval>
.L3:
# eval/problem132/code.c:11:         n /= 10;
	imulq	%rsi, %rax	# tmp90, tmp106
	shrq	$35, %rax	#, n
# eval/problem132/code.c:5:     while (n > 0) {
	cmpl	$9, %edi	#, n
	jg	.L6	#,
# eval/problem132/code.c:13:     return has_odd ? prod : 0;
	testl	%r8d, %r8d	# <retval>
	cmovne	%r9d, %r8d	# <retval>,, prod, <retval>
.L1:
# eval/problem132/code.c:14: }
	movl	%r8d, %eax	# <retval>,
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
