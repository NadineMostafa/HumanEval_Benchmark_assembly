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
.LFB53:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# eval/problem23/code.c:8:     int count = 0;
	xorl	%r15d, %r15d	# count
# eval/problem23/code.c:6: int *func0(const char *values, int *size) {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	out.0(%rip), %r14	#, <retval>
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
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# eval/problem23/code.c:11:     while (*start) {
	movzbl	(%rdi), %ebx	# *values_31(D), _1
# eval/problem23/code.c:6: int *func0(const char *values, int *size) {
	movq	%rsi, 8(%rsp)	# tmp143, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp146
	movq	%rax, 24(%rsp)	# tmp146, D.3575
	xorl	%eax, %eax	# tmp146
# eval/problem23/code.c:11:     while (*start) {
	testb	%bl, %bl	# _1
	je	.L3	#,
	movq	%rdi, %rbp	# tmp142, values
# eval/problem23/code.c:8:     int count = 0;
	xorl	%r15d, %r15d	# count
# eval/problem23/code.c:18:         int val = (int) strtol(start, &end, 10);
	leaq	16(%rsp), %r13	#, tmp141
# eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	call	__ctype_b_loc@PLT	#
	leaq	out.0(%rip), %r14	#, <retval>
	movq	(%rax), %rcx	# *_2, *_2
	movq	%rax, %r12	# tmp145, _2
	jmp	.L15	#
	.p2align 4,,10
	.p2align 3
.L39:
# eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmpb	$45, %bl	#, _1
	je	.L6	#,
# eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	movzbl	1(%rbp), %ebx	# MEM[(const char *)start_61 + 1B], _1
# eval/problem23/code.c:13:             start++;
	leaq	1(%rbp), %rdx	#, start
# eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	testb	%bl, %bl	# _1
	je	.L3	#,
.L12:
# eval/problem23/code.c:6: int *func0(const char *values, int *size) {
	movq	%rdx, %rbp	# start, values
.L15:
# eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	movsbq	%bl, %rax	# _1, _1
# eval/problem23/code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	testb	$8, 1(%rcx,%rax,2)	#, *_7
	je	.L39	#,
.L6:
# eval/problem23/code.c:18:         int val = (int) strtol(start, &end, 10);
	movl	$10, %edx	#,
	movq	%r13, %rsi	# tmp141,
	movq	%rbp, %rdi	# values,
	call	strtol@PLT	#
# eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	movq	16(%rsp), %rdx	# end, start
# eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmpq	%rbp, %rdx	# values, start
	je	.L40	#,
# eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	movzbl	(%rdx), %ecx	# *end.0_13, _36
# eval/problem23/code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmpb	$44, %cl	#, _36
	je	.L17	#,
	testb	%cl, %cl	# _36
	jne	.L7	#,
.L17:
# eval/problem23/code.c:20:             out[count++] = val;
	movslq	%r15d, %rcx	# count, count
# eval/problem23/code.c:20:             out[count++] = val;
	addl	$1, %r15d	#, count
# eval/problem23/code.c:18:         int val = (int) strtol(start, &end, 10);
	movl	%eax, (%r14,%rcx,4)	# _12, out[count_67]
# eval/problem23/code.c:11:     while (*start) {
	movzbl	(%rdx), %ebx	# MEM[(const char *)end.0_13], _1
.L9:
	testb	%bl, %bl	# _1
	je	.L3	#,
	movq	(%r12), %rcx	# *_2, *_2
	jmp	.L12	#
	.p2align 4,,10
	.p2align 3
.L40:
# eval/problem23/code.c:22:             while (*end && *end != ',') {
	movzbl	0(%rbp), %ebx	# MEM[(char *)start_61], _1
# eval/problem23/code.c:22:             while (*end && *end != ',') {
	cmpb	$44, %bl	#, _1
	je	.L18	#,
	testb	%bl, %bl	# _1
	je	.L18	#,
.L7:
	leaq	1(%rdx), %rax	#, ivtmp.13
	jmp	.L10	#
	.p2align 4,,10
	.p2align 3
.L41:
	cmpb	$44, %bl	#, _1
	je	.L9	#,
.L10:
# eval/problem23/code.c:23:                 end++;
	movq	%rax, 16(%rsp)	# ivtmp.13, end
# eval/problem23/code.c:22:             while (*end && *end != ',') {
	movzbl	(%rax), %ebx	# MEM[(char *)_17], _1
# eval/problem23/code.c:23:                 end++;
	movq	%rax, %rdx	# ivtmp.13, start
# eval/problem23/code.c:22:             while (*end && *end != ',') {
	addq	$1, %rax	#, ivtmp.13
	testb	%bl, %bl	# _1
	jne	.L41	#,
.L3:
# eval/problem23/code.c:28:     *size = count;
	movq	8(%rsp), %rax	# %sfp, size
	movl	%r15d, (%rax)	# count, *size_42(D)
# eval/problem23/code.c:30: }
	movq	24(%rsp), %rax	# D.3575, tmp147
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp147
	jne	.L42	#,
	addq	$40, %rsp	#,
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
.L18:
	.cfi_restore_state
# eval/problem23/code.c:22:             while (*end && *end != ',') {
	movq	%rbp, %rdx	# values, start
	jmp	.L9	#
.L42:
# eval/problem23/code.c:30: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE53:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1024,32
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
