	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"-1"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB39:
	.cfi_startproc
	endbr64	
# eval/problem104/code.c:5:     if (n > m) return "-1";
	cmpl	%esi, %edi	# m, n
	jle	.L12	#,
	leaq	.LC0(%rip), %r8	#, <retval>
# eval/problem104/code.c:19: }
	movq	%r8, %rax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
# eval/problem104/code.c:6:     int num = (m + n) / 2;
	addl	%esi, %edi	# m, tmp95
# eval/problem104/code.c:4: char* func0(int n, int m) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# eval/problem104/code.c:6:     int num = (m + n) / 2;
	movl	%edi, %ebx	# tmp95, tmp96
	shrl	$31, %ebx	#, tmp96
	addl	%edi, %ebx	# tmp95, tmp97
# eval/problem104/code.c:7:     char* out = (char*)malloc(33);
	movl	$33, %edi	#,
	call	malloc@PLT	#
# eval/problem104/code.c:6:     int num = (m + n) / 2;
	sarl	%ebx	# num
# eval/problem104/code.c:8:     out[0] = '\0';
	movb	$0, (%rax)	#, *out_19
	addq	$31, %rax	#, ivtmp.10
# eval/problem104/code.c:11:     out[index--] = '\0';
	movb	$0, 1(%rax)	#, MEM[(char *)out_19 + 32B]
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem104/code.c:14:         out[index--] = '0' + num % 2;
	movl	%ebx, %ecx	# num, tmp102
# eval/problem104/code.c:14:         out[index--] = '0' + num % 2;
	movq	%rax, %r8	# ivtmp.10, <retval>
# eval/problem104/code.c:16:     } while (num > 0);
	subq	$1, %rax	#, ivtmp.10
# eval/problem104/code.c:14:         out[index--] = '0' + num % 2;
	shrl	$31, %ecx	#, tmp102
	leal	(%rbx,%rcx), %edx	#, tmp103
	andl	$1, %edx	#, tmp104
	subl	%ecx, %edx	# tmp102, tmp105
# eval/problem104/code.c:14:         out[index--] = '0' + num % 2;
	addl	$48, %edx	#, tmp106
	movb	%dl, 1(%rax)	# tmp106, MEM[(char *)_6]
	movl	%ebx, %edx	# num, num
# eval/problem104/code.c:15:         num /= 2;
	movl	%ecx, %ebx	# tmp102, tmp108
	addl	%edx, %ebx	# num, tmp109
	sarl	%ebx	# num
# eval/problem104/code.c:16:     } while (num > 0);
	cmpl	$1, %edx	#, num
	jg	.L3	#,
# eval/problem104/code.c:19: }
	movq	%r8, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
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
