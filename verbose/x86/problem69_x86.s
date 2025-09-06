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
# eval/problem69/code.c:8:     for (int i = 0; i < length; ++i) {
	testl	%esi, %esi	# length
	jle	.L7	#,
	movslq	%esi, %rsi	# length, _27
	xorl	%ecx, %ecx	# ivtmp.5
# eval/problem69/code.c:6:     int index = -1;
	movl	$-1, %r10d	#, index
# eval/problem69/code.c:5:     int smallestEven = INT_MAX;
	movl	$2147483647, %eax	#, smallestEven
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem69/code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	movl	(%rdi,%rcx,4), %r8d	# MEM[(int *)arr_21(D) + ivtmp.5_25 * 4], _4
	movl	%ecx, %r9d	# ivtmp.5, i
# eval/problem69/code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	testb	$1, %r8b	#, _4
	jne	.L3	#,
# eval/problem69/code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	cmpl	$-1, %r10d	#, index
	je	.L8	#,
	cmpl	%eax, %r8d	# smallestEven, _4
	jge	.L3	#,
.L8:
# eval/problem69/code.c:9:         if (arr[i] % 2 == 0 && (arr[i] < smallestEven || index == -1)) {
	movl	%r9d, %r10d	# i, index
	movl	%r8d, %eax	# _4, smallestEven
.L3:
# eval/problem69/code.c:8:     for (int i = 0; i < length; ++i) {
	addq	$1, %rcx	#, ivtmp.5
	cmpq	%rsi, %rcx	# _27, ivtmp.5
	jne	.L5	#,
# eval/problem69/code.c:15:     if (index == -1) {
	cmpl	$-1, %r10d	#, index
	je	.L7	#,
# eval/problem69/code.c:19:     output[0] = smallestEven;
	movl	%eax, (%rdx)	# smallestEven, *output_18(D)
# eval/problem69/code.c:21:     return output;
	movq	%rdx, %rax	# output, <retval>
# eval/problem69/code.c:20:     output[1] = index;
	movl	%r10d, 4(%rdx)	# index, MEM[(int *)output_18(D) + 4B]
# eval/problem69/code.c:21:     return output;
	ret	
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem69/code.c:16:         return NULL;
	xorl	%eax, %eax	# <retval>
# eval/problem69/code.c:22: }
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
