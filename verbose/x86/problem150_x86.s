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
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# eval/problem150/code.c:9:     *return_size = 0;
	movl	$0, (%rdx)	#, *return_size_45(D)
# eval/problem150/code.c:5: char** func0(char **lst, int lst_size, int *return_size) {
	movq	%rdi, (%rsp)	# lst, %sfp
	movq	%rdx, 16(%rsp)	# return_size, %sfp
# eval/problem150/code.c:10:     for (i = 0; i < lst_size; ++i) {
	testl	%esi, %esi	# lst_size
	jle	.L11	#,
	leaq	8(%rdi), %rdx	#, _63
	leal	-1(%rsi), %eax	#, tmp123
	movq	%rdi, %rbx	# lst, lst
	xorl	%ebp, %ebp	# _73
	movq	%rdx, 8(%rsp)	# _63, %sfp
	leaq	(%rdx,%rax,8), %r12	#, _74
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem150/code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	movq	(%rbx), %r13	# MEM[(char * *)_33], _4
	movq	%r13, %rdi	# _4,
	call	strlen@PLT	#
# eval/problem150/code.c:11:         if (strlen(lst[i]) % 2 == 0) {
	testb	$1, %al	#, tmp155
	jne	.L3	#,
# eval/problem150/code.c:12:             lst[*return_size] = lst[i];
	movq	(%rsp), %rdx	# %sfp, lst
# eval/problem150/code.c:12:             lst[*return_size] = lst[i];
	movslq	%ebp, %rax	# _73, _7
# eval/problem150/code.c:13:             (*return_size)++;
	addl	$1, %ebp	#, _73
# eval/problem150/code.c:12:             lst[*return_size] = lst[i];
	movq	%r13, (%rdx,%rax,8)	# _4, *_10
# eval/problem150/code.c:13:             (*return_size)++;
	movq	16(%rsp), %rax	# %sfp, return_size
	movl	%ebp, (%rax)	# _73, *return_size_45(D)
.L3:
# eval/problem150/code.c:10:     for (i = 0; i < lst_size; ++i) {
	addq	$8, %rbx	#, ivtmp.24
	cmpq	%r12, %rbx	# _74, ivtmp.24
	jne	.L4	#,
# eval/problem150/code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	leal	-1(%rbp), %r12d	#, _66
# eval/problem150/code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	movslq	%ebp, %rbp	# _73, _73
# eval/problem150/code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	leaq	0(,%rbp,8), %rax	#, prephitmp_93
	movq	%rax, 24(%rsp)	# prephitmp_93, %sfp
# eval/problem150/code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	testl	%r12d, %r12d	# _66
	jle	.L2	#,
	.p2align 4,,10
	.p2align 3
.L5:
	movq	8(%rsp), %rcx	# %sfp, _63
	leal	-1(%r12), %eax	#,
# eval/problem150/code.c:10:     for (i = 0; i < lst_size; ++i) {
	movq	(%rsp), %r15	# %sfp, ivtmp.10
	movq	%rax, %r12	#,
	leaq	(%rcx,%rax,8), %rbp	#, _67
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L21:
# eval/problem150/code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	je	.L19	#,
.L7:
# eval/problem150/code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	addq	$8, %r15	#, ivtmp.10
	cmpq	%r15, %rbp	# ivtmp.10, _67
	je	.L20	#,
.L8:
# eval/problem150/code.c:19:             size_t len_j = strlen(lst[j]);
	movq	(%r15), %r14	# MEM[(char * *)_28], _15
	movq	%r14, %rdi	# _15,
	call	strlen@PLT	#
# eval/problem150/code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	movq	8(%r15), %r13	# MEM[(char * *)_28 + 8B], _19
# eval/problem150/code.c:19:             size_t len_j = strlen(lst[j]);
	movq	%rax, %rbx	# tmp156, tmp133
# eval/problem150/code.c:20:             size_t len_j1 = strlen(lst[j + 1]);
	movq	%r13, %rdi	# _19,
	call	strlen@PLT	#
# eval/problem150/code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	cmpq	%rax, %rbx	# tmp157, tmp133
	jbe	.L21	#,
# eval/problem150/code.c:23:                 lst[j] = lst[j + 1];
	movq	%r13, (%r15)	# _19, MEM[(char * *)_28]
# eval/problem150/code.c:24:                 lst[j + 1] = temp;
	movq	%r14, 8(%r15)	# _15, MEM[(char * *)_28 + 8B]
.L22:
# eval/problem150/code.c:18:         for (j = 0; j < *return_size - i - 1; ++j) {
	addq	$8, %r15	#, ivtmp.10
	cmpq	%r15, %rbp	# ivtmp.10, _67
	jne	.L8	#,
.L20:
# eval/problem150/code.c:17:     for (i = 0; i < *return_size - 1; ++i) {
	testl	%r12d, %r12d	# ivtmp.18
	jne	.L5	#,
.L2:
# eval/problem150/code.c:29:     char **out = malloc(*return_size * sizeof(char *));
	movq	24(%rsp), %rdi	# %sfp,
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp159, <retval>
# eval/problem150/code.c:30:     for (i = 0; i < *return_size; ++i) {
	movq	16(%rsp), %rax	# %sfp, return_size
	movslq	(%rax), %rax	# *return_size_45(D),
# eval/problem150/code.c:30:     for (i = 0; i < *return_size; ++i) {
	testl	%eax, %eax	# _68
	jle	.L1	#,
# eval/problem150/code.c:31:         out[i] = lst[i];
	movq	(%rsp), %rsi	# %sfp,
	movq	%r8, %rdi	# <retval>,
	leaq	0(,%rax,8), %rdx	#, tmp144
	call	memcpy@PLT	#
	movq	%rax, %r8	#, <retval>
.L1:
# eval/problem150/code.c:35: }
	addq	$40, %rsp	#,
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
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
# eval/problem150/code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	movq	%r13, %rsi	# _19,
	movq	%r14, %rdi	# _15,
	call	strcmp@PLT	#
# eval/problem150/code.c:21:             if (len_j > len_j1 || (len_j == len_j1 && strcmp(lst[j], lst[j + 1]) > 0)) {
	testl	%eax, %eax	# tmp158
	jle	.L7	#,
# eval/problem150/code.c:23:                 lst[j] = lst[j + 1];
	movq	%r13, (%r15)	# _19, MEM[(char * *)_28]
# eval/problem150/code.c:24:                 lst[j + 1] = temp;
	movq	%r14, 8(%r15)	# _15, MEM[(char * *)_28 + 8B]
	jmp	.L22	#
.L11:
# eval/problem150/code.c:10:     for (i = 0; i < lst_size; ++i) {
	movq	$0, 24(%rsp)	#, %sfp
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
