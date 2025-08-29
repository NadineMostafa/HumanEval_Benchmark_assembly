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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# tmp137, date
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem125/code.c:5: int func0(const char *date) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	movq	%rax, 24(%rsp)	# tmp141, D.3489
	xorl	%eax, %eax	# tmp141
# eval/problem125/code.c:8:     if (strlen(date) != 10) return 0;
	call	strlen@PLT	#
# eval/problem125/code.c:8:     if (strlen(date) != 10) return 0;
	cmpq	$10, %rax	#, tmp138
	jne	.L5	#,
	xorl	%eax, %eax	# ivtmp.7
# eval/problem125/code.c:10:         if (i == 2 || i == 5) {
	movl	$36, %ecx	#, tmp115
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L17:
# eval/problem125/code.c:11:             if (date[i] != '-') return 0;
	cmpb	$45, %dl	#, pretmp_67
	jne	.L5	#,
.L6:
# eval/problem125/code.c:9:     for (int i = 0; i < 10; i++) {
	addq	$1, %rax	#, ivtmp.7
	cmpq	$10, %rax	#, ivtmp.7
	je	.L16	#,
.L2:
# eval/problem125/code.c:10:         if (i == 2 || i == 5) {
	btq	%rax, %rcx	# ivtmp.7, tmp115
# eval/problem125/code.c:11:             if (date[i] != '-') return 0;
	movzbl	(%rbx,%rax), %edx	# MEM[(const char *)date_35(D) + ivtmp.7_64 * 1], pretmp_67
# eval/problem125/code.c:10:         if (i == 2 || i == 5) {
	jc	.L17	#,
# eval/problem125/code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	subl	$48, %edx	#, tmp117
# eval/problem125/code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmpb	$9, %dl	#, tmp117
	jbe	.L6	#,
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem125/code.c:8:     if (strlen(date) != 10) return 0;
	xorl	%eax, %eax	# <retval>
.L1:
# eval/problem125/code.c:31: }
	movq	24(%rsp), %rdx	# D.3489, tmp142
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	jne	.L18	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L16:
	.cfi_restore_state
# eval/problem125/code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movzwl	(%rbx), %eax	# MEM <unsigned short> [(const char *)date_35(D)], MEM <unsigned short> [(const char *)date_35(D)]
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	leaq	13(%rsp), %rdi	#, tmp121
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
# eval/problem125/code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movb	$0, 15(%rsp)	#, str_month[2]
	movw	%ax, 13(%rsp)	# MEM <unsigned short> [(const char *)date_35(D)], MEM <unsigned short> [(char *)&str_month]
# eval/problem125/code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movzwl	3(%rbx), %eax	# MEM <unsigned short> [(const char *)date_35(D) + 3B], MEM <unsigned short> [(const char *)date_35(D) + 3B]
	movb	$0, 18(%rsp)	#, str_day[2]
	movw	%ax, 16(%rsp)	# MEM <unsigned short> [(const char *)date_35(D) + 3B], MEM <unsigned short> [(char *)&str_day]
# eval/problem125/code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movl	6(%rbx), %eax	# MEM <unsigned int> [(const char *)date_35(D) + 6B], MEM <unsigned int> [(const char *)date_35(D) + 6B]
	movb	$0, 23(%rsp)	#, str_year[4]
	movl	%eax, 19(%rsp)	# MEM <unsigned int> [(const char *)date_35(D) + 6B], MEM <unsigned int> [(char *)&str_year]
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
	leaq	16(%rsp), %rdi	#, tmp122
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	movq	%rax, %rbx	# tmp139, _53
	call	strtol@PLT	#
	leaq	19(%rsp), %rdi	#, tmp123
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	movq	%rax, %rbp	# tmp140, _51
	call	strtol@PLT	#
# eval/problem125/code.c:25:     if (mm < 1 || mm > 12) return 0;
	leal	-1(%rbx), %eax	#, tmp124
# eval/problem125/code.c:25:     if (mm < 1 || mm > 12) return 0;
	cmpl	$11, %eax	#, tmp124
	ja	.L5	#,
# eval/problem125/code.c:26:     if (dd < 1 || dd > 31) return 0;
	leal	-1(%rbp), %eax	#, tmp125
# eval/problem125/code.c:26:     if (dd < 1 || dd > 31) return 0;
	cmpl	$30, %eax	#, tmp125
	ja	.L5	#,
	cmpl	$11, %ebx	#, _53
	ja	.L7	#,
	movl	$2640, %eax	#, tmp127
	btq	%rbx, %rax	# _53, tmp127
	jnc	.L7	#,
# eval/problem125/code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$31, %ebp	#, _51
	je	.L5	#,
.L7:
# eval/problem125/code.c:28:     if (mm == 2 && dd > 29) return 0;
	cmpl	$2, %ebx	#, _53
	sete	%al	#, tmp130
# eval/problem125/code.c:28:     if (mm == 2 && dd > 29) return 0;
	cmpl	$29, %ebp	#, _51
	setg	%dl	#, tmp132
# eval/problem125/code.c:28:     if (mm == 2 && dd > 29) return 0;
	andl	%edx, %eax	# tmp132, tmp133
# eval/problem125/code.c:28:     if (mm == 2 && dd > 29) return 0;
	xorl	$1, %eax	#, tmp134
# eval/problem125/code.c:8:     if (strlen(date) != 10) return 0;
	movzbl	%al, %eax	# tmp134, <retval>
	jmp	.L1	#
.L18:
# eval/problem125/code.c:31: }
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
