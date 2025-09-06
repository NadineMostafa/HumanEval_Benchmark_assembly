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
# eval/problem122/code.c:5:     for (int i = 0; i * 2 < size; i++)
	testl	%esi, %esi	# size
	jle	.L5	#,
	subl	$1, %esi	#, tmp96
# eval/problem122/code.c:4:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
	shrl	%esi	#
	leaq	8(%rdi,%rsi,8), %rsi	#, _29
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem122/code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	movl	(%rdi), %eax	# MEM[(int *)_9], _5
# eval/problem122/code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	movl	%eax, %ecx	# _5, tmp103
	shrl	$31, %ecx	#, tmp103
	leal	(%rax,%rcx), %edx	#, tmp104
# eval/problem122/code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	addl	%r8d, %eax	# <retval>, tmp109
# eval/problem122/code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	andl	$1, %edx	#, tmp105
	subl	%ecx, %edx	# tmp103, tmp106
# eval/problem122/code.c:6:         if (lst[i * 2] % 2 == 1) sum += lst[i * 2];
	cmpl	$1, %edx	#, tmp106
	cmove	%eax, %r8d	# tmp109,, <retval>
# eval/problem122/code.c:5:     for (int i = 0; i * 2 < size; i++)
	addq	$8, %rdi	#, ivtmp.10
	cmpq	%rsi, %rdi	# _29, ivtmp.10
	jne	.L4	#,
# eval/problem122/code.c:8: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem122/code.c:4:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem122/code.c:8: }
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
