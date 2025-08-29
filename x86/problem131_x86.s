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
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# eval/problem131/code.c:4: int* func0(int n) {
	movl	%edi, %ebx	# tmp115, n
# eval/problem131/code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	addl	$1, %edi	#, tmp102
	movslq	%edi, %rdi	# tmp102, tmp103
# eval/problem131/code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	salq	$2, %rdi	#, tmp104
	call	malloc@PLT	#
# eval/problem131/code.c:6:     out[0] = 1;
	movl	$1, (%rax)	#, *out_32
# eval/problem131/code.c:7:     if (n == 0) return out;
	testl	%ebx, %ebx	# n
	je	.L1	#,
# eval/problem131/code.c:8:     out[1] = 3;
	movl	$3, 4(%rax)	#, MEM[(int *)out_32 + 4B]
# eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	cmpl	$1, %ebx	#, n
	jle	.L1	#,
	movq	%rax, %rcx	# <retval>, ivtmp.11
# eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	movl	$2, %edx	#, i
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	%esi, %edi	# i, tmp107
# eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	addq	$4, %rcx	#, ivtmp.11
# eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	sarl	%edi	# tmp107
# eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	addl	$1, %edi	#, tmp108
	movl	%edi, 4(%rcx)	# tmp108,
# eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	cmpl	%esi, %ebx	# i, n
	je	.L1	#,
.L6:
# eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	movl	%edx, %edi	# i, _5
	movl	%edx, %esi	# i, i
# eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addl	$1, %edx	#, i
# eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	andl	$1, %edi	#, _5
# eval/problem131/code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	testl	%edi, %edi	# _5
	je	.L10	#,
# eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	%edx, %r8d	# i, tmp113
# eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	movl	(%rcx), %edi	# MEM[(int *)_7], MEM[(int *)_7]
	addl	4(%rcx), %edi	# MEM[(int *)_7 + 4B], tmp109
# eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	addq	$4, %rcx	#, ivtmp.11
# eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	sarl	%r8d	# tmp113
# eval/problem131/code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	leal	1(%rdi,%r8), %edi	#, tmp114
	movl	%edi, 4(%rcx)	# tmp114,
# eval/problem131/code.c:9:     for (int i = 2; i <= n; i++) {
	cmpl	%esi, %ebx	# i, n
	jne	.L6	#,
.L1:
# eval/problem131/code.c:14: }
	popq	%rbx	#
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
