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
# eval/problem133/code.c:4: int func0(const char *str) {
	movq	%rdi, %rbx	# tmp103, str
# eval/problem133/code.c:6:     for (int i = 0; i < strlen(str); i++) {
	call	strlen@PLT	#
	movq	%rbx, %rdi	# str, ivtmp.9
# eval/problem133/code.c:5:     int count = 0, maxcount = 0;
	xorl	%ecx, %ecx	# maxcount
# eval/problem133/code.c:5:     int count = 0, maxcount = 0;
	xorl	%edx, %edx	# count
	addq	%rbx, %rax	# ivtmp.9, _27
# eval/problem133/code.c:6:     for (int i = 0; i < strlen(str); i++) {
	jmp	.L2	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem133/code.c:8:         if (str[i] == ']') count -= 1;
	cmpb	$93, %sil	#, _3
	jne	.L4	#,
# eval/problem133/code.c:9:         if (count < 0) count = 0;
	subl	$1, %edx	#, count
	jnb	.L4	#,
# eval/problem133/code.c:9:         if (count < 0) count = 0;
	xorl	%edx, %edx	# count
.L4:
	cmpl	%edx, %ecx	# count, maxcount
	cmovl	%edx, %ecx	# maxcount,, count, maxcount
# eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	addq	$1, %rdi	#, ivtmp.9
# eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	leal	-1(%rcx), %esi	#, tmp95
# eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	cmpl	%edx, %esi	# count, tmp95
	jg	.L7	#,
.L2:
# eval/problem133/code.c:6:     for (int i = 0; i < strlen(str); i++) {
	cmpq	%rdi, %rax	# ivtmp.9, _27
	je	.L10	#,
# eval/problem133/code.c:7:         if (str[i] == '[') count += 1;
	movzbl	(%rdi), %esi	# MEM[(const char *)_25], _3
# eval/problem133/code.c:7:         if (str[i] == '[') count += 1;
	cmpb	$91, %sil	#, _3
	jne	.L3	#,
# eval/problem133/code.c:7:         if (str[i] == '[') count += 1;
	addl	$1, %edx	#, count
	cmpl	%edx, %ecx	# count, maxcount
	cmovl	%edx, %ecx	# maxcount,, count, maxcount
# eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	addq	$1, %rdi	#, ivtmp.9
# eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	leal	-1(%rcx), %esi	#, tmp95
# eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	cmpl	%edx, %esi	# count, tmp95
	jle	.L2	#,
.L7:
# eval/problem133/code.c:11:         if (count <= maxcount - 2) return 1;
	movl	$1, %eax	#, <retval>
# eval/problem133/code.c:14: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
# eval/problem133/code.c:13:     return 0;
	xorl	%eax, %eax	# <retval>
# eval/problem133/code.c:14: }
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
