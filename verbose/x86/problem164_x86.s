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
# eval/problem164/code.c:5:     *size = 0;
	movl	$0, (%rcx)	#, *size_14(D)
# eval/problem164/code.c:7:     if (b < a) {
	cmpl	%edi, %esi	# a, b
	jge	.L5	#,
	movl	%edi, %eax	# a, a
	movl	%esi, %edi	# b, a
	movl	%eax, %esi	# a, b
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem164/code.c:14:         if (i < 10 && i % 2 == 0) {
	cmpl	$9, %edi	#, a
	jg	.L4	#,
# eval/problem164/code.c:14:         if (i < 10 && i % 2 == 0) {
	testb	$1, %dil	#, a
	jne	.L4	#,
# eval/problem164/code.c:15:             out[(*size)++] = i;
	movslq	(%rcx), %rax	# *size_14(D),
# eval/problem164/code.c:15:             out[(*size)++] = i;
	leal	1(%rax), %r8d	#, tmp95
	movl	%r8d, (%rcx)	# tmp95, *size_14(D)
# eval/problem164/code.c:15:             out[(*size)++] = i;
	movl	%edi, (%rdx,%rax,4)	# a, *_7
.L4:
# eval/problem164/code.c:13:     for (int i = a; i <= b; i++) {
	addl	$1, %edi	#, a
# eval/problem164/code.c:13:     for (int i = a; i <= b; i++) {
	cmpl	%edi, %esi	# a, b
	jge	.L5	#,
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
