	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
# eval/problem13/code.c:5:     char *out = "";
	leaq	.LC0(%rip), %r12	#, <retval>
# eval/problem13/code.c:4: char *func0(char **strings, int count) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# eval/problem13/code.c:7:     for (int i = 0; i < count; i++) {
	testl	%esi, %esi	# count
	jle	.L1	#,
	leal	-1(%rsi), %eax	#, tmp98
	movq	%rdi, %rbx	# strings, ivtmp.7
# eval/problem13/code.c:6:     int longest_length = 0;
	xorl	%ebp, %ebp	# longest_length
	leaq	8(%rdi,%rax,8), %r13	#, _28
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem13/code.c:8:         int current_length = strlen(strings[i]);
	movq	(%rbx), %r14	# MEM[(char * *)_10], _4
	movq	%r14, %rdi	# _4,
	call	strlen@PLT	#
# eval/problem13/code.c:9:         if (current_length > longest_length) {
	cmpl	%ebp, %eax	# longest_length, tmp102
	jle	.L3	#,
	movl	%eax, %ebp	# tmp102, longest_length
	movq	%r14, %r12	# _4, <retval>
.L3:
# eval/problem13/code.c:7:     for (int i = 0; i < count; i++) {
	addq	$8, %rbx	#, ivtmp.7
	cmpq	%r13, %rbx	# _28, ivtmp.7
	jne	.L4	#,
.L1:
# eval/problem13/code.c:15: }
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	movq	%r12, %rax	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE35:
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
