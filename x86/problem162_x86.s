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
	movq	%rdi, %r12	# tmp153, s
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# eval/problem162/code.c:7:     int length = strlen(s);
	call	strlen@PLT	#
	movq	%rax, 8(%rsp)	# tmp134, %sfp
# eval/problem162/code.c:8:     for (int i = 0; i < length; i++) {
	testl	%eax, %eax	# tmp134
	jle	.L9	#,
	movq	%rax, %r15	# tmp154, tmp134
	movq	%r12, %rbx	# s, ivtmp.20
# eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	call	__ctype_b_loc@PLT	#
	movq	%rax, %r14	# tmp155, _2
	leal	-1(%r15), %eax	#, tmp138
# eval/problem162/code.c:6:     int nletter = 0;
	xorl	%r15d, %r15d	# nletter
	leaq	1(%r12,%rax), %r13	#, _91
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L20:
# eval/problem162/code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	testb	$1, %ah	#, _11
	je	.L4	#,
# eval/problem162/code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	call	__ctype_tolower_loc@PLT	#
	movq	(%rax), %rax	#, *_16
# eval/problem162/code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	movl	(%rax,%rbp,4), %eax	#* *_16, *_19
	movb	%al, (%rbx)	# *_19, MEM[(char *)_83]
.L5:
# eval/problem162/code.c:8:     for (int i = 0; i < length; i++) {
	addq	$1, %rbx	#, ivtmp.20
	cmpq	%r13, %rbx	# _91, ivtmp.20
	je	.L2	#,
.L6:
# eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	movzbl	(%rbx), %ebp	# MEM[(char *)_83], _8
	movq	(%r14), %rax	# *_2, *_2
	movzwl	(%rax,%rbp,2), %eax	# *_10, _11
# eval/problem162/code.c:9:         if (isalpha((unsigned char)s[i])) {
	testb	$4, %ah	#, _11
	jne	.L20	#,
# eval/problem162/code.c:8:     for (int i = 0; i < length; i++) {
	addq	$1, %rbx	#, ivtmp.20
# eval/problem162/code.c:13:             nletter += 1;
	addl	$1, %r15d	#, nletter
# eval/problem162/code.c:8:     for (int i = 0; i < length; i++) {
	cmpq	%r13, %rbx	# _91, ivtmp.20
	jne	.L6	#,
.L2:
# eval/problem162/code.c:16:     if (nletter == length) {
	cmpl	%r15d, 8(%rsp)	# nletter, %sfp
	je	.L21	#,
.L7:
# eval/problem162/code.c:24: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax	# s,
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
.L4:
	.cfi_restore_state
# eval/problem162/code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	testb	$2, %ah	#, _11
	je	.L5	#,
# eval/problem162/code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	call	__ctype_toupper_loc@PLT	#
	movq	(%rax), %rax	#, *_41
# eval/problem162/code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	movl	(%rax,%rbp,4), %eax	#* *_41, *_44
	movb	%al, (%rbx)	# *_44, MEM[(char *)_83]
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L21:
# eval/problem162/code.c:17:         for (int i = 0; i < length / 2; i++) {
	movq	8(%rsp), %rax	# %sfp, tmp134
	movl	%eax, %ecx	# tmp134, _64
	sarl	%ecx	# _64
	je	.L7	#,
	movslq	%eax, %r13	# tmp134, _73
	subl	$1, %ecx	#, tmp151
	movq	%r12, %rdx	# s, ivtmp.12
	leaq	-2(%r12,%r13), %rdi	#, tmp149
	leaq	-1(%r12,%r13), %rax	#, ivtmp.13
	subq	%rcx, %rdi	# tmp151, _37
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem162/code.c:18:             char temp = s[i];
	movzbl	(%rdx), %ecx	# MEM[(char *)_70], temp
# eval/problem162/code.c:19:             s[i] = s[length - i - 1];
	movzbl	(%rax), %esi	# MEM[(char *)_68], _53
# eval/problem162/code.c:17:         for (int i = 0; i < length / 2; i++) {
	subq	$1, %rax	#, ivtmp.13
	addq	$1, %rdx	#, ivtmp.12
# eval/problem162/code.c:19:             s[i] = s[length - i - 1];
	movb	%sil, -1(%rdx)	# _53, MEM[(char *)_70]
# eval/problem162/code.c:20:             s[length - i - 1] = temp;
	movb	%cl, 1(%rax)	# temp, MEM[(char *)_68]
# eval/problem162/code.c:17:         for (int i = 0; i < length / 2; i++) {
	cmpq	%rax, %rdi	# ivtmp.13, _37
	jne	.L8	#,
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem162/code.c:6:     int nletter = 0;
	xorl	%r15d, %r15d	# nletter
	jmp	.L2	#
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
