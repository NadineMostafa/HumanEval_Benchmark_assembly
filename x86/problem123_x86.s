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
# eval/problem123/code.c:5:     for (int i = 0; i < k; i++)
	testl	%esi, %esi	# k
	jle	.L5	#,
	leal	-1(%rsi), %eax	#, tmp97
# eval/problem123/code.c:4:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
	leaq	4(%rdi,%rax,4), %rcx	#, _27
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem123/code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	movl	(%rdi), %eax	# MEM[(int *)_10], _4
# eval/problem123/code.c:6:         if (arr[i] >= -99 && arr[i] <= 99)
	leal	99(%rax), %edx	#, tmp100
# eval/problem123/code.c:7:             sum += arr[i];
	addl	%r8d, %eax	# <retval>, tmp103
	cmpl	$199, %edx	#, tmp100
	cmovb	%eax, %r8d	# tmp103,, <retval>
# eval/problem123/code.c:5:     for (int i = 0; i < k; i++)
	addq	$4, %rdi	#, ivtmp.7
	cmpq	%rcx, %rdi	# _27, ivtmp.7
	jne	.L4	#,
# eval/problem123/code.c:9: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem123/code.c:4:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem123/code.c:9: }
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
