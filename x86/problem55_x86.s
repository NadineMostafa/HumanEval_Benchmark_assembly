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
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp	# tmp139, s0
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# eval/problem55/code.c:5: bool func0(const char *s0, const char *s1) {
	movq	%rsi, %rbx	# tmp140, s1
# eval/problem55/code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	call	strlen@PLT	#
# eval/problem55/code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movq	%rbx, %rdi	# s1,
# eval/problem55/code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	movq	%rax, %r12	# tmp141, tmp117
# eval/problem55/code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	call	strlen@PLT	#
# eval/problem55/code.c:7:     for (int i = 0; i < len0; i++) {
	testl	%r12d, %r12d	# tmp117
	jle	.L20	#,
	leal	-1(%r12), %r9d	#,
	movl	%eax, %r8d	# tmp120, len1
	leaq	1(%rbp), %rsi	#, tmp134
	subl	$1, %eax	#, tmp137
	movq	%r9, %r12	#,
	movq	%rbp, %rdi	# s0, ivtmp.27
	leaq	1(%rbx,%rax), %rcx	#, _51
	addq	%rsi, %r9	# tmp134, _60
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem55/code.c:9:         for (int j = 0; j < len1; j++) {
	testl	%r8d, %r8d	# len1
	jle	.L18	#,
# eval/problem55/code.c:10:             if (s0[i] == s1[j]) {
	movzbl	(%rdi), %edx	# MEM[(const char *)_61], _5
	movq	%rbx, %rax	# s1, ivtmp.21
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L21:
# eval/problem55/code.c:9:         for (int j = 0; j < len1; j++) {
	addq	$1, %rax	#, ivtmp.21
	cmpq	%rcx, %rax	# _51, ivtmp.21
	je	.L18	#,
.L5:
# eval/problem55/code.c:10:             if (s0[i] == s1[j]) {
	cmpb	(%rax), %dl	# MEM[(const char *)_45], _5
	jne	.L21	#,
# eval/problem55/code.c:7:     for (int i = 0; i < len0; i++) {
	addq	$1, %rdi	#, ivtmp.27
	cmpq	%r9, %rdi	# _60, ivtmp.27
	jne	.L10	#,
	xorl	%edi, %edi	# ivtmp.14
	leaq	(%rsi,%r12), %rcx	#, _31
	.p2align 4,,10
	.p2align 3
.L11:
# eval/problem55/code.c:20:             if (s1[i] == s0[j]) {
	movzbl	(%rbx,%rdi), %edx	# MEM[(const char *)s1_25(D) + ivtmp.14_7 * 1], _11
	movq	%rbp, %rax	# s0, ivtmp.10
	jmp	.L9	#
	.p2align 4,,10
	.p2align 3
.L22:
# eval/problem55/code.c:19:         for (int j = 0; j < len0; j++) {
	addq	$1, %rax	#, ivtmp.10
	cmpq	%rcx, %rax	# _31, ivtmp.10
	je	.L18	#,
.L9:
# eval/problem55/code.c:20:             if (s1[i] == s0[j]) {
	cmpb	(%rax), %dl	# MEM[(const char *)_15], _11
	jne	.L22	#,
# eval/problem55/code.c:17:     for (int i = 0; i < len1; i++) {
	addq	$1, %rdi	#, ivtmp.14
	cmpl	%edi, %r8d	# ivtmp.14, len1
	jg	.L11	#,
# eval/problem55/code.c:28: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# eval/problem55/code.c:27:     return true;
	movl	$1, %eax	#, <retval>
# eval/problem55/code.c:28: }
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L18:
	.cfi_restore_state
# eval/problem55/code.c:15:         if (!found) return false;
	xorl	%eax, %eax	# <retval>
.L1:
# eval/problem55/code.c:28: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L20:
	.cfi_restore_state
# eval/problem55/code.c:17:     for (int i = 0; i < len1; i++) {
	testl	%eax, %eax	# tmp120
	setle	%al	#, <retval>
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
