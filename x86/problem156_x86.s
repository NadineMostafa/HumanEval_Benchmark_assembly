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
.LFB39:
	.cfi_startproc
	endbr64	
# eval/problem156/code.c:6:     num = abs(num);
	movl	%edi, %edx	# tmp123, tmp125
# eval/problem156/code.c:9:         int digit = num % 10;
	movl	$3435973837, %r8d	#, tmp94
# eval/problem156/code.c:6:     num = abs(num);
	negl	%edx	# tmp125
	cmovs	%edi, %edx	# tmp125,, tmp123, num
# eval/problem156/code.c:5:     int even_count = 0, odd_count = 0;
	xorl	%ecx, %ecx	# odd_count
# eval/problem156/code.c:5:     int even_count = 0, odd_count = 0;
	xorl	%edi, %edi	# even_count
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem156/code.c:15:         num /= 10;
	imulq	%r8, %rax	# tmp94, tmp114
# eval/problem156/code.c:11:             even_count++;
	addl	$1, %edi	#, even_count
# eval/problem156/code.c:15:         num /= 10;
	shrq	$35, %rax	#, num
# eval/problem156/code.c:16:     } while (num > 0);
	cmpl	$9, %edx	#, num
	jle	.L7	#,
.L5:
# eval/problem156/code.c:15:         num /= 10;
	movl	%eax, %edx	# num, num
.L4:
# eval/problem156/code.c:9:         int digit = num % 10;
	movl	%edx, %eax	# num, num
# eval/problem156/code.c:10:         if (digit % 2 == 0) {
	testb	$1, %dl	#, num
	je	.L8	#,
# eval/problem156/code.c:15:         num /= 10;
	imulq	%r8, %rax	# tmp94, tmp114
# eval/problem156/code.c:13:             odd_count++;
	addl	$1, %ecx	#, odd_count
# eval/problem156/code.c:15:         num /= 10;
	shrq	$35, %rax	#, num
# eval/problem156/code.c:16:     } while (num > 0);
	cmpl	$9, %edx	#, num
	jg	.L5	#,
.L7:
# eval/problem156/code.c:18:     result[0] = even_count;
	movl	%edi, (%rsi)	# even_count, *result_17(D)
# eval/problem156/code.c:19:     result[1] = odd_count;
	movl	%ecx, 4(%rsi)	# odd_count, MEM[(int *)result_17(D) + 4B]
# eval/problem156/code.c:20: }
	ret	
	.cfi_endproc
.LFE39:
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
