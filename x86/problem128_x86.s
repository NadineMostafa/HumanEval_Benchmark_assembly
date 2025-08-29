	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"NO"
.LC1:
	.string	"YES"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB23:
	.cfi_startproc
	endbr64	
# eval/problem128/code.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	cmpl	%esi, %ecx	# tmp104, tmp106
# eval/problem128/code.c:9:     if (l < 2) return "NO";
	leaq	.LC0(%rip), %rax	#, <retval>
# eval/problem128/code.c:6:     inter2 = interval1_end < interval2_end ? interval1_end : interval2_end;
	cmovg	%esi, %ecx	# tmp106,, tmp104, inter2
# eval/problem128/code.c:5:     inter1 = interval1_start > interval2_start ? interval1_start : interval2_start;
	cmpl	%edi, %edx	# tmp103, tmp105
	cmovl	%edi, %edx	# tmp105,, tmp103, inter1
# eval/problem128/code.c:7:     l = inter2 - inter1;
	subl	%edx, %ecx	# inter1, l
# eval/problem128/code.c:9:     if (l < 2) return "NO";
	cmpl	$1, %ecx	#, l
	jle	.L1	#,
# eval/problem128/code.c:14:     return "YES";
	leaq	.LC1(%rip), %rax	#, <retval>
# eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	cmpl	$3, %ecx	#, l
	jle	.L1	#,
# eval/problem128/code.c:9:     if (l < 2) return "NO";
	leaq	.LC0(%rip), %rax	#, <retval>
# eval/problem128/code.c:12:         if (l % i == 0) return "NO";
	testb	$1, %cl	#, l
	je	.L1	#,
# eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	movl	$2, %esi	#, i
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem128/code.c:12:         if (l % i == 0) return "NO";
	movl	%ecx, %eax	# l, tmp100
	cltd
	idivl	%esi	# i
# eval/problem128/code.c:12:         if (l % i == 0) return "NO";
	testl	%edx, %edx	# tmp99
	je	.L8	#,
.L3:
# eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	addl	$1, %esi	#, i
# eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	movl	%esi, %eax	# i, tmp101
	imull	%esi, %eax	# i, tmp101
# eval/problem128/code.c:11:     for (i = 2; i * i <= l; i++)
	cmpl	%ecx, %eax	# l, tmp101
	jle	.L4	#,
# eval/problem128/code.c:14:     return "YES";
	leaq	.LC1(%rip), %rax	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem128/code.c:9:     if (l < 2) return "NO";
	leaq	.LC0(%rip), %rax	#, <retval>
.L1:
# eval/problem128/code.c:15: }
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
