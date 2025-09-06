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
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/x86_64-linux-gnu/bits/stdlib-float.h:27:   return strtod (__nptr, (char **) NULL);
	xorl	%esi, %esi	#
	call	strtod@PLT	#
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	pxor	%xmm1, %xmm1	# tmp89
	comisd	%xmm0, %xmm1	# _10, tmp89
	ja	.L11	#,
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	addsd	.LC1(%rip), %xmm0	#, tmp105
	movsd	.LC3(%rip), %xmm2	#, tmp108
	movsd	.LC2(%rip), %xmm3	#, tmp104
	movapd	%xmm0, %xmm1	# tmp105, tmp106
	andpd	%xmm2, %xmm1	# tmp108, tmp106
	ucomisd	%xmm1, %xmm3	# tmp106, tmp104
	ja	.L12	#,
.L6:
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvttsd2sil	%xmm0, %eax	# tmp105, <retval>
# eval/problem100/code.c:9: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvttsd2siq	%xmm0, %rax	# tmp105, tmp109
	pxor	%xmm1, %xmm1	# tmp106
	movsd	.LC4(%rip), %xmm4	#, tmp110
	andnpd	%xmm0, %xmm2	# tmp105, tmp113
# eval/problem100/code.c:9: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvtsi2sdq	%rax, %xmm1	# tmp109, tmp106
	movapd	%xmm1, %xmm3	# tmp106, tmp111
	cmpnlesd	%xmm0, %xmm3	#, tmp105, tmp111
	andpd	%xmm4, %xmm3	# tmp110, tmp111
	subsd	%xmm3, %xmm1	# tmp111, tmp112
	orpd	%xmm2, %xmm1	# tmp113, tmp112
	movapd	%xmm1, %xmm0	# tmp112, tmp105
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvttsd2sil	%xmm0, %eax	# tmp105, <retval>
# eval/problem100/code.c:9: }
	ret	
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	subsd	.LC1(%rip), %xmm0	#, tmp93
	movsd	.LC3(%rip), %xmm2	#, tmp96
	movsd	.LC2(%rip), %xmm3	#, tmp92
	movapd	%xmm0, %xmm1	# tmp93, tmp94
	andpd	%xmm2, %xmm1	# tmp96, tmp94
	ucomisd	%xmm1, %xmm3	# tmp94, tmp92
	jbe	.L6	#,
	cvttsd2siq	%xmm0, %rax	# tmp93, tmp97
	pxor	%xmm1, %xmm1	# tmp94
	movapd	%xmm0, %xmm3	# tmp93, tmp99
	movsd	.LC4(%rip), %xmm4	#, tmp98
	andnpd	%xmm0, %xmm2	# tmp93, tmp101
# eval/problem100/code.c:9: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvtsi2sdq	%rax, %xmm1	# tmp97, tmp94
	cmpnlesd	%xmm1, %xmm3	#, tmp94, tmp99
	andpd	%xmm4, %xmm3	# tmp98, tmp99
	addsd	%xmm3, %xmm1	# tmp99, tmp100
	orpd	%xmm2, %xmm1	# tmp101, tmp100
	movapd	%xmm1, %xmm0	# tmp100, tmp93
# eval/problem100/code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvttsd2sil	%xmm0, %eax	# tmp105, <retval>
# eval/problem100/code.c:9: }
	ret	
	.cfi_endproc
.LFE39:
	.size	func0, .-func0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC2:
	.long	0
	.long	1127219200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC3:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC4:
	.long	0
	.long	1072693248
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
