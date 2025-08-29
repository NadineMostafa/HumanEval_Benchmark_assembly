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
# eval/problem160/code.c:4:     if (need > remaining) {
	cmpl	%edx, %esi	# remaining, need
	jle	.L2	#,
# eval/problem160/code.c:5:         result[0] = number + remaining;
	addl	%edx, %edi	# remaining, _1
	xorl	%edx, %edx	# _3
# eval/problem160/code.c:5:         result[0] = number + remaining;
	movl	%edi, (%rcx)	# _1, *result_9(D)
# eval/problem160/code.c:6:         result[1] = 0;
	movl	%edx, 4(%rcx)	# _3, MEM[(int *)result_9(D) + 4B]
# eval/problem160/code.c:11: }
	ret	
	.p2align 4,,10
	.p2align 3
.L2:
# eval/problem160/code.c:8:         result[0] = number + need;
	addl	%esi, %edi	# need, _1
# eval/problem160/code.c:9:         result[1] = remaining - need;
	subl	%esi, %edx	# need, _3
# eval/problem160/code.c:5:         result[0] = number + remaining;
	movl	%edi, (%rcx)	# _1, *result_9(D)
# eval/problem160/code.c:6:         result[1] = 0;
	movl	%edx, 4(%rcx)	# _3, MEM[(int *)result_9(D) + 4B]
# eval/problem160/code.c:11: }
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
