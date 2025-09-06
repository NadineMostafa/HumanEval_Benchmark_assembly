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
# eval/problem151/code.c:5:     if (n < 2) isp = 0;
	xorl	%r8d, %r8d	# isp
	cmpl	$1, %edi	#, n
# eval/problem151/code.c:3: int func0(int n, int x, int y) {
	movl	%edx, %r10d	# tmp100, y
# eval/problem151/code.c:5:     if (n < 2) isp = 0;
	setg	%r8b	#, isp
# eval/problem151/code.c:6:     for (int i = 2; i * i <= n; i++) {
	cmpl	$3, %edi	#, n
	jle	.L2	#,
	movl	$2, %ecx	#, i
# eval/problem151/code.c:7:         if (n % i == 0) isp = 0;
	xorl	%r9d, %r9d	# tmp97
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem151/code.c:7:         if (n % i == 0) isp = 0;
	movl	%edi, %eax	# n, tmp94
	cltd
	idivl	%ecx	# i
# eval/problem151/code.c:7:         if (n % i == 0) isp = 0;
	testl	%edx, %edx	# tmp93
	cmove	%r9d, %r8d	# isp,, tmp97, isp
# eval/problem151/code.c:6:     for (int i = 2; i * i <= n; i++) {
	addl	$1, %ecx	#, i
# eval/problem151/code.c:6:     for (int i = 2; i * i <= n; i++) {
	movl	%ecx, %eax	# i, tmp95
	imull	%ecx, %eax	# i, tmp95
# eval/problem151/code.c:6:     for (int i = 2; i * i <= n; i++) {
	cmpl	%edi, %eax	# n, tmp95
	jle	.L4	#,
.L2:
# eval/problem151/code.c:9:     if (isp) return x;
	testl	%r8d, %r8d	# isp
	cmovne	%esi, %r10d	# y,, x, y
# eval/problem151/code.c:11: }
	movl	%r10d, %eax	# y,
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
