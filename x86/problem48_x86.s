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
# eval/problem48/code.c:5: float func0(float *l, int size) {
	movq	%rdi, %r11	# tmp143, l
	movl	%esi, %edi	# tmp144, size
# eval/problem48/code.c:6:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L2	#,
	leal	-1(%rsi), %r10d	#, _66
	movl	%esi, %r8d	# size, _68
	movl	$1, %esi	#, ivtmp.15
	leaq	4(%r11), %rdx	#, ivtmp.17
	leaq	8(%r11), %r9	#, tmp142
# eval/problem48/code.c:7:         for (int j = i + 1; j < size; j++) {
	cmpq	%r8, %rsi	# _68, ivtmp.15
	je	.L2	#,
	.p2align 4,,10
	.p2align 3
.L12:
	movl	%r10d, %eax	# _66, tmp120
	subl	%esi, %eax	# ivtmp.15, tmp120
	leaq	-1(%rsi,%rax), %rax	#, tmp122
	leaq	(%r9,%rax,4), %rcx	#, _58
	movq	%rdx, %rax	# ivtmp.17, ivtmp.9
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem48/code.c:8:             if (l[i] > l[j]) {
	movss	-4(%rdx), %xmm0	# MEM[(float *)_70 + -4B], _4
# eval/problem48/code.c:8:             if (l[i] > l[j]) {
	movss	(%rax), %xmm1	# MEM[(float *)_39], _8
# eval/problem48/code.c:8:             if (l[i] > l[j]) {
	comiss	%xmm1, %xmm0	# _8, _4
	jbe	.L3	#,
# eval/problem48/code.c:10:                 l[i] = l[j];
	movss	%xmm1, -4(%rdx)	# _8, MEM[(float *)_70 + -4B]
# eval/problem48/code.c:11:                 l[j] = temp;
	movss	%xmm0, (%rax)	# _4, MEM[(float *)_39]
.L3:
# eval/problem48/code.c:7:         for (int j = i + 1; j < size; j++) {
	addq	$4, %rax	#, ivtmp.9
	cmpq	%rcx, %rax	# _58, ivtmp.9
	jne	.L5	#,
	addq	$1, %rsi	#, ivtmp.15
	addq	$4, %rdx	#, ivtmp.17
# eval/problem48/code.c:7:         for (int j = i + 1; j < size; j++) {
	cmpq	%r8, %rsi	# _68, ivtmp.15
	jne	.L12	#,
.L2:
# eval/problem48/code.c:15:     if (size % 2 == 1) return l[size / 2];
	movl	%edi, %edx	# size, tmp127
	shrl	$31, %edx	#, tmp127
	leal	(%rdi,%rdx), %eax	#, tmp128
	andl	$1, %eax	#, tmp129
	subl	%edx, %eax	# tmp127, tmp130
# eval/problem48/code.c:15:     if (size % 2 == 1) return l[size / 2];
	cmpl	$1, %eax	#, tmp130
	je	.L13	#,
# eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	movl	%edi, %eax	# size, tmp134
	shrl	$31, %eax	#, tmp134
	addl	%edi, %eax	# size, tmp135
	sarl	%eax	# tmp136
	cltq
# eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	movss	-4(%r11,%rax,4), %xmm0	# *_20, *_20
	addss	(%r11,%rax,4), %xmm0	# *_17, tmp138
# eval/problem48/code.c:16:     return 0.5 * (l[size / 2] + l[size / 2 - 1]);
	mulss	.LC0(%rip), %xmm0	#, <retval>
# eval/problem48/code.c:17: }
	ret	
.L13:
# eval/problem48/code.c:15:     if (size % 2 == 1) return l[size / 2];
	sarl	%edi	# tmp131
	movslq	%edi, %rax	# tmp131, tmp132
# eval/problem48/code.c:15:     if (size % 2 == 1) return l[size / 2];
	movss	(%r11,%rax,4), %xmm0	# *_13, <retval>
	ret	
	.cfi_endproc
.LFE39:
	.size	func0, .-func0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1056964608
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
