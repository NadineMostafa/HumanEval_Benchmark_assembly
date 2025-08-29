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
.LFB37:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	movzbl	(%rdi), %ebx	# *S_24(D), _13
# eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	testb	%bl, %bl	# _13
	je	.L9	#,
	movq	%rdi, %rbp	# tmp121, S
# eval/problem92/code.c:10:         if (isspace(S[i]) && isi) {
	call	__ctype_b_loc@PLT	#
	leaq	1(%rbp), %rdi	#, ivtmp.7
# eval/problem92/code.c:8:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem92/code.c:7:     int isi = 0;
	xorl	%esi, %esi	# isi
# eval/problem92/code.c:10:         if (isspace(S[i]) && isi) {
	movq	(%rax), %r9	# *_1, _2
# eval/problem92/code.c:6:     int isstart = 1;
	movl	$1, %edx	#, isstart
# eval/problem92/code.c:23:             isstart = 1;
	movl	$1, %r11d	#, isi
# eval/problem92/code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	movabsq	$-9223301659520663552, %r10	#, tmp120
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L19:
# eval/problem92/code.c:12:             sum += 1;
	cmpl	$1, %esi	#, isi
	sbbl	$-1, %r8d	#, <retval>
# eval/problem92/code.c:14:         if (S[i] == 'I' && isstart) {
	testb	%al, %al	# _63
	jne	.L10	#,
.L8:
# eval/problem92/code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	xorl	%esi, %esi	# isi
	cmpb	$63, %bl	#, _13
	ja	.L6	#,
	movq	%r10, %rax	# tmp120, tmp112
	movl	%ebx, %ecx	# _13, _13
	shrq	%cl, %rax	# _13, tmp112
	testb	$1, %al	#, tmp112
	cmovne	%r11d, %edx	# isstart,, isi, isstart
.L6:
# eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	movzbl	(%rdi), %ebx	# MEM[(const char *)_55 + -1B], _13
# eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	addq	$1, %rdi	#, ivtmp.7
	testb	%bl, %bl	# _13
	je	.L1	#,
.L7:
# eval/problem92/code.c:14:         if (S[i] == 'I' && isstart) {
	cmpb	$73, %bl	#, _13
# eval/problem92/code.c:10:         if (isspace(S[i]) && isi) {
	movsbq	%bl, %rcx	# _13, _13
# eval/problem92/code.c:14:         if (S[i] == 'I' && isstart) {
	sete	%al	#, tmp106
# eval/problem92/code.c:14:         if (S[i] == 'I' && isstart) {
	andl	%edx, %eax	# isstart, _63
# eval/problem92/code.c:10:         if (isspace(S[i]) && isi) {
	testb	$32, 1(%r9,%rcx,2)	#, *_6
	jne	.L19	#,
# eval/problem92/code.c:20:             isstart = 0;
	xorl	%edx, %edx	# isstart
# eval/problem92/code.c:14:         if (S[i] == 'I' && isstart) {
	testb	%al, %al	# _63
	je	.L8	#,
# eval/problem92/code.c:23:             isstart = 1;
	movl	$1, %esi	#, isi
.L20:
# eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	movzbl	(%rdi), %ebx	# MEM[(const char *)_55 + -1B], _13
# eval/problem92/code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	addq	$1, %rdi	#, ivtmp.7
	testb	%bl, %bl	# _13
	jne	.L7	#,
.L1:
# eval/problem92/code.c:27: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%r8d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
	movl	$1, %edx	#, isstart
# eval/problem92/code.c:23:             isstart = 1;
	movl	$1, %esi	#, isi
	jmp	.L20	#
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem92/code.c:27: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
# eval/problem92/code.c:8:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem92/code.c:27: }
	movl	%r8d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
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
