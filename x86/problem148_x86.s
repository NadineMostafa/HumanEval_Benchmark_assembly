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
.LFB39:
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movslq	%edi, %rbx	# tmp213,
# eval/problem148/code.c:5:     int *a = (int *)malloc(n * sizeof(int));
	leaq	0(,%rbx,4), %rdi	#, tmp155
# eval/problem148/code.c:4: int func0(int n) {
	movq	%rbx, %r14	#,
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# eval/problem148/code.c:5:     int *a = (int *)malloc(n * sizeof(int));
	call	malloc@PLT	#
	movq	%rax, %rbp	# tmp214, a
# eval/problem148/code.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	leal	1(%rbx), %eax	#, tmp157
	cltq
# eval/problem148/code.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	leaq	0(,%rax,8), %r15	#, _5
	movq	%r15, %rdi	# _5,
	movq	%r15, 8(%rsp)	# _5, %sfp
	call	malloc@PLT	#
# eval/problem148/code.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	movq	%r15, %rdi	# _5,
# eval/problem148/code.c:6:     int **sum = (int **)malloc((n + 1) * sizeof(int *));
	movq	%rax, %r12	# tmp215, sum
# eval/problem148/code.c:7:     int **sum2 = (int **)malloc((n + 1) * sizeof(int *));
	call	malloc@PLT	#
	movq	%rax, %r13	# tmp216, sum2
# eval/problem148/code.c:8:     for (int i = 0; i <= n; i++) {
	testl	%ebx, %ebx	# n
	js	.L33	#,
	leaq	8(,%rbx,8), %rax	#, _205
	xorl	%r15d, %r15d	# ivtmp.112
	movq	%rbx, (%rsp)	# n, %sfp
	movq	%r15, %rbx	# ivtmp.112, ivtmp.112
	movq	%rax, %r15	# _205, _205
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem148/code.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	movl	$4, %esi	#,
	movl	$3, %edi	#,
	call	calloc@PLT	#
# eval/problem148/code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	movl	$4, %esi	#,
	movl	$3, %edi	#,
# eval/problem148/code.c:9:         sum[i] = (int *)calloc(3, sizeof(int));
	movq	%rax, (%r12,%rbx)	# tmp217, MEM[(int * *)sum_119 + ivtmp.112_213 * 1]
# eval/problem148/code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	call	calloc@PLT	#
# eval/problem148/code.c:10:         sum2[i] = (int *)calloc(3, sizeof(int));
	movq	%rax, 0(%r13,%rbx)	# tmp218, MEM[(int * *)sum2_121 + ivtmp.112_213 * 1]
# eval/problem148/code.c:8:     for (int i = 0; i <= n; i++) {
	addq	$8, %rbx	#, ivtmp.112
	cmpq	%rbx, %r15	# ivtmp.112, _205
	jne	.L6	#,
# eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movq	(%r12), %r9	# *sum_119, _12
# eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movq	0(%r13), %r10	# *sum2_121, _13
	movq	(%rsp), %rbx	# %sfp, n
# eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movq	$0, (%r9)	#, MEM <unsigned long> [(int *)_12]
# eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movl	$0, 8(%r9)	#, MEM[(int *)_12 + 8B]
# eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movq	$0, (%r10)	#, MEM <unsigned long> [(int *)_13]
# eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movl	$0, 8(%r10)	#, MEM[(int *)_13 + 8B]
# eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	testl	%r14d, %r14d	# n
	jle	.L8	#,
# eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movq	%r9, %rdi	# _12, prephitmp_232
# eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	movl	$1, %ecx	#, ivtmp.91
# eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	movl	$2863311531, %esi	#, tmp170
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L34:
	addq	$1, %rcx	#, ivtmp.91
# eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	movq	%rdx, %rdi	# _30, prephitmp_232
.L5:
# eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	leal	-1(%rcx), %edx	#, tmp165
	imull	%ecx, %edx	# ivtmp.91, tmp166
# eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	leal	1(%rdx), %eax	#,
	movq	%rax, %rdx	#,
# eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	imulq	%rsi, %rax	# tmp170, tmp169
	shrq	$33, %rax	#, _21
	leal	(%rax,%rax,2), %r8d	#, tmp174
	movl	%edx, %eax	# tmp167, tmp167
# eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	movq	(%r12,%rcx,8), %rdx	# MEM[(int * *)sum_119 + ivtmp.91_75 * 8], _30
# eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	subl	%r8d, %eax	# tmp174, tmp167
# eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	movl	(%rdi), %r8d	# *prephitmp_232, _212
# eval/problem148/code.c:15:         a[i - 1] = (i * i - i + 1) % 3;
	movl	%eax, -4(%rbp,%rcx,4)	# _21, MEM[(int *)a_117 + -4B + ivtmp.91_75 * 4]
# eval/problem148/code.c:19:         sum[i][a[i - 1]] += 1;
	cltq
# eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	movl	%r8d, (%rdx)	# _212, *_30
# eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	movl	4(%rdi), %r8d	# MEM[(int *)prephitmp_232 + 4B], _201
# eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	movl	%r8d, 4(%rdx)	# _201, MEM[(int *)_30 + 4B]
# eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	movl	8(%rdi), %edi	# MEM[(int *)prephitmp_232 + 8B], _32
# eval/problem148/code.c:17:             sum[i][j] = sum[i - 1][j];
	movl	%edi, 8(%rdx)	# _32, MEM[(int *)_30 + 8B]
# eval/problem148/code.c:19:         sum[i][a[i - 1]] += 1;
	addl	$1, (%rdx,%rax,4)	#, *_38
# eval/problem148/code.c:14:     for (int i = 1; i <= n; i++) {
	cmpq	%rbx, %rcx	# n, ivtmp.91
	jne	.L34	#,
.L8:
	movl	$2, (%rsp)	#, %sfp
# eval/problem148/code.c:22:         for (int i = 1; i <= n; i++) {
	testl	%r14d, %r14d	# n
	jle	.L16	#,
.L36:
	movq	%r9, %r15	# _12, pretmp_240
	movq	%r10, %rax	# _13, prephitmp_238
	movl	$1, %r11d	#, ivtmp.60
	.p2align 4,,10
	.p2align 3
.L12:
# eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	(%rax), %edx	# *prephitmp_238, _84
# eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movq	0(%r13,%r11,8), %rcx	# MEM[(int * *)sum2_121 + ivtmp.60_97 * 8], _50
# eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movl	-4(%rbp,%r11,4), %esi	# MEM[(int *)a_117 + -4B + ivtmp.60_97 * 4], _60
# eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	%edx, (%rcx)	# _84, *_50
# eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	4(%rax), %edx	# MEM[(int *)prephitmp_238 + 4B], _223
# eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	%edx, 4(%rcx)	# _223, MEM[(int *)_50 + 4B]
# eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	8(%rax), %eax	# MEM[(int *)prephitmp_238 + 8B], _52
# eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	xorl	%edx, %edx	# ivtmp.48
# eval/problem148/code.c:24:                 sum2[i][j] = sum2[i - 1][j];
	movl	%eax, 8(%rcx)	# _52, MEM[(int *)_50 + 8B]
.L10:
# eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	leal	(%rsi,%rdx), %eax	#, tmp184
	movslq	%eax, %rdi	# tmp184, tmp186
	movl	%eax, %r8d	# tmp184, tmp189
	imulq	$1431655766, %rdi, %rdi	#, tmp186, tmp187
	sarl	$31, %r8d	#, tmp189
	shrq	$32, %rdi	#, tmp188
	subl	%r8d, %edi	# tmp189, tmp185
	leal	(%rdi,%rdi,2), %edi	#, tmp192
	subl	%edi, %eax	# tmp192, tmp193
# eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movl	(%r15,%rdx,4), %edi	# MEM[(int *)prephitmp_241 + ivtmp.48_79 * 4], MEM[(int *)prephitmp_241 + ivtmp.48_79 * 4]
# eval/problem148/code.c:27:                 for (int j = 0; j <= 2; j++) {
	addq	$1, %rdx	#, ivtmp.48
# eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	cltq
	addl	%edi, (%rcx,%rax,4)	# MEM[(int *)prephitmp_241 + ivtmp.48_79 * 4], *_64
# eval/problem148/code.c:27:                 for (int j = 0; j <= 2; j++) {
	cmpq	$3, %rdx	#, ivtmp.48
	jne	.L10	#,
# eval/problem148/code.c:22:         for (int i = 1; i <= n; i++) {
	cmpq	%rbx, %r11	# n, ivtmp.60
	je	.L19	#,
# eval/problem148/code.c:28:                     sum2[i][(a[i - 1] + j) % 3] += sum[i - 1][j];
	movq	(%r12,%r11,8), %r15	# MEM[(int * *)sum_119 + ivtmp.60_97 * 8], pretmp_240
	movq	%rcx, %rax	# _50, prephitmp_238
	addq	$1, %r11	#, ivtmp.60
	jmp	.L12	#
	.p2align 4,,10
	.p2align 3
.L19:
	movq	%r9, %rcx	# _12, pretmp_248
	movq	%r10, %rax	# _13, pretmp_245
	xorl	%edx, %edx	# ivtmp.29
	jmp	.L11	#
	.p2align 4,,10
	.p2align 3
.L35:
# eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	movq	0(%r13,%rdx,8), %rax	# MEM[(int * *)sum2_121 + ivtmp.29_191 * 8], pretmp_245
# eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	movq	(%r12,%rdx,8), %rcx	# MEM[(int * *)sum_119 + ivtmp.29_191 * 8], pretmp_248
.L11:
# eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	movq	(%rax), %rsi	# MEM <char[1:12]> [(void *)prephitmp_246], MEM <char[1:12]> [(void *)prephitmp_246]
# eval/problem148/code.c:32:         for (int i = 0; i <= n; i++) {
	addq	$1, %rdx	#, ivtmp.29
# eval/problem148/code.c:35:                 sum2[i][j] = 0;
	movq	$0, (%rax)	#, MEM <char[1:12]> [(void *)prephitmp_246]
# eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	movq	%rsi, (%rcx)	# MEM <char[1:12]> [(void *)prephitmp_246], MEM <char[1:12]> [(void *)prephitmp_249]
	movl	8(%rax), %esi	# MEM <char[1:12]> [(void *)prephitmp_246], MEM <char[1:12]> [(void *)prephitmp_246]
# eval/problem148/code.c:35:                 sum2[i][j] = 0;
	movl	$0, 8(%rax)	#, MEM <char[1:12]> [(void *)prephitmp_246]
# eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	movl	%esi, 8(%rcx)	# MEM <char[1:12]> [(void *)prephitmp_246], MEM <char[1:12]> [(void *)prephitmp_249]
# eval/problem148/code.c:32:         for (int i = 0; i <= n; i++) {
	cmpl	%edx, %r14d	# ivtmp.29, n
	jge	.L35	#,
.L14:
# eval/problem148/code.c:21:     for (int times = 1; times < 3; times++) {
	cmpl	$1, (%rsp)	#, %sfp
	je	.L15	#,
	movl	$1, (%rsp)	#, %sfp
# eval/problem148/code.c:22:         for (int i = 1; i <= n; i++) {
	testl	%r14d, %r14d	# n
	jg	.L36	#,
.L16:
# eval/problem148/code.c:32:         for (int i = 0; i <= n; i++) {
	jne	.L14	#,
# eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	movq	(%r10), %rax	# MEM <char[1:12]> [(void *)_235], MEM <char[1:12]> [(void *)_235]
# eval/problem148/code.c:35:                 sum2[i][j] = 0;
	movl	$3, %ecx	#, tmp208
	movq	%r10, %rdi	# _13, _13
# eval/problem148/code.c:34:                 sum[i][j] = sum2[i][j];
	movq	%rax, (%r9)	# MEM <char[1:12]> [(void *)_235], MEM <char[1:12]> [(void *)_233]
	movl	8(%r10), %eax	# MEM <char[1:12]> [(void *)_235], MEM <char[1:12]> [(void *)_235]
	movl	%eax, 8(%r9)	# MEM <char[1:12]> [(void *)_235], MEM <char[1:12]> [(void *)_233]
# eval/problem148/code.c:35:                 sum2[i][j] = 0;
	movl	%r14d, %eax	# n, n
	rep stosl
	jmp	.L14	#
	.p2align 4,,10
	.p2align 3
.L15:
# eval/problem148/code.c:40:     int result = sum[n][0];
	movq	8(%rsp), %rax	# %sfp, _5
	movq	-8(%r12,%rax), %rax	# *_86, *_86
	movl	(%rax), %r15d	# *_87, <retval>
# eval/problem148/code.c:41:     for (int i = 0; i <= n; ++i) {
	testl	%r14d, %r14d	# n
	js	.L17	#,
	leaq	8(,%rbx,8), %rbx	#, _218
	xorl	%r14d, %r14d	# ivtmp.24
	movq	%r9, %rdi	# _12, _12
	jmp	.L18	#
	.p2align 4,,10
	.p2align 3
.L37:
# eval/problem148/code.c:42:         free(sum[i]);
	movq	(%r12,%r14), %rdi	# MEM[(int * *)sum_119 + ivtmp.24_103 * 1], _12
.L18:
# eval/problem148/code.c:42:         free(sum[i]);
	call	free@PLT	#
# eval/problem148/code.c:43:         free(sum2[i]);
	movq	0(%r13,%r14), %rdi	# MEM[(int * *)sum2_121 + ivtmp.24_193 * 1], MEM[(int * *)sum2_121 + ivtmp.24_193 * 1]
# eval/problem148/code.c:41:     for (int i = 0; i <= n; ++i) {
	addq	$8, %r14	#, ivtmp.24
# eval/problem148/code.c:43:         free(sum2[i]);
	call	free@PLT	#
# eval/problem148/code.c:41:     for (int i = 0; i <= n; ++i) {
	cmpq	%rbx, %r14	# _218, ivtmp.24
	jne	.L37	#,
.L17:
# eval/problem148/code.c:45:     free(sum);
	movq	%r12, %rdi	# sum,
	call	free@PLT	#
# eval/problem148/code.c:46:     free(sum2);
	movq	%r13, %rdi	# sum2,
	call	free@PLT	#
# eval/problem148/code.c:47:     free(a);
	movq	%rbp, %rdi	# a,
	call	free@PLT	#
# eval/problem148/code.c:49: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%r15d, %eax	# <retval>,
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
.L33:
	.cfi_restore_state
# eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movq	(%r12), %r9	# *sum_119, _12
# eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movq	(%rax), %r10	# *sum2_121, _13
# eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movq	$0, (%r9)	#, MEM <unsigned long> [(int *)_142]
# eval/problem148/code.c:12:     sum[0][0] = sum[0][1] = sum[0][2] = 0;
	movl	$0, 8(%r9)	#, MEM[(int *)_142 + 8B]
# eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movq	$0, (%r10)	#, MEM <unsigned long> [(int *)_227]
# eval/problem148/code.c:13:     sum2[0][0] = sum2[0][1] = sum2[0][2] = 0;
	movl	$0, 8(%r10)	#, MEM[(int *)_227 + 8B]
	jmp	.L8	#
	.cfi_endproc
.LFE39:
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
