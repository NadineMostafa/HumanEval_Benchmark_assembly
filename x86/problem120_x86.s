	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Yes"
.LC1:
	.string	"No"
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
	movq	%rdi, %rbp	# tmp158, s1
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %rbx	# tmp159, s2
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem120/code.c:6:     int len1 = strlen(s1);
	call	strlen@PLT	#
# eval/problem120/code.c:7:     int len2 = strlen(s2);
	movq	%rbx, %rdi	# s2,
# eval/problem120/code.c:6:     int len1 = strlen(s1);
	movq	%rax, %r13	# tmp160, tmp125
# eval/problem120/code.c:6:     int len1 = strlen(s1);
	movl	%eax, %r12d	# tmp125, len1
# eval/problem120/code.c:7:     int len2 = strlen(s2);
	call	strlen@PLT	#
# eval/problem120/code.c:11:     for (i = 0; i < len1; i++) {
	testl	%r13d, %r13d	# tmp125
	jle	.L2	#,
	leal	-1(%r13), %edx	#, tmp132
	movq	%rbp, %rsi	# s1, ivtmp.26
# eval/problem120/code.c:9:     int can = 1;
	movl	$1, %ecx	#, can
# eval/problem120/code.c:14:         if (count < 0) can = 0;
	xorl	%r8d, %r8d	# tmp148
	leaq	1(%rbp,%rdx), %r9	#, _108
# eval/problem120/code.c:5:     int count = 0;
	xorl	%edx, %edx	# count
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem120/code.c:13:         if (s1[i] == ')') count--;
	cmpb	$41, %dil	#, _5
	sete	%dil	#, tmp146
	movzbl	%dil, %edi	# tmp146, tmp146
	subl	%edi, %edx	# tmp146, count
# eval/problem120/code.c:14:         if (count < 0) can = 0;
	testl	%edx, %edx	# count
	cmovs	%r8d, %ecx	# can,, tmp148, can
# eval/problem120/code.c:11:     for (i = 0; i < len1; i++) {
	addq	$1, %rsi	#, ivtmp.26
	cmpq	%r9, %rsi	# _108, ivtmp.26
	je	.L53	#,
.L6:
# eval/problem120/code.c:12:         if (s1[i] == '(') count++;
	movzbl	(%rsi), %edi	# MEM[(const char *)_102], _5
# eval/problem120/code.c:12:         if (s1[i] == '(') count++;
	cmpb	$40, %dil	#, _5
	jne	.L3	#,
# eval/problem120/code.c:12:         if (s1[i] == '(') count++;
	addl	$1, %edx	#, count
# eval/problem120/code.c:14:         if (count < 0) can = 0;
	testl	%edx, %edx	# count
	cmovs	%r8d, %ecx	# can,, tmp148, can
# eval/problem120/code.c:11:     for (i = 0; i < len1; i++) {
	addq	$1, %rsi	#, ivtmp.26
	cmpq	%r9, %rsi	# _108, ivtmp.26
	jne	.L6	#,
.L53:
# eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	testl	%eax, %eax	# tmp128
	jle	.L7	#,
.L26:
	subl	$1, %eax	#, tmp135
	movq	%rbx, %rsi	# s2, ivtmp.16
# eval/problem120/code.c:19:         if (count < 0) can = 0;
	xorl	%r9d, %r9d	# tmp151
	leaq	1(%rbx,%rax), %r8	#, _91
# eval/problem120/code.c:9:     int can = 1;
	movq	%rbx, %rax	# ivtmp.16, ivtmp.21
	jmp	.L11	#
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem120/code.c:18:         if (s2[i] == ')') count--;
	cmpb	$41, %dil	#, _8
	sete	%dil	#, tmp149
	movzbl	%dil, %edi	# tmp149, tmp149
	subl	%edi, %edx	# tmp149, count
# eval/problem120/code.c:19:         if (count < 0) can = 0;
	testl	%edx, %edx	# count
	cmovs	%r9d, %ecx	# can,, tmp151, can
# eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	addq	$1, %rax	#, ivtmp.21
	cmpq	%r8, %rax	# _91, ivtmp.21
	je	.L54	#,
.L11:
# eval/problem120/code.c:17:         if (s2[i] == '(') count++;
	movzbl	(%rax), %edi	# MEM[(const char *)_79], _8
# eval/problem120/code.c:17:         if (s2[i] == '(') count++;
	cmpb	$40, %dil	#, _8
	jne	.L8	#,
# eval/problem120/code.c:17:         if (s2[i] == '(') count++;
	addl	$1, %edx	#, count
# eval/problem120/code.c:19:         if (count < 0) can = 0;
	testl	%edx, %edx	# count
	cmovs	%r9d, %ecx	# can,, tmp151, can
# eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	addq	$1, %rax	#, ivtmp.21
	cmpq	%r8, %rax	# _91, ivtmp.21
	jne	.L11	#,
.L54:
# eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	testl	%edx, %edx	# count
	jne	.L32	#,
	andl	$1, %ecx	#, can
# eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	leaq	.LC0(%rip), %rax	#, <retval>
# eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	je	.L32	#,
.L1:
# eval/problem120/code.c:39: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
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
.L32:
	.cfi_restore_state
# eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	movl	$1, %edx	#, can
	xorl	%eax, %eax	# count
# eval/problem120/code.c:29:         if (count < 0) can = 0;
	xorl	%edi, %edi	# tmp154
	jmp	.L19	#
	.p2align 4,,10
	.p2align 3
.L16:
# eval/problem120/code.c:28:         if (s2[i] == ')') count--;
	cmpb	$41, %cl	#, _15
	sete	%cl	#, tmp152
	movzbl	%cl, %ecx	# tmp152, tmp152
	subl	%ecx, %eax	# tmp152, count
# eval/problem120/code.c:29:         if (count < 0) can = 0;
	testl	%eax, %eax	# count
	cmovs	%edi, %edx	# can,, tmp154, can
# eval/problem120/code.c:26:     for (i = 0; i < len2; i++) {
	addq	$1, %rsi	#, ivtmp.16
	cmpq	%r8, %rsi	# _91, ivtmp.16
	je	.L55	#,
.L19:
# eval/problem120/code.c:27:         if (s2[i] == '(') count++;
	movzbl	(%rsi), %ecx	# MEM[(const char *)_86], _15
# eval/problem120/code.c:27:         if (s2[i] == '(') count++;
	cmpb	$40, %cl	#, _15
	jne	.L16	#,
# eval/problem120/code.c:27:         if (s2[i] == '(') count++;
	addl	$1, %eax	#, count
# eval/problem120/code.c:29:         if (count < 0) can = 0;
	testl	%eax, %eax	# count
	cmovs	%edi, %edx	# can,, tmp154, can
# eval/problem120/code.c:26:     for (i = 0; i < len2; i++) {
	addq	$1, %rsi	#, ivtmp.16
	cmpq	%r8, %rsi	# _91, ivtmp.16
	jne	.L19	#,
.L55:
# eval/problem120/code.c:31:     for (i = 0; i < len1; i++) {
	testl	%r13d, %r13d	# tmp125
	jle	.L20	#,
.L15:
# eval/problem120/code.c:24:     can = 1;
	xorl	%ecx, %ecx	# ivtmp.8
# eval/problem120/code.c:34:         if (count < 0) can = 0;
	xorl	%edi, %edi	# tmp157
	jmp	.L24	#
	.p2align 4,,10
	.p2align 3
.L21:
# eval/problem120/code.c:33:         if (s1[i] == ')') count--;
	cmpb	$41, %sil	#, _20
	sete	%sil	#, tmp155
	movzbl	%sil, %esi	# tmp155, tmp155
	subl	%esi, %eax	# tmp155, count
# eval/problem120/code.c:34:         if (count < 0) can = 0;
	testl	%eax, %eax	# count
	cmovs	%edi, %edx	# can,, tmp157, can
# eval/problem120/code.c:31:     for (i = 0; i < len1; i++) {
	addq	$1, %rcx	#, ivtmp.8
	cmpl	%ecx, %r12d	# ivtmp.8, len1
	jle	.L20	#,
.L24:
# eval/problem120/code.c:32:         if (s1[i] == '(') count++;
	movzbl	0(%rbp,%rcx), %esi	# MEM[(const char *)s1_51(D) + ivtmp.8_36 * 1], _20
# eval/problem120/code.c:32:         if (s1[i] == '(') count++;
	cmpb	$40, %sil	#, _20
	jne	.L21	#,
# eval/problem120/code.c:32:         if (s1[i] == '(') count++;
	addl	$1, %eax	#, count
# eval/problem120/code.c:34:         if (count < 0) can = 0;
	testl	%eax, %eax	# count
	cmovs	%edi, %edx	# can,, tmp157, can
# eval/problem120/code.c:31:     for (i = 0; i < len1; i++) {
	addq	$1, %rcx	#, ivtmp.8
	cmpl	%ecx, %r12d	# ivtmp.8, len1
	jg	.L24	#,
.L20:
# eval/problem120/code.c:36:     if (count == 0 && can) return "Yes";
	testl	%eax, %eax	# count
	jne	.L28	#,
	andl	$1, %edx	#, can
	je	.L28	#,
.L51:
# eval/problem120/code.c:39: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
# eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	leaq	.LC0(%rip), %rax	#, <retval>
# eval/problem120/code.c:39: }
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
.L28:
	.cfi_restore_state
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
# eval/problem120/code.c:38:     return "No";
	leaq	.LC1(%rip), %rax	#, <retval>
# eval/problem120/code.c:39: }
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
.L2:
	.cfi_restore_state
# eval/problem120/code.c:5:     int count = 0;
	xorl	%edx, %edx	# count
# eval/problem120/code.c:9:     int can = 1;
	movl	$1, %ecx	#, can
# eval/problem120/code.c:16:     for (i = 0; i < len2; i++) {
	testl	%eax, %eax	# tmp128
	jg	.L26	#,
	jmp	.L51	#
	.p2align 4,,10
	.p2align 3
.L7:
# eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	testl	%edx, %edx	# count
	jne	.L31	#,
	andl	$1, %ecx	#, can
# eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	leaq	.LC0(%rip), %rax	#, <retval>
# eval/problem120/code.c:21:     if (count == 0 && can) return "Yes";
	jne	.L1	#,
.L31:
# eval/problem120/code.c:23:     count = 0;
	xorl	%eax, %eax	# count
# eval/problem120/code.c:24:     can = 1;
	movl	$1, %edx	#, can
	jmp	.L15	#
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
