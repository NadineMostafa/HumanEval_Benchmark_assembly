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
.LFB0:
	.cfi_startproc
	endbr64	
# eval/problem32/code.c:4:     if (n < 2) return false;
	xorl	%eax, %eax	# <retval>
# eval/problem32/code.c:4:     if (n < 2) return false;
	cmpq	$1, %rdi	#, n
	jle	.L1	#,
# eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	cmpq	$3, %rdi	#, n
	jle	.L6	#,
# eval/problem32/code.c:6:         if (n % i == 0) return false;
	testb	$1, %dil	#, n
	je	.L1	#,
# eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	movl	$2, %ecx	#, i
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem32/code.c:6:         if (n % i == 0) return false;
	movq	%rdi, %rax	# n, tmp92
	cqto
	idivq	%rcx	# i
# eval/problem32/code.c:6:         if (n % i == 0) return false;
	testq	%rdx, %rdx	# tmp91
	je	.L8	#,
.L3:
# eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	addq	$1, %rcx	#, i
# eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	movq	%rcx, %rax	# i, tmp93
	imulq	%rcx, %rax	# i, tmp93
# eval/problem32/code.c:5:     for (long long i = 2; i * i <= n; i++)
	cmpq	%rdi, %rax	# n, tmp93
	jle	.L4	#,
.L6:
# eval/problem32/code.c:7:     return true;
	movl	$1, %eax	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem32/code.c:4:     if (n < 2) return false;
	xorl	%eax, %eax	# <retval>
.L1:
# eval/problem32/code.c:8: }
	ret	
	.cfi_endproc
.LFE0:
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
