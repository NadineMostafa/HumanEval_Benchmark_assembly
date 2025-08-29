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
# eval/problem36/code.c:5:     for (int i = 0; i < size; i++)
	testl	%esi, %esi	# size
	jle	.L6	#,
	leal	-1(%rsi), %eax	#, tmp95
# eval/problem36/code.c:4:     float max = -10000;
	movss	.LC0(%rip), %xmm0	#, <retval>
	leaq	4(%rdi,%rax,4), %rax	#, _24
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem36/code.c:6:         if (max < l[i]) max = l[i];
	movss	(%rdi), %xmm1	# MEM[(float *)_17], _4
# eval/problem36/code.c:5:     for (int i = 0; i < size; i++)
	addq	$4, %rdi	#, ivtmp.7
# eval/problem36/code.c:6:         if (max < l[i]) max = l[i];
	maxss	%xmm0, %xmm1	# <retval>, _4
	movaps	%xmm1, %xmm0	# _4, <retval>
# eval/problem36/code.c:5:     for (int i = 0; i < size; i++)
	cmpq	%rax, %rdi	# _24, ivtmp.7
	jne	.L5	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem36/code.c:4:     float max = -10000;
	movss	.LC0(%rip), %xmm0	#, <retval>
# eval/problem36/code.c:8: }
	ret	
	.cfi_endproc
.LFE23:
	.size	func0, .-func0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	-971227136
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
