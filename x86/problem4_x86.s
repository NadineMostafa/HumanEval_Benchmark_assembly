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
# eval/problem4/code.c:5:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L5	#,
# eval/problem4/code.c:6:         num += operations[i];
	movl	(%rdi), %eax	# *operations_9(D), num
# eval/problem4/code.c:7:         if (num < 0) return 1;
	testl	%eax, %eax	# num
	js	.L7	#,
	addq	$4, %rdi	#, ivtmp.8
	leal	-1(%rsi), %edx	#, tmp98
	leaq	(%rdi,%rdx,4), %rdx	#, _24
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem4/code.c:6:         num += operations[i];
	addl	(%rdi), %eax	# MEM[(int *)_25], num
# eval/problem4/code.c:7:         if (num < 0) return 1;
	addq	$4, %rdi	#, ivtmp.8
	testl	%eax, %eax	# num
	js	.L7	#,
.L3:
# eval/problem4/code.c:5:     for (int i = 0; i < size; i++) {
	cmpq	%rdx, %rdi	# _24, ivtmp.8
	jne	.L4	#,
.L5:
# eval/problem4/code.c:9:     return 0;
	xorl	%eax, %eax	# <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem4/code.c:7:         if (num < 0) return 1;
	movl	$1, %eax	#, <retval>
# eval/problem4/code.c:10: }
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
