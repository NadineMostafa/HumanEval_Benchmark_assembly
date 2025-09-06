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
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# eval/problem107/code.c:4: int* func0(int n) {
	movslq	%edi, %rdi	# tmp102,
	movq	%rdi, %rbx	#,
# eval/problem107/code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	salq	$2, %rdi	#, tmp97
	call	malloc@PLT	#
# eval/problem107/code.c:7:     for (int i = 1; i <= n; i++) {
	testl	%ebx, %ebx	# n
	jle	.L1	#,
	leal	1(%rbx), %r8d	#, _10
	movl	$1, %edx	#, ivtmp.8
# eval/problem107/code.c:6:     int sum = 0, prod = 1;
	movl	$1, %esi	#, prod
# eval/problem107/code.c:6:     int sum = 0, prod = 1;
	xorl	%ecx, %ecx	# sum
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem107/code.c:9:         prod *= i;
	imull	%edx, %esi	# ivtmp.8, prod
# eval/problem107/code.c:8:         sum += i;
	addl	%edx, %ecx	# ivtmp.8, sum
# eval/problem107/code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	testb	$1, %dl	#, ivtmp.8
	movl	%esi, %edi	# prod, _35
	cmovne	%ecx, %edi	# sum,, _35
# eval/problem107/code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	movl	%edi, -4(%rax,%rdx,4)	# _35, MEM[(int *)out_21 + -4B + ivtmp.8_17 * 4]
# eval/problem107/code.c:7:     for (int i = 1; i <= n; i++) {
	addq	$1, %rdx	#, ivtmp.8
	cmpq	%rdx, %r8	# ivtmp.8, _10
	jne	.L4	#,
.L1:
# eval/problem107/code.c:14: }
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
