	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
.LC1:
	.string	"One"
.LC2:
	.string	"Two"
.LC3:
	.string	"Three"
.LC4:
	.string	"Four"
.LC5:
	.string	"Five"
.LC6:
	.string	"Six"
.LC7:
	.string	"Seven"
.LC8:
	.string	"Eight"
.LC9:
	.string	"Nine"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB51:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rcx, %r13	# tmp150, out_size
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r12	# tmp149, out
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp	# tmp147, arr
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
# eval/problem106/code.c:9:     for (i = 0; i < size - 1; i++) {
	leal	-1(%rsi), %ebx	#, _81
# eval/problem106/code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 144
# eval/problem106/code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp153
	movq	%rax, 88(%rsp)	# tmp153, D.3499
	leaq	.LC0(%rip), %rax	#, tmp153
	movq	%rax, (%rsp)	# tmp156, names[0]
	leaq	.LC1(%rip), %rax	#, tmp157
	movq	%rax, 8(%rsp)	# tmp157, names[1]
	leaq	.LC2(%rip), %rax	#, tmp158
	movq	%rax, 16(%rsp)	# tmp158, names[2]
	leaq	.LC3(%rip), %rax	#, tmp159
	movq	%rax, 24(%rsp)	# tmp159, names[3]
	leaq	.LC4(%rip), %rax	#, tmp160
	movq	%rax, 32(%rsp)	# tmp160, names[4]
	leaq	.LC5(%rip), %rax	#, tmp161
	movq	%rax, 40(%rsp)	# tmp161, names[5]
	leaq	.LC6(%rip), %rax	#, tmp162
	movq	%rax, 48(%rsp)	# tmp162, names[6]
	leaq	.LC7(%rip), %rax	#, tmp163
	movq	%rax, 56(%rsp)	# tmp163, names[7]
	leaq	.LC8(%rip), %rax	#, tmp164
	movq	%rax, 64(%rsp)	# tmp164, names[8]
	leaq	.LC9(%rip), %rax	#, tmp165
	movq	%rax, 72(%rsp)	# tmp165, names[9]
# eval/problem106/code.c:9:     for (i = 0; i < size - 1; i++) {
	testl	%ebx, %ebx	# _81
	jle	.L2	#,
	movl	%ebx, %edx	# _81, ivtmp.35
	leaq	4(%rdi), %r8	#, tmp145
	.p2align 4,,10
	.p2align 3
.L3:
	subl	$1, %edx	#,
	movq	%rbp, %rax	# arr, ivtmp.28
	movq	%rdx, %rdi	#,
	leaq	(%r8,%rdx,4), %rsi	#, _21
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem106/code.c:11:             if (arr[j] > arr[j + 1]) {
	movl	(%rax), %edx	# MEM[(int *)_83], _4
# eval/problem106/code.c:11:             if (arr[j] > arr[j + 1]) {
	movl	4(%rax), %ecx	# MEM[(int *)_83 + 4B], _8
# eval/problem106/code.c:11:             if (arr[j] > arr[j + 1]) {
	cmpl	%ecx, %edx	# _8, _4
	jle	.L4	#,
# eval/problem106/code.c:13:                 arr[j] = arr[j + 1];
	movl	%ecx, (%rax)	# _8, MEM[(int *)_83]
# eval/problem106/code.c:14:                 arr[j + 1] = temp;
	movl	%edx, 4(%rax)	# _4, MEM[(int *)_83 + 4B]
.L4:
# eval/problem106/code.c:10:         for (j = 0; j < size - i - 1; j++) {
	addq	$4, %rax	#, ivtmp.28
	cmpq	%rax, %rsi	# ivtmp.28, _21
	jne	.L5	#,
# eval/problem106/code.c:9:     for (i = 0; i < size - 1; i++) {
	movl	%edi, %edx	# ivtmp.35, ivtmp.35
	testl	%edi, %edi	# ivtmp.35
	jne	.L3	#,
# eval/problem106/code.c:19:     *out_size = 0;
	movl	$0, 0(%r13)	#, *out_size_60(D)
.L16:
	movslq	%ebx, %rbx	# _81, ivtmp.12
# eval/problem106/code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	xorl	%ecx, %ecx	# prephitmp_113
	movq	%rbx, %rax	# ivtmp.12, ivtmp.21
	.p2align 4,,10
	.p2align 3
.L9:
# eval/problem106/code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	0(%rbp,%rax,4), %edi	# MEM[(int *)arr_66(D) + ivtmp.21_106 * 4], tmp166
	leal	-1(%rdi), %edx	#, tmp134
# eval/problem106/code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmpl	$8, %edx	#, tmp134
	ja	.L8	#,
# eval/problem106/code.c:22:             (*out_size)++;
	addl	$1, %ecx	#, prephitmp_113
	movl	%ecx, 0(%r13)	# prephitmp_113, *out_size_60(D)
.L8:
# eval/problem106/code.c:20:     for (i = size - 1; i >= 0; i--) {
	subq	$1, %rax	#, ivtmp.21
	testl	%eax, %eax	# ivtmp.21
	jns	.L9	#,
# eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	movslq	%ecx, %rcx	# prephitmp_113, prephitmp_113
# eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	leaq	0(,%rcx,8), %rdi	#, tmp141
	call	malloc@PLT	#
# eval/problem106/code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	movl	0(%r13), %edi	# *out_size_60(D), _34
	xorl	%ecx, %ecx	# j
# eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	movq	%rax, (%r12)	# _62, *out_64(D)
	jmp	.L12	#
	.p2align 4,,10
	.p2align 3
.L14:
# eval/problem106/code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	movslq	0(%rbp,%rbx,4), %rdx	# MEM[(int *)arr_66(D) + ivtmp.12_111 * 4],
# eval/problem106/code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	leal	-1(%rdx), %esi	#, tmp136
# eval/problem106/code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmpl	$8, %esi	#, tmp136
	ja	.L11	#,
# eval/problem106/code.c:30:             (*out)[j++] = names[arr[i]];
	movq	(%rsp,%rdx,8), %rdx	# names[_27], names[_27]
# eval/problem106/code.c:30:             (*out)[j++] = names[arr[i]];
	movslq	%ecx, %rsi	# j, j
	addl	$1, %ecx	#, j
# eval/problem106/code.c:30:             (*out)[j++] = names[arr[i]];
	movq	%rdx, (%rax,%rsi,8)	# names[_27], *_32
.L11:
# eval/problem106/code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	subq	$1, %rbx	#, ivtmp.12
	testl	%ebx, %ebx	# ivtmp.12
	js	.L1	#,
.L12:
# eval/problem106/code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	cmpl	%ecx, %edi	# j, _34
	jg	.L14	#,
.L1:
# eval/problem106/code.c:33: }
	movq	88(%rsp), %rax	# D.3499, tmp154
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	jne	.L24	#,
	addq	$104, %rsp	#,
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
.L2:
	.cfi_restore_state
# eval/problem106/code.c:19:     *out_size = 0;
	movl	$0, (%rcx)	#, *out_size_60(D)
# eval/problem106/code.c:20:     for (i = size - 1; i >= 0; i--) {
	je	.L16	#,
# eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	xorl	%edi, %edi	#
	call	malloc@PLT	#
# eval/problem106/code.c:26:     *out = malloc(*out_size * sizeof(char *));
	movq	%rax, (%r12)	# tmp152, *out_64(D)
	jmp	.L1	#
.L24:
# eval/problem106/code.c:33: }
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
