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
	movq	%rdi, %r13	# tmp173, str
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# eval/problem11/code.c:6:     int len = strlen(str), i, j;
	call	strlen@PLT	#
# eval/problem11/code.c:7:     char *result = (char *)malloc(2 * len + 1);
	leal	(%rax,%rax), %ebx	#, _2
# eval/problem11/code.c:6:     int len = strlen(str), i, j;
	movq	%rax, %r12	# tmp174, tmp144
# eval/problem11/code.c:6:     int len = strlen(str), i, j;
	movl	%eax, %r15d	# tmp144, len
# eval/problem11/code.c:7:     char *result = (char *)malloc(2 * len + 1);
	leal	1(%rbx), %edi	#, tmp146
# eval/problem11/code.c:7:     char *result = (char *)malloc(2 * len + 1);
	movslq	%edi, %rdi	# tmp146, tmp147
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp175, <retval>
# eval/problem11/code.c:8:     if (!result) {
	testq	%rax, %rax	# <retval>
	je	.L1	#,
# eval/problem11/code.c:30:     strncpy(result, str, len);
	movslq	%r12d, %r14	# tmp144, _98
# eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	testl	%r12d, %r12d	# tmp144
	jle	.L8	#,
# eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	xorl	%ebp, %ebp	# i
# eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	%r12d, %edx	# tmp144, tmp162
# eval/problem11/code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	leal	-1(%r12), %edi	#, tmp171
# eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	movq	%r13, %rax	# str, ivtmp.26
# eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	subl	%ebp, %edx	# i, tmp162
	movl	%r12d, %r10d	# tmp144, _138
	movslq	%edi, %rdi	# tmp171, tmp172
# eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	%edx, %ecx	# tmp162, tmp162
	sarl	%ecx	# tmp162
	je	.L6	#,
	.p2align 4,,10
	.p2align 3
.L9:
	leaq	1(%rax), %r9	#, _6
	subl	$1, %ecx	#, tmp152
	leaq	0(%r13,%rdi), %rdx	#, ivtmp.27
	addq	%r9, %rcx	# _6, _134
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L25:
# eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	addq	$1, %rax	#, ivtmp.26
	subq	$1, %rdx	#, ivtmp.27
	cmpq	%rcx, %rax	# _134, ivtmp.26
	je	.L6	#,
.L5:
# eval/problem11/code.c:15:             if (str[i + j] != str[len - 1 - j]) {
	movzbl	(%rdx), %esi	# MEM[(const char *)_126], tmp177
	cmpb	%sil, (%rax)	# tmp177, MEM[(const char *)_125]
	je	.L25	#,
# eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	addl	$1, %ebp	#, i
# eval/problem11/code.c:12:     for (i = 0; i < len; i++) {
	cmpl	%ebp, %r15d	# i, len
	je	.L26	#,
# eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	%r12d, %edx	# tmp144, tmp162
	movq	%r9, %rax	# _6, ivtmp.26
	subl	%ebp, %edx	# i, tmp162
# eval/problem11/code.c:14:         for (j = 0; j < (len - i) / 2; j++) {
	movl	%edx, %ecx	# tmp162, tmp162
	sarl	%ecx	# tmp162
	jne	.L9	#,
	.p2align 4,,10
	.p2align 3
.L6:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:95:   return __builtin___strncpy_chk (__dest, __src, __len,
	movq	%r8, %rdi	# <retval>,
	movq	%r14, %rdx	# _98,
	movq	%r13, %rsi	# str,
	call	strncpy@PLT	#
	movq	%rax, %r8	#, <retval>
# eval/problem11/code.c:22:             for (j = 0; j < i; j++) {
	testl	%ebp, %ebp	# i
	je	.L12	#,
	movslq	%ebp, %rdx	# i, _15
	addq	%r8, %r14	# <retval>, ivtmp.21
	leaq	-2(%r13,%rdx), %rcx	#, tmp156
	leaq	-1(%r13,%rdx), %rax	#, ivtmp.19
	leal	-1(%rbp), %edx	#, tmp158
	subq	%rdx, %rcx	# tmp158, _112
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem11/code.c:23:                 result[len + j] = str[i - j - 1];
	movzbl	(%rax), %edx	# MEM[(const char *)_103], MEM[(const char *)_103]
# eval/problem11/code.c:22:             for (j = 0; j < i; j++) {
	subq	$1, %rax	#, ivtmp.19
	addq	$1, %r14	#, ivtmp.21
# eval/problem11/code.c:23:                 result[len + j] = str[i - j - 1];
	movb	%dl, -1(%r14)	# MEM[(const char *)_103], MEM[(char *)_104]
# eval/problem11/code.c:22:             for (j = 0; j < i; j++) {
	cmpq	%rcx, %rax	# _112, ivtmp.19
	jne	.L7	#,
.L12:
# eval/problem11/code.c:25:             result[len + i] = '\0';
	leal	0(%rbp,%r12), %eax	#, tmp160
	cltq
# eval/problem11/code.c:25:             result[len + i] = '\0';
	movb	$0, (%r8,%rax)	#, *_27
.L1:
# eval/problem11/code.c:36: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r8, %rax	# <retval>,
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
.L26:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:95:   return __builtin___strncpy_chk (__dest, __src, __len,
	movq	%r14, %rdx	# _98,
	movq	%r13, %rsi	# str,
	movq	%r8, %rdi	# <retval>,
	movl	%r10d, 12(%rsp)	# _138, %sfp
	call	strncpy@PLT	#
	movl	12(%rsp), %r10d	# %sfp, _138
	leaq	-2(%r13,%r14), %rsi	#, tmp168
	movq	%rax, %r8	#, <retval>
	leaq	-1(%r13,%r14), %rax	#, ivtmp.11
	leal	-1(%r10), %ecx	#, tmp170
	leaq	(%r8,%r14), %rdx	#, ivtmp.13
	subq	%rcx, %rsi	# tmp170, _42
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem11/code.c:32:         result[len + j] = str[len - j - 1];
	movzbl	(%rax), %ecx	# MEM[(const char *)_81], MEM[(const char *)_81]
# eval/problem11/code.c:31:     for (j = 0; j < len; j++) {
	subq	$1, %rax	#, ivtmp.11
	addq	$1, %rdx	#, ivtmp.13
# eval/problem11/code.c:32:         result[len + j] = str[len - j - 1];
	movb	%cl, -1(%rdx)	# MEM[(const char *)_81], MEM[(char *)_78]
# eval/problem11/code.c:31:     for (j = 0; j < len; j++) {
	cmpq	%rax, %rsi	# ivtmp.11, _42
	jne	.L10	#,
.L14:
# eval/problem11/code.c:34:     result[2 * len] = '\0';
	movslq	%ebx, %rbx	# _2, _2
# eval/problem11/code.c:34:     result[2 * len] = '\0';
	movb	$0, (%r8,%rbx)	#, *_39
# eval/problem11/code.c:35:     return result;
	jmp	.L1	#
.L8:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:95:   return __builtin___strncpy_chk (__dest, __src, __len,
	movq	%r14, %rdx	# _98,
	movq	%r13, %rsi	# str,
	movq	%rax, %rdi	# <retval>,
	call	strncpy@PLT	#
	movq	%rax, %r8	#, <retval>
	jmp	.L14	#
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
