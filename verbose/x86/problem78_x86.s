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
# eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	%edi, %ecx	# a, tmp91
	negl	%ecx	# tmp91
	cmovs	%edi, %ecx	# tmp91,, a, _12
# eval/problem78/code.c:7:         if (i * i * i == abs(a)) return 1;
	testl	%edi, %edi	# a
	je	.L5	#,
# eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	$1, %edx	#, i
# eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	$1, %eax	#, _2
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem78/code.c:7:         if (i * i * i == abs(a)) return 1;
	cmpl	%eax, %ecx	# _2, _12
	je	.L5	#,
# eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	addl	$1, %edx	#, i
# eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	movl	%edx, %eax	# i, tmp88
	imull	%edx, %eax	# i, tmp88
# eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	imull	%edx, %eax	# i, _2
# eval/problem78/code.c:6:     for (int i = 0; i * i * i <= abs(a); i++)
	cmpl	%ecx, %eax	# _12, _2
	jle	.L3	#,
# eval/problem78/code.c:8:     return 0;
	xorl	%eax, %eax	# <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem78/code.c:7:         if (i * i * i == abs(a)) return 1;
	movl	$1, %eax	#, <retval>
# eval/problem78/code.c:9: }
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
