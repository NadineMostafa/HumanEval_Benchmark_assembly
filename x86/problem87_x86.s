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
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp153, s
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
# eval/problem87/code.c:5: char* func0(const char* s) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp156
	movq	%rax, 56(%rsp)	# tmp156, D.3495
	xorl	%eax, %eax	# tmp156
# eval/problem87/code.c:6:     int len = strlen(s);
	call	strlen@PLT	#
# eval/problem87/code.c:7:     char* out = malloc(len + 2); 
	leal	2(%rax), %edi	#, tmp128
# eval/problem87/code.c:6:     int len = strlen(s);
	movq	%rax, %rbx	# tmp154, tmp126
# eval/problem87/code.c:7:     char* out = malloc(len + 2); 
	movslq	%edi, %rdi	# tmp128, tmp129
	call	malloc@PLT	#
	movq	%rax, %r14	# tmp155, <retval>
# eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	testl	%ebx, %ebx	# tmp126
	js	.L2	#,
	movl	%ebx, %ebx	# tmp126, _1
# eval/problem87/code.c:9:     int out_index = 0, current_index = 0;
	xorl	%r12d, %r12d	# out_index
	movq	%rsp, %r15	#, ivtmp.23
	leaq	1(%rbp,%rbx), %r13	#, _99
# eval/problem87/code.c:9:     int out_index = 0, current_index = 0;
	xorl	%ebx, %ebx	# current_index
	jmp	.L14	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem87/code.c:28:             current[current_index++] = s[i];
	movslq	%ebx, %rdx	# current_index, current_index
# eval/problem87/code.c:28:             current[current_index++] = s[i];
	addl	$1, %ebx	#, current_index
# eval/problem87/code.c:28:             current[current_index++] = s[i];
	movb	%al, (%rsp,%rdx)	# _6, current[current_index_72]
.L13:
# eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	addq	$1, %rbp	#, ivtmp.29
	cmpq	%r13, %rbp	# _99, ivtmp.29
	je	.L26	#,
.L14:
# eval/problem87/code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	movzbl	0(%rbp), %eax	# MEM[(const char *)_94], _6
# eval/problem87/code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	testb	$-33, %al	#, _6
	jne	.L3	#,
# eval/problem87/code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	leal	-1(%rbx), %r10d	#, _64
	movq	%r15, %rsi	# ivtmp.23, ivtmp.23
# eval/problem87/code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	xorl	%r8d, %r8d	# j
# eval/problem87/code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	testl	%r10d, %r10d	# _64
	jle	.L9	#,
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem87/code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	addl	$1, %r8d	#, j
# eval/problem87/code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	cmpl	%ebx, %r8d	# current_index, j
	jge	.L27	#,
	movl	%r10d, %edi	# _64, tmp135
	leaq	1(%rsi), %r9	#, ivtmp.23
	movq	%rsi, %rax	# ivtmp.23, ivtmp.15
	subl	%r8d, %edi	# j, tmp135
	addq	%r9, %rdi	# ivtmp.23, _33
	.p2align 4,,10
	.p2align 3
.L11:
# eval/problem87/code.c:15:                     if (current[j] > current[k]) {
	movzbl	(%rsi), %edx	# MEM[(char *)_84], _12
# eval/problem87/code.c:15:                     if (current[j] > current[k]) {
	movzbl	1(%rax), %ecx	# MEM[(char *)_18 + 1B], _13
# eval/problem87/code.c:15:                     if (current[j] > current[k]) {
	cmpb	%cl, %dl	# _13, _12
	jle	.L10	#,
# eval/problem87/code.c:17:                         current[j] = current[k];
	movb	%cl, (%rsi)	# _13, MEM[(char *)_84]
# eval/problem87/code.c:18:                         current[k] = temp;
	movb	%dl, 1(%rax)	# _12, MEM[(char *)_18 + 1B]
.L10:
# eval/problem87/code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	addq	$1, %rax	#, ivtmp.15
	cmpq	%rax, %rdi	# ivtmp.15, _33
	jne	.L11	#,
# eval/problem87/code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	movq	%r9, %rsi	# ivtmp.23, ivtmp.23
	cmpl	%r10d, %r8d	# _64, j
	jne	.L8	#,
.L9:
# eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	testl	%r12d, %r12d	# out_index
	je	.L6	#,
# eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	movslq	%r12d, %rax	# out_index, out_index
	addl	$1, %r12d	#, out_index
# eval/problem87/code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	movb	$32, (%r14,%rax)	#, *_16
.L6:
# eval/problem87/code.c:23:             for (int j = 0; j < current_index; j++) {
	testl	%ebx, %ebx	# current_index
	je	.L13	#,
# eval/problem87/code.c:24:                 out[out_index++] = current[j];
	movslq	%r12d, %rdi	# out_index, out_index
	movslq	%ebx, %rdx	# current_index, current_index
	movq	%r15, %rsi	# ivtmp.23,
# eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	addq	$1, %rbp	#, ivtmp.29
# eval/problem87/code.c:24:                 out[out_index++] = current[j];
	addq	%r14, %rdi	# <retval>, tmp139
# eval/problem87/code.c:24:                 out[out_index++] = current[j];
	addl	%ebx, %r12d	# current_index, out_index
# eval/problem87/code.c:26:             current_index = 0;
	xorl	%ebx, %ebx	# current_index
# eval/problem87/code.c:24:                 out[out_index++] = current[j];
	call	memcpy@PLT	#
# eval/problem87/code.c:11:     for (int i = 0; i <= len; i++) {
	cmpq	%r13, %rbp	# _99, ivtmp.29
	jne	.L14	#,
.L26:
# eval/problem87/code.c:32:     out[out_index] = '\0';
	movslq	%r12d, %rax	# out_index, out_index
	addq	%r14, %rax	# <retval>, _30
.L2:
# eval/problem87/code.c:32:     out[out_index] = '\0';
	movb	$0, (%rax)	#, *prephitmp_35
# eval/problem87/code.c:34: }
	movq	56(%rsp), %rax	# D.3495, tmp157
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp157
	jne	.L28	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r14, %rax	# <retval>,
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
.L27:
	.cfi_restore_state
	leaq	1(%rsi), %r9	#, ivtmp.23
# eval/problem87/code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	movq	%r9, %rsi	# ivtmp.23, ivtmp.23
	cmpl	%r10d, %r8d	# _64, j
	jne	.L8	#,
	jmp	.L9	#
.L28:
# eval/problem87/code.c:34: }
	call	__stack_chk_fail@PLT	#
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
