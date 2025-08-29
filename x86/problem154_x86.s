	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s.%s"
	.text
	.p2align 4
	.globl	func0
	.type	func0, @function
func0:
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r8	# tmp116, class_name
	movq	%rcx, %r11	# tmp119, output
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
# eval/problem154/code.c:7:     for (int i = 0; i < ext_count; i++) {
	testl	%edx, %edx	# ext_count
	jle	.L9	#,
	leal	-1(%rdx), %eax	#, tmp106
# eval/problem154/code.c:6:     const char* strongest = NULL;
	xorl	%r9d, %r9d	# strongest
# eval/problem154/code.c:5:     int max_strength = -1000;
	movl	$-1000, %ebx	#, max_strength
	leaq	8(%rsi,%rax,8), %rbp	#, _50
	.p2align 4,,10
	.p2align 3
.L8:
# eval/problem154/code.c:8:         const char* extension = extensions[i];
	movq	(%rsi), %r10	# MEM[(const char * *)_4], extension
# eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	movzbl	(%r10), %eax	# *extension_26, _11
# eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	testb	%al, %al	# _11
	je	.L10	#,
	leaq	1(%r10), %rdx	#, ivtmp.11
# eval/problem154/code.c:9:         int strength = 0;
	xorl	%ecx, %ecx	# strength
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L15:
# eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	movzbl	(%rdx), %eax	# MEM[(const char *)_17 + -1B], _11
# eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	addq	$1, %rdx	#, ivtmp.11
# eval/problem154/code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	addl	$1, %ecx	#, strength
# eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	testb	%al, %al	# _11
	je	.L3	#,
.L6:
# eval/problem154/code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	leal	-65(%rax), %edi	#, tmp109
# eval/problem154/code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	cmpb	$25, %dil	#, tmp109
	jbe	.L15	#,
# eval/problem154/code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	subl	$97, %eax	#, tmp110
# eval/problem154/code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	cmpb	$26, %al	#, tmp110
	sbbl	$0, %ecx	#, strength
# eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	movzbl	(%rdx), %eax	# MEM[(const char *)_17 + -1B], _11
# eval/problem154/code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	addq	$1, %rdx	#, ivtmp.11
	testb	%al, %al	# _11
	jne	.L6	#,
.L3:
# eval/problem154/code.c:15:         if (strength > max_strength) {
	cmpl	%ecx, %ebx	# strength, max_strength
	jge	.L7	#,
	movq	%r10, %r9	# extension, strongest
	movl	%ecx, %ebx	# strength, max_strength
.L7:
# eval/problem154/code.c:7:     for (int i = 0; i < ext_count; i++) {
	addq	$8, %rsi	#, ivtmp.17
	cmpq	%rbp, %rsi	# _50, ivtmp.17
	jne	.L8	#,
.L2:
# eval/problem154/code.c:21: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	leaq	.LC0(%rip), %rcx	#, tmp111
	movq	$-1, %rdx	#,
# eval/problem154/code.c:21: }
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:38:   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
	movl	$1, %esi	#,
	movq	%r11, %rdi	# output,
	xorl	%eax, %eax	#
	jmp	__sprintf_chk@PLT	#
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
# eval/problem154/code.c:9:         int strength = 0;
	xorl	%ecx, %ecx	# strength
	jmp	.L3	#
.L9:
# eval/problem154/code.c:6:     const char* strongest = NULL;
	xorl	%r9d, %r9d	# strongest
	jmp	.L2	#
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
