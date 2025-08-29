	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"aeiouAEIOU"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB37:
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
	movq	%rsi, %rbp	# tmp122, out
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	movzbl	(%rdi), %ebx	# *message_18(D), w
# eval/problem94/code.c:5: void func0(const char* message, char* out) {
	movq	%rdi, 8(%rsp)	# message, %sfp
# eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	testb	%bl, %bl	# w
	je	.L2	#,
# eval/problem94/code.c:11:         if (islower(w)) {
	call	__ctype_b_loc@PLT	#
# eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	xorl	%r14d, %r14d	# _49
# eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	leaq	.LC0(%rip), %r13	#, tmp118
# eval/problem94/code.c:11:         if (islower(w)) {
	movq	%rax, %r12	# tmp123, _2
	.p2align 4,,10
	.p2align 3
.L8:
	movq	(%r12), %rax	# *_2, *_2
	movsbq	%bl, %r15	# w, _4
	movzwl	(%rax,%r15,2), %eax	# *_6, _7
# eval/problem94/code.c:11:         if (islower(w)) {
	testb	$2, %ah	#, _7
	je	.L3	#,
# eval/problem94/code.c:12:             w = toupper(w);
	call	__ctype_toupper_loc@PLT	#
	movq	(%rax), %rax	#, *_14
# eval/problem94/code.c:12:             w = toupper(w);
	movzbl	(%rax,%r15,4), %ebx	#* *_14, w
.L4:
# eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	xorl	%eax, %eax	# ivtmp.11
# eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	movl	$97, %edx	#, _36
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	addq	$1, %rax	#, ivtmp.11
# eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	movzbl	0(%r13,%rax), %edx	# MEM[(const char *)"aeiouAEIOU" + ivtmp.11_51 * 1], _36
# eval/problem94/code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	testb	%dl, %dl	# _36
	je	.L6	#,
.L7:
	movl	%eax, %ecx	# ivtmp.11, j
# eval/problem94/code.c:18:             if (w == vowels[j]) {
	cmpb	%dl, %bl	# _36, w
	jne	.L5	#,
# eval/problem94/code.c:20:                     w = w + 2;
	leal	2(%rbx), %eax	#, _33
	cmpl	$10, %ecx	#, j
	cmovl	%eax, %ebx	# _33,, w
.L6:
# eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	movq	8(%rsp), %rax	# %sfp, message
# eval/problem94/code.c:25:         out[i] = w;
	movb	%bl, 0(%rbp,%r14)	# w, MEM[(char *)out_19(D) + _58 * 1]
	addq	$1, %r14	#, _49
# eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	movzbl	(%rax,%r14), %ebx	# MEM[(const char *)message_18(D) + _49 * 1], w
# eval/problem94/code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	testb	%bl, %bl	# w
	jne	.L8	#,
# eval/problem94/code.c:27:     out[i] = '\0';
	addq	%r14, %rbp	# _49, out
.L2:
# eval/problem94/code.c:27:     out[i] = '\0';
	movb	$0, 0(%rbp)	#, *prephitmp_63
# eval/problem94/code.c:28: }
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
# eval/problem94/code.c:13:         } else if (isupper(w)) {
	testb	$1, %ah	#, _7
	je	.L4	#,
# eval/problem94/code.c:14:             w = tolower(w);
	call	__ctype_tolower_loc@PLT	#
	movq	(%rax), %rax	#, *_28
# eval/problem94/code.c:14:             w = tolower(w);
	movzbl	(%rax,%r15,4), %ebx	#* *_28, w
	jmp	.L4	#
	.cfi_endproc
.LFE37:
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
