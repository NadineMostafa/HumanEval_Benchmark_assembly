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
# eval/problem41/code.c:5:     for (int i = 0; i < size; i++)
	testl	%esi, %esi	# size
	jle	.L9	#,
	leal	1(%rsi), %r10d	#, _32
	movl	$2, %r9d	#, ivtmp.26
.L7:
# eval/problem41/code.c:6:         for (int j = i + 1; j < size; j++)
	cmpq	%r9, %r10	# ivtmp.26, _32
	je	.L9	#,
	movq	%r9, %r8	# ivtmp.26, ivtmp.16
# eval/problem41/code.c:7:             for (int k = j + 1; k < size; k++)
	cmpl	%r8d, %esi	# ivtmp.16, size
	jle	.L3	#,
.L16:
# eval/problem41/code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	-4(%rdi,%r8,4), %edx	# MEM[(int *)l_22(D) + -4B + ivtmp.16_43 * 4], MEM[(int *)l_22(D) + -4B + ivtmp.16_43 * 4]
	movq	%r8, %rax	# ivtmp.16, ivtmp.9
	addl	-8(%rdi,%r9,4), %edx	# MEM[(int *)l_22(D) + -8B + ivtmp.26_37 * 4], _9
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L15:
# eval/problem41/code.c:7:             for (int k = j + 1; k < size; k++)
	addq	$1, %rax	#, ivtmp.9
	cmpl	%eax, %esi	# ivtmp.9, size
	jle	.L14	#,
.L4:
# eval/problem41/code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	%edx, %ecx	# _9, tmp106
	addl	(%rdi,%rax,4), %ecx	# MEM[(int *)l_22(D) + ivtmp.9_48 * 4], tmp106
	jne	.L15	#,
# eval/problem41/code.c:8:                 if (l[i] + l[j] + l[k] == 0) return true;
	movl	$1, %eax	#, <retval>
# eval/problem41/code.c:10: }
	ret	
	.p2align 4,,10
	.p2align 3
.L14:
	addq	$1, %r8	#, ivtmp.16
# eval/problem41/code.c:7:             for (int k = j + 1; k < size; k++)
	cmpl	%r8d, %esi	# ivtmp.16, size
	jg	.L16	#,
.L3:
	addq	$1, %r9	#, ivtmp.26
	jmp	.L7	#
.L9:
# eval/problem41/code.c:9:     return false;
	xorl	%eax, %eax	# <retval>
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
