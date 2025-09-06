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
# eval/problem10/code.c:5:     if (size <= 0) {
	testl	%esi, %esi	# size
	jle	.L9	#,
# eval/problem10/code.c:4: int *func0(int *numbers, int size) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	%esi, %ebp	# tmp101, size
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp100, numbers
# eval/problem10/code.c:9:     int *out = malloc(size * sizeof(int));
	movslq	%esi, %rdi	# size, size
	salq	$2, %rdi	#, tmp95
# eval/problem10/code.c:4: int *func0(int *numbers, int size) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem10/code.c:9:     int *out = malloc(size * sizeof(int));
	call	malloc@PLT	#
# eval/problem10/code.c:10:     if (!out) {
	testq	%rax, %rax	# <retval>
	je	.L2	#,
# eval/problem10/code.c:14:     int max = numbers[0];
	movl	(%rbx), %ecx	# *numbers_18(D), max
	leal	-1(%rbp), %edi	#, tmp98
	xorl	%edx, %edx	# ivtmp.18
	salq	$2, %rdi	#, _6
	movl	%ecx, %esi	# max, prephitmp_24
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L14:
# eval/problem10/code.c:16:         if (numbers[i] > max) max = numbers[i];
	movl	4(%rbx,%rdx), %esi	# MEM[(int *)numbers_18(D) + 4B + ivtmp.18_5 * 1], prephitmp_24
	addq	$4, %rdx	#, ivtmp.18
.L4:
	cmpl	%esi, %ecx	# prephitmp_24, max
	cmovl	%esi, %ecx	# max,, prephitmp_24, max
# eval/problem10/code.c:17:         out[i] = max;
	movl	%ecx, (%rax,%rdx)	# max, MEM[(int *)out_17 + ivtmp.18_5 * 1]
# eval/problem10/code.c:15:     for (int i = 0; i < size; i++) {
	cmpq	%rdi, %rdx	# _6, ivtmp.18
	jne	.L14	#,
# eval/problem10/code.c:20: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L2:
	.cfi_restore_state
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
# eval/problem10/code.c:6:         return NULL;
	xorl	%eax, %eax	# <retval>
# eval/problem10/code.c:20: }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore 3
	.cfi_restore 6
# eval/problem10/code.c:6:         return NULL;
	xorl	%eax, %eax	# <retval>
# eval/problem10/code.c:20: }
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
