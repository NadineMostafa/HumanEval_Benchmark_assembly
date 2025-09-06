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
# eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L7	#,
	movslq	%esi, %rsi	# size, _17
	xorl	%eax, %eax	# ivtmp.6
# eval/problem143/code.c:4:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	imull	%edx, %edx	# _5, tmp107
# eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	addl	%edx, %r8d	# tmp107, <retval>
.L4:
# eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	addq	$1, %rax	#, ivtmp.6
	cmpq	%rsi, %rax	# _17, ivtmp.6
	je	.L1	#,
.L6:
	imull	$-1431655765, %eax, %edx	#, ivtmp.6, tmp106
# eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	cmpl	$1431655765, %edx	#, tmp106
# eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	movl	(%rdi,%rax,4), %edx	# MEM[(int *)lst_26(D) + ivtmp.6_22 * 4], _5
# eval/problem143/code.c:6:         if (i % 3 == 0) sum += lst[i] * lst[i];
	jbe	.L10	#,
# eval/problem143/code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	testb	$3, %al	#, ivtmp.6
	jne	.L5	#,
# eval/problem143/code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	movl	%edx, %ecx	# pretmp_40, tmp109
# eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	addq	$1, %rax	#, ivtmp.6
# eval/problem143/code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	imull	%edx, %ecx	# pretmp_40, tmp109
# eval/problem143/code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	imull	%ecx, %edx	# tmp109, tmp110
# eval/problem143/code.c:7:         else if (i % 4 == 0) sum += lst[i] * lst[i] * lst[i];
	addl	%edx, %r8d	# tmp110, <retval>
# eval/problem143/code.c:5:     for (int i = 0; i < size; i++) {
	cmpq	%rsi, %rax	# _17, ivtmp.6
	jne	.L6	#,
.L1:
# eval/problem143/code.c:11: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem143/code.c:8:         else sum += lst[i];
	addl	%edx, %r8d	# pretmp_40, <retval>
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem143/code.c:4:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem143/code.c:11: }
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
