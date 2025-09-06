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
.LFB39:
	.cfi_startproc
	endbr64	
# eval/problem153/code.c:4: void func0(int* game, int* guess, int* out, int length) {
	movq	%rdi, %r9	# tmp95, game
# eval/problem153/code.c:5:     for (int i = 0; i < length; i++) {
	testl	%ecx, %ecx	# length
	jle	.L1	#,
	movslq	%ecx, %rcx	# length, _25
	xorl	%eax, %eax	# ivtmp.5
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem153/code.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	(%r9,%rax,4), %edi	# MEM[(int *)game_14(D) + ivtmp.5_23 * 4], MEM[(int *)game_14(D) + ivtmp.5_23 * 4]
	subl	(%rsi,%rax,4), %edi	# MEM[(int *)guess_15(D) + ivtmp.5_23 * 4], tmp92
# eval/problem153/code.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	%edi, %r8d	# tmp92, tmp99
	negl	%r8d	# tmp99
	cmovns	%r8d, %edi	# tmp99,, tmp94
# eval/problem153/code.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	%edi, (%rdx,%rax,4)	# tmp94, MEM[(int *)out_16(D) + ivtmp.5_23 * 4]
# eval/problem153/code.c:5:     for (int i = 0; i < length; i++) {
	addq	$1, %rax	#, ivtmp.5
	cmpq	%rax, %rcx	# ivtmp.5, _25
	jne	.L3	#,
.L1:
# eval/problem153/code.c:8: }
	ret	
	.cfi_endproc
.LFE39:
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
