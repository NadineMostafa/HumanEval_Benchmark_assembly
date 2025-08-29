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
	movq	%rdi, %rbp	# tmp134, str
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# eval/problem15/code.c:5: char **func0(const char *str, int *count) {
	movq	%rsi, (%rsp)	# tmp135, %sfp
# eval/problem15/code.c:6:     int len = strlen(str);
	call	strlen@PLT	#
# eval/problem15/code.c:7:     char **out = malloc(len * sizeof(char *));
	movslq	%eax, %rdi	# tmp108, len
# eval/problem15/code.c:6:     int len = strlen(str);
	movq	%rax, %rbx	# tmp136, tmp108
	movq	%rax, 8(%rsp)	# tmp108, %sfp
# eval/problem15/code.c:7:     char **out = malloc(len * sizeof(char *));
	salq	$3, %rdi	#, tmp111
	call	malloc@PLT	#
# eval/problem15/code.c:9:     char *current = malloc(len + 1);
	leal	1(%rbx), %edi	#, tmp113
# eval/problem15/code.c:9:     char *current = malloc(len + 1);
	movslq	%edi, %rdi	# tmp113, tmp114
# eval/problem15/code.c:7:     char **out = malloc(len * sizeof(char *));
	movq	%rax, %r12	# tmp137, <retval>
# eval/problem15/code.c:9:     char *current = malloc(len + 1);
	call	malloc@PLT	#
# eval/problem15/code.c:10:     current[0] = '\0';
	movb	$0, (%rax)	#, *current_28
# eval/problem15/code.c:9:     char *current = malloc(len + 1);
	movq	%rax, %r15	# tmp138, current
# eval/problem15/code.c:12:     for (int i = 0; i < len; ++i) {
	testl	%ebx, %ebx	# tmp108
	jle	.L2	#,
	leal	-1(%rbx), %r13d	#, _41
	xorl	%ebx, %ebx	# ivtmp.6
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem15/code.c:13:         size_t current_len = strlen(current);
	movq	%r15, %rdi	# current,
	call	strlen@PLT	#
# eval/problem15/code.c:14:         current = realloc(current, current_len + 2);
	movq	%r15, %rdi	# current,
	leaq	2(%rax), %rsi	#, tmp120
# eval/problem15/code.c:13:         size_t current_len = strlen(current);
	movq	%rax, %r14	# tmp139, tmp118
# eval/problem15/code.c:14:         current = realloc(current, current_len + 2);
	call	realloc@PLT	#
	movq	%rax, %r15	# tmp140, current
# eval/problem15/code.c:15:         current[current_len] = str[i];
	movzbl	0(%rbp,%rbx), %eax	# MEM[(const char *)str_23(D) + ivtmp.6_21 * 1], MEM[(const char *)str_23(D) + ivtmp.6_21 * 1]
# eval/problem15/code.c:16:         current[current_len + 1] = '\0';
	movb	$0, 1(%r15,%r14)	#, *_12
# eval/problem15/code.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	%r15, %rdi	# current,
# eval/problem15/code.c:15:         current[current_len] = str[i];
	movb	%al, (%r15,%r14)	# MEM[(const char *)str_23(D) + ivtmp.6_21 * 1], *_9
# eval/problem15/code.c:18:         out[i] = malloc(strlen(current) + 1);
	call	strlen@PLT	#
# eval/problem15/code.c:18:         out[i] = malloc(strlen(current) + 1);
	leaq	1(%rax), %r14	#, tmp125
	movq	%r14, %rdi	# tmp125,
	call	malloc@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%r14, %rdx	# tmp125,
	movq	%r15, %rsi	# current,
# eval/problem15/code.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	%rax, %rdi	# tmp142, tmp126
# eval/problem15/code.c:18:         out[i] = malloc(strlen(current) + 1);
	movq	%rax, (%r12,%rbx,8)	# tmp126, MEM[(char * *)out_26 + ivtmp.6_21 * 8]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	call	memcpy@PLT	#
	movq	%rbx, %rax	# ivtmp.6, ivtmp.6
# eval/problem15/code.c:12:     for (int i = 0; i < len; ++i) {
	addq	$1, %rbx	#, ivtmp.6
	cmpq	%r13, %rax	# _41, ivtmp.6
	jne	.L3	#,
.L2:
# eval/problem15/code.c:21:     free(current);
	movq	%r15, %rdi	# current,
	call	free@PLT	#
# eval/problem15/code.c:23:     *count = len;
	movq	(%rsp), %rax	# %sfp, count
	movl	8(%rsp), %ecx	# %sfp, tmp147
	movl	%ecx, (%rax)	# tmp147, *count_31(D)
# eval/problem15/code.c:25: }
	addq	$24, %rsp	#,
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
