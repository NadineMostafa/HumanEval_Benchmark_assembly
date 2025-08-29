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
# eval/problem74/code.c:5:     for (int i = 0; i < size / 2; i++) {
	movl	%esi, %r9d	# size, tmp96
	shrl	$31, %r9d	#, tmp96
	addl	%esi, %r9d	# size, tmp97
	sarl	%r9d	# tmp98
# eval/problem74/code.c:5:     for (int i = 0; i < size / 2; i++) {
	cmpl	$1, %esi	#, size
	jle	.L5	#,
# eval/problem74/code.c:6:         if (arr[i] != arr[size - 1 - i]) {
	subl	$1, %esi	#, tmp99
	xorl	%eax, %eax	# ivtmp.5
# eval/problem74/code.c:4:     int out = 0;
	xorl	%r8d, %r8d	# <retval>
	movslq	%esi, %rsi	# tmp99, tmp100
	leaq	(%rdi,%rsi,4), %rdx	#, ivtmp.8
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem74/code.c:7:             out++;
	movl	(%rdx), %esi	# MEM[(int *)_11], tmp110
	xorl	%ecx, %ecx	# tmp104
	cmpl	%esi, (%rdi,%rax,4)	# tmp110, MEM[(int *)arr_18(D) + ivtmp.5_30 * 4]
	setne	%cl	#, tmp104
# eval/problem74/code.c:5:     for (int i = 0; i < size / 2; i++) {
	addq	$1, %rax	#, ivtmp.5
	subq	$4, %rdx	#, ivtmp.8
# eval/problem74/code.c:7:             out++;
	addl	%ecx, %r8d	# tmp104, <retval>
# eval/problem74/code.c:5:     for (int i = 0; i < size / 2; i++) {
	cmpl	%eax, %r9d	# ivtmp.5, tmp98
	jg	.L4	#,
# eval/problem74/code.c:11: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem74/code.c:4:     int out = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem74/code.c:11: }
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
