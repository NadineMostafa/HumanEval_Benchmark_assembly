	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"the number of odd elements %d in the string %d of the %d input."
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB51:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
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
	movslq	%esi, %rbp	# tmp109,
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp108, lst
# eval/problem114/code.c:6:     char **out = malloc(size * sizeof(char *));
	leaq	0(,%rbp,8), %rdi	#, tmp100
# eval/problem114/code.c:5: char **func0(char *lst[], int size) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem114/code.c:6:     char **out = malloc(size * sizeof(char *));
	call	malloc@PLT	#
	movq	%rax, %r12	# tmp110, <retval>
# eval/problem114/code.c:7:     for (int i = 0; i < size; i++) {
	testl	%ebp, %ebp	# size
	jle	.L1	#,
	xorl	%r14d, %r14d	# ivtmp.13
	leaq	.LC0(%rip), %r13	#, tmp107
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movq	(%rbx,%r14,8), %rdx	# MEM[(char * *)lst_28(D) + ivtmp.13_21 * 8], _38
# eval/problem114/code.c:8:         int sum = 0;
	xorl	%r15d, %r15d	# sum
# eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movzbl	(%rdx), %eax	# *_38, _12
	addq	$1, %rdx	#, ivtmp.9
# eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	testb	%al, %al	# _12
	je	.L7	#,
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem114/code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	leal	-48(%rax), %ecx	#, tmp102
# eval/problem114/code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	cmpb	$9, %cl	#, tmp102
	ja	.L4	#,
# eval/problem114/code.c:10:             if (lst[i][j] >= '0' && lst[i][j] <= '9' && (lst[i][j] - '0') % 2 == 1)
	andl	$1, %eax	#, tmp103
# eval/problem114/code.c:11:                 sum += 1;
	cmpb	$1, %al	#, tmp103
	sbbl	$-1, %r15d	#, sum
.L4:
# eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	movzbl	(%rdx), %eax	# MEM[(char *)_22 + -1B], _12
# eval/problem114/code.c:9:         for (int j = 0; lst[i][j] != '\0'; j++) {
	addq	$1, %rdx	#, ivtmp.9
	testb	%al, %al	# _12
	jne	.L5	#,
.L7:
# eval/problem114/code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movl	$100, %edi	#,
	call	malloc@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 72
	movl	%r15d, %r9d	# sum,
	movl	%r15d, %r8d	# sum,
	pushq	%r15	# sum
	.cfi_def_cfa_offset 80
# eval/problem114/code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movq	%rax, %rdi	# tmp111, tmp104
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$100, %edx	#,
	movq	%r13, %rcx	# tmp107,
# eval/problem114/code.c:13:         out[i] = malloc(100); // Assuming the string will not be longer than 99 characters.
	movq	%rax, (%r12,%r14,8)	# tmp104, MEM[(char * *)out_27 + ivtmp.13_21 * 8]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
# eval/problem114/code.c:7:     for (int i = 0; i < size; i++) {
	addq	$1, %r14	#, ivtmp.13
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	call	__sprintf_chk@PLT	#
# eval/problem114/code.c:7:     for (int i = 0; i < size; i++) {
	popq	%rax	#
	.cfi_def_cfa_offset 72
	popq	%rdx	#
	.cfi_def_cfa_offset 64
	cmpq	%r14, %rbp	# ivtmp.13, size
	jne	.L3	#,
.L1:
# eval/problem114/code.c:17: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 56
	movq	%r12, %rax	# <retval>,
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
	.cfi_endproc
.LFE51:
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
