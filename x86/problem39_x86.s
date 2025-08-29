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
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15	# tmp118, s
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# eval/problem39/code.c:4: void func0(char *s, int encode) {
	movl	%esi, 12(%rsp)	# tmp119, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, 24(%rsp)	# tmp121, D.2842
	xorl	%eax, %eax	# tmp121
# eval/problem39/code.c:5:     int l = strlen(s);
	call	strlen@PLT	#
	movq	%rax, %rbp	# tmp120, tmp102
# eval/problem39/code.c:5:     int l = strlen(s);
	movl	%eax, %r14d	# tmp102, l
# eval/problem39/code.c:6:     int num = (l + 2) / 3;
	addl	$2, %eax	#, tmp104
# eval/problem39/code.c:6:     int num = (l + 2) / 3;
	movslq	%eax, %r13	# tmp104, tmp105
	sarl	$31, %eax	#, tmp108
	imulq	$1431655766, %r13, %r13	#, tmp105, tmp106
	shrq	$32, %r13	#, tmp107
	subl	%eax, %r13d	# tmp108, num
# eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	testl	%ebp, %ebp	# tmp102
	jle	.L1	#,
# eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	xorl	%ebx, %ebx	# i
	leaq	20(%rsp), %r12	#, tmp117
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L3:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:95:   return __builtin___strncpy_chk (__dest, __src, __len,
	movl	$3, %edx	#,
	movq	%r15, %rsi	# ivtmp.11,
	movq	%r12, %rdi	# tmp117,
	call	strncpy@PLT	#
# eval/problem39/code.c:12:         x[len] = '\0';
	movb	$0, 23(%rsp)	#, x[3]
.L8:
# eval/problem39/code.c:15:             if (encode) {
	movl	12(%rsp), %esi	# %sfp,
# eval/problem39/code.c:17:                 x[2] = x[1];
	movzbl	21(%rsp), %ecx	# x[1], pretmp_34
# eval/problem39/code.c:16:                 char temp = x[2];
	movzbl	22(%rsp), %edx	# x[2], pretmp_43
# eval/problem39/code.c:18:                 x[1] = x[0];
	movzbl	20(%rsp), %eax	# x[0], pretmp_39
# eval/problem39/code.c:15:             if (encode) {
	testl	%esi, %esi	#
	je	.L5	#,
# eval/problem39/code.c:17:                 x[2] = x[1];
	movb	%cl, 22(%rsp)	# pretmp_34, x[2]
# eval/problem39/code.c:18:                 x[1] = x[0];
	movb	%al, 21(%rsp)	# pretmp_39, x[1]
# eval/problem39/code.c:19:                 x[0] = temp;
	movb	%dl, 20(%rsp)	# pretmp_43, x[0]
	movl	$3, %edx	#, _6
	.p2align 4,,10
	.p2align 3
.L4:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:95:   return __builtin___strncpy_chk (__dest, __src, __len,
	movq	%r15, %rdi	# ivtmp.11,
	movq	%r12, %rsi	# tmp117,
# eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	addq	$3, %r15	#, ivtmp.11
	subl	$3, %ebp	#, ivtmp.12
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:95:   return __builtin___strncpy_chk (__dest, __src, __len,
	call	strncpy@PLT	#
# eval/problem39/code.c:9:     for (int i = 0; i < num; ++i) {
	cmpl	%r13d, %ebx	# num, i
	jge	.L1	#,
.L6:
# eval/problem39/code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	addl	$1, %ebx	#, i
# eval/problem39/code.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	leal	(%rbx,%rbx,2), %eax	#, tmp111
	cmpl	%r14d, %eax	# l, tmp111
	jle	.L3	#,
# eval/problem39/code.c:11:         strncpy(x, s + i * 3, len);
	movslq	%ebp, %rdx	# ivtmp.12, _6
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:95:   return __builtin___strncpy_chk (__dest, __src, __len,
	movl	$4, %ecx	#,
	movq	%r15, %rsi	# ivtmp.11,
	movq	%r12, %rdi	# tmp117,
	movq	%rdx, (%rsp)	# _6, %sfp
	call	__strncpy_chk@PLT	#
# eval/problem39/code.c:12:         x[len] = '\0';
	movq	(%rsp), %rdx	# %sfp, _6
	movb	$0, 20(%rsp,%rdx)	#, x[iftmp.0_23]
# eval/problem39/code.c:14:         if (len == 3) {
	cmpl	$3, %ebp	#, ivtmp.12
	jne	.L4	#,
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem39/code.c:23:                 x[1] = x[2];
	movb	%dl, 21(%rsp)	# pretmp_43, x[1]
# eval/problem39/code.c:24:                 x[2] = temp;
	movl	$3, %edx	#, _6
# eval/problem39/code.c:22:                 x[0] = x[1];
	movb	%cl, 20(%rsp)	# pretmp_34, x[0]
# eval/problem39/code.c:24:                 x[2] = temp;
	movb	%al, 22(%rsp)	# pretmp_39, x[2]
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L1:
# eval/problem39/code.c:29: }
	movq	24(%rsp), %rax	# D.2842, tmp122
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	jne	.L13	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L13:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE35:
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
