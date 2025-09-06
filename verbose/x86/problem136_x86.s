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
# eval/problem136/code.c:5:     for (int i = 1; i < size; ++i) {
	cmpl	$1, %esi	#, size
	jle	.L5	#,
	movslq	%esi, %rsi	# size, _23
	movl	$1, %eax	#, ivtmp.7
# eval/problem136/code.c:4:     int max = -1;
	movl	$-1, %r8d	#, <retval>
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem136/code.c:6:         if (arr[i] < arr[i - 1]) max = i;
	movl	-4(%rdi,%rax,4), %edx	# MEM[(int *)arr_14(D) + -4B + ivtmp.7_20 * 4], tmp95
	cmpl	%edx, (%rdi,%rax,4)	# tmp95, MEM[(int *)arr_14(D) + ivtmp.7_20 * 4]
	cmovl	%eax, %r8d	# <retval>,, ivtmp.7, <retval>
# eval/problem136/code.c:5:     for (int i = 1; i < size; ++i) {
	addq	$1, %rax	#, ivtmp.7
	cmpq	%rsi, %rax	# _23, ivtmp.7
	jne	.L4	#,
# eval/problem136/code.c:9: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem136/code.c:4:     int max = -1;
	movl	$-1, %r8d	#, <retval>
# eval/problem136/code.c:9: }
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
