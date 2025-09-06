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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp	# tmp108, str
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rsi, %rbx	# tmp109, out
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# eval/problem28/code.c:5:     int length = strlen(str);
	call	strlen@PLT	#
# eval/problem28/code.c:6:     for (int i = 0; i < length; i++) {
	testl	%eax, %eax	# tmp100
	jle	.L2	#,
	leal	-1(%rax), %esi	#, _26
	xorl	%ecx, %ecx	# ivtmp.9
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem28/code.c:9:             w -= 32;
	subl	$32, %edx	#, w
# eval/problem28/code.c:13:         out[i] = w;
	movb	%dl, (%rbx,%rcx)	# w, MEM[(char *)out_18(D) + ivtmp.9_32 * 1]
# eval/problem28/code.c:6:     for (int i = 0; i < length; i++) {
	leaq	1(%rcx), %rdx	#, ivtmp.9
	cmpq	%rcx, %rsi	# ivtmp.9, _26
	je	.L2	#,
.L6:
	movq	%rdx, %rcx	# ivtmp.9, ivtmp.9
.L5:
# eval/problem28/code.c:7:         char w = str[i];
	movzbl	0(%rbp,%rcx), %edx	# MEM[(const char *)str_16(D) + ivtmp.9_32 * 1], w
# eval/problem28/code.c:8:         if (w >= 'a' && w <= 'z') {
	leal	-97(%rdx), %r8d	#, tmp103
# eval/problem28/code.c:8:         if (w >= 'a' && w <= 'z') {
	cmpb	$25, %r8b	#, tmp103
	jbe	.L9	#,
# eval/problem28/code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	leal	-65(%rdx), %r8d	#, tmp104
# eval/problem28/code.c:11:             w += 32;
	leal	32(%rdx), %edi	#, tmp106
	cmpb	$26, %r8b	#, tmp104
	cmovb	%edi, %edx	# tmp106,, w
# eval/problem28/code.c:13:         out[i] = w;
	movb	%dl, (%rbx,%rcx)	# w, MEM[(char *)out_18(D) + ivtmp.9_32 * 1]
# eval/problem28/code.c:6:     for (int i = 0; i < length; i++) {
	leaq	1(%rcx), %rdx	#, ivtmp.9
	cmpq	%rcx, %rsi	# ivtmp.9, _26
	jne	.L6	#,
.L2:
# eval/problem28/code.c:15:     out[length] = '\0';
	cltq
# eval/problem28/code.c:15:     out[length] = '\0';
	movb	$0, (%rbx,%rax)	#, *_11
# eval/problem28/code.c:16: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
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
