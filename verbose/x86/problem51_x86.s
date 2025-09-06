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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp111, s
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem51/code.c:6:     int shift = encode ? 5 : 21;
	cmpl	$1, %esi	#, encode
	sbbl	%ebp, %ebp	# iftmp.0_9
	andl	$16, %ebp	#, iftmp.0_9
	addl	$5, %ebp	#, iftmp.0_9
# eval/problem51/code.c:7:     size_t len = strlen(s);
	call	strlen@PLT	#
# eval/problem51/code.c:8:     for (size_t i = 0; i < len; i++) {
	testq	%rax, %rax	# tmp97
	je	.L1	#,
	movq	%rbx, %rdi	# s, ivtmp.8
	addq	%rbx, %rax	# ivtmp.8, _26
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	movsbl	(%rdi), %edx	# MEM[(char *)_29], MEM[(char *)_29]
# eval/problem51/code.c:8:     for (size_t i = 0; i < len; i++) {
	addq	$1, %rdi	#, ivtmp.8
# eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	leal	-97(%rbp,%rdx), %ecx	#, tmp101
# eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	movslq	%ecx, %rdx	# tmp101, tmp103
	movl	%ecx, %esi	# tmp101, tmp107
	imulq	$1321528399, %rdx, %rdx	#, tmp103, tmp104
	sarl	$31, %esi	#, tmp107
	sarq	$35, %rdx	#, tmp106
	subl	%esi, %edx	# tmp107, tmp102
	imull	$26, %edx, %edx	#, tmp102, tmp108
	subl	%edx, %ecx	# tmp108, tmp109
# eval/problem51/code.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addl	$97, %ecx	#, w
# eval/problem51/code.c:10:         s[i] = (char)w;
	movb	%cl, -1(%rdi)	# w, MEM[(char *)_29]
# eval/problem51/code.c:8:     for (size_t i = 0; i < len; i++) {
	cmpq	%rdi, %rax	# ivtmp.8, _26
	jne	.L4	#,
.L1:
# eval/problem51/code.c:12: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
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
