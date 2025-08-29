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
# eval/problem60/code.c:3: int func0(int n) {
	movl	%edi, %r8d	# tmp120, n
# eval/problem60/code.c:4:     for (int i = 2; i * i <= n; i++)
	movl	$2, %ecx	#, i
# eval/problem60/code.c:4:     for (int i = 2; i * i <= n; i++)
	cmpl	$3, %edi	#, n
	jle	.L3	#,
	.p2align 4,,10
	.p2align 3
.L2:
# eval/problem60/code.c:5:         while (n % i == 0 && n > i) n = n / i;
	movl	%r8d, %eax	# n, tmp114
	cltd
	idivl	%ecx	# i
# eval/problem60/code.c:5:         while (n % i == 0 && n > i) n = n / i;
	testl	%edx, %edx	# tmp113
	je	.L18	#,
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem60/code.c:5:         while (n % i == 0 && n > i) n = n / i;
	movl	%r8d, %eax	# n, n
	cltd
	idivl	%ecx	# i
# eval/problem60/code.c:5:         while (n % i == 0 && n > i) n = n / i;
	cltd
# eval/problem60/code.c:5:         while (n % i == 0 && n > i) n = n / i;
	movl	%eax, %r8d	# n, n
# eval/problem60/code.c:5:         while (n % i == 0 && n > i) n = n / i;
	idivl	%ecx	# i
# eval/problem60/code.c:5:         while (n % i == 0 && n > i) n = n / i;
	testl	%edx, %edx	# tmp102
	jne	.L7	#,
.L18:
# eval/problem60/code.c:5:         while (n % i == 0 && n > i) n = n / i;
	cmpl	%ecx, %r8d	# i, n
	jg	.L4	#,
.L7:
# eval/problem60/code.c:4:     for (int i = 2; i * i <= n; i++)
	addl	$1, %ecx	#, i
# eval/problem60/code.c:4:     for (int i = 2; i * i <= n; i++)
	movl	%ecx, %eax	# i, tmp108
	imull	%ecx, %eax	# i, tmp108
# eval/problem60/code.c:4:     for (int i = 2; i * i <= n; i++)
	cmpl	%r8d, %eax	# n, tmp108
	jle	.L2	#,
.L3:
# eval/problem60/code.c:7: }
	movl	%r8d, %eax	# n,
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
