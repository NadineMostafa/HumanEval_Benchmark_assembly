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
# eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	movl	%esi, %r8d	# size, tmp104
# eval/problem73/code.c:4: bool func0(int q[], int size, int w) {
	movq	%rdi, %r9	# tmp123, q
	movl	%edx, %r10d	# tmp125, w
# eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	shrl	$31, %r8d	#, tmp104
	addl	%esi, %r8d	# size, tmp105
	sarl	%r8d	# tmp106
# eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	cmpl	$1, %esi	#, size
	jle	.L6	#,
# eval/problem73/code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	leal	-1(%rsi), %eax	#, tmp107
	cltq
	leaq	(%rdi,%rax,4), %rdx	#, ivtmp.8
	xorl	%eax, %eax	# ivtmp.5
# eval/problem73/code.c:5:     int sum = 0;
	xorl	%edi, %edi	# sum
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	addq	$1, %rax	#, ivtmp.5
# eval/problem73/code.c:8:         sum += q[i] + q[size - 1 - i];
	leal	(%rdi,%rcx,2), %edi	#, sum
# eval/problem73/code.c:6:     for (int i = 0; i < size / 2; i++) {
	subq	$4, %rdx	#, ivtmp.8
	cmpl	%eax, %r8d	# ivtmp.5, tmp106
	jle	.L2	#,
.L4:
# eval/problem73/code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	movl	(%r9,%rax,4), %ecx	# MEM[(int *)q_25(D) + ivtmp.5_40 * 4], _4
# eval/problem73/code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	cmpl	(%rdx), %ecx	# MEM[(int *)_11], _4
	je	.L10	#,
# eval/problem73/code.c:7:         if (q[i] != q[size - 1 - i]) return false;
	xorl	%eax, %eax	# <retval>
# eval/problem73/code.c:12: }
	ret	
.L6:
# eval/problem73/code.c:5:     int sum = 0;
	xorl	%edi, %edi	# sum
	.p2align 4,,10
	.p2align 3
.L2:
# eval/problem73/code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	movl	%esi, %eax	# size, tmp113
	shrl	$31, %eax	#, tmp113
	addl	%eax, %esi	# tmp113, tmp114
	andl	$1, %esi	#, tmp115
	subl	%eax, %esi	# tmp113, tmp116
# eval/problem73/code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	cmpl	$1, %esi	#, tmp116
	je	.L11	#,
# eval/problem73/code.c:11:     return sum <= w;
	cmpl	%r10d, %edi	# w, sum
	setle	%al	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L11:
# eval/problem73/code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	movslq	%r8d, %r8	# tmp106, _34
# eval/problem73/code.c:10:     if (size % 2 == 1) sum += q[size / 2];
	addl	(%r9,%r8,4), %edi	# *_18, sum
# eval/problem73/code.c:11:     return sum <= w;
	cmpl	%r10d, %edi	# w, sum
	setle	%al	#, <retval>
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
