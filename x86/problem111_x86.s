	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"YES"
.LC1:
	.string	"NO"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB23:
	.cfi_startproc
	endbr64	
# eval/problem111/code.c:5:     for (int i = 0; i < size1; i++)
	testl	%esi, %esi	# size1
	jle	.L2	#,
	leal	-1(%rsi), %eax	#, tmp105
	leaq	4(%rdi,%rax,4), %r9	#, _46
# eval/problem111/code.c:4:     int num = 0;
	xorl	%eax, %eax	# num
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem111/code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	movl	(%rdi), %r8d	# MEM[(int *)_32], tmp108
	andl	$1, %r8d	#, tmp108
# eval/problem111/code.c:6:         if (lst1[i] % 2 == 0) num += 1;
	cmpl	$1, %r8d	#, tmp108
	adcl	$0, %eax	#, num
# eval/problem111/code.c:5:     for (int i = 0; i < size1; i++)
	addq	$4, %rdi	#, ivtmp.14
	cmpq	%r9, %rdi	# _46, ivtmp.14
	jne	.L4	#,
# eval/problem111/code.c:7:     for (int i = 0; i < size2; i++)
	testl	%ecx, %ecx	# size2
	jle	.L5	#,
.L9:
# eval/problem111/code.c:4:     int num = 0;
	xorl	%edi, %edi	# ivtmp.6
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem111/code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	movl	(%rdx,%rdi,4), %r8d	# MEM[(int *)lst2_24(D) + ivtmp.6_42 * 4], tmp110
	andl	$1, %r8d	#, tmp110
# eval/problem111/code.c:8:         if (lst2[i] % 2 == 0) num += 1;
	cmpl	$1, %r8d	#, tmp110
	adcl	$0, %eax	#, num
# eval/problem111/code.c:7:     for (int i = 0; i < size2; i++)
	addq	$1, %rdi	#, ivtmp.6
	cmpl	%edi, %ecx	# ivtmp.6, size2
	jg	.L7	#,
.L5:
# eval/problem111/code.c:10:     return "NO";
	cmpl	%eax, %esi	# num, size1
	leaq	.LC1(%rip), %rdx	#, tmp114
	leaq	.LC0(%rip), %rax	#, tmp113
	cmovg	%rdx, %rax	# tmp113,, tmp114, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L2:
# eval/problem111/code.c:4:     int num = 0;
	xorl	%eax, %eax	# num
# eval/problem111/code.c:7:     for (int i = 0; i < size2; i++)
	testl	%ecx, %ecx	# size2
	jg	.L9	#,
# eval/problem111/code.c:9:     if (num >= size1) return "YES";
	leaq	.LC0(%rip), %rax	#, <retval>
# eval/problem111/code.c:11: }
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
