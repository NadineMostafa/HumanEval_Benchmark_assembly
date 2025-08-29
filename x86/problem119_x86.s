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
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp	# tmp123, word
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem119/code.c:7:     size_t len = strlen(word);
	call	strlen@PLT	#
# eval/problem119/code.c:9:     for (int i = len - 2; i >= 1; i--) {
	leal	-2(%rax), %edx	#, i
# eval/problem119/code.c:9:     for (int i = len - 2; i >= 1; i--) {
	testl	%edx, %edx	# i
	jle	.L5	#,
	movslq	%edx, %rdx	# i, _33
	subl	$3, %eax	#, tmp113
	leaq	.LC0(%rip), %r12	#, tmp122
	leaq	-1(%rbp,%rdx), %r13	#, tmp111
	leaq	0(%rbp,%rdx), %rbx	#, ivtmp.9
	subq	%rax, %r13	# tmp113, _47
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem119/code.c:9:     for (int i = len - 2; i >= 1; i--) {
	subq	$1, %rbx	#, ivtmp.9
	cmpq	%r13, %rbx	# _47, ivtmp.9
	je	.L5	#,
.L4:
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	(%rbx), %esi	# MEM[(const char *)_31],
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movq	%r12, %rdi	# tmp122,
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movl	%esi, %ebp	#,
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	call	strchr@PLT	#
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# tmp125
	je	.L3	#,
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	1(%rbx), %esi	# MEM[(const char *)_31 + 1B], MEM[(const char *)_31 + 1B]
	movq	%r12, %rdi	# tmp122,
	call	strchr@PLT	#
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# tmp126
	jne	.L3	#,
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	-1(%rbx), %esi	# MEM[(const char *)_31 + -1B], MEM[(const char *)_31 + -1B]
	movq	%r12, %rdi	# tmp122,
	call	strchr@PLT	#
# eval/problem119/code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# tmp127
	jne	.L3	#,
.L2:
# eval/problem119/code.c:11:             out[0] = word[i];
	movb	%bpl, out.0(%rip)	# _5, out[0]
# eval/problem119/code.c:17: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	out.0(%rip), %rax	#, tmp120
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
# eval/problem119/code.c:9:     for (int i = len - 2; i >= 1; i--) {
	xorl	%ebp, %ebp	# _5
	jmp	.L2	#
	.cfi_endproc
.LFE35:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,2,1
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
