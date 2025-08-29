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
	movl	%ecx, %r14d	# tmp111, x
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%esi, %ebp	# tmp109, lst_size
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
# eval/problem88/code.c:4: int **func0(int **lst, int lst_size, int *row_sizes, int x, int *return_size) {
	movq	%rdi, 32(%rsp)	# tmp108, %sfp
# eval/problem88/code.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	movl	$800, %edi	#,
# eval/problem88/code.c:4: int **func0(int **lst, int lst_size, int *row_sizes, int x, int *return_size) {
	movq	%rdx, 16(%rsp)	# tmp110, %sfp
	movq	%r8, 40(%rsp)	# tmp112, %sfp
# eval/problem88/code.c:5:     int **out = (int **)malloc(100 * sizeof(int *));
	call	malloc@PLT	#
	movq	%rax, 8(%rsp)	# tmp113, %sfp
# eval/problem88/code.c:7:     for (int i = 0; i < lst_size; i++) {
	testl	%ebp, %ebp	# lst_size
	jle	.L7	#,
	movslq	%ebp, %rax	# lst_size, _58
# eval/problem88/code.c:6:     int count = 0;
	xorl	%r15d, %r15d	# count
# eval/problem88/code.c:7:     for (int i = 0; i < lst_size; i++) {
	xorl	%ebp, %ebp	# ivtmp.16
	movq	%rax, 24(%rsp)	# _58, %sfp
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	movq	16(%rsp), %rax	# %sfp, row_sizes
	movl	%ebp, %ebx	# ivtmp.16, i
	movl	(%rax,%rbp,4), %eax	# MEM[(int *)row_sizes_32(D) + ivtmp.16_20 * 4], MEM[(int *)row_sizes_32(D) + ivtmp.16_20 * 4]
# eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	movl	%eax, %edx	# MEM[(int *)row_sizes_32(D) + ivtmp.16_20 * 4], MEM[(int *)row_sizes_32(D) + ivtmp.16_20 * 4]
# eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	movl	%eax, 4(%rsp)	# MEM[(int *)row_sizes_32(D) + ivtmp.16_20 * 4], %sfp
# eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	subl	$1, %edx	#, MEM[(int *)row_sizes_32(D) + ivtmp.16_20 * 4]
	js	.L3	#,
# eval/problem88/code.c:9:             if (lst[i][j] == x) {
	movq	32(%rsp), %rax	# %sfp, lst
	movslq	%edx, %r12	# j, ivtmp.9
	movq	(%rax,%rbp,8), %r13	# MEM[(int * *)lst_35(D) + ivtmp.16_20 * 8], pretmp_17
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	subq	$1, %r12	#, ivtmp.9
	testl	%r12d, %r12d	# ivtmp.9
	js	.L3	#,
.L5:
# eval/problem88/code.c:9:             if (lst[i][j] == x) {
	cmpl	%r14d, 0(%r13,%r12,4)	# x, MEM[(int *)pretmp_17 + ivtmp.9_44 * 4]
	jne	.L4	#,
# eval/problem88/code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movl	$8, %edi	#,
	call	malloc@PLT	#
# eval/problem88/code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movq	8(%rsp), %rcx	# %sfp, <retval>
# eval/problem88/code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movslq	%r15d, %rdi	# count, count
# eval/problem88/code.c:13:                 count++;
	addl	$1, %r15d	#, count
# eval/problem88/code.c:12:                 out[count][1] = j;
	movl	%r12d, 4(%rax)	# ivtmp.9, MEM[(int *)_16 + 4B]
# eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	subq	$1, %r12	#, ivtmp.9
# eval/problem88/code.c:10:                 out[count] = (int *)malloc(2 * sizeof(int));
	movq	%rax, (%rcx,%rdi,8)	# tmp105, *_15
# eval/problem88/code.c:11:                 out[count][0] = i;
	movl	%ebx, (%rax)	# i, MEM[(int *)_16]
# eval/problem88/code.c:8:         for (int j = row_sizes[i] - 1; j >= 0; j--) {
	testl	%r12d, %r12d	# ivtmp.9
	jns	.L5	#,
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem88/code.c:7:     for (int i = 0; i < lst_size; i++) {
	addq	$1, %rbp	#, ivtmp.16
	cmpq	24(%rsp), %rbp	# %sfp, ivtmp.16
	jne	.L6	#,
.L2:
# eval/problem88/code.c:17:     *return_size = count;
	movq	40(%rsp), %rax	# %sfp, return_size
	movl	%r15d, (%rax)	# count, *return_size_30(D)
# eval/problem88/code.c:19: }
	movq	8(%rsp), %rax	# %sfp,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
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
.L7:
	.cfi_restore_state
# eval/problem88/code.c:6:     int count = 0;
	xorl	%r15d, %r15d	# count
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
