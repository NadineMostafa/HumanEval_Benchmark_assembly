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
.LFB23:
	.cfi_startproc
	endbr64	
# eval/problem134/code.c:6:     for (int i = 0; i < size; i++) {
	testl	%esi, %esi	# size
	jle	.L5	#,
	leal	-1(%rsi), %eax	#, tmp98
	movss	.LC0(%rip), %xmm4	#, tmp115
# eval/problem134/code.c:5:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem134/code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	movss	.LC1(%rip), %xmm3	#, tmp106
	movss	.LC2(%rip), %xmm5	#, tmp116
	leaq	4(%rdi,%rax,4), %rdx	#, _27
	.p2align 4,,10
	.p2align 3
.L4:
# eval/problem134/code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	movss	(%rdi), %xmm0	# MEM[(float *)_22], MEM[(float *)_22]
	movaps	%xmm0, %xmm1	# MEM[(float *)_22], tmp104
	andps	%xmm3, %xmm1	# tmp106, tmp104
	ucomiss	%xmm1, %xmm4	# tmp104, tmp115
	jbe	.L3	#,
	cvttss2sil	%xmm0, %eax	# MEM[(float *)_22], tmp107
	pxor	%xmm1, %xmm1	# tmp104
	movaps	%xmm0, %xmm2	# MEM[(float *)_22], tmp109
	cvtsi2ssl	%eax, %xmm1	# tmp107, tmp104
	cmpnless	%xmm1, %xmm2	#, tmp104, tmp109
	andps	%xmm5, %xmm2	# tmp116, tmp109
	addss	%xmm2, %xmm1	# tmp109, tmp110
	movaps	%xmm3, %xmm2	# tmp106, tmp111
	andnps	%xmm0, %xmm2	# MEM[(float *)_22], tmp111
	movaps	%xmm1, %xmm0	# tmp110, tmp110
	orps	%xmm2, %xmm0	# tmp111, tmp110
.L3:
# eval/problem134/code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	cvttss2sil	%xmm0, %eax	# MEM[(float *)_22], _5
# eval/problem134/code.c:6:     for (int i = 0; i < size; i++) {
	addq	$4, %rdi	#, ivtmp.7
# eval/problem134/code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	imull	%eax, %eax	# _5, tmp112
# eval/problem134/code.c:7:         sum += (int)ceil(lst[i]) * (int)ceil(lst[i]);
	addl	%eax, %r8d	# tmp112, <retval>
# eval/problem134/code.c:6:     for (int i = 0; i < size; i++) {
	cmpq	%rdx, %rdi	# _27, ivtmp.7
	jne	.L4	#,
# eval/problem134/code.c:10: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# eval/problem134/code.c:5:     int sum = 0;
	xorl	%r8d, %r8d	# <retval>
# eval/problem134/code.c:10: }
	movl	%r8d, %eax	# <retval>,
	ret	
	.cfi_endproc
.LFE23:
	.size	func0, .-func0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1258291200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC2:
	.long	1065353216
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
