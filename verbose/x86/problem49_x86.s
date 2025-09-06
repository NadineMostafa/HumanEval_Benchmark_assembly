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
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# eval/problem49/code.c:5: bool func0(const char *text) {
	movq	%rdi, %rbx	# tmp106, text
# eval/problem49/code.c:6:     int len = strlen(text);
	call	strlen@PLT	#
# eval/problem49/code.c:7:     for (int i = 0; i < len / 2; i++) {
	movl	%eax, %ecx	# tmp97, tmp99
	shrl	$31, %ecx	#, tmp99
	addl	%eax, %ecx	# tmp97, tmp100
	sarl	%ecx	# tmp101
# eval/problem49/code.c:7:     for (int i = 0; i < len / 2; i++) {
	cmpl	$1, %eax	#, tmp97
	jle	.L4	#,
# eval/problem49/code.c:8:         if (text[i] != text[len - 1 - i]) {
	subl	$1, %eax	#, tmp102
	xorl	%edx, %edx	# ivtmp.5
	cltq
	addq	%rbx, %rax	# text, ivtmp.8
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem49/code.c:7:     for (int i = 0; i < len / 2; i++) {
	addq	$1, %rdx	#, ivtmp.5
	subq	$1, %rax	#, ivtmp.8
	cmpl	%edx, %ecx	# ivtmp.5, tmp101
	jle	.L4	#,
.L3:
# eval/problem49/code.c:8:         if (text[i] != text[len - 1 - i]) {
	movzbl	(%rax), %esi	# MEM[(const char *)_26], tmp110
	cmpb	%sil, (%rbx,%rdx)	# tmp110, MEM[(const char *)text_14(D) + ivtmp.5_24 * 1]
	je	.L9	#,
# eval/problem49/code.c:9:             return false;
	xorl	%eax, %eax	# <retval>
# eval/problem49/code.c:13: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore_state
# eval/problem49/code.c:12:     return true;
	movl	$1, %eax	#, <retval>
# eval/problem49/code.c:13: }
	popq	%rbx	#
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
