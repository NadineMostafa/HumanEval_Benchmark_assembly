	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"m"
.LC1:
	.string	"cm"
.LC2:
	.string	"d"
.LC3:
	.string	"cd"
.LC4:
	.string	"c"
.LC5:
	.string	"xc"
.LC6:
	.string	"l"
.LC7:
	.string	"xl"
.LC8:
	.string	"x"
.LC9:
	.string	"ix"
.LC10:
	.string	"v"
.LC11:
	.string	"iv"
.LC12:
	.string	"i"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$176, %rsp	#,
	.cfi_def_cfa_offset 224
# eval/problem157/code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp113
	movq	%rax, 168(%rsp)	# tmp113, D.2840
	leaq	.LC0(%rip), %rax	#, tmp113
# eval/problem157/code.c:8:     result[0] = '\0';
	movb	$0, (%rsi)	#, *result_36(D)
# eval/problem157/code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	movq	%rax, 64(%rsp)	# tmp116, rep[0]
	leaq	.LC1(%rip), %rax	#, tmp117
	movq	%rax, 72(%rsp)	# tmp117, rep[1]
	leaq	.LC2(%rip), %rax	#, tmp118
	movq	%rax, 80(%rsp)	# tmp118, rep[2]
	leaq	.LC3(%rip), %rax	#, tmp119
	movq	%rax, 88(%rsp)	# tmp119, rep[3]
	leaq	.LC4(%rip), %rax	#, tmp120
	movq	%rax, 96(%rsp)	# tmp120, rep[4]
	leaq	.LC5(%rip), %rax	#, tmp121
	movq	%rax, 104(%rsp)	# tmp121, rep[5]
	leaq	.LC6(%rip), %rax	#, tmp122
	movq	%rax, 112(%rsp)	# tmp122, rep[6]
	leaq	.LC7(%rip), %rax	#, tmp123
	movq	%rax, 120(%rsp)	# tmp123, rep[7]
	leaq	.LC8(%rip), %rax	#, tmp124
	movq	%rax, 128(%rsp)	# tmp124, rep[8]
	leaq	.LC9(%rip), %rax	#, tmp125
	movq	%rax, 136(%rsp)	# tmp125, rep[9]
	leaq	.LC10(%rip), %rax	#, tmp126
	movq	%rax, 144(%rsp)	# tmp126, rep[10]
	leaq	.LC11(%rip), %rax	#, tmp127
	movq	%rax, 152(%rsp)	# tmp127, rep[11]
	leaq	.LC12(%rip), %rax	#, tmp128
	movq	%rax, 160(%rsp)	# tmp128, rep[12]
# eval/problem157/code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	movabsq	$2147483648900, %rax	#, tmp129
	movq	%rax, 4(%rsp)	# tmp129, MEM <unsigned long> [(int *)&num + 4B]
	movabsq	$429496730000, %rax	#, tmp130
	movq	%rax, 12(%rsp)	# tmp130, MEM <unsigned long> [(int *)&num + 12B]
	movabsq	$214748364890, %rax	#, tmp131
	movq	%rax, 20(%rsp)	# tmp131, MEM <unsigned long> [(int *)&num + 20B]
	movabsq	$42949673000, %rax	#, tmp132
	movq	%rax, 28(%rsp)	# tmp132, MEM <unsigned long> [(int *)&num + 28B]
	movabsq	$21474836489, %rax	#, tmp133
	movq	%rax, 36(%rsp)	# tmp133, MEM <unsigned long> [(int *)&num + 36B]
	movabsq	$4294967300, %rax	#, tmp134
	movq	%rax, 44(%rsp)	# tmp134, MEM <unsigned long> [(int *)&num + 44B]
# eval/problem157/code.c:10:     while(number > 0) {
	testl	%edi, %edi	# number
	jle	.L1	#,
	movl	%edi, %ebx	# tmp111, number
	movl	$1000, %ebp	#, prephitmp_2
	movq	%rsi, %rdx	# tmp112, result
	xorl	%r13d, %r13d	# ivtmp.24
	leaq	64(%rsp), %r14	#, tmp110
# eval/problem157/code.c:11:         while (number >= num[pos]) {
	cmpl	%ebx, %ebp	# number, prephitmp_2
	jg	.L18	#,
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem157/code.c:12:             strcat(result, rep[pos]);
	movq	(%r14,%r13,2), %r12	# MEM[(const char * *)&rep + ivtmp.24_22 * 2], pretmp_54
	.p2align 4,,10
	.p2align 3
.L4:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:130:   return __builtin___strcat_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%rdx, %rdi	# result,
	movq	%r12, %rsi	# pretmp_54,
# eval/problem157/code.c:13:             number -= num[pos];
	subl	%ebp, %ebx	# prephitmp_2, number
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:130:   return __builtin___strcat_chk (__dest, __src, __glibc_objsize (__dest));
	call	strcat@PLT	#
	movq	%rax, %rdx	#, result
# eval/problem157/code.c:11:         while (number >= num[pos]) {
	cmpl	%ebx, %ebp	# number, prephitmp_2
	jle	.L4	#,
# eval/problem157/code.c:15:         if (number > 0) pos++;
	addq	$4, %r13	#, ivtmp.24
	testl	%ebx, %ebx	# number
	je	.L1	#,
.L7:
# eval/problem157/code.c:11:         while (number >= num[pos]) {
	movl	(%rsp,%r13), %ebp	# MEM[(int *)&num + ivtmp.24_44 * 1], prephitmp_2
# eval/problem157/code.c:11:         while (number >= num[pos]) {
	cmpl	%ebx, %ebp	# number, prephitmp_2
	jle	.L5	#,
.L18:
# eval/problem157/code.c:15:         if (number > 0) pos++;
	addq	$4, %r13	#, ivtmp.24
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L1:
# eval/problem157/code.c:17: }
	movq	168(%rsp), %rax	# D.2840, tmp114
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp114
	jne	.L19	#,
	addq	$176, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
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
.L19:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE35:
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
