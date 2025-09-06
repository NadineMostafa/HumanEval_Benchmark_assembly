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
# eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movaps	%xmm0, %xmm4	# a, _1
	addss	%xmm1, %xmm4	# b, _1
# eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	comiss	%xmm4, %xmm2	# _1, c
	jnb	.L6	#,
	movaps	%xmm0, %xmm3	# tmp114, a
# eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	.LC0(%rip), %xmm0	#, <retval>
# eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movaps	%xmm3, %xmm5	# a, tmp100
	addss	%xmm2, %xmm5	# c, tmp100
	comiss	%xmm5, %xmm1	# tmp100, b
	jnb	.L12	#,
# eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movaps	%xmm1, %xmm5	# b, tmp101
	addss	%xmm2, %xmm5	# c, tmp101
# eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	comiss	%xmm5, %xmm3	# tmp101, a
	jnb	.L12	#,
# eval/problem72/code.c:4: float func0(float a, float b, float c) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# eval/problem72/code.c:6: float s = (a + b + c) / 2;
	addss	%xmm2, %xmm4	# c, tmp102
# eval/problem72/code.c:6: float s = (a + b + c) / 2;
	mulss	.LC1(%rip), %xmm4	#, s
# eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movaps	%xmm4, %xmm0	# s, tmp104
	subss	%xmm3, %xmm0	# a, tmp104
# eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	movaps	%xmm4, %xmm3	# s, tmp106
	subss	%xmm1, %xmm3	# b, tmp106
	pxor	%xmm1, %xmm1	# tmp109
# eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	mulss	%xmm4, %xmm0	# s, tmp105
# eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	subss	%xmm2, %xmm4	# c, tmp108
# eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	mulss	%xmm3, %xmm0	# tmp106, tmp107
# eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	mulss	%xmm4, %xmm0	# tmp108, _10
	ucomiss	%xmm0, %xmm1	# _10, tmp109
	ja	.L10	#,
	sqrtss	%xmm0, %xmm0	# _10, area
.L5:
# eval/problem72/code.c:8: return roundf(area * 100) / 100;
	mulss	.LC3(%rip), %xmm0	#, tmp110
	call	roundf@PLT	#
# eval/problem72/code.c:8: return roundf(area * 100) / 100;
	divss	.LC3(%rip), %xmm0	#, <retval>
# eval/problem72/code.c:9: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
# eval/problem72/code.c:5: if (a + b <= c || a + c <= b || b + c <= a) return -1;
	movss	.LC0(%rip), %xmm0	#, <retval>
	ret	
.L10:
	.cfi_def_cfa_offset 16
# eval/problem72/code.c:7: float area = sqrtf(s * (s - a) * (s - b) * (s - c));
	call	sqrtf@PLT	#
	jmp	.L5	#
	.cfi_endproc
.LFE23:
	.size	func0, .-func0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	-1082130432
	.align 4
.LC1:
	.long	1056964608
	.align 4
.LC3:
	.long	1120403456
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
