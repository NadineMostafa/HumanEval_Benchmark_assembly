	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"2357BD"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
# eval/problem79/code.c:8:         if (strchr(key, num[i])) out += 1;
	leaq	.LC0(%rip), %r13	#, tmp97
# eval/problem79/code.c:4: int func0(const char* num) {
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
# eval/problem79/code.c:6:     int out = 0;
	xorl	%r12d, %r12d	# <retval>
# eval/problem79/code.c:4: int func0(const char* num) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# tmp98, num
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# eval/problem79/code.c:7:     for (int i = 0; i < strlen(num); i++) {
	call	strlen@PLT	#
	leaq	(%rbx,%rax), %rbp	#, _19
# eval/problem79/code.c:7:     for (int i = 0; i < strlen(num); i++) {
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem79/code.c:8:         if (strchr(key, num[i])) out += 1;
	movsbl	(%rbx), %esi	# MEM[(const char *)_20], MEM[(const char *)_20]
	movq	%r13, %rdi	# tmp97,
	call	strchr@PLT	#
# eval/problem79/code.c:8:         if (strchr(key, num[i])) out += 1;
	cmpq	$1, %rax	#, tmp100
	sbbl	$-1, %r12d	#, <retval>
	addq	$1, %rbx	#, ivtmp.6
.L2:
# eval/problem79/code.c:7:     for (int i = 0; i < strlen(num); i++) {
	cmpq	%rbp, %rbx	# _19, ivtmp.6
	jne	.L4	#,
# eval/problem79/code.c:11: }
	addq	$8, %rsp	#,
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
