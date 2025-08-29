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
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 64
# eval/problem45/code.c:5: void func0(int x, int base, char *out) {
	movq	%rdx, %r9	# tmp117, out
	movq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	movq	%rdx, 40(%rsp)	# tmp118, D.3472
	xorl	%edx, %edx	# tmp118
# eval/problem45/code.c:8:     while (x > 0) {
	testl	%edi, %edi	# x
	jle	.L2	#,
	movl	%edi, %eax	# tmp115, x
	movl	$1, %ecx	#, ivtmp.32
	leaq	-1(%rsp), %r8	#, tmp113
	.p2align 4,,10
	.p2align 3
.L3:
	cltd
	movl	%ecx, %edi	# ivtmp.32, _51
	idivl	%esi	# base
# eval/problem45/code.c:9:         temp[index++] = (x % base) + '0';
	addl	$48, %edx	#, pretmp_30
# eval/problem45/code.c:9:         temp[index++] = (x % base) + '0';
	movb	%dl, (%r8,%rcx)	# pretmp_30, MEM[(char *)&temp + -1B + ivtmp.32_49 * 1]
# eval/problem45/code.c:8:     while (x > 0) {
	addq	$1, %rcx	#, ivtmp.32
	testl	%eax, %eax	# x
	jg	.L3	#,
	movslq	%edi, %r8	# _51, _12
	leal	-1(%rdi), %esi	#, tmp111
	movq	%r9, %rax	# out, ivtmp.20
	leaq	(%rsp,%r8), %rcx	#, ivtmp.27
	addq	%r9, %rsi	# out, _47
	jmp	.L5	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem45/code.c:14:         out[j++] = temp[--index];
	movzbl	-1(%rcx), %edx	# MEM[(char *)_48 + -1B], pretmp_30
	addq	$1, %rax	#, ivtmp.20
.L5:
# eval/problem45/code.c:14:         out[j++] = temp[--index];
	movb	%dl, (%rax)	# pretmp_30, MEM[(char *)_4]
# eval/problem45/code.c:13:     while(index > 0) {
	subq	$1, %rcx	#, ivtmp.27
	cmpq	%rsi, %rax	# _47, ivtmp.20
	jne	.L10	#,
# eval/problem45/code.c:16:     out[j] = '\0';
	addq	%r8, %r9	# _12, out
.L2:
# eval/problem45/code.c:16:     out[j] = '\0';
	movb	$0, (%r9)	#, *prephitmp_46
# eval/problem45/code.c:17: }
	movq	40(%rsp), %rax	# D.3472, tmp119
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	jne	.L11	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L11:
	.cfi_restore_state
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
