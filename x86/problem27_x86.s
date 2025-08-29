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
	movq	%rdi, %r15	# tmp171, numbers
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movslq	%esi, %r13	# tmp172,
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
# eval/problem27/code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	leaq	0(,%r13,4), %rdi	#, tmp145
# eval/problem27/code.c:4: int* func0(int* numbers, int size, int* new_size) {
	movq	%r13, %r14	#,
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx	# tmp173, new_size
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem27/code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	call	malloc@PLT	#
# eval/problem27/code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	movq	%r13, %rdi	# _1,
	movl	$4, %esi	#,
# eval/problem27/code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	movq	%rax, %r12	# tmp174, <retval>
# eval/problem27/code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	call	calloc@PLT	#
# eval/problem27/code.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	movq	%r13, %rdi	# _1,
	movl	$4, %esi	#,
# eval/problem27/code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	movq	%rax, %rbp	# tmp175, has1
# eval/problem27/code.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	call	calloc@PLT	#
	movq	%rax, %r13	# tmp176, has2
# eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	testl	%r14d, %r14d	# size
	jle	.L14	#,
	leal	-1(%r14), %eax	#, tmp150
	movq	%r15, %rsi	# numbers, ivtmp.20
	movq	%r15, %rdi	# ivtmp.20, ivtmp.35
# eval/problem27/code.c:9:     int has2_count = 0;
	xorl	%r8d, %r8d	# has2_count
	leaq	4(%r15,%rax,4), %r9	#, _129
# eval/problem27/code.c:8:     int has1_count = 0;
	xorl	%r10d, %r10d	# has1_count
	leaq	4(%r13), %r11	#, tmp169
	leaq	4(%rbp), %r14	#, tmp170
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem27/code.c:13:         int num = numbers[i];
	movl	(%rdi), %edx	# MEM[(int *)_122], num
# eval/problem27/code.c:16:         for (int j = 0; j < has2_count; j++) {
	testl	%r8d, %r8d	# has2_count
	je	.L3	#,
	leal	-1(%r8), %ecx	#, tmp154
	movq	%r13, %rax	# has2, ivtmp.30
	leaq	(%r11,%rcx,4), %rcx	#, _118
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L32:
# eval/problem27/code.c:16:         for (int j = 0; j < has2_count; j++) {
	addq	$4, %rax	#, ivtmp.30
	cmpq	%rcx, %rax	# _118, ivtmp.30
	je	.L3	#,
.L5:
# eval/problem27/code.c:17:             if (has2[j] == num) {
	cmpl	%edx, (%rax)	# num, MEM[(int *)_111]
	jne	.L32	#,
# eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.35
	cmpq	%r9, %rdi	# _129, ivtmp.35
	jne	.L9	#,
.L35:
	leal	-1(%r8), %eax	#, tmp162
# eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	xorl	%edi, %edi	# out_count
	leaq	(%r11,%rax,4), %rcx	#, _37
	.p2align 4,,10
	.p2align 3
.L13:
# eval/problem27/code.c:39:         int num = numbers[i];
	movl	(%rsi), %edx	# MEM[(int *)_93], num
# eval/problem27/code.c:41:         for (int j = 0; j < has2_count; j++) {
	testl	%r8d, %r8d	# has2_count
	je	.L10	#,
	movq	%r13, %rax	# has2, ivtmp.14
	jmp	.L12	#
	.p2align 4,,10
	.p2align 3
.L33:
# eval/problem27/code.c:41:         for (int j = 0; j < has2_count; j++) {
	addq	$4, %rax	#, ivtmp.14
	cmpq	%rax, %rcx	# ivtmp.14, _37
	je	.L10	#,
.L12:
# eval/problem27/code.c:42:             if (has2[j] == num) {
	cmpl	%edx, (%rax)	# num, MEM[(int *)_47]
	jne	.L33	#,
# eval/problem27/code.c:38:     for (int i = 0; i < size; i++) {
	addq	$4, %rsi	#, ivtmp.20
	cmpq	%r9, %rsi	# _129, ivtmp.20
	jne	.L13	#,
.L2:
# eval/problem27/code.c:52:     *new_size = out_count;
	movl	%edi, (%rbx)	# out_count, *new_size_58(D)
# eval/problem27/code.c:53:     free(has1);
	movq	%rbp, %rdi	# has1,
	call	free@PLT	#
# eval/problem27/code.c:54:     free(has2);
	movq	%r13, %rdi	# has2,
	call	free@PLT	#
# eval/problem27/code.c:56: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax	# <retval>,
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
.L3:
	.cfi_restore_state
# eval/problem27/code.c:25:         for (int j = 0; j < has1_count; j++) {
	testl	%r10d, %r10d	# has1_count
	je	.L6	#,
	leal	-1(%r10), %ecx	#, tmp158
	movq	%rbp, %rax	# has1, ivtmp.25
	leaq	(%r14,%rcx,4), %rcx	#, _107
	jmp	.L8	#
	.p2align 4,,10
	.p2align 3
.L34:
# eval/problem27/code.c:25:         for (int j = 0; j < has1_count; j++) {
	addq	$4, %rax	#, ivtmp.25
	cmpq	%rcx, %rax	# _107, ivtmp.25
	je	.L6	#,
.L8:
# eval/problem27/code.c:26:             if (has1[j] == num) {
	cmpl	%edx, (%rax)	# num, MEM[(int *)_100]
	jne	.L34	#,
# eval/problem27/code.c:32:             has2[has2_count++] = num;
	movslq	%r8d, %rax	# has2_count, has2_count
# eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.35
# eval/problem27/code.c:32:             has2[has2_count++] = num;
	addl	$1, %r8d	#, has2_count
# eval/problem27/code.c:32:             has2[has2_count++] = num;
	movl	%edx, 0(%r13,%rax,4)	# num, *_18
# eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	cmpq	%r9, %rdi	# _129, ivtmp.35
	jne	.L9	#,
	jmp	.L35	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem27/code.c:48:             out[out_count++] = num;
	movslq	%edi, %rax	# out_count, out_count
# eval/problem27/code.c:38:     for (int i = 0; i < size; i++) {
	addq	$4, %rsi	#, ivtmp.20
# eval/problem27/code.c:48:             out[out_count++] = num;
	addl	$1, %edi	#, out_count
# eval/problem27/code.c:48:             out[out_count++] = num;
	movl	%edx, (%r12,%rax,4)	# num, *_31
# eval/problem27/code.c:38:     for (int i = 0; i < size; i++) {
	cmpq	%r9, %rsi	# _129, ivtmp.20
	jne	.L13	#,
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem27/code.c:34:             has1[has1_count++] = num;
	movslq	%r10d, %rax	# has1_count, has1_count
# eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.35
# eval/problem27/code.c:34:             has1[has1_count++] = num;
	addl	$1, %r10d	#, has1_count
# eval/problem27/code.c:34:             has1[has1_count++] = num;
	movl	%edx, 0(%rbp,%rax,4)	# num, *_21
# eval/problem27/code.c:12:     for (int i = 0; i < size; i++) {
	cmpq	%r9, %rdi	# _129, ivtmp.35
	jne	.L9	#,
	jmp	.L35	#
.L14:
# eval/problem27/code.c:10:     int out_count = 0;
	xorl	%edi, %edi	# out_count
	jmp	.L2	#
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
