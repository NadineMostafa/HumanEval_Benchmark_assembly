	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Mercury"
.LC1:
	.string	"Venus"
.LC2:
	.string	"Earth"
.LC3:
	.string	"Mars"
.LC4:
	.string	"Jupiter"
.LC5:
	.string	"Saturn"
.LC6:
	.string	"Uranus"
.LC7:
	.string	"Neptune"
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
# eval/problem149/code.c:7:     int pos1 = -1, pos2 = -1, m;
	movl	$-1, %r15d	#, pos2
# eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14	# tmp160, planet1
# eval/problem149/code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	leaq	.LC0(%rip), %rdi	#, tmp115
# eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13	# tmp161, planet2
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
# eval/problem149/code.c:7:     int pos1 = -1, pos2 = -1, m;
	movl	$-1, %ebp	#, pos1
# eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# eval/problem149/code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	xorl	%ebx, %ebx	# ivtmp.6
# eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 160
# eval/problem149/code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	movq	%rdx, 8(%rsp)	# tmp162, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp169
	movq	%rax, 88(%rsp)	# tmp169, D.3484
	xorl	%eax, %eax	# tmp169
# eval/problem149/code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	leaq	.LC1(%rip), %rax	#, tmp173
	movq	%rdi, 16(%rsp)	# tmp115, planets[0]
	movq	%rax, 24(%rsp)	# tmp173, planets[1]
	leaq	.LC2(%rip), %rax	#, tmp174
	movq	%rax, 32(%rsp)	# tmp174, planets[2]
	leaq	.LC3(%rip), %rax	#, tmp175
	movq	%rax, 40(%rsp)	# tmp175, planets[3]
	leaq	.LC4(%rip), %rax	#, tmp176
	movq	%rax, 48(%rsp)	# tmp176, planets[4]
	leaq	.LC5(%rip), %rax	#, tmp177
	movq	%rax, 56(%rsp)	# tmp177, planets[5]
	leaq	.LC6(%rip), %rax	#, tmp178
	movq	%rax, 64(%rsp)	# tmp178, planets[6]
	leaq	.LC7(%rip), %rax	#, tmp179
	movq	%rax, 72(%rsp)	# tmp179, planets[7]
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L14:
# eval/problem149/code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	movq	16(%rsp,%rbx,8), %rdi	# MEM[(const char * *)&planets + ivtmp.6_20 * 8], prephitmp_57
.L5:
	movq	%r14, %rsi	# planet1,
	movq	%rdi, (%rsp)	# prephitmp_57, %sfp
	call	strcmp@PLT	#
# eval/problem149/code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	movq	(%rsp), %rdi	# %sfp, prephitmp_57
	movq	%r13, %rsi	# planet2,
# eval/problem149/code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	testl	%eax, %eax	# tmp163
	cmove	%ebx, %ebp	# pos1,, ivtmp.6, pos1
# eval/problem149/code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	call	strcmp@PLT	#
# eval/problem149/code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	testl	%eax, %eax	# tmp164
	cmove	%ebx, %r15d	# pos2,, m, pos2
# eval/problem149/code.c:8:     for (m = 0; m < 8; m++) {
	addq	$1, %rbx	#, ivtmp.6
	cmpq	$8, %rbx	#, ivtmp.6
	jne	.L14	#,
# eval/problem149/code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	cmpl	$-1, %r15d	#, pos2
	sete	%al	#, tmp125
# eval/problem149/code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	cmpl	%r15d, %ebp	# pos2, pos1
	sete	%cl	#, tmp127
	orb	%cl, %al	# tmp127, tmp170
	jne	.L10	#,
	cmpl	$-1, %ebp	#, pos1
	je	.L10	#,
# eval/problem149/code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	cmpl	%r15d, %ebp	# pos2, pos1
	jg	.L15	#,
.L9:
# eval/problem149/code.c:17:     *returnSize = pos2 - pos1 - 1;
	movl	%r15d, %eax	# pos2, tmp131
# eval/problem149/code.c:17:     *returnSize = pos2 - pos1 - 1;
	movq	8(%rsp), %rcx	# %sfp, returnSize
# eval/problem149/code.c:17:     *returnSize = pos2 - pos1 - 1;
	subl	%ebp, %eax	# pos1, tmp131
# eval/problem149/code.c:17:     *returnSize = pos2 - pos1 - 1;
	subl	$1, %eax	#, _8
# eval/problem149/code.c:17:     *returnSize = pos2 - pos1 - 1;
	movl	%eax, (%rcx)	# _8, *returnSize_39(D)
# eval/problem149/code.c:18:     if (*returnSize <= 0) {
	testl	%eax, %eax	# _8
	jle	.L10	#,
# eval/problem149/code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	cltq
# eval/problem149/code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	leaq	0(,%rax,8), %rdi	#, tmp133
	call	malloc@PLT	#
	movq	%rax, %r8	# tmp165, <retval>
# eval/problem149/code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	leal	1(%rbp), %eax	#, m
# eval/problem149/code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	cmpl	%eax, %r15d	# m, pos2
	jle	.L1	#,
# eval/problem149/code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	leal	-2(%r15), %edx	#, tmp135
	cltq
	movq	%r8, %rdi	# <retval>,
	subl	%ebp, %edx	# pos1, tmp137
	leaq	16(%rsp,%rax,8), %rsi	#, tmp143
	leaq	8(,%rdx,8), %rdx	#, tmp139
	call	memcpy@PLT	#
	movq	%rax, %r8	#, <retval>
.L1:
# eval/problem149/code.c:27: }
	movq	88(%rsp), %rax	# D.3484, tmp171
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp171
	jne	.L16	#,
	addq	$104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r8, %rax	# <retval>,
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
.L15:
	.cfi_restore_state
# eval/problem149/code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	movl	%ebp, %eax	# pos1, pos1
	movl	%r15d, %ebp	# pos2, pos1
	movl	%eax, %r15d	# pos1, pos2
	jmp	.L9	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem149/code.c:13:         *returnSize = 0;
	movq	8(%rsp), %rax	# %sfp, returnSize
# eval/problem149/code.c:14:         return NULL;
	xorl	%r8d, %r8d	# <retval>
# eval/problem149/code.c:13:         *returnSize = 0;
	movl	$0, (%rax)	#, *returnSize_39(D)
# eval/problem149/code.c:14:         return NULL;
	jmp	.L1	#
.L16:
# eval/problem149/code.c:27: }
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
