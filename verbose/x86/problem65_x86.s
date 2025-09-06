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
	movq	%rdi, %r15	# tmp116, s
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
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem65/code.c:8:     int length = strlen(s);
	call	strlen@PLT	#
# eval/problem65/code.c:10:     for (int i = 0; i < length; i++) {
	testl	%eax, %eax	# tmp102
	jle	.L7	#,
	movq	%rax, %r14	# tmp117, tmp102
	leal	-1(%rax), %eax	#, tmp106
	movq	%r15, %rbx	# s, ivtmp.7
# eval/problem65/code.c:7:     int count = 0;
	xorl	%r12d, %r12d	# <retval>
	leaq	1(%r15,%rax), %r13	#, _32
	leaq	.LC0(%rip), %rbp	#, tmp113
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem65/code.c:11:         if (strchr(vowels, s[i])) {
	movsbl	(%rbx), %esi	# MEM[(const char *)_13], MEM[(const char *)_13]
	movq	%rbp, %rdi	# tmp113,
	call	strchr@PLT	#
# eval/problem65/code.c:12:             count++;
	cmpq	$1, %rax	#, tmp118
	sbbl	$-1, %r12d	#, <retval>
# eval/problem65/code.c:10:     for (int i = 0; i < length; i++) {
	addq	$1, %rbx	#, ivtmp.7
	cmpq	%r13, %rbx	# _32, ivtmp.7
	jne	.L4	#,
# eval/problem65/code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	movslq	%r14d, %r14	# tmp102, length
# eval/problem65/code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	movzbl	-1(%r15,%r14), %eax	# *_9, *_9
	andl	$-33, %eax	#, tmp111
# eval/problem65/code.c:17:         count++;
	cmpb	$89, %al	#, tmp111
	sete	%al	#, tmp114
	movzbl	%al, %eax	# tmp114, tmp114
	addl	%eax, %r12d	# tmp114, <retval>
.L1:
# eval/problem65/code.c:21: }
	addq	$8, %rsp	#,
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
.L7:
	.cfi_restore_state
# eval/problem65/code.c:7:     int count = 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem65/code.c:20:     return count;
	jmp	.L1	#
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
