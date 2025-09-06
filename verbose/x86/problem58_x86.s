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
# eval/problem58/code.c:8:     for (int i = 1; i < size; i++) {
	cmpl	$1, %esi	#, size
	jle	.L8	#,
	leal	-2(%rsi), %eax	#, tmp99
# eval/problem58/code.c:6:     incr = decr = 0;
	xorl	%edx, %edx	# decr
# eval/problem58/code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movl	$1, %ecx	#, tmp105
	leaq	4(%rdi,%rax,4), %rsi	#, _10
# eval/problem58/code.c:6:     incr = decr = 0;
	xorl	%eax, %eax	# incr
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem58/code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movss	4(%rdi), %xmm0	# MEM[(float *)_5 + 4B], _4
# eval/problem58/code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	movss	(%rdi), %xmm1	# MEM[(float *)_5], _9
# eval/problem58/code.c:9:         if (l[i] > l[i - 1]) incr = 1;
	ucomiss	%xmm1, %xmm0	# _9, _4
	cmova	%ecx, %eax	# incr,, tmp105, incr
# eval/problem58/code.c:10:         if (l[i] < l[i - 1]) decr = 1;
	ucomiss	%xmm0, %xmm1	# _4, _9
	cmova	%ecx, %edx	# decr,, tmp105, decr
# eval/problem58/code.c:8:     for (int i = 1; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.8
	cmpq	%rdi, %rsi	# ivtmp.8, _10
	jne	.L7	#,
# eval/problem58/code.c:12:     if (incr + decr == 2) return false;
	addl	%edx, %eax	# decr, tmp102
# eval/problem58/code.c:12:     if (incr + decr == 2) return false;
	cmpl	$2, %eax	#, tmp102
	setne	%al	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem58/code.c:8:     for (int i = 1; i < size; i++) {
	movl	$1, %eax	#, <retval>
# eval/problem58/code.c:14: }
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
