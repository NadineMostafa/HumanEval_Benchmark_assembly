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
# eval/problem63/code.c:4:     for (int i = 1; i < xs_size; i++) {
	cmpl	$1, %esi	#, xs_size
	jle	.L1	#,
	movslq	%esi, %rsi	# xs_size, _17
	movl	$1, %eax	#, ivtmp.7
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem63/code.c:5:         out[i - 1] = i * xs[i];
	pxor	%xmm0, %xmm0	# tmp91
	cvtsi2ssl	%eax, %xmm0	# ivtmp.7, tmp91
	mulss	(%rdi,%rax,4), %xmm0	# MEM[(const float *)xs_13(D) + ivtmp.7_21 * 4], tmp92
# eval/problem63/code.c:5:         out[i - 1] = i * xs[i];
	movss	%xmm0, -4(%rdx,%rax,4)	# tmp92, MEM[(float *)out_14(D) + -4B + ivtmp.7_21 * 4]
# eval/problem63/code.c:4:     for (int i = 1; i < xs_size; i++) {
	addq	$1, %rax	#, ivtmp.7
	cmpq	%rax, %rsi	# ivtmp.7, _17
	jne	.L3	#,
.L1:
# eval/problem63/code.c:7: }
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
