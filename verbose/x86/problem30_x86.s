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
	movq	%rcx, %r15	# tmp122, out
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13	# tmp121, prefix
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d	# tmp120, count
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# tmp119, strings
# eval/problem30/code.c:6:     int prefix_length = strlen(prefix);
	movq	%rdx, %rdi	# prefix,
# eval/problem30/code.c:5: int func0(char** strings, int count, const char* prefix, char*** out) {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# eval/problem30/code.c:6:     int prefix_length = strlen(prefix);
	call	strlen@PLT	#
# eval/problem30/code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	movslq	%r12d, %rdi	# count, count
	salq	$3, %rdi	#, tmp111
# eval/problem30/code.c:6:     int prefix_length = strlen(prefix);
	movq	%rax, %rbp	# tmp123, tmp108
# eval/problem30/code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	call	malloc@PLT	#
	movq	%rax, 8(%rsp)	# _4, %sfp
# eval/problem30/code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	movq	%rax, (%r15)	# _4, *out_25(D)
# eval/problem30/code.c:10:     for (int i = 0; i < count; i++) {
	testl	%r12d, %r12d	# count
	jle	.L5	#,
	leal	-1(%r12), %eax	#, tmp114
# eval/problem30/code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	movslq	%ebp, %rbp	# tmp108, _31
# eval/problem30/code.c:8:     int out_count = 0;
	xorl	%r12d, %r12d	# <retval>
	leaq	8(%rbx,%rax,8), %r15	#, _43
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem30/code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	movq	(%rbx), %r14	# MEM[(char * *)_11], _9
	movq	%rbp, %rdx	# _31,
	movq	%r13, %rsi	# prefix,
	movq	%r14, %rdi	# _9,
	call	strncmp@PLT	#
# eval/problem30/code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	testl	%eax, %eax	# tmp125
	jne	.L3	#,
# eval/problem30/code.c:12:             (*out)[out_count++] = strings[i];
	movq	8(%rsp), %rcx	# %sfp, _4
# eval/problem30/code.c:12:             (*out)[out_count++] = strings[i];
	movslq	%r12d, %rax	# <retval>, <retval>
	addl	$1, %r12d	#, <retval>
# eval/problem30/code.c:12:             (*out)[out_count++] = strings[i];
	movq	%r14, (%rcx,%rax,8)	# _9, *_14
.L3:
# eval/problem30/code.c:10:     for (int i = 0; i < count; i++) {
	addq	$8, %rbx	#, ivtmp.8
	cmpq	%r15, %rbx	# _43, ivtmp.8
	jne	.L4	#,
.L1:
# eval/problem30/code.c:17: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r12d, %eax	# <retval>,
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
# eval/problem30/code.c:8:     int out_count = 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem30/code.c:16:     return out_count;
	jmp	.L1	#
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
