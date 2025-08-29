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
# eval/problem40/code.c:6:     while (count < n) {
	testl	%edi, %edi	# n
	jle	.L8	#,
# eval/problem40/code.c:5:     int count = 0;
	xorl	%r9d, %r9d	# count
# eval/problem40/code.c:4:     int f1 = 1, f2 = 2, m;
	movl	$2, %esi	#, f1
# eval/problem40/code.c:4:     int f1 = 1, f2 = 2, m;
	movl	$1, %eax	#, f1
	.p2align 4,,10
	.p2align 3
.L7:
	movl	%esi, %r8d	# f1, <retval>
# eval/problem40/code.c:7:         f1 = f1 + f2;
	addl	%eax, %esi	# f1, f1
# eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	cmpl	$3, %r8d	#, <retval>
	jle	.L3	#,
# eval/problem40/code.c:11:             if (f1 % w == 0) {
	testb	$1, %r8b	#, <retval>
	je	.L4	#,
# eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	movl	$2, %ecx	#, w
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem40/code.c:11:             if (f1 % w == 0) {
	movl	%r8d, %eax	# <retval>, tmp95
	cltd
	idivl	%ecx	# w
# eval/problem40/code.c:11:             if (f1 % w == 0) {
	testl	%edx, %edx	# tmp94
	je	.L4	#,
.L5:
# eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	addl	$1, %ecx	#, w
# eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	movl	%ecx, %eax	# w, tmp96
	imull	%ecx, %eax	# w, tmp96
# eval/problem40/code.c:10:         for (int w = 2; w * w <= f1; w++) {
	cmpl	%r8d, %eax	# <retval>, tmp96
	jle	.L6	#,
.L3:
# eval/problem40/code.c:15:         if (isprime) count += 1;
	addl	$1, %r9d	#, count
# eval/problem40/code.c:16:         if (count == n) return f1;
	cmpl	%r9d, %edi	# count, n
	je	.L1	#,
.L4:
	movl	%r8d, %eax	# <retval>, f1
# eval/problem40/code.c:6:     while (count < n) {
	cmpl	%r9d, %edi	# count, n
	jg	.L7	#,
.L8:
# eval/problem40/code.c:18:     return 0;
	xorl	%r8d, %r8d	# <retval>
.L1:
# eval/problem40/code.c:19: }
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
