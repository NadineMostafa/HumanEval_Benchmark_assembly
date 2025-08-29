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
	movq	%rsi, %r13	# tmp99, returnSize
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	movzbl	(%rdi), %edx	# *paren_string_24(D), _11
# eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	testb	%dl, %dl	# _11
	je	.L6	#,
	leaq	1(%rdi), %rbx	#, ivtmp.8
# eval/problem7/code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	xorl	%r14d, %r14d	# count
# eval/problem7/code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	xorl	%r12d, %r12d	# max_level
# eval/problem7/code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	xorl	%ebp, %ebp	# level
# eval/problem7/code.c:6:     int* all_levels = NULL;
	xorl	%eax, %eax	# <retval>
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem7/code.c:14:         } else if (chr == ')') {
	cmpb	$41, %dl	#, _11
	je	.L10	#,
.L4:
# eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	movzbl	(%rbx), %edx	# MEM[(const char *)_37 + -1B], _11
# eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	addq	$1, %rbx	#, ivtmp.8
	testb	%dl, %dl	# _11
	je	.L2	#,
.L5:
# eval/problem7/code.c:11:         if (chr == '(') {
	cmpb	$40, %dl	#, _11
	jne	.L3	#,
# eval/problem7/code.c:12:             level += 1;
	addl	$1, %ebp	#, level
	cmpl	%ebp, %r12d	# level, max_level
	cmovl	%ebp, %r12d	# max_level,, level, max_level
# eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	movzbl	(%rbx), %edx	# MEM[(const char *)_37 + -1B], _11
# eval/problem7/code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	addq	$1, %rbx	#, ivtmp.8
	testb	%dl, %dl	# _11
	jne	.L5	#,
.L2:
# eval/problem7/code.c:23:     *returnSize = count;
	movl	%r14d, 0(%r13)	# count, *returnSize_25(D)
# eval/problem7/code.c:25: }
	addq	$8, %rsp	#,
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
.L10:
	.cfi_restore_state
# eval/problem7/code.c:16:             if (level == 0) {
	subl	$1, %ebp	#, level
	jne	.L4	#,
# eval/problem7/code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	addl	$1, %r14d	#, count
# eval/problem7/code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	movq	%rax, %rdi	# <retval>,
# eval/problem7/code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	movslq	%r14d, %r15	# count, count
# eval/problem7/code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	salq	$2, %r15	#, _5
	movq	%r15, %rsi	# _5,
	call	realloc@PLT	#
# eval/problem7/code.c:18:                 all_levels[count++] = max_level;
	movl	%r12d, -4(%rax,%r15)	# max_level, *_8
# eval/problem7/code.c:19:                 max_level = 0;
	xorl	%r12d, %r12d	# max_level
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem7/code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	xorl	%r14d, %r14d	# count
# eval/problem7/code.c:6:     int* all_levels = NULL;
	xorl	%eax, %eax	# <retval>
	jmp	.L2	#
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
