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
.LFB53:
	.cfi_startproc
	endbr64	
# eval/problem96/code.c:7:     if (size == 0) return 0;
	xorl	%eax, %eax	# <retval>
# eval/problem96/code.c:7:     if (size == 0) return 0;
	testl	%esi, %esi	# size
	je	.L22	#,
# eval/problem96/code.c:9:     for (int i = 0; i < size; ++i) {
	jle	.L9	#,
# eval/problem96/code.c:6: int func0(char* dict[][2], int size) {
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leal	-1(%rsi), %eax	#, tmp112
	movq	%rdi, %r15	# dict, ivtmp.14
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	salq	$4, %rax	#, tmp113
# eval/problem96/code.c:8:     int has_lower = 0, has_upper = 0;
	xorl	%r14d, %r14d	# has_upper
# eval/problem96/code.c:6: int func0(char* dict[][2], int size) {
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	16(%rdi,%rax), %rax	#, _37
# eval/problem96/code.c:8:     int has_lower = 0, has_upper = 0;
	xorl	%r13d, %r13d	# has_lower
# eval/problem96/code.c:6: int func0(char* dict[][2], int size) {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
# eval/problem96/code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	movl	$1, %r12d	#, has_upper
# eval/problem96/code.c:6: int func0(char* dict[][2], int size) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
	movq	%rax, 8(%rsp)	# _37, %sfp
.L7:
# eval/problem96/code.c:10:         char* key = dict[i][0];
	movq	(%r15), %rbp	# MEM[(char * *)_54], key
# eval/problem96/code.c:11:         for (int j = 0; key[j]; ++j) {
	movzbl	0(%rbp), %ebx	# *key_32,
# eval/problem96/code.c:11:         for (int j = 0; key[j]; ++j) {
	testb	%bl, %bl	# _16
	je	.L3	#,
# eval/problem96/code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	call	__ctype_b_loc@PLT	#
	leaq	1(%rbp), %rdx	#, ivtmp.8
	movq	(%rax), %rsi	# *_4, _5
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L26:
# eval/problem96/code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	testw	%cx, %cx	# _65
	cmovne	%r12d, %r13d	# has_lower,, has_upper, has_lower
.L5:
# eval/problem96/code.c:15:             if (has_upper + has_lower == 2) return 0;
	leal	0(%r13,%r14), %eax	#, tmp118
# eval/problem96/code.c:15:             if (has_upper + has_lower == 2) return 0;
	cmpl	$2, %eax	#, tmp118
	je	.L12	#,
# eval/problem96/code.c:11:         for (int j = 0; key[j]; ++j) {
	movzbl	(%rdx), %ebx	# MEM[(char *)_58 + -1B],
# eval/problem96/code.c:11:         for (int j = 0; key[j]; ++j) {
	addq	$1, %rdx	#, ivtmp.8
	testb	%bl, %bl	# _16
	je	.L3	#,
.L6:
# eval/problem96/code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	movzwl	(%rsi,%rbx,2), %eax	# *_11, _12
# eval/problem96/code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	testb	$4, %ah	#, _12
	je	.L12	#,
	movl	%eax, %ecx	# _12, _65
	andw	$512, %cx	#, _65
# eval/problem96/code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	testb	$1, %ah	#, _12
	je	.L26	#,
# eval/problem96/code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	testw	%cx, %cx	# _65
	jne	.L12	#,
# eval/problem96/code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	movl	$1, %r14d	#, has_upper
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L12:
# eval/problem96/code.c:7:     if (size == 0) return 0;
	xorl	%eax, %eax	# <retval>
.L1:
# eval/problem96/code.c:19: }
	addq	$24, %rsp	#,
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
	.p2align 4,,10
	.p2align 3
.L3:
	.cfi_restore_state
# eval/problem96/code.c:9:     for (int i = 0; i < size; ++i) {
	addq	$16, %r15	#, ivtmp.14
	cmpq	%r15, 8(%rsp)	# ivtmp.14, %sfp
	jne	.L7	#,
# eval/problem96/code.c:18:     return 1;
	movl	$1, %eax	#, <retval>
	jmp	.L1	#
	.p2align 4,,10
	.p2align 3
.L22:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
# eval/problem96/code.c:19: }
	ret	
.L9:
# eval/problem96/code.c:18:     return 1;
	movl	$1, %eax	#, <retval>
	ret	
	.cfi_endproc
.LFE53:
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
