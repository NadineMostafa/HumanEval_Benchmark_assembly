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
# eval/problem91/code.c:5:     if (size < 2) return -1;
	cmpl	$1, %esi	#, size
	jle	.L6	#,
	leal	-1(%rsi), %eax	#, tmp99
# eval/problem91/code.c:7:     int first = INT_MAX, second = INT_MAX;
	movl	$2147483647, %r8d	#, <retval>
# eval/problem91/code.c:7:     int first = INT_MAX, second = INT_MAX;
	movl	$2147483647, %edx	#, first
	leaq	4(%rdi,%rax,4), %rcx	#, _17
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L15:
# eval/problem91/code.c:12:         } else if (lst[i] < second && lst[i] != first) {
	je	.L3	#,
	cmpl	%r8d, %eax	# <retval>, _4
	cmovle	%eax, %r8d	# _4,, <retval>
.L3:
# eval/problem91/code.c:8:     for (int i = 0; i < size; ++i) {
	addq	$4, %rdi	#, ivtmp.6
	cmpq	%rcx, %rdi	# _17, ivtmp.6
	je	.L14	#,
.L5:
# eval/problem91/code.c:9:         if (lst[i] < first) {
	movl	(%rdi), %eax	# MEM[(int *)_22], _4
# eval/problem91/code.c:9:         if (lst[i] < first) {
	cmpl	%edx, %eax	# first, _4
	jge	.L15	#,
# eval/problem91/code.c:8:     for (int i = 0; i < size; ++i) {
	addq	$4, %rdi	#, ivtmp.6
	movl	%edx, %r8d	# first, <retval>
	movl	%eax, %edx	# _4, first
	cmpq	%rcx, %rdi	# _17, ivtmp.6
	jne	.L5	#,
.L14:
# eval/problem91/code.c:17:     if (second == INT_MAX) return -1;
	cmpl	$2147483647, %r8d	#, <retval>
	je	.L6	#,
.L1:
# eval/problem91/code.c:19: }
	movl	%r8d, %eax	# <retval>,
	ret	
.L6:
# eval/problem91/code.c:5:     if (size < 2) return -1;
	movl	$-1, %r8d	#, <retval>
	jmp	.L1	#
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
