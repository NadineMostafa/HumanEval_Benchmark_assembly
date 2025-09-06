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
# eval/problem137/code.c:6:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L8	#,
	leal	-1(%rsi), %eax	#, tmp103
# eval/problem137/code.c:5:     int minpos = 0;
	xorl	%ecx, %ecx	# minpos
# eval/problem137/code.c:4:     int maxneg = 0;
	xorl	%esi, %esi	# maxneg
	leaq	4(%rdi,%rax,4), %r8	#, _19
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	(%rdi), %eax	# MEM[(const int *)_34], _4
# eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	testl	%eax, %eax	# _4
	js	.L22	#,
# eval/problem137/code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	je	.L4	#,
# eval/problem137/code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	testl	%ecx, %ecx	# minpos
	je	.L10	#,
	cmpl	%ecx, %eax	# minpos, _4
	jge	.L4	#,
.L10:
# eval/problem137/code.c:8:         if (lst[i] > 0 && (minpos == 0 || lst[i] < minpos)) minpos = lst[i];
	movl	%eax, %ecx	# _4, minpos
.L4:
# eval/problem137/code.c:6:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.7
	cmpq	%rdi, %r8	# ivtmp.7, _19
	jne	.L7	#,
# eval/problem137/code.c:10:     result[0] = maxneg;
	movl	%esi, (%rdx)	# maxneg, *result_14(D)
# eval/problem137/code.c:11:     result[1] = minpos;
	movl	%ecx, 4(%rdx)	# minpos, MEM[(int *)result_14(D) + 4B]
# eval/problem137/code.c:12: }
	ret	
	.p2align 4,,10
	.p2align 3
.L22:
# eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	cmpl	%esi, %eax	# maxneg, _4
	jg	.L9	#,
	testl	%esi, %esi	# maxneg
	jne	.L4	#,
.L9:
# eval/problem137/code.c:7:         if (lst[i] < 0 && (maxneg == 0 || lst[i] > maxneg)) maxneg = lst[i];
	movl	%eax, %esi	# _4, maxneg
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem137/code.c:5:     int minpos = 0;
	xorl	%ecx, %ecx	# minpos
# eval/problem137/code.c:4:     int maxneg = 0;
	xorl	%esi, %esi	# maxneg
# eval/problem137/code.c:10:     result[0] = maxneg;
	movl	%esi, (%rdx)	# maxneg, *result_14(D)
# eval/problem137/code.c:11:     result[1] = minpos;
	movl	%ecx, 4(%rdx)	# minpos, MEM[(int *)result_14(D) + 4B]
# eval/problem137/code.c:12: }
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
