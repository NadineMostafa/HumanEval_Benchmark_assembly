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
# eval/problem5/code.c:12:     avg = sum / size;
	pxor	%xmm4, %xmm4	# _53
	cvtsi2ssl	%esi, %xmm4	# size, _53
# eval/problem5/code.c:9:     for (i = 0; i < size; i++)
	testl	%esi, %esi	# size
	jle	.L6	#,
	leal	-1(%rsi), %eax	#, tmp104
# eval/problem5/code.c:5:     float sum = 0;
	pxor	%xmm0, %xmm0	# sum
	leaq	4(%rdi,%rax,4), %rdx	#, _12
# eval/problem5/code.c:9:     for (i = 0; i < size; i++)
	movq	%rdi, %rax	# ivtmp.8, ivtmp.14
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem5/code.c:10:         sum += numbers[i];
	addss	(%rax), %xmm0	# MEM[(float *)_36], sum
# eval/problem5/code.c:9:     for (i = 0; i < size; i++)
	addq	$4, %rax	#, ivtmp.14
	cmpq	%rax, %rdx	# ivtmp.14, _12
	jne	.L3	#,
# eval/problem5/code.c:12:     avg = sum / size;
	divss	%xmm4, %xmm0	# _53, avg
	pxor	%xmm2, %xmm2	# msum
	movss	.LC1(%rip), %xmm3	#, tmp112
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem5/code.c:16:         msum += fabs(numbers[i] - avg);
	movss	(%rdi), %xmm1	# MEM[(float *)_47], MEM[(float *)_47]
# eval/problem5/code.c:15:     for (i = 0; i < size; i++)
	addq	$4, %rdi	#, ivtmp.8
# eval/problem5/code.c:16:         msum += fabs(numbers[i] - avg);
	subss	%xmm0, %xmm1	# avg, tmp107
# eval/problem5/code.c:16:         msum += fabs(numbers[i] - avg);
	andps	%xmm3, %xmm1	# tmp112, tmp109
# eval/problem5/code.c:16:         msum += fabs(numbers[i] - avg);
	addss	%xmm1, %xmm2	# tmp109, msum
# eval/problem5/code.c:15:     for (i = 0; i < size; i++)
	cmpq	%rdi, %rdx	# ivtmp.8, _12
	jne	.L5	#,
# eval/problem5/code.c:18:     return msum / size;
	divss	%xmm4, %xmm2	# _53, msum
	movaps	%xmm2, %xmm0	# msum, tmp111
# eval/problem5/code.c:19: }
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem5/code.c:13:     msum = 0;
	pxor	%xmm2, %xmm2	# msum
# eval/problem5/code.c:18:     return msum / size;
	divss	%xmm4, %xmm2	# _53, msum
	movaps	%xmm2, %xmm0	# msum, tmp111
# eval/problem5/code.c:19: }
	ret	
	.cfi_endproc
.LFE23:
	.size	func0, .-func0
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
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
