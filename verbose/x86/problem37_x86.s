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
# eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	testl	%edi, %edi	# n
	jle	.L9	#,
# eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	xorl	%esi, %esi	# i
# eval/problem37/code.c:4:     int count = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem37/code.c:9:                 if (q % 10 == 7) count += 1;
	movl	$3435973837, %r9d	#, tmp151
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem37/code.c:8:             while (q > 0) {
	imull	$-991146299, %esi, %eax	#, i, tmp114
# eval/problem37/code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	cmpl	$330382099, %eax	#, tmp114
	jbe	.L6	#,
.L5:
# eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	addl	$1, %esi	#, i
# eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	cmpl	%esi, %edi	# i, n
	je	.L1	#,
.L8:
# eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	imull	$-1171354717, %esi, %eax	#, i, tmp101
# eval/problem37/code.c:6:         if (i % 11 == 0 || i % 13 == 0) {
	cmpl	$390451572, %eax	#, tmp101
	ja	.L3	#,
.L6:
# eval/problem37/code.c:8:             while (q > 0) {
	movl	%esi, %edx	# i, q
	testl	%esi, %esi	# i
	je	.L5	#,
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem37/code.c:9:                 if (q % 10 == 7) count += 1;
	movl	%edx, %eax	# q, q
	imulq	%r9, %rax	# tmp151, tmp117
	shrq	$35, %rax	#, tmp115
	leal	(%rax,%rax,4), %ecx	#, tmp122
	addl	%ecx, %ecx	# tmp123
	subl	%ecx, %edx	# tmp123, tmp124
# eval/problem37/code.c:9:                 if (q % 10 == 7) count += 1;
	cmpl	$7, %edx	#, tmp124
	sete	%dl	#, tmp149
	movzbl	%dl, %edx	# tmp149, tmp149
	addl	%edx, %r8d	# tmp149, <retval>
# eval/problem37/code.c:10:                 q = q / 10;
	movl	%eax, %edx	# tmp115, q
# eval/problem37/code.c:8:             while (q > 0) {
	testl	%eax, %eax	# q
	jne	.L4	#,
# eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	addl	$1, %esi	#, i
# eval/problem37/code.c:5:     for (int i = 0; i < n; i++)
	cmpl	%esi, %edi	# i, n
	jne	.L8	#,
.L1:
# eval/problem37/code.c:14: }
	movl	%r8d, %eax	# <retval>,
	ret	
.L9:
# eval/problem37/code.c:4:     int count = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem37/code.c:14: }
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
