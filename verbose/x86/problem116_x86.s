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
# eval/problem116/code.c:2: int func0(int **grid, int rows, int cols, int capacity) {
	movl	%edx, %r10d	# tmp130, cols
	movl	%ecx, %r11d	# tmp131, capacity
# eval/problem116/code.c:4:     for (int i = 0; i < rows; i++) {
	testl	%esi, %esi	# rows
	jle	.L7	#,
	leal	-1(%rsi), %eax	#, tmp110
# eval/problem116/code.c:3:     int out = 0;
	xorl	%r8d, %r8d	# <retval>
	leaq	8(%rdi,%rax,8), %rsi	#, _49
	leal	-1(%rdx), %eax	#, _17
	leaq	4(,%rax,4), %r9	#, tmp126
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem116/code.c:6:         for (int j = 0; j < cols; j++)
	testl	%r10d, %r10d	# cols
	jle	.L5	#,
	movq	(%rdi), %rax	# MEM[(int * *)_50], ivtmp.8
# eval/problem116/code.c:5:         int sum = 0;
	xorl	%edx, %edx	# sum
	leaq	(%r9,%rax), %rcx	#, _39
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem116/code.c:7:             sum += grid[i][j];
	addl	(%rax), %edx	# MEM[(int *)_28], sum
# eval/problem116/code.c:6:         for (int j = 0; j < cols; j++)
	addq	$4, %rax	#, ivtmp.8
	cmpq	%rcx, %rax	# _39, ivtmp.8
	jne	.L4	#,
# eval/problem116/code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	testl	%edx, %edx	# sum
	jle	.L5	#,
# eval/problem116/code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	leal	-1(%rdx,%r11), %eax	#, tmp120
# eval/problem116/code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	cltd
	idivl	%r11d	# capacity
# eval/problem116/code.c:8:         if (sum > 0) out += (sum + capacity - 1) / capacity;
	addl	%eax, %r8d	# tmp122, <retval>
.L5:
# eval/problem116/code.c:4:     for (int i = 0; i < rows; i++) {
	addq	$8, %rdi	#, ivtmp.15
	cmpq	%rsi, %rdi	# _49, ivtmp.15
	jne	.L3	#,
# eval/problem116/code.c:11: }
	movl	%r8d, %eax	# <retval>,
	ret	
.L7:
# eval/problem116/code.c:3:     int out = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem116/code.c:11: }
	movl	%r8d, %eax	# <retval>,
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
