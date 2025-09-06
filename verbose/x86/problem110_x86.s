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
# eval/problem110/code.c:6:     if (size == 0) return true;
	movl	$1, %eax	#, <retval>
# eval/problem110/code.c:6:     if (size == 0) return true;
	testl	%esi, %esi	# size
	je	.L1	#,
# eval/problem110/code.c:7:     for (int i = 1; i < size; i++)
	cmpl	$1, %esi	#, size
	jle	.L8	#,
	leal	-2(%rsi), %edx	#, tmp103
	movq	%rdi, %rax	# arr, ivtmp.8
	leaq	4(%rdi,%rdx,4), %r8	#, _38
# eval/problem110/code.c:5:     int num = 0;
	xorl	%edx, %edx	# num
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem110/code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	movl	(%rax), %ecx	# MEM[(int *)_39], tmp118
	cmpl	%ecx, 4(%rax)	# tmp118, MEM[(int *)_39 + 4B]
	setl	%cl	#, tmp111
# eval/problem110/code.c:7:     for (int i = 1; i < size; i++)
	addq	$4, %rax	#, ivtmp.8
# eval/problem110/code.c:8:         if (arr[i] < arr[i - 1]) num += 1;
	movzbl	%cl, %ecx	# tmp111, tmp111
	addl	%ecx, %edx	# tmp111, num
# eval/problem110/code.c:7:     for (int i = 1; i < size; i++)
	cmpq	%r8, %rax	# _38, ivtmp.8
	jne	.L5	#,
.L3:
# eval/problem110/code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	movslq	%esi, %rsi	# size, size
# eval/problem110/code.c:9:     if (arr[size - 1] > arr[0]) num += 1;
	movl	(%rdi), %eax	# *arr_21(D), tmp119
	cmpl	%eax, -4(%rdi,%rsi,4)	# tmp119, *_12
	setg	%al	#, tmp113
	movzbl	%al, %eax	# tmp113, tmp113
	addl	%eax, %edx	# tmp113, num
# eval/problem110/code.c:10:     if (num < 2) return true;
	cmpl	$1, %edx	#, num
	setle	%al	#, <retval>
.L1:
# eval/problem110/code.c:12: }
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem110/code.c:5:     int num = 0;
	xorl	%edx, %edx	# num
	jmp	.L3	#
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
