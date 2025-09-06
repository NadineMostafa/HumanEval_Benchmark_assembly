	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"AEIOU"
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
# eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmpb	$0, (%rdi)	#, *s_15(D)
	je	.L6	#,
	movq	%rdi, %rbp	# tmp101, s
# eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	xorl	%ebx, %ebx	# ivtmp.5
# eval/problem99/code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	leaq	.LC0(%rip), %r14	#, tmp100
# eval/problem99/code.c:6:     int count = 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	call	strlen@PLT	#
	leaq	1(%rax), %r13	#, tmp96
	shrq	%r13	# _21
	jmp	.L3	#
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem99/code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	movsbl	0(%rbp,%rbx,2), %esi	# MEM[(const char *)s_15(D) + ivtmp.5_1 * 2], MEM[(const char *)s_15(D) + ivtmp.5_1 * 2]
	movq	%r14, %rdi	# tmp100,
	call	strchr@PLT	#
# eval/problem99/code.c:9:             count += 1;
	cmpq	$1, %rax	#, tmp103
	sbbl	$-1, %r12d	#, <retval>
# eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	addq	$1, %rbx	#, ivtmp.5
	cmpb	$0, 0(%rbp,%rbx)	#, MEM[(const char *)s_15(D) + ivtmp.5_20 * 1]
	je	.L1	#,
.L3:
# eval/problem99/code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmpq	%r13, %rbx	# _21, ivtmp.5
	jne	.L5	#,
.L1:
# eval/problem99/code.c:13: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L6:
	.cfi_restore_state
# eval/problem99/code.c:6:     int count = 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem99/code.c:12:     return count;
	jmp	.L1	#
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
