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
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem152/code.c:6:     for (int i = 0; i < lst_size; i++) {
	testl	%esi, %esi	# lst_size
	jle	.L7	#,
	leal	-1(%rsi), %eax	#, tmp104
	movq	%rdi, %rbx	# lst, ivtmp.7
# eval/problem152/code.c:5:     long long sum = 0;
	xorl	%r12d, %r12d	# <retval>
	leaq	4(%rdi,%rax,4), %rbp	#, _15
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movss	(%rbx), %xmm2	# MEM[(float *)_31], _4
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movaps	%xmm2, %xmm0	# _4,
	movss	%xmm2, 12(%rsp)	# _4, %sfp
	call	roundf@PLT	#
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movss	12(%rsp), %xmm2	# %sfp, _4
	pxor	%xmm1, %xmm1	# tmp107
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	pxor	%xmm3, %xmm3	# tmp108
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movsd	.LC1(%rip), %xmm4	#, tmp134
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	cvtss2sd	%xmm0, %xmm3	# _17, tmp108
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	cvtss2sd	%xmm2, %xmm1	# _4, tmp107
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	subsd	%xmm3, %xmm1	# tmp108, tmp109
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	andpd	.LC0(%rip), %xmm1	#, tmp110
# eval/problem152/code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	comisd	%xmm1, %xmm4	# tmp110, tmp134
	jbe	.L3	#,
# eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	pxor	%xmm5, %xmm5	# tmp135
	comiss	%xmm5, %xmm2	# tmp135, _4
	jbe	.L3	#,
# eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cvttss2sil	%xmm0, %edx	# _17, _10
# eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	movl	%edx, %ecx	# _10, tmp116
	shrl	$31, %ecx	#, tmp116
	leal	(%rdx,%rcx), %eax	#, tmp117
	andl	$1, %eax	#, tmp118
	subl	%ecx, %eax	# tmp116, tmp119
# eval/problem152/code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cmpl	$1, %eax	#, tmp119
	jne	.L3	#,
# eval/problem152/code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	imull	%edx, %edx	# _10, tmp120
	movslq	%edx, %rdx	# tmp120, tmp121
# eval/problem152/code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	addq	%rdx, %r12	# tmp121, <retval>
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem152/code.c:6:     for (int i = 0; i < lst_size; i++) {
	addq	$4, %rbx	#, ivtmp.7
	cmpq	%rbx, %rbp	# ivtmp.7, _15
	jne	.L6	#,
# eval/problem152/code.c:14: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	movq	%r12, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem152/code.c:5:     long long sum = 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem152/code.c:14: }
	movq	%r12, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE23:
	.size	func0, .-func0
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
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
