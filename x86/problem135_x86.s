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
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp	# tmp120, txt
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem135/code.c:6:     int len = strlen(txt);
	call	strlen@PLT	#
# eval/problem135/code.c:6:     int len = strlen(txt);
	movl	%eax, %r12d	# tmp108, <retval>
# eval/problem135/code.c:7:     if (len == 0) return 0;
	testl	%eax, %eax	# tmp108
	je	.L1	#,
# eval/problem135/code.c:8:     char last_char = txt[len - 1];
	movslq	%eax, %r13	# tmp108, _2
# eval/problem135/code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	call	__ctype_b_loc@PLT	#
	movzbl	-1(%rbp,%r13), %edx	# *_4, *_4
	movq	(%rax), %rax	# *_5, _6
# eval/problem135/code.c:9:     if (!isalpha((unsigned char)last_char)) return 0;
	testb	$4, 1(%rax,%rdx,2)	#, *_10
	je	.L3	#,
# eval/problem135/code.c:10:     if (len == 1) return 1;
	cmpl	$1, %r12d	#, tmp108
	je	.L1	#,
# eval/problem135/code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	movzbl	-2(%rbp,%r13), %edx	# *_13, *_13
# eval/problem135/code.c:12:     if (isalpha((unsigned char)second_last_char)) return 0;
	movzwl	(%rax,%rdx,2), %r12d	# *_17, *_17
	shrw	$10, %r12w	#, tmp114
	xorl	$1, %r12d	#, tmp116
# eval/problem135/code.c:7:     if (len == 0) return 0;
	andl	$1, %r12d	#, <retval>
.L1:
# eval/problem135/code.c:14: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax	# <retval>,
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
.L3:
	.cfi_restore_state
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
# eval/problem135/code.c:7:     if (len == 0) return 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem135/code.c:14: }
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	movl	%r12d, %eax	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
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
