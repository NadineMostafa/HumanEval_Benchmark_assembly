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
	movl	%esi, %r12d	# tmp116, size
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp115, lst
# eval/problem70/code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	leal	1(%rsi), %edi	#, tmp102
# eval/problem70/code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	movl	$4, %esi	#,
	movslq	%edi, %rdi	# tmp102, tmp103
# eval/problem70/code.c:4: int func0(int *lst, int size) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem70/code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	call	calloc@PLT	#
	movq	%rax, %rdi	# tmp117, freq
# eval/problem70/code.c:8:     for (int i = 0; i < size; i++) {
	testl	%r12d, %r12d	# size
	jle	.L5	#,
	leal	-1(%r12), %eax	#, tmp106
	movq	%rbx, %rsi	# lst, ivtmp.7
# eval/problem70/code.c:6:     int max = -1;
	movl	$-1, %r12d	#, <retval>
	leaq	4(%rbx,%rax,4), %rax	#, _15
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem70/code.c:9:         freq[lst[i]]++;
	movslq	(%rsi), %rdx	# MEM[(int *)_35],
# eval/problem70/code.c:9:         freq[lst[i]]++;
	leaq	(%rdi,%rdx,4), %r8	#, _9
# eval/problem70/code.c:9:         freq[lst[i]]++;
	movq	%rdx, %rcx	#,
# eval/problem70/code.c:9:         freq[lst[i]]++;
	movl	(%r8), %ebx	# *_9, tmp119
	cmpl	%ecx, %r12d	# _6, <retval>
	leal	1(%rbx), %edx	#, _11
	movl	%edx, (%r8)	# _11, *_9
	movl	%ecx, %r8d	# _6, tmp113
	cmovge	%r12d, %r8d	# <retval>,, tmp113
	cmpl	%edx, %ecx	# _11, _6
	cmovle	%r8d, %r12d	# tmp113,, <retval>
# eval/problem70/code.c:8:     for (int i = 0; i < size; i++) {
	addq	$4, %rsi	#, ivtmp.7
	cmpq	%rsi, %rax	# ivtmp.7, _15
	jne	.L4	#,
# eval/problem70/code.c:15:     free(freq);
	call	free@PLT	#
# eval/problem70/code.c:17: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%r12d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
# eval/problem70/code.c:15:     free(freq);
	call	free@PLT	#
# eval/problem70/code.c:6:     int max = -1;
	movl	$-1, %r12d	#, <retval>
# eval/problem70/code.c:17: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	movl	%r12d, %eax	# <retval>,
	popq	%rbx	#
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
