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
# eval/problem101/code.c:4: int* func0(int n) {
	movslq	%edi, %rdi	# tmp102,
	movq	%rdi, %rbx	#,
# eval/problem101/code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	salq	$2, %rdi	#, tmp96
	call	malloc@PLT	#
# eval/problem101/code.c:6:     *out = n;
	movl	%ebx, (%rax)	# n, *out_15
# eval/problem101/code.c:7:     for (int i = 1; i < n; i++)
	cmpl	$1, %ebx	#, n
	jle	.L1	#,
	leal	-1(%rbx), %ecx	#, tmp99
	leaq	4(%rax), %rdx	#, ivtmp.13
	leaq	(%rax,%rcx,4), %rcx	#, _35
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L6:
	addq	$4, %rdx	#, ivtmp.13
.L3:
# eval/problem101/code.c:8:         *(out + i) = *(out + i - 1) + 2;
	addl	$2, %ebx	#, n
# eval/problem101/code.c:8:         *(out + i) = *(out + i - 1) + 2;
	movl	%ebx, (%rdx)	# n, MEM[(int *)_20]
# eval/problem101/code.c:7:     for (int i = 1; i < n; i++)
	cmpq	%rcx, %rdx	# _35, ivtmp.13
	jne	.L6	#,
.L1:
# eval/problem101/code.c:10: }
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
