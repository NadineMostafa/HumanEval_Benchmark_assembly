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
# eval/problem57/code.c:8:     while (brackets[i]) {
	movzbl	(%rdi), %eax	# *brackets_10(D), _4
# eval/problem57/code.c:8:     while (brackets[i]) {
	testb	%al, %al	# _4
	je	.L7	#,
	addq	$1, %rdi	#, ivtmp.7
# eval/problem57/code.c:6:     int level = 0;
	xorl	%edx, %edx	# level
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem57/code.c:10:         if (brackets[i] == '>') level--;
	cmpb	$62, %al	#, _4
	jne	.L4	#,
# eval/problem57/code.c:11:         if (level < 0) return false;
	subl	$1, %edx	#, level
	jb	.L8	#,
.L4:
# eval/problem57/code.c:8:     while (brackets[i]) {
	movzbl	(%rdi), %eax	# MEM[(const char *)_18 + -1B], _4
# eval/problem57/code.c:8:     while (brackets[i]) {
	addq	$1, %rdi	#, ivtmp.7
	testb	%al, %al	# _4
	je	.L11	#,
.L6:
# eval/problem57/code.c:9:         if (brackets[i] == '<') level++;
	cmpb	$60, %al	#, _4
	jne	.L3	#,
# eval/problem57/code.c:8:     while (brackets[i]) {
	movzbl	(%rdi), %eax	# MEM[(const char *)_18 + -1B], _4
# eval/problem57/code.c:8:     while (brackets[i]) {
	addq	$1, %rdi	#, ivtmp.7
# eval/problem57/code.c:9:         if (brackets[i] == '<') level++;
	addl	$1, %edx	#, level
# eval/problem57/code.c:8:     while (brackets[i]) {
	testb	%al, %al	# _4
	jne	.L6	#,
.L11:
# eval/problem57/code.c:14:     if (level != 0) return false;
	testl	%edx, %edx	# level
	sete	%al	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem57/code.c:11:         if (level < 0) return false;
	xorl	%eax, %eax	# <retval>
# eval/problem57/code.c:16: }
	ret	
.L7:
# eval/problem57/code.c:8:     while (brackets[i]) {
	movl	$1, %eax	#, <retval>
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
