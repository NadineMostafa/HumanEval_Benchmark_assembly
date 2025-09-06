	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"A+"
.LC1:
	.string	"A"
.LC2:
	.string	"A-"
.LC3:
	.string	"B+"
.LC4:
	.string	"B"
.LC5:
	.string	"B-"
.LC6:
	.string	"C+"
.LC7:
	.string	"C"
.LC8:
	.string	"C-"
.LC9:
	.string	"D+"
.LC10:
	.string	"D"
.LC11:
	.string	"D-"
.LC12:
	.string	"E"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB39:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movslq	%esi, %rbp	# tmp122,
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# eval/problem82/code.c:4: char** func0(float* grades, int size) {
	movq	%rdi, %rbx	# tmp121, grades
# eval/problem82/code.c:5:     char** out = malloc(size * sizeof(char*));
	leaq	0(,%rbp,8), %rdi	#, tmp93
	call	malloc@PLT	#
	movsd	.LC13(%rip), %xmm1	#, tmp108
# eval/problem82/code.c:6:     for (int i = 0; i < size; ++i) {
	testl	%ebp, %ebp	# size
	jle	.L1	#,
	xorl	%edx, %edx	# ivtmp.5
# eval/problem82/code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	movsd	.LC14(%rip), %xmm2	#, tmp112
# eval/problem82/code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	movsd	.LC15(%rip), %xmm3	#, tmp114
	leaq	.LC0(%rip), %rsi	#, _60
	leaq	.LC1(%rip), %rdi	#, _60
	leaq	.LC2(%rip), %r8	#, _60
	leaq	.LC3(%rip), %r9	#, _60
	leaq	.LC4(%rip), %r10	#, _60
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	pxor	%xmm0, %xmm0	# _7
	movq	%rsi, %rcx	# _60, _60
	cvtss2sd	(%rbx,%rdx,4), %xmm0	# MEM[(float *)grades_41(D) + ivtmp.5_62 * 4], _7
# eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	comisd	%xmm1, %xmm0	# tmp108, _7
	jnb	.L3	#,
# eval/problem82/code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	comisd	%xmm2, %xmm0	# tmp112, _7
	movq	%rdi, %rcx	# _60, _60
	ja	.L3	#,
# eval/problem82/code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	comisd	%xmm3, %xmm0	# tmp114, _7
	movq	%r8, %rcx	# _60, _60
	ja	.L3	#,
# eval/problem82/code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	comisd	.LC16(%rip), %xmm0	#, _7
	movq	%r9, %rcx	# _60, _60
	ja	.L3	#,
# eval/problem82/code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	comisd	.LC17(%rip), %xmm0	#, _7
	movq	%r10, %rcx	# _60, _60
	jbe	.L24	#,
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem82/code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	movq	%rcx, (%rax,%rdx,8)	# _60, MEM[(char * *)out_40 + ivtmp.5_62 * 8]
# eval/problem82/code.c:6:     for (int i = 0; i < size; ++i) {
	addq	$1, %rdx	#, ivtmp.5
	cmpq	%rbp, %rdx	# size, ivtmp.5
	jne	.L5	#,
.L1:
# eval/problem82/code.c:22: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
# eval/problem82/code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	comisd	.LC18(%rip), %xmm0	#, _7
	leaq	.LC5(%rip), %rcx	#, _60
	ja	.L3	#,
# eval/problem82/code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	comisd	.LC19(%rip), %xmm0	#, _7
	leaq	.LC6(%rip), %rcx	#, _60
	ja	.L3	#,
# eval/problem82/code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	comisd	.LC20(%rip), %xmm0	#, _7
	leaq	.LC7(%rip), %rcx	#, _60
	ja	.L3	#,
# eval/problem82/code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	comisd	.LC21(%rip), %xmm0	#, _7
	leaq	.LC8(%rip), %rcx	#, _60
	ja	.L3	#,
# eval/problem82/code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	comisd	.LC22(%rip), %xmm0	#, _7
	leaq	.LC9(%rip), %rcx	#, _60
	ja	.L3	#,
# eval/problem82/code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	comisd	.LC23(%rip), %xmm0	#, _7
	leaq	.LC10(%rip), %rcx	#, _60
	ja	.L3	#,
	comisd	.LC24(%rip), %xmm0	#, _7
	leaq	.LC11(%rip), %rcx	#, tmp109
	leaq	.LC12(%rip), %r11	#, tmp110
	cmovbe	%r11, %rcx	# tmp109,, tmp110, _60
	jmp	.L3	#
	.cfi_endproc
.LFE39:
	.size	func0, .-func0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC13:
	.long	-1841681977
	.long	1074790347
	.align 8
.LC14:
	.long	123695058
	.long	1074633166
	.align 8
.LC15:
	.long	-735298401
	.long	1074423450
	.align 8
.LC16:
	.long	1841681977
	.long	1074266164
	.align 8
.LC17:
	.long	123695058
	.long	1074108878
	.align 8
.LC18:
	.long	-735298401
	.long	1073899162
	.align 8
.LC19:
	.long	1841681977
	.long	1073741876
	.align 8
.LC20:
	.long	247390116
	.long	1073427356
	.align 8
.LC21:
	.long	-1470596802
	.long	1073007925
	.align 8
.LC22:
	.long	-611603343
	.long	1072693352
	.align 8
.LC23:
	.long	494780232
	.long	1072064312
	.align 8
.LC24:
	.long	-350469331
	.long	1058682594
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
