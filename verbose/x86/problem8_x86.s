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
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# eval/problem8/code.c:5: char **func0(char **strings, int size, const char *substring, int *out_size) {
	movq	%rcx, 8(%rsp)	# tmp111, %sfp
# eval/problem8/code.c:8:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L5	#,
	leal	-1(%rsi), %eax	#, tmp103
	movq	%rdx, %r13	# tmp110, substring
	movq	%rdi, %rbx	# strings, ivtmp.7
# eval/problem8/code.c:7:     int count = 0;
	xorl	%r12d, %r12d	# count
	leaq	8(%rdi,%rax,8), %rax	#, _44
# eval/problem8/code.c:6:     char **out = NULL;
	xorl	%ebp, %ebp	# <retval>
	movq	%rax, (%rsp)	# _44, %sfp
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem8/code.c:9:         if (strstr(strings[i], substring) != NULL) {
	movq	(%rbx), %r14	# MEM[(char * *)_9], _4
	movq	%r13, %rsi	# substring,
	movq	%r14, %rdi	# _4,
	call	strstr@PLT	#
# eval/problem8/code.c:9:         if (strstr(strings[i], substring) != NULL) {
	testq	%rax, %rax	# tmp112
	je	.L3	#,
# eval/problem8/code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	addl	$1, %r12d	#, count
# eval/problem8/code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	movq	%rbp, %rdi	# <retval>,
# eval/problem8/code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	movslq	%r12d, %rdx	# count, count
# eval/problem8/code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	leaq	0(,%rdx,8), %r15	#, _8
	movq	%r15, %rsi	# _8,
	call	realloc@PLT	#
# eval/problem8/code.c:11:             out[count] = strings[i];
	movq	%r14, -8(%rax,%r15)	# _4, *_13
# eval/problem8/code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	movq	%rax, %rbp	# tmp113, <retval>
.L3:
# eval/problem8/code.c:8:     for (int i = 0; i < size; i++) {
	addq	$8, %rbx	#, ivtmp.7
	cmpq	(%rsp), %rbx	# %sfp, ivtmp.7
	jne	.L4	#,
.L2:
# eval/problem8/code.c:15:     *out_size = count;
	movq	8(%rsp), %rax	# %sfp, out_size
	movl	%r12d, (%rax)	# count, *out_size_23(D)
# eval/problem8/code.c:17: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax	# <retval>,
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
.L5:
	.cfi_restore_state
# eval/problem8/code.c:7:     int count = 0;
	xorl	%r12d, %r12d	# count
# eval/problem8/code.c:6:     char **out = NULL;
	xorl	%ebp, %ebp	# <retval>
	jmp	.L2	#
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
