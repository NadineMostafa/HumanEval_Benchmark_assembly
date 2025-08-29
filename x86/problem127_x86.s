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
# eval/problem127/code.c:7:     for (int i = 1; i < lst_size; i++) {
	cmpl	$1, %esi	#, lst_size
	jle	.L5	#,
	movslq	%esi, %rsi	# lst_size, _11
	movl	$1, %eax	#, ivtmp.7
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem127/code.c:7:     for (int i = 1; i < lst_size; i++) {
	addq	$1, %rax	#, ivtmp.7
	cmpq	%rax, %rsi	# ivtmp.7, _11
	je	.L5	#,
.L4:
# eval/problem127/code.c:8:         if (lst[i] < lst[i - 1]) return false;
	movl	(%rdi,%rax,4), %edx	# MEM[(const int *)lst_14(D) + ivtmp.7_25 * 4], _4
# eval/problem127/code.c:8:         if (lst[i] < lst[i - 1]) return false;
	cmpl	-4(%rdi,%rax,4), %edx	# MEM[(const int *)lst_14(D) + -4B + ivtmp.7_25 * 4], _4
	jl	.L7	#,
# eval/problem127/code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	jne	.L3	#,
	cmpl	$1, %eax	#, ivtmp.7
	je	.L3	#,
# eval/problem127/code.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmpl	-8(%rdi,%rax,4), %edx	# MEM[(const int *)lst_14(D) + -8B + ivtmp.7_25 * 4], _4
	jne	.L3	#,
.L7:
# eval/problem127/code.c:8:         if (lst[i] < lst[i - 1]) return false;
	xorl	%eax, %eax	# <retval>
# eval/problem127/code.c:12: }
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem127/code.c:11:     return true;
	movl	$1, %eax	#, <retval>
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
