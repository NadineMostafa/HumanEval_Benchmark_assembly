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
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# eval/problem62/code.c:5: bool func0(const char *brackets) {
	movq	%rdi, %rbx	# tmp95, brackets
# eval/problem62/code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	call	strlen@PLT	#
	movq	%rbx, %rdi	# brackets, ivtmp.6
# eval/problem62/code.c:6:     int level = 0;
	xorl	%ecx, %ecx	# level
	addq	%rbx, %rax	# ivtmp.6, _21
# eval/problem62/code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem62/code.c:9:         if (brackets[i] == ')') level -= 1;
	cmpb	$41, %dl	#, _3
	jne	.L4	#,
# eval/problem62/code.c:10:         if (level < 0) return false;
	subl	$1, %ecx	#, level
	jb	.L7	#,
.L4:
	addq	$1, %rdi	#, ivtmp.6
.L2:
# eval/problem62/code.c:7:     for (int i = 0; i < strlen(brackets); i++) {
	cmpq	%rax, %rdi	# _21, ivtmp.6
	je	.L10	#,
# eval/problem62/code.c:8:         if (brackets[i] == '(') level += 1;
	movzbl	(%rdi), %edx	# MEM[(const char *)_20], _3
# eval/problem62/code.c:8:         if (brackets[i] == '(') level += 1;
	cmpb	$40, %dl	#, _3
	jne	.L3	#,
# eval/problem62/code.c:8:         if (brackets[i] == '(') level += 1;
	addl	$1, %ecx	#, level
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L10:
# eval/problem62/code.c:12:     return level == 0;
	testl	%ecx, %ecx	# level
# eval/problem62/code.c:13: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# eval/problem62/code.c:12:     return level == 0;
	sete	%al	#, <retval>
# eval/problem62/code.c:13: }
	ret	
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
# eval/problem62/code.c:10:         if (level < 0) return false;
	xorl	%eax, %eax	# <retval>
# eval/problem62/code.c:13: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
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
