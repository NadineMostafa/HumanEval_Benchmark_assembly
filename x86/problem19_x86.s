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
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rsi, %r13	# tmp106, substring
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# eval/problem19/code.c:4: int func0(const char *str, const char *substring) {
	movq	%rdi, %rbx	# tmp105, str
# eval/problem19/code.c:6:     int str_len = strlen(str);
	call	strlen@PLT	#
# eval/problem19/code.c:6:     int str_len = strlen(str);
	movl	%eax, %r12d	# tmp97, <retval>
# eval/problem19/code.c:8:     if (str_len == 0) return 0;
	testl	%eax, %eax	# tmp97
	je	.L1	#,
# eval/problem19/code.c:7:     int sub_len = strlen(substring);
	movq	%r13, %rdi	# substring,
	movq	%rax, %r14	# tmp107, tmp97
	call	strlen@PLT	#
# eval/problem19/code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	subl	%eax, %r14d	# tmp100, _22
	js	.L5	#,
	movslq	%r14d, %r14	# _22, _22
# eval/problem19/code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	movslq	%eax, %rbp	# tmp100, _9
# eval/problem19/code.c:5:     int out = 0;
	xorl	%r12d, %r12d	# <retval>
	leaq	1(%rbx,%r14), %r14	#, _27
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem19/code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	movq	%rbx, %rdi	# ivtmp.7,
	movq	%rbp, %rdx	# _9,
	movq	%r13, %rsi	# substring,
	call	strncmp@PLT	#
# eval/problem19/code.c:11:             out++;
	cmpl	$1, %eax	#, tmp109
	adcl	$0, %r12d	# <retval>
# eval/problem19/code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	addq	$1, %rbx	#, ivtmp.7
	cmpq	%r14, %rbx	# _27, ivtmp.7
	jne	.L4	#,
.L1:
# eval/problem19/code.c:14: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
# eval/problem19/code.c:8:     if (str_len == 0) return 0;
	xorl	%r12d, %r12d	# <retval>
	jmp	.L1	#
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
