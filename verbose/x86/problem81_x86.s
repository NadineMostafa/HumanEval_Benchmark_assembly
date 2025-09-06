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
.LFB12:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# eval/problem81/code.c:4: bool func0(const char* s) {
	movq	%rdi, %rbx	# tmp97, s
# eval/problem81/code.c:5:     if (strlen(s) < 3) return false;
	call	strlen@PLT	#
# eval/problem81/code.c:5:     if (strlen(s) < 3) return false;
	xorl	%r8d, %r8d	# <retval>
# eval/problem81/code.c:5:     if (strlen(s) < 3) return false;
	cmpq	$2, %rax	#, tmp93
	jbe	.L1	#,
	movq	%rbx, %rdi	# s, ivtmp.10
	leaq	-2(%rbx,%rax), %rdx	#, _25
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L11:
# eval/problem81/code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmpb	(%rdi), %al	# MEM[(const char *)_22], _3
	je	.L6	#,
# eval/problem81/code.c:6:     for (int i = 2; i < strlen(s); i++)
	addq	$1, %rdi	#, ivtmp.10
	cmpq	%rdx, %rdi	# _25, ivtmp.10
	je	.L10	#,
.L3:
# eval/problem81/code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	movzbl	2(%rdi), %eax	# MEM[(const char *)_22 + 2B], _3
# eval/problem81/code.c:7:         if (s[i] == s[i-1] || s[i] == s[i-2]) return false;
	cmpb	1(%rdi), %al	# MEM[(const char *)_22 + 1B], _3
	jne	.L11	#,
.L6:
# eval/problem81/code.c:5:     if (strlen(s) < 3) return false;
	xorl	%r8d, %r8d	# <retval>
.L1:
# eval/problem81/code.c:9: }
	movl	%r8d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
# eval/problem81/code.c:8:     return true;
	movl	$1, %r8d	#, <retval>
# eval/problem81/code.c:9: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	movl	%r8d, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE12:
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
