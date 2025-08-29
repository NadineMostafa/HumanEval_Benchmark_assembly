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
# eval/problem102/code.c:3: int func0(int x, int y) {
	movl	%esi, %eax	# tmp99, y
# eval/problem102/code.c:4:     if (y < x) return -1;
	cmpl	%edi, %esi	# x, y
	jl	.L4	#,
# eval/problem102/code.c:5:     if (y == x && y % 2 == 1) return -1;
	movl	%esi, %ecx	# y, tmp87
	shrl	$31, %ecx	#, tmp87
	leal	(%rsi,%rcx), %edx	#, tmp88
	andl	$1, %edx	#, tmp89
	subl	%ecx, %edx	# tmp87, tmp90
# eval/problem102/code.c:5:     if (y == x && y % 2 == 1) return -1;
	cmpl	%edi, %esi	# x, y
	je	.L6	#,
# eval/problem102/code.c:6:     if (y % 2 == 1) return y - 1;
	cmpl	$1, %edx	#, tmp90
	sete	%dl	#, tmp96
	movzbl	%dl, %edx	# tmp96, tmp96
	subl	%edx, %eax	# tmp96, y
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem102/code.c:5:     if (y == x && y % 2 == 1) return -1;
	cmpl	$1, %edx	#, tmp90
	movl	$-1, %edx	#, tmp95
	cmove	%edx, %eax	# y,, tmp95, y
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem102/code.c:5:     if (y == x && y % 2 == 1) return -1;
	movl	$-1, %eax	#, y
# eval/problem102/code.c:8: }
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
