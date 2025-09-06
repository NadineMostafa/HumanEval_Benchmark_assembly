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
.LFB51:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12	# tmp166, music_string
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
# eval/problem18/code.c:5: int *func0(const char *music_string, int *count) {
	movq	%rsi, 24(%rsp)	# tmp167, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp174
	movq	%rax, 40(%rsp)	# tmp174, D.3516
	xorl	%eax, %eax	# tmp174
# eval/problem18/code.c:10:     char current[3] = "";
	xorl	%eax, %eax	#
	movb	$0, 39(%rsp)	#, current
	movw	%ax, 37(%rsp)	#, current
# eval/problem18/code.c:11:     int music_string_length = strlen(music_string) + 1;
	call	strlen@PLT	#
# eval/problem18/code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	leal	2(%rax), %edi	#, tmp129
# eval/problem18/code.c:11:     int music_string_length = strlen(music_string) + 1;
	movq	%rax, %rbp	# tmp168, tmp127
# eval/problem18/code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	movslq	%edi, %rdi	# tmp129, tmp130
	call	malloc@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	movq	%rbp, %rdx	# tmp127,
	movq	%r12, %rsi	# music_string,
	movq	%rax, %rdi	# temp_music_string,
# eval/problem18/code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	movq	%rax, %rbx	# tmp169, temp_music_string
	movq	%rax, 16(%rsp)	# temp_music_string, %sfp
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:79:   return __builtin___strcpy_chk (__dest, __src, __glibc_objsize (__dest));
	call	memcpy@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:130:   return __builtin___strcat_chk (__dest, __src, __glibc_objsize (__dest));
	movl	$32, %edx	#,
# eval/problem18/code.c:11:     int music_string_length = strlen(music_string) + 1;
	leal	1(%rbp), %eax	#, music_string_length
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:130:   return __builtin___strcat_chk (__dest, __src, __glibc_objsize (__dest));
	movw	%dx, (%rbx,%rbp)	#, MEM <char[1:2]> [(void *)_27]
# eval/problem18/code.c:16:     for (int i = 0; i < music_string_length; i++) {
	testl	%eax, %eax	# music_string_length
	jle	.L19	#,
	movl	%ebp, %ebp	# tmp127, _1
# eval/problem18/code.c:8:     int capacity = 0;
	movl	$0, 12(%rsp)	#, %sfp
# eval/problem18/code.c:7:     int size = 0;
	xorl	%r15d, %r15d	# size
	leaq	37(%rsp), %r14	#, tmp164
	leaq	1(%rbx,%rbp), %r12	#, _16
# eval/problem18/code.c:6:     int *out = NULL;
	xorl	%ebp, %ebp	# <retval>
	jmp	.L17	#
	.p2align 4,,10
	.p2align 3
.L3:
# eval/problem18/code.c:41:             size_t len = strlen(current);
	movq	%r14, %rdi	# tmp164,
	call	strlen@PLT	#
# eval/problem18/code.c:42:             if (len < sizeof(current) - 1) {
	cmpq	$2, %rax	#, tmp160
	je	.L16	#,
# eval/problem18/code.c:43:                 current[len] = temp_music_string[i];
	movb	%r13b, 37(%rsp,%rax)	# _8, current[len_73]
# eval/problem18/code.c:44:                 current[len + 1] = '\0';
	movb	$0, 38(%rsp,%rax)	#, current[_28]
.L16:
# eval/problem18/code.c:16:     for (int i = 0; i < music_string_length; i++) {
	addq	$1, %rbx	#, ivtmp.15
	cmpq	%rbx, %r12	# ivtmp.15, _16
	je	.L2	#,
.L17:
# eval/problem18/code.c:17:         if (temp_music_string[i] == ' ') {
	movzbl	(%rbx), %r13d	# MEM[(char *)_115], _8
# eval/problem18/code.c:17:         if (temp_music_string[i] == ' ') {
	cmpb	$32, %r13b	#, _8
	jne	.L3	#,
# eval/problem18/code.c:18:             if (strcmp(current, "o") == 0) {
	cmpb	$111, (%r14)	#, MEM <char[1:2]> [(void *)&current]
	jne	.L5	#,
# eval/problem18/code.c:18:             if (strcmp(current, "o") == 0) {
	cmpb	$0, 1(%r14)	#, MEM <char[1:2]> [(void *)&current]
	jne	.L5	#,
# eval/problem18/code.c:19:                 if (size == capacity) {
	cmpl	12(%rsp), %r15d	# %sfp, size
	je	.L29	#,
.L6:
# eval/problem18/code.c:23:                 out[size++] = 4;
	movslq	%r15d, %rax	# size, size
	addl	$1, %r15d	#, size
# eval/problem18/code.c:23:                 out[size++] = 4;
	movl	$4, 0(%rbp,%rax,4)	#, *_14
.L5:
# eval/problem18/code.c:25:             if (strcmp(current, "o|") == 0) {
	cmpb	$111, (%r14)	#, MEM <char[1:3]> [(void *)&current]
	jne	.L9	#,
	cmpb	$124, 1(%r14)	#, MEM <char[1:3]> [(void *)&current]
	jne	.L9	#,
# eval/problem18/code.c:25:             if (strcmp(current, "o|") == 0) {
	cmpb	$0, 2(%r14)	#, MEM <char[1:3]> [(void *)&current]
	jne	.L9	#,
# eval/problem18/code.c:26:                 if (size == capacity) {
	cmpl	12(%rsp), %r15d	# %sfp, size
	je	.L30	#,
.L10:
# eval/problem18/code.c:30:                 out[size++] = 2;
	movslq	%r15d, %rax	# size, size
	addl	$1, %r15d	#, size
# eval/problem18/code.c:30:                 out[size++] = 2;
	movl	$2, 0(%rbp,%rax,4)	#, *_20
.L9:
# eval/problem18/code.c:32:             if (strcmp(current, ".|") == 0) {
	cmpb	$46, (%r14)	#, MEM <char[1:3]> [(void *)&current]
	jne	.L13	#,
	cmpb	$124, 1(%r14)	#, MEM <char[1:3]> [(void *)&current]
	jne	.L13	#,
# eval/problem18/code.c:32:             if (strcmp(current, ".|") == 0) {
	cmpb	$0, 2(%r14)	#, MEM <char[1:3]> [(void *)&current]
	jne	.L13	#,
# eval/problem18/code.c:33:                 if (size == capacity) {
	cmpl	12(%rsp), %r15d	# %sfp, size
	je	.L31	#,
.L14:
# eval/problem18/code.c:37:                 out[size++] = 1;
	movslq	%r15d, %rax	# size, size
	addl	$1, %r15d	#, size
# eval/problem18/code.c:37:                 out[size++] = 1;
	movl	$1, 0(%rbp,%rax,4)	#, *_26
.L13:
# eval/problem18/code.c:16:     for (int i = 0; i < music_string_length; i++) {
	addq	$1, %rbx	#, ivtmp.15
	movb	$0, 37(%rsp)	#, MEM[(char * {ref-all})&current]
	cmpq	%rbx, %r12	# ivtmp.15, _16
	jne	.L17	#,
.L2:
# eval/problem18/code.c:48:     free(temp_music_string);
	movq	16(%rsp), %rdi	# %sfp,
	call	free@PLT	#
# eval/problem18/code.c:49:     *count = size;
	movq	24(%rsp), %rax	# %sfp, count
	movl	%r15d, (%rax)	# size, *count_70(D)
# eval/problem18/code.c:51: }
	movq	40(%rsp), %rax	# D.3516, tmp175
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp175
	jne	.L32	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbp, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
# eval/problem18/code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	testl	%r15d, %r15d	# size
	jle	.L20	#,
# eval/problem18/code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	leal	(%r15,%r15), %eax	#, capacity
	movl	%eax, 12(%rsp)	# capacity, %sfp
# eval/problem18/code.c:21:                     out = realloc(out, capacity * sizeof(int));
	movslq	%eax, %rsi	# capacity, capacity
	salq	$2, %rsi	#, prephitmp_93
.L7:
# eval/problem18/code.c:21:                     out = realloc(out, capacity * sizeof(int));
	movq	%rbp, %rdi	# <retval>,
	call	realloc@PLT	#
	movq	%rax, %rbp	# tmp170, <retval>
	jmp	.L6	#
	.p2align 4,,10
	.p2align 3
.L31:
# eval/problem18/code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	testl	%r15d, %r15d	# size
	jle	.L22	#,
# eval/problem18/code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	leal	(%r15,%r15), %eax	#, capacity
	movl	%eax, 12(%rsp)	# capacity, %sfp
# eval/problem18/code.c:35:                     out = realloc(out, capacity * sizeof(int));
	movslq	%eax, %rsi	# capacity, capacity
	salq	$2, %rsi	#, prephitmp_114
.L15:
# eval/problem18/code.c:35:                     out = realloc(out, capacity * sizeof(int));
	movq	%rbp, %rdi	# <retval>,
	call	realloc@PLT	#
	movq	%rax, %rbp	# tmp172, <retval>
	jmp	.L14	#
	.p2align 4,,10
	.p2align 3
.L30:
# eval/problem18/code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	testl	%r15d, %r15d	# size
	jle	.L21	#,
# eval/problem18/code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	leal	(%r15,%r15), %eax	#, capacity
	movl	%eax, 12(%rsp)	# capacity, %sfp
# eval/problem18/code.c:28:                     out = realloc(out, capacity * sizeof(int));
	movslq	%eax, %rsi	# capacity, capacity
	salq	$2, %rsi	#, _100
.L11:
# eval/problem18/code.c:28:                     out = realloc(out, capacity * sizeof(int));
	movq	%rbp, %rdi	# <retval>,
	call	realloc@PLT	#
	movq	%rax, %rbp	# tmp171, <retval>
	jmp	.L10	#
	.p2align 4,,10
	.p2align 3
.L20:
# eval/problem18/code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, 12(%rsp)	#, %sfp
	movl	$16, %esi	#, prephitmp_93
	jmp	.L7	#
	.p2align 4,,10
	.p2align 3
.L21:
# eval/problem18/code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, 12(%rsp)	#, %sfp
	movl	$16, %esi	#, _100
	jmp	.L11	#
	.p2align 4,,10
	.p2align 3
.L22:
# eval/problem18/code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, 12(%rsp)	#, %sfp
	movl	$16, %esi	#, prephitmp_114
	jmp	.L15	#
	.p2align 4,,10
	.p2align 3
.L19:
# eval/problem18/code.c:7:     int size = 0;
	xorl	%r15d, %r15d	# size
# eval/problem18/code.c:6:     int *out = NULL;
	xorl	%ebp, %ebp	# <retval>
	jmp	.L2	#
.L32:
# eval/problem18/code.c:51: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE51:
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
