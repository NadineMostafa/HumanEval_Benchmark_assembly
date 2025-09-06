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
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r12	# tmp150, out_array
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem89/code.c:5:     *out_size = size;
	movl	%esi, (%rcx)	# size, *out_size_41(D)
# eval/problem89/code.c:6:     if (size == 0) {
	testl	%esi, %esi	# size
	jne	.L2	#,
# eval/problem89/code.c:7:         *out_array = NULL;
	movq	$0, (%rdx)	#, *out_array_45(D)
.L1:
# eval/problem89/code.c:39: }
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
.L2:
	.cfi_restore_state
# eval/problem89/code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	movslq	%esi, %r13	# size, size
	movq	%rdi, %rbp	# tmp148, array
	movl	%esi, %ebx	# tmp149, size
	salq	$2, %r13	#, _2
	movq	%r13, %rdi	# _2,
	call	malloc@PLT	#
# eval/problem89/code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	movq	%rax, (%r12)	# _3, *out_array_45(D)
# eval/problem89/code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	movq	%rax, %r10	# tmp152, _3
# eval/problem89/code.c:12:     if (*out_array == NULL) {
	testq	%rax, %rax	# _3
	je	.L4	#,
# eval/problem89/code.c:16:     for (int i = 0; i < size; i++) {
	testl	%ebx, %ebx	# size
	jle	.L8	#,
# eval/problem89/code.c:17:         (*out_array)[i] = array[i];
	movq	%r13, %rdx	# _2,
	movq	%rbp, %rsi	# array,
	movq	%rax, %rdi	# _3,
	call	memcpy@PLT	#
	movq	%rax, %r10	#, _3
.L8:
# eval/problem89/code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	movl	0(%rbp), %eax	# *array_47(D), *array_47(D)
	addl	-4(%rbp,%r13), %eax	# *_11, tmp122
# eval/problem89/code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	movl	%eax, %edx	# tmp122, tmp126
	shrl	$31, %edx	#, tmp126
	leal	(%rax,%rdx), %edi	#, tmp127
	andl	$1, %edi	#, tmp128
	subl	%edx, %edi	# tmp126, tmp129
# eval/problem89/code.c:22:     for (int i = 0; i < size - 1; i++) {
	cmpl	$1, %ebx	#, size
	jle	.L1	#,
	leal	-2(%rbx), %r11d	#, tmp138
	leaq	4(%r10), %rsi	#, ivtmp.19
	movl	$1, %r9d	#, ivtmp.16
	addq	$8, %r10	#, tmp147
	addq	$2, %r11	#, _81
	leal	-1(%rbx), %ebp	#, tmp146
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	cmpl	%r9d, %ebx	# ivtmp.16, size
	jle	.L14	#,
	movl	%ebp, %eax	# tmp146, tmp141
	subl	%r9d, %eax	# ivtmp.16, tmp141
	leaq	-1(%r9,%rax), %rax	#, tmp143
	leaq	(%r10,%rax,4), %r8	#, _29
	movq	%rsi, %rax	# ivtmp.19, ivtmp.10
	jmp	.L13	#
	.p2align 4,,10
	.p2align 3
.L11:
# eval/problem89/code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	cmpl	%ecx, %edx	# pretmp_73, pretmp_35
	jge	.L12	#,
.L18:
# eval/problem89/code.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	%ecx, -4(%rsi)	# pretmp_73, MEM[(int *)_84 + -4B]
# eval/problem89/code.c:34:                     (*out_array)[j] = temp;
	movl	%edx, (%rax)	# pretmp_35, MEM[(int *)_54]
.L12:
# eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	addq	$4, %rax	#, ivtmp.10
	cmpq	%rax, %r8	# ivtmp.10, _29
	je	.L14	#,
.L13:
# eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movl	-4(%rsi), %edx	# MEM[(int *)_84 + -4B], pretmp_35
# eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movl	(%rax), %ecx	# MEM[(int *)_54], pretmp_73
# eval/problem89/code.c:24:             if (shouldSortAscending) {
	cmpl	$1, %edi	#, tmp129
	jne	.L11	#,
# eval/problem89/code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	cmpl	%ecx, %edx	# pretmp_73, pretmp_35
	jg	.L18	#,
# eval/problem89/code.c:23:         for (int j = i + 1; j < size; j++) {
	addq	$4, %rax	#, ivtmp.10
	cmpq	%rax, %r8	# ivtmp.10, _29
	jne	.L13	#,
	.p2align 4,,10
	.p2align 3
.L14:
# eval/problem89/code.c:22:     for (int i = 0; i < size - 1; i++) {
	addq	$1, %r9	#, ivtmp.16
	addq	$4, %rsi	#, ivtmp.19
	cmpq	%r11, %r9	# _81, ivtmp.16
	jne	.L10	#,
# eval/problem89/code.c:39: }
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
.L4:
	.cfi_restore_state
# eval/problem89/code.c:13:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
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
