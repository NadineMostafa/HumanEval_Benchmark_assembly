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
# eval/problem90/code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	movsbl	(%rdi), %eax	# *s_14(D),
# eval/problem90/code.c:4: void func0(const char *s, char *out) {
	movq	%rdi, %r8	# tmp102, s
# eval/problem90/code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	testb	%al, %al	# _8
	je	.L2	#,
# eval/problem90/code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	xorl	%ecx, %ecx	# _24
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem90/code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	subl	$93, %eax	#, tmp92
# eval/problem90/code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	movslq	%eax, %rdx	# tmp92, tmp94
	movl	%eax, %edi	# tmp92, tmp98
	imulq	$1321528399, %rdx, %rdx	#, tmp94, tmp95
	sarl	$31, %edi	#, tmp98
	sarq	$35, %rdx	#, tmp97
	subl	%edi, %edx	# tmp98, tmp93
	imull	$26, %edx, %edx	#, tmp93, tmp99
	subl	%edx, %eax	# tmp99, tmp100
# eval/problem90/code.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addl	$97, %eax	#, w
# eval/problem90/code.c:8:         out[i] = (char)w;
	movb	%al, (%rsi,%rcx)	# w, MEM[(char *)out_15(D) + _24 * 1]
	addq	$1, %rcx	#, _24
# eval/problem90/code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	movsbl	(%r8,%rcx), %eax	# MEM[(const char *)s_14(D) + _33 * 1],
# eval/problem90/code.c:6:     for (i = 0; s[i] != '\0'; i++) {
	testb	%al, %al	# _8
	jne	.L3	#,
# eval/problem90/code.c:10:     out[i] = '\0';
	addq	%rcx, %rsi	# _24, out
.L2:
# eval/problem90/code.c:10:     out[i] = '\0';
	movb	$0, (%rsi)	#, *prephitmp_35
# eval/problem90/code.c:11: }
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
