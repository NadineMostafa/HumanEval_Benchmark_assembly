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
# eval/problem84/code.c:4:     if (n < 1) return 0;
	xorl	%eax, %eax	# <retval>
# eval/problem84/code.c:4:     if (n < 1) return 0;
	testl	%edi, %edi	# n
	jle	.L1	#,
# eval/problem84/code.c:5:     if (n == 1) return 1;
	movl	$1, %eax	#, <retval>
# eval/problem84/code.c:5:     if (n == 1) return 1;
	cmpl	$1, %edi	#, n
	je	.L1	#,
# eval/problem84/code.c:7:     for (int i = 2; i < n; i++)
	cmpl	$2, %edi	#, n
	je	.L6	#,
# eval/problem84/code.c:7:     for (int i = 2; i < n; i++)
	movl	$2, %edx	#, i
# eval/problem84/code.c:6:     int out = 18;
	movl	$18, %eax	#, <retval>
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem84/code.c:8:         out = out * 10;
	leal	(%rax,%rax,4), %eax	#, tmp87
# eval/problem84/code.c:7:     for (int i = 2; i < n; i++)
	addl	$1, %edx	#, i
# eval/problem84/code.c:8:         out = out * 10;
	addl	%eax, %eax	# <retval>
# eval/problem84/code.c:7:     for (int i = 2; i < n; i++)
	cmpl	%edx, %edi	# i, n
	jne	.L3	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem84/code.c:6:     int out = 18;
	movl	$18, %eax	#, <retval>
.L1:
# eval/problem84/code.c:10: }
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
