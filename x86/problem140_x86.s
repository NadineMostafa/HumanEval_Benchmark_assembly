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
# eval/problem140/code.c:5:     for (int i = 1; i <= n; i++) {
	testl	%edi, %edi	# n
	jle	.L4	#,
	leal	1(%rdi), %ecx	#, _17
	movl	$1, %eax	#, ivtmp.8
# eval/problem140/code.c:4:     long long fact = 1, bfact = 1;
	movl	$1, %r8d	#, <retval>
# eval/problem140/code.c:4:     long long fact = 1, bfact = 1;
	movl	$1, %edx	#, fact
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem140/code.c:6:         fact = fact * i;
	imulq	%rax, %rdx	# ivtmp.8, fact
# eval/problem140/code.c:5:     for (int i = 1; i <= n; i++) {
	addq	$1, %rax	#, ivtmp.8
# eval/problem140/code.c:7:         bfact = bfact * fact;
	imulq	%rdx, %r8	# fact, <retval>
# eval/problem140/code.c:5:     for (int i = 1; i <= n; i++) {
	cmpq	%rcx, %rax	# _17, ivtmp.8
	jne	.L3	#,
# eval/problem140/code.c:10: }
	movq	%r8, %rax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem140/code.c:4:     long long fact = 1, bfact = 1;
	movl	$1, %r8d	#, <retval>
# eval/problem140/code.c:10: }
	movq	%r8, %rax	# <retval>,
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
