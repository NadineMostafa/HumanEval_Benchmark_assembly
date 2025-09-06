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
# eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	testl	%esi, %esi	# size
	jle	.L2	#,
# eval/problem6/code.c:4: int *func0(const int numbers[], int size, int delimiter, int *out_size) {
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edx, %r12d	# tmp104, delimiter
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# tmp102, numbers
# eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	leal	-1(%rsi,%rsi), %edi	#, iftmp.0_22
# eval/problem6/code.c:4: int *func0(const int numbers[], int size, int delimiter, int *out_size) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%esi, %ebx	# tmp103, size
# eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	movl	%edi, (%rcx)	# iftmp.0_22, *out_size_24(D)
# eval/problem6/code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	movslq	%edi, %rdi	# iftmp.0_22, iftmp.0_22
# eval/problem6/code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	salq	$2, %rdi	#, tmp97
	call	malloc@PLT	#
# eval/problem6/code.c:7:     if (size > 0) out[0] = numbers[0];
	movl	0(%rbp), %edx	# *numbers_28(D), *numbers_28(D)
	movl	%edx, (%rax)	# *numbers_28(D), *out_55
# eval/problem6/code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	cmpl	$1, %ebx	#, size
	je	.L1	#,
	movslq	%ebx, %rsi	# size, _27
# eval/problem6/code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	movl	$1, %edx	#, ivtmp.11
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem6/code.c:10:         out[j++] = numbers[i];
	movl	0(%rbp,%rdx,4), %ecx	# MEM[(const int *)numbers_28(D) + ivtmp.11_56 * 4], MEM[(const int *)numbers_28(D) + ivtmp.11_56 * 4]
# eval/problem6/code.c:9:         out[j++] = delimiter;
	movl	%r12d, -4(%rax,%rdx,8)	# delimiter, MEM[(int *)out_55 + -4B + ivtmp.11_56 * 8]
# eval/problem6/code.c:10:         out[j++] = numbers[i];
	movl	%ecx, (%rax,%rdx,8)	# MEM[(const int *)numbers_28(D) + ivtmp.11_56 * 4], MEM[(int *)out_55 + ivtmp.11_56 * 8]
# eval/problem6/code.c:8:     for (int i = 1, j = 1; i < size; ++i) {
	addq	$1, %rdx	#, ivtmp.11
	cmpq	%rdx, %rsi	# ivtmp.11, _27
	jne	.L4	#,
.L1:
# eval/problem6/code.c:13: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
# eval/problem6/code.c:5:     *out_size = size > 0 ? (size * 2) - 1 : 0;
	movl	$0, (%rcx)	#, *out_size_24(D)
# eval/problem6/code.c:6:     int *out = (int *)malloc(*out_size * sizeof(int));
	xorl	%edi, %edi	#
	jmp	malloc@PLT	#
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
