	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
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
	movq	%rdi, %r14	# tmp171, nums
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
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
# eval/problem146/code.c:5: int* func0(int nums[], int size) {
	movq	%rdi, (%rsp)	# nums, %sfp
	movslq	%esi, %rdi	# tmp172,
	movq	%rdi, %rbx	#,
# eval/problem146/code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	salq	$2, %rdi	#, tmp137
# eval/problem146/code.c:5: int* func0(int nums[], int size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp177
	movq	%rax, 56(%rsp)	# tmp177, D.3509
	xorl	%eax, %eax	# tmp177
# eval/problem146/code.c:6:     int* sumdigit = (int*)malloc(size * sizeof(int));
	call	malloc@PLT	#
	movq	%rax, %r12	# tmp173, sumdigit
# eval/problem146/code.c:7:     for (int i = 0; i < size; i++) {
	testl	%ebx, %ebx	# size
	jle	.L2	#,
	leaq	4(%r14), %rdi	#, ivtmp.16
	leal	-1(%rbx), %eax	#, tmp140
	movq	%r12, 16(%rsp)	# sumdigit, %sfp
	movq	%r14, %r13	# nums, ivtmp.33
	leaq	(%rdi,%rax,4), %rax	#, _112
	movq	%rdi, 8(%rsp)	# ivtmp.16, %sfp
	leaq	46(%rsp), %rdi	#, tmp170
	movl	%ebx, 28(%rsp)	# size, %sfp
	leaq	44(%rsp), %rbp	#, tmp166
	movq	%r13, %rbx	# ivtmp.33, ivtmp.33
	movq	%rdi, %r15	# tmp170, tmp170
	leaq	.LC0(%rip), %r14	#, tmp167
	movq	%rax, %r13	# _112, _112
	.p2align 4,,10
	.p2align 3
.L7:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	(%rbx), %eax	# MEM[(int *)_103], tmp175
	movq	%rbp, %rdi	# tmp166,
	movq	%r14, %rcx	# tmp167,
	movl	$12, %edx	#,
	movl	$1, %esi	#,
	movl	%eax, %r8d	# tmp175, tmp176
	negl	%r8d	# tmp176
	cmovs	%eax, %r8d	# tmp176,, tmp175,
	xorl	%eax, %eax	#
	call	__sprintf_chk@PLT	#
# eval/problem146/code.c:10:         int sum = 0, length = strlen(w);
	movq	%rbp, %rdi	# tmp166,
	call	strlen@PLT	#
# eval/problem146/code.c:11:         for (int j = 1; j < length; j++)
	cmpq	$1, %rax	#, tmp148
	jbe	.L14	#,
	leal	-2(%rax), %esi	#, tmp154
	leaq	45(%rsp), %rdx	#, ivtmp.27
# eval/problem146/code.c:10:         int sum = 0, length = strlen(w);
	xorl	%eax, %eax	# sum
	addq	%r15, %rsi	# tmp170, _96
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem146/code.c:12:             sum += w[j] - '0';
	movsbl	(%rdx), %ecx	# MEM[(char *)_90], MEM[(char *)_90]
# eval/problem146/code.c:11:         for (int j = 1; j < length; j++)
	addq	$1, %rdx	#, ivtmp.27
# eval/problem146/code.c:12:             sum += w[j] - '0';
	leal	-48(%rax,%rcx), %eax	#, sum
# eval/problem146/code.c:11:         for (int j = 1; j < length; j++)
	cmpq	%rsi, %rdx	# _96, ivtmp.27
	jne	.L4	#,
.L3:
# eval/problem146/code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	movsbl	44(%rsp), %edx	# w[0], w[0]
# eval/problem146/code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	subl	$48, %edx	#, _84
# eval/problem146/code.c:13:         if (nums[i] > 0) sum += w[0] - '0';
	leal	(%rax,%rdx), %ecx	#, tmp169
	subl	%edx, %eax	# _84, tmp168
	movl	(%rbx), %edx	# MEM[(int *)_103],
	testl	%edx, %edx	#
	cmovg	%ecx, %eax	# tmp168,, tmp169, sum
# eval/problem146/code.c:7:     for (int i = 0; i < size; i++) {
	addq	$4, %rbx	#, ivtmp.33
	addq	$4, %r12	#, ivtmp.34
# eval/problem146/code.c:15:         sumdigit[i] = sum;
	movl	%eax, -4(%r12)	# sum, MEM[(int *)_105]
# eval/problem146/code.c:7:     for (int i = 0; i < size; i++) {
	cmpq	%r13, %rbx	# _112, ivtmp.33
	jne	.L7	#,
	movl	28(%rsp), %ebx	# %sfp, size
	movq	16(%rsp), %r12	# %sfp, sumdigit
	xorl	%r8d, %r8d	# i
	movq	8(%rsp), %r9	# %sfp, ivtmp.16
	leal	-2(%rbx), %eax	#, tmp159
	leaq	8(%r12,%rax,4), %rdi	#, _31
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	4(%r12), %rax	#, ivtmp.15
	movq	%r9, %rdx	# ivtmp.16, ivtmp.16
# eval/problem146/code.c:19:         for (int j = 1; j < size; j++)
	cmpl	$1, %ebx	#, size
	je	.L12	#,
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem146/code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	movl	-4(%rax), %esi	# MEM[(int *)_65 + -4B], _24
# eval/problem146/code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	movl	(%rax), %ecx	# MEM[(int *)_65], _27
# eval/problem146/code.c:20:             if (sumdigit[j - 1] > sumdigit[j]) {
	cmpl	%ecx, %esi	# _27, _24
	jle	.L9	#,
# eval/problem146/code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	%esi, (%rax)	# _24, MEM[(int *)_65]
# eval/problem146/code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	-4(%rdx), %esi	# MEM[(int *)_13 + -4B], MEM[(int *)_13 + -4B]
# eval/problem146/code.c:21:                 m = sumdigit[j]; sumdigit[j] = sumdigit[j - 1]; sumdigit[j - 1] = m;
	movl	%ecx, -4(%rax)	# _27, MEM[(int *)_65 + -4B]
# eval/problem146/code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	(%rdx), %ecx	# MEM[(int *)_13], m
# eval/problem146/code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	%esi, (%rdx)	# MEM[(int *)_13 + -4B], MEM[(int *)_13]
# eval/problem146/code.c:22:                 m = nums[j]; nums[j] = nums[j - 1]; nums[j - 1] = m;
	movl	%ecx, -4(%rdx)	# m, MEM[(int *)_13 + -4B]
.L9:
# eval/problem146/code.c:19:         for (int j = 1; j < size; j++)
	addq	$4, %rax	#, ivtmp.15
	addq	$4, %rdx	#, ivtmp.16
	cmpq	%rax, %rdi	# ivtmp.15, _31
	jne	.L10	#,
.L12:
# eval/problem146/code.c:18:     for (int i = 0; i < size; i++)
	addl	$1, %r8d	#, i
# eval/problem146/code.c:18:     for (int i = 0; i < size; i++)
	cmpl	%r8d, %ebx	# i, size
	jne	.L8	#,
.L2:
# eval/problem146/code.c:25:     free(sumdigit);
	movq	%r12, %rdi	# sumdigit,
	call	free@PLT	#
# eval/problem146/code.c:27: }
	movq	56(%rsp), %rax	# D.3509, tmp178
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp178
	jne	.L22	#,
	movq	(%rsp), %rax	# %sfp,
	addq	$72, %rsp	#,
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
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
# eval/problem146/code.c:10:         int sum = 0, length = strlen(w);
	xorl	%eax, %eax	# sum
	jmp	.L3	#
.L22:
# eval/problem146/code.c:27: }
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
