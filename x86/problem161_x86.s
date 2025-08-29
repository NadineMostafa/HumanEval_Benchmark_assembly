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
	movq	%rsi, %r14	# tmp290, operand
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movslq	%ecx, %r13	# tmp292,
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# eval/problem161/code.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	leaq	0(,%r13,4), %rbx	#, _2
# eval/problem161/code.c:6: int func0(const char **operato, const int *operand, int operato_size, int operand_size) {
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# eval/problem161/code.c:6: int func0(const char **operato, const int *operand, int operato_size, int operand_size) {
	movq	%rdi, 24(%rsp)	# tmp289, %sfp
# eval/problem161/code.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	movq	%rbx, %rdi	# _2,
# eval/problem161/code.c:6: int func0(const char **operato, const int *operand, int operato_size, int operand_size) {
	movl	%edx, 20(%rsp)	# tmp291, %sfp
# eval/problem161/code.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	call	malloc@PLT	#
# eval/problem161/code.c:8:     int *posto = (int*)malloc(operand_size * sizeof(int));
	movq	%rbx, %rdi	# _2,
# eval/problem161/code.c:7:     int *num = (int*)malloc(operand_size * sizeof(int));
	movq	%rax, %r12	# tmp293, num
# eval/problem161/code.c:8:     int *posto = (int*)malloc(operand_size * sizeof(int));
	call	malloc@PLT	#
	movq	%rax, %rbp	# tmp294, posto
# eval/problem161/code.c:9:     for (int i = 0; i < operand_size; i++) {
	testl	%r13d, %r13d	# operand_size
	jle	.L6	#,
# eval/problem161/code.c:10:         num[i] = operand[i];
	movq	%rbx, %rdx	# _2,
	movq	%r14, %rsi	# operand,
	movq	%r12, %rdi	# num,
	call	memcpy@PLT	#
	xorl	%eax, %eax	# ivtmp.39
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem161/code.c:11:         posto[i] = i;
	movl	%eax, 0(%rbp,%rax,4)	# ivtmp.39, MEM[(int *)posto_151 + ivtmp.39_127 * 4]
# eval/problem161/code.c:9:     for (int i = 0; i < operand_size; i++) {
	addq	$1, %rax	#, ivtmp.39
	cmpq	%r13, %rax	# operand_size, ivtmp.39
	jne	.L5	#,
.L6:
# eval/problem161/code.c:13:     for (int i = 0; i < operato_size; i++) {
	movl	20(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L4	#,
	movl	20(%rsp), %eax	# %sfp, operato_size
	movq	24(%rsp), %r14	# %sfp, operato
	leaq	4(%rbp), %rdx	#, ivtmp.36
	subl	$1, %eax	#, tmp228
	movq	%r14, %r13	# operato, ivtmp.16
	leaq	8(%r14,%rax,8), %rbx	#, _135
	.p2align 4,,10
	.p2align 3
.L13:
# eval/problem161/code.c:14:         if (strcmp(operato[i], "**") == 0) {
	movq	(%r14), %rax	# MEM[(const char * *)_179], MEM[(const char * *)_179]
	cmpb	$42, (%rax)	#, MEM <char[1:3]> [(void *)_14]
	jne	.L8	#,
	cmpb	$42, 1(%rax)	#, MEM <char[1:3]> [(void *)_14]
	jne	.L8	#,
# eval/problem161/code.c:14:         if (strcmp(operato[i], "**") == 0) {
	cmpb	$0, 2(%rax)	#, MEM <char[1:3]> [(void *)_14]
	jne	.L8	#,
# eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movslq	-4(%rdx), %rax	# MEM[(int *)_132 + -4B],
	movq	%rax, %r15	#,
# eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	0(%rbp,%rax,4), %eax	# *_227, _22
# eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%eax, %r15d	# _22, _34
	je	.L12	#,
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cltq
	movl	%eax, -4(%rdx)	# _34, MEM[(int *)_132 + -4B]
	movq	%rax, %r15	#,
# eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	0(%rbp,%rax,4), %eax	# *_21, _22
# eval/problem161/code.c:15:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%r15d, %eax	# _34, _22
	jne	.L9	#,
.L12:
# eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movslq	(%rdx), %rax	# MEM[(int *)_132],
	movq	%rax, %rcx	#,
# eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %r9	#, _28
	movl	0(%rbp,%rax,4), %eax	# *_219, _30
# eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%eax, %ecx	# _30, _216
	je	.L11	#,
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movslq	%eax, %rcx	# _30, _30
# eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	%eax, (%rdx)	# _30, MEM[(int *)_132]
	movl	%eax, %esi	# _30, _257
# eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	0(%rbp,%rcx,4), %eax	# *_29, _30
	leaq	0(,%rcx,4), %r9	#, _28
# eval/problem161/code.c:16:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%esi, %eax	# _257, _30
	jne	.L10	#,
.L11:
# eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	movslq	%r15d, %rax	# _34, _34
# eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	pxor	%xmm0, %xmm0	# tmp242
	pxor	%xmm1, %xmm1	#
	movq	%rdx, 8(%rsp)	# ivtmp.36, %sfp
	cvtsi2sdl	(%r12,%r9), %xmm1	# *_31,
# eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	leaq	(%r12,%rax,4), %rax	#, _37
# eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	cvtsi2sdl	(%rax), %xmm0	# *_37, tmp242
	movq	%rax, (%rsp)	# _37, %sfp
	call	pow@PLT	#
# eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	movq	(%rsp), %rax	# %sfp, _37
# eval/problem161/code.c:18:             posto[i + 1] = posto[i];
	movq	8(%rsp), %rdx	# %sfp, ivtmp.36
# eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	cvttsd2sil	%xmm0, %ecx	# tmp295, tmp243
# eval/problem161/code.c:18:             posto[i + 1] = posto[i];
	movl	%r15d, (%rdx)	# _34, MEM[(int *)_132]
# eval/problem161/code.c:17:             num[posto[i]] = pow(num[posto[i]], num[posto[i + 1]]);
	movl	%ecx, (%rax)	# tmp243, *_37
.L8:
# eval/problem161/code.c:13:     for (int i = 0; i < operato_size; i++) {
	addq	$8, %r14	#, ivtmp.33
	addq	$4, %rdx	#, ivtmp.36
	cmpq	%r14, %rbx	# ivtmp.33, _135
	jne	.L13	#,
	movl	20(%rsp), %r14d	# %sfp, _145
# eval/problem161/code.c:13:     for (int i = 0; i < operato_size; i++) {
	movq	24(%rsp), %rbx	# %sfp, ivtmp.25
	movq	%rbp, %rdi	# posto, ivtmp.18
	movq	%rbp, %rsi	# posto, ivtmp.27
	leaq	0(%rbp,%r14,4), %r8	#, _234
	.p2align 4,,10
	.p2align 3
.L26:
# eval/problem161/code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	movq	(%rbx), %r11	# MEM[(const char * *)_246], _45
	movzbl	(%r11), %r10d	# MEM <char[1:2]> [(void *)_45], MEM <char[1:2]> [(void *)_45]
	cmpl	$42, %r10d	#, MEM <char[1:2]> [(void *)_45]
	jne	.L15	#,
# eval/problem161/code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	cmpb	$0, 1(%r11)	#, MEM <char[1:2]> [(void *)_45]
	jne	.L15	#,
.L20:
# eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movslq	(%rsi), %rax	# MEM[(int *)_230],
	movq	%rax, %rcx	#,
# eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	0(%rbp,%rax,4), %eax	# *_184, _54
# eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%eax, %ecx	# _54, _64
	je	.L22	#,
	.p2align 4,,10
	.p2align 3
.L16:
# eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cltq
	movl	%eax, (%rsi)	# _64, MEM[(int *)_230]
	movq	%rax, %rcx	#,
# eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	0(%rbp,%rax,4), %eax	# *_53, _54
# eval/problem161/code.c:23:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%ecx, %eax	# _64, _54
	jne	.L16	#,
.L22:
# eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movslq	4(%rsi), %rax	# MEM[(int *)_230 + 4B],
	movq	%rax, %rdx	#,
# eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %r14	#, _60
	movl	0(%rbp,%rax,4), %eax	# *_190, _62
# eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%edx, %eax	# _191, _62
	je	.L18	#,
	.p2align 4,,10
	.p2align 3
.L17:
# eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movslq	%eax, %rdx	# _62, _62
# eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	%eax, 4(%rsi)	# _62, MEM[(int *)_230 + 4B]
	movl	%eax, %r9d	# _62, _102
# eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	0(%rbp,%rdx,4), %eax	# *_61, _62
	leaq	0(,%rdx,4), %r14	#, _60
# eval/problem161/code.c:24:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%r9d, %eax	# _102, _62
	jne	.L17	#,
.L18:
# eval/problem161/code.c:25:             if (strcmp(operato[i], "*") == 0)
	subl	$42, %r10d	#, _63
	jne	.L23	#,
	movzbl	1(%r11), %r10d	# MEM <char[1:2]> [(void *)_45], _63
.L23:
# eval/problem161/code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	addq	%r12, %r14	# num, _302
# eval/problem161/code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	movslq	%ecx, %rax	# _64, _64
# eval/problem161/code.c:25:             if (strcmp(operato[i], "*") == 0)
	testl	%r10d, %r10d	# _63
	jne	.L24	#,
# eval/problem161/code.c:26:                 num[posto[i]] *= num[posto[i + 1]];
	leaq	(%r12,%rax,4), %rdx	#, _67
	movl	(%rdx), %eax	# *_67, *_67
	imull	(%r14), %eax	# *_302, tmp259
	movl	%eax, (%rdx)	# tmp259, *_67
.L25:
# eval/problem161/code.c:29:             posto[i + 1] = posto[i];
	movl	%ecx, 4(%rsi)	# _64, MEM[(int *)_230 + 4B]
.L21:
# eval/problem161/code.c:21:     for (int i = 0; i < operato_size; i++) {
	addq	$4, %rsi	#, ivtmp.27
	addq	$8, %rbx	#, ivtmp.25
	cmpq	%rsi, %r8	# ivtmp.27, _234
	jne	.L26	#,
	.p2align 4,,10
	.p2align 3
.L39:
# eval/problem161/code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	movq	0(%r13), %rax	# MEM[(const char * *)_292], _84
	movzbl	(%rax), %r10d	# MEM <char[1:2]> [(void *)_84], MEM <char[1:2]> [(void *)_84]
	cmpl	$43, %r10d	#, MEM <char[1:2]> [(void *)_84]
	jne	.L28	#,
# eval/problem161/code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	cmpb	$0, 1(%rax)	#, MEM <char[1:2]> [(void *)_84]
	jne	.L28	#,
.L33:
# eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movslq	(%rdi), %rax	# MEM[(int *)_282],
	movq	%rax, %rdx	#,
# eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	0(%rbp,%rax,4), %eax	#* posto, _98
# eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%edx, %eax	# _110, _98
	je	.L35	#,
	.p2align 4,,10
	.p2align 3
.L29:
# eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cltq
	movl	%eax, (%rdi)	# _110, MEM[(int *)_282]
	movq	%rax, %rdx	#,
# eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	movl	0(%rbp,%rax,4), %eax	#* posto, _98
# eval/problem161/code.c:34:             while (posto[posto[i]] != posto[i]) posto[i] = posto[posto[i]];
	cmpl	%edx, %eax	# _110, _98
	jne	.L29	#,
.L35:
# eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movslq	4(%rdi), %rax	# MEM[(int *)_282 + 4B],
	movq	%rax, %rcx	#,
# eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	leaq	0(,%rax,4), %r9	#, _106
	movl	0(%rbp,%rax,4), %eax	# *_208, _108
# eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%eax, %ecx	# _108, _91
	je	.L31	#,
	.p2align 4,,10
	.p2align 3
.L30:
# eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movslq	%eax, %rcx	# _108, _108
# eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	%eax, 4(%rdi)	# _108, MEM[(int *)_282 + 4B]
	movl	%eax, %esi	# _108, _254
# eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	movl	0(%rbp,%rcx,4), %eax	# *_107, _108
	leaq	0(,%rcx,4), %r9	#, _106
# eval/problem161/code.c:35:             while (posto[posto[i + 1]] != posto[i + 1]) posto[i + 1] = posto[posto[i + 1]];
	cmpl	%esi, %eax	# _254, _108
	jne	.L30	#,
.L31:
# eval/problem161/code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	addq	%r12, %r9	# num, _301
# eval/problem161/code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	movslq	%edx, %rax	# _110, _110
	movl	(%r9), %ecx	# *_301, *_301
# eval/problem161/code.c:36:             if (strcmp(operato[i], "+") == 0)
	cmpl	$43, %r10d	#, MEM <char[1:2]> [(void *)_84]
	jne	.L37	#,
# eval/problem161/code.c:37:                 num[posto[i]] += num[posto[i + 1]];
	addl	%ecx, (%r12,%rax,4)	# *_301, *_113
.L38:
# eval/problem161/code.c:40:             posto[i + 1] = posto[i];
	movl	%edx, 4(%rdi)	# _110, MEM[(int *)_282 + 4B]
.L34:
# eval/problem161/code.c:32:     for (int i = 0; i < operato_size; i++) {
	addq	$4, %rdi	#, ivtmp.18
	addq	$8, %r13	#, ivtmp.16
	cmpq	%rdi, %r8	# ivtmp.18, _234
	jne	.L39	#,
.L4:
# eval/problem161/code.c:44:     free(num);
	movq	%r12, %rdi	# num,
# eval/problem161/code.c:43:     int result = num[0];
	movl	(%r12), %r13d	# *num_149, <retval>
# eval/problem161/code.c:44:     free(num);
	call	free@PLT	#
# eval/problem161/code.c:45:     free(posto);
	movq	%rbp, %rdi	# posto,
	call	free@PLT	#
# eval/problem161/code.c:47: }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r13d, %eax	# <retval>,
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
.L28:
	.cfi_restore_state
# eval/problem161/code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	cmpl	$45, %r10d	#, MEM <char[1:2]> [(void *)_84]
	jne	.L34	#,
# eval/problem161/code.c:33:         if (strcmp(operato[i], "+") == 0 || strcmp(operato[i], "-") == 0) {
	cmpb	$0, 1(%rax)	#, MEM <char[1:2]> [(void *)_84]
	je	.L33	#,
	jmp	.L34	#
	.p2align 4,,10
	.p2align 3
.L15:
# eval/problem161/code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	cmpb	$47, (%r11)	#, MEM <char[1:3]> [(void *)_45]
	jne	.L21	#,
	cmpb	$47, 1(%r11)	#, MEM <char[1:3]> [(void *)_45]
	jne	.L21	#,
# eval/problem161/code.c:22:         if (strcmp(operato[i], "*") == 0 || strcmp(operato[i], "//") == 0) {
	cmpb	$0, 2(%r11)	#, MEM <char[1:3]> [(void *)_45]
	je	.L20	#,
	jmp	.L21	#
	.p2align 4,,10
	.p2align 3
.L37:
# eval/problem161/code.c:39:                 num[posto[i]] -= num[posto[i + 1]];
	subl	%ecx, (%r12,%rax,4)	# *_301, *_121
	jmp	.L38	#
	.p2align 4,,10
	.p2align 3
.L24:
# eval/problem161/code.c:28:                 num[posto[i]] /= num[posto[i + 1]];
	leaq	(%r12,%rax,4), %r9	#, _75
	movl	(%r9), %eax	# *_75, *_75
	cltd
	idivl	(%r14)	# *_302
	movl	%eax, (%r9)	# tmp264, *_75
	jmp	.L25	#
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
