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
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r10	# tmp163, grid
	movl	%esi, %r11d	# tmp164, N
	movq	%rcx, %r12	# tmp166, returnSize
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# eval/problem130/code.c:4: int *func0(int **grid, int N, int k, int *returnSize) {
	movl	%edx, %ebx	# tmp165, k
# eval/problem130/code.c:6:     for (i = 0; i < N; i++)
	testl	%esi, %esi	# N
	jle	.L2	#,
	movslq	%esi, %rdx	# N, _109
	xorl	%edi, %edi	# ivtmp.19
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem130/code.c:8:             if (grid[i][j] == 1) {
	movq	(%r10,%rdi,8), %rcx	# MEM[(int * *)grid_83(D) + ivtmp.19_60 * 8], _4
	movl	%edi, %esi	# ivtmp.19, i
	xorl	%eax, %eax	# ivtmp.14
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem130/code.c:8:             if (grid[i][j] == 1) {
	cmpl	$1, (%rcx,%rax,4)	#, MEM[(int *)_4 + ivtmp.14_64 * 4]
	cmove	%eax, %r8d	# y,, ivtmp.14, y
	cmove	%esi, %r9d	# x,, i, x
# eval/problem130/code.c:7:         for (j = 0; j < N; j++)
	addq	$1, %rax	#, ivtmp.14
	cmpq	%rdx, %rax	# _109, ivtmp.14
	jne	.L5	#,
# eval/problem130/code.c:6:     for (i = 0; i < N; i++)
	addq	$1, %rdi	#, ivtmp.19
	cmpq	%rdx, %rdi	# _109, ivtmp.19
	jne	.L3	#,
.L2:
# eval/problem130/code.c:12:     min = N * N;
	movl	%r11d, %ebp	# N, min
	imull	%r11d, %ebp	# N, min
# eval/problem130/code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	testl	%r9d, %r9d	# x
	je	.L6	#,
# eval/problem130/code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movslq	%r9d, %rdx	# x, x
# eval/problem130/code.c:13:     if (x > 0 && grid[x - 1][y] < min) min = grid[x - 1][y];
	movslq	%r8d, %rax	# y, y
	movq	-8(%r10,%rdx,8), %rdx	# *_12, *_12
	movl	(%rdx,%rax,4), %eax	# *_16, tmp171
	cmpl	%eax, %ebp	# tmp171, min
	cmovg	%eax, %ebp	# min,, tmp171, min
.L6:
# eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	subl	$1, %r11d	#, _26
# eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	cmpl	%r9d, %r11d	# x, _26
	jle	.L7	#,
# eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	leal	1(%r9), %edx	#, tmp144
# eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movslq	%r8d, %rax	# y, y
# eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movslq	%edx, %rdx	# tmp144, tmp145
# eval/problem130/code.c:14:     if (x < N - 1 && grid[x + 1][y] < min) min = grid[x + 1][y];
	movq	(%r10,%rdx,8), %rdx	# *_30, *_30
	movl	(%rdx,%rax,4), %eax	# *_34, tmp170
	cmpl	%eax, %ebp	# tmp170, min
	cmovg	%eax, %ebp	# min,, tmp170, min
.L7:
# eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	testl	%r8d, %r8d	# y
	je	.L8	#,
# eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movslq	%r9d, %rdx	# x, x
# eval/problem130/code.c:15:     if (y > 0 && grid[x][y - 1] < min) min = grid[x][y - 1];
	movslq	%r8d, %rax	# y, y
	movq	(%r10,%rdx,8), %rdx	# *_38, *_38
	movl	-4(%rdx,%rax,4), %eax	# *_43, tmp169
	cmpl	%eax, %ebp	# tmp169, min
	cmovg	%eax, %ebp	# min,, tmp169, min
.L8:
# eval/problem130/code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	cmpl	%r8d, %r11d	# y, _26
	jle	.L9	#,
# eval/problem130/code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	movslq	%r9d, %r9	# x, x
# eval/problem130/code.c:16:     if (y < N - 1 && grid[x][y + 1] < min) min = grid[x][y + 1];
	leal	1(%r8), %eax	#, tmp152
	movq	(%r10,%r9,8), %rdx	# *_47, *_47
	cltq
	movl	(%rdx,%rax,4), %eax	# *_52, tmp168
	cmpl	%eax, %ebp	# tmp168, min
	cmovg	%eax, %ebp	# min,, tmp168, min
.L9:
# eval/problem130/code.c:18:     *returnSize = k;
	movl	%ebx, (%r12)	# k, *returnSize_85(D)
# eval/problem130/code.c:19:     int *out = (int *)malloc(k * sizeof(int));
	movslq	%ebx, %r12	# k, k
	leaq	0(,%r12,4), %rdi	#, tmp156
	call	malloc@PLT	#
# eval/problem130/code.c:20:     for (i = 0; i < k; i++)
	xorl	%edx, %edx	# ivtmp.8
# eval/problem130/code.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	$1, %esi	#, tmp162
# eval/problem130/code.c:20:     for (i = 0; i < k; i++)
	testl	%ebx, %ebx	# k
	jle	.L1	#,
	.p2align 4,,10
	.p2align 3
.L12:
# eval/problem130/code.c:21:         if (i % 2 == 0) out[i] = 1;
	testb	$1, %dl	#, ivtmp.8
	movl	%esi, %ecx	# tmp162, _111
	cmovne	%ebp, %ecx	# min,, _111
# eval/problem130/code.c:21:         if (i % 2 == 0) out[i] = 1;
	movl	%ecx, (%rax,%rdx,4)	# _111, MEM[(int *)out_89 + ivtmp.8_91 * 4]
# eval/problem130/code.c:20:     for (i = 0; i < k; i++)
	addq	$1, %rdx	#, ivtmp.8
	cmpq	%rdx, %r12	# ivtmp.8, k
	jne	.L12	#,
.L1:
# eval/problem130/code.c:24: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
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
