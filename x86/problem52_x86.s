	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"AEIOUaeiou"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB51:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12	# tmp91, text
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem52/code.c:8:     while (*text != '\0') {
	movzbl	(%rdi), %ebx	# *text_10(D), _4
# eval/problem52/code.c:8:     while (*text != '\0') {
	testb	%bl, %bl	# _4
	je	.L2	#,
	movq	%rdi, %rbp	# text, text
	leaq	.LC0(%rip), %r13	#, tmp90
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem52/code.c:8:     while (*text != '\0') {
	movzbl	1(%rbp), %ebx	# MEM[(char *)text_15], _4
# eval/problem52/code.c:12:         text++;
	addq	$1, %rbp	#, text
# eval/problem52/code.c:8:     while (*text != '\0') {
	testb	%bl, %bl	# _4
	je	.L2	#,
.L4:
# eval/problem52/code.c:9:         if (strchr(vowels, *text) == NULL) {
	movsbl	%bl, %esi	# _4, _4
	movq	%r13, %rdi	# tmp90,
	call	strchr@PLT	#
# eval/problem52/code.c:9:         if (strchr(vowels, *text) == NULL) {
	testq	%rax, %rax	# tmp92
	jne	.L3	#,
# eval/problem52/code.c:12:         text++;
	addq	$1, %rbp	#, text
# eval/problem52/code.c:10:             *out++ = *text;
	movb	%bl, (%r12)	# _4, *out_21
# eval/problem52/code.c:10:             *out++ = *text;
	addq	$1, %r12	#, text
# eval/problem52/code.c:8:     while (*text != '\0') {
	movzbl	0(%rbp), %ebx	# MEM[(char *)text_15], _4
# eval/problem52/code.c:8:     while (*text != '\0') {
	testb	%bl, %bl	# _4
	jne	.L4	#,
.L2:
# eval/problem52/code.c:14:     *out = '\0';
	movb	$0, (%r12)	#, *out_22
# eval/problem52/code.c:15: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
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
