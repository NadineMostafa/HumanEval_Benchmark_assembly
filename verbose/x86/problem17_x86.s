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
.LFB37:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
# eval/problem17/code.c:7:     int char_map[256] = {0};
	movl	$128, %ecx	#, tmp109
# eval/problem17/code.c:5: int func0(const char *str) {
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp	# tmp119, str
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$1040, %rsp	#,
	.cfi_def_cfa_offset 1088
# eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	movzbl	0(%rbp), %ebx	# *str_10(D),
# eval/problem17/code.c:5: int func0(const char *str) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	movq	%rax, 1032(%rsp)	# tmp122, D.2941
	xorl	%eax, %eax	# tmp122
# eval/problem17/code.c:7:     int char_map[256] = {0};
	movq	%rsp, %rdi	#, tmp107
	rep stosq
# eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	testb	%bl, %bl	# _34
	je	.L6	#,
# eval/problem17/code.c:11:         char ch = tolower((unsigned char)str[index]);
	call	__ctype_tolower_loc@PLT	#
	addq	$1, %rbp	#, ivtmp.10
# eval/problem17/code.c:6:     int count = 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem17/code.c:11:         char ch = tolower((unsigned char)str[index]);
	movq	(%rax), %r14	# *_16, _17
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem17/code.c:11:         char ch = tolower((unsigned char)str[index]);
	movl	(%r14,%rbx,4), %ebx	# *_22, __res
# eval/problem17/code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	movsbq	%bl, %r13	# __res, _23
# eval/problem17/code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	movl	(%rsp,%r13,4), %eax	# char_map[_23],
	testl	%eax, %eax	#
	jne	.L3	#,
# eval/problem17/code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	call	__ctype_b_loc@PLT	#
	movzbl	%bl, %ebx	# __res, __res
	movq	(%rax), %rax	# *_25, *_25
# eval/problem17/code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	testb	$4, 1(%rax,%rbx,2)	#, *_30
	je	.L3	#,
# eval/problem17/code.c:13:             char_map[ch] = 1;
	movl	$1, (%rsp,%r13,4)	#, char_map[_23]
# eval/problem17/code.c:14:             count++;
	addl	$1, %r12d	#, <retval>
.L3:
# eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	movzbl	0(%rbp), %ebx	# MEM[(const char *)_50 + -1B],
# eval/problem17/code.c:10:     for (index = 0; str[index]; index++) {
	addq	$1, %rbp	#, ivtmp.10
	testb	%bl, %bl	# _34
	jne	.L4	#,
.L1:
# eval/problem17/code.c:19: }
	movq	1032(%rsp), %rax	# D.2941, tmp123
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp123
	jne	.L13	#,
	addq	$1040, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movl	%r12d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
# eval/problem17/code.c:6:     int count = 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem17/code.c:18:     return count;
	jmp	.L1	#
.L13:
# eval/problem17/code.c:19: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE37:
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
