	.file	"main.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Naive time: "
.LC2:
	.string	" nanoseconds"
.LC3:
	.string	"Version1 time: "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB6613:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	leaq	-12368(%rbp), %r14
	pushq	%r13
	leaq	4096(%r14), %rcx
	pushq	%r12
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	leaq	-8272(%rbp), %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	movq	%r12, %rdx
	pushq	%rbx
	subq	$12352, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	vmovdqa	.LC0(%rip), %ymm0
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%r14, %rax
.L2:
	vmovdqa	%ymm0, (%rax)
	subq	$-128, %rax
	subq	$-128, %rdx
	vmovdqa	%ymm0, -128(%rdx)
	vmovdqa	%ymm0, -96(%rax)
	vmovdqa	%ymm0, -96(%rdx)
	vmovdqa	%ymm0, -64(%rax)
	vmovdqa	%ymm0, -64(%rdx)
	vmovdqa	%ymm0, -32(%rax)
	vmovdqa	%ymm0, -32(%rdx)
	cmpq	%rcx, %rax
	jne	.L2
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$10000, %r11d
	leaq	-4160(%rbp), %r8
	movq	%rax, %r15
.L8:
	leaq	4096(%r8), %r13
	movq	%r14, %rsi
	movq	%r8, %rbx
	xorl	%r9d, %r9d
	movl	%r11d, -12376(%rbp)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L51:
	movl	$5, %edi
	shlx	%edi, (%rsi), %edx
	movl	%edx, (%rbx)
	cmpl	$1, %eax
	je	.L14
	shlx	%edi, 4(%rsi), %edx
	movl	%edx, 4(%rbx)
	cmpl	$2, %eax
	je	.L15
	shlx	%edi, 8(%rsi), %edx
	movl	%edx, 8(%rbx)
	cmpl	$3, %eax
	je	.L16
	shlx	%edi, 12(%rsi), %edx
	movl	%edx, 12(%rbx)
	cmpl	$4, %eax
	je	.L17
	shlx	%edi, 16(%rsi), %edx
	movl	%edx, 16(%rbx)
	cmpl	$5, %eax
	je	.L18
	shlx	%edi, 20(%rsi), %edx
	movl	%edx, 20(%rbx)
	cmpl	$6, %eax
	je	.L19
	shlx	%edi, 24(%rsi), %edx
	movl	$25, %ecx
	movl	%edx, 24(%rbx)
	movl	$7, %edx
.L3:
	movl	$32, %r10d
	subl	%eax, %r10d
	movl	%eax, %eax
	addq	%r9, %rax
	movl	%r10d, %r11d
	salq	$2, %rax
	shrl	$3, %r11d
	leaq	(%r14,%rax), %rdi
	addq	%r8, %rax
	vmovdqa	(%rdi), %ymm0
	vpslld	$5, %ymm0, %ymm0
	vmovdqu	%ymm0, (%rax)
	vmovdqa	32(%rdi), %ymm0
	vpslld	$5, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rax)
	vmovdqa	64(%rdi), %ymm0
	vpslld	$5, %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rax)
	cmpl	$3, %r11d
	je	.L5
	vmovdqa	96(%rdi), %ymm0
	vpslld	$5, %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rax)
.L5:
	movl	%r10d, %eax
	andl	$-8, %eax
	addl	%eax, %edx
	subl	%eax, %ecx
	cmpl	%r10d, %eax
	je	.L6
	movslq	%edx, %rdi
	movl	$5, %r10d
	shlx	%r10d, (%rsi,%rdi,4), %eax
	movl	%eax, (%rbx,%rdi,4)
	leal	1(%rdx), %eax
	cmpl	$1, %ecx
	je	.L6
	cltq
	shlx	%r10d, (%rsi,%rax,4), %edi
	movl	%edi, (%rbx,%rax,4)
	leal	2(%rdx), %eax
	cmpl	$2, %ecx
	je	.L6
	cltq
	shlx	%r10d, (%rsi,%rax,4), %edi
	movl	%edi, (%rbx,%rax,4)
	leal	3(%rdx), %eax
	cmpl	$3, %ecx
	je	.L6
	cltq
	shlx	%r10d, (%rsi,%rax,4), %edi
	movl	%edi, (%rbx,%rax,4)
	leal	4(%rdx), %eax
	cmpl	$4, %ecx
	je	.L6
	cltq
	shlx	%r10d, (%rsi,%rax,4), %edi
	movl	%edi, (%rbx,%rax,4)
	leal	5(%rdx), %eax
	cmpl	$5, %ecx
	je	.L6
	cltq
	addl	$6, %edx
	shlx	%r10d, (%rsi,%rax,4), %edi
	movl	%edi, (%rbx,%rax,4)
	cmpl	$6, %ecx
	je	.L6
	movslq	%edx, %rax
	shlx	%r10d, (%rsi,%rax,4), %edx
	movl	%edx, (%rbx,%rax,4)
.L6:
	subq	$-128, %rbx
	subq	$-128, %rsi
	addq	$32, %r9
	cmpq	%rbx, %r13
	je	.L50
.L7:
	xorl	%eax, %eax
	movl	$16, %ecx
	movq	%rbx, %rdi
	rep stosq
	movq	%rsi, %rax
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	jne	.L51
	movl	$32, %ecx
	xorl	%edx, %edx
	jmp	.L3
.L19:
	movl	$26, %ecx
	movl	$6, %edx
	jmp	.L3
.L18:
	movl	$27, %ecx
	movl	$5, %edx
	jmp	.L3
.L17:
	movl	$28, %ecx
	movl	$4, %edx
	jmp	.L3
.L16:
	movl	$29, %ecx
	movl	$3, %edx
	jmp	.L3
.L14:
	movl	$31, %ecx
	movl	$1, %edx
	jmp	.L3
.L15:
	movl	$30, %ecx
	movl	$2, %edx
	jmp	.L3
.L50:
	movl	-12376(%rbp), %r11d
	subl	$1, %r11d
	jne	.L8
	movq	%r8, -12376(%rbp)
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$12, %edx
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movq	%rax, %r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subq	%r15, %r13
	leaq	_ZSt4cout(%rip), %rdi
	movabsq	$3777893186295716171, %rdx
	movq	%r13, %rax
	sarq	$63, %r13
	imulq	%rdx
	sarq	$11, %rdx
	movq	%rdx, %rsi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	leaq	.LC2(%rip), %rsi
	movl	$12, %edx
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	-12376(%rbp), %r8
	movl	$10000, %edi
	leaq	4096(%r12), %rsi
	movq	%rax, %r15
.L11:
	movq	%r14, %r9
	movq	%r8, %rdx
	.p2align 4,,10
	.p2align 3
.L10:
	vmovdqu	(%rdx), %ymm5
	vmovdqu	32(%rdx), %ymm4
	movq	%r12, %rax
	movq	%r9, %rcx
	vmovdqu	64(%rdx), %ymm3
	vmovdqu	96(%rdx), %ymm2
	.p2align 4,,10
	.p2align 3
.L9:
	vpbroadcastd	(%rcx), %ymm0
	vpmulld	(%rax), %ymm0, %ymm1
	vpaddd	%ymm5, %ymm1, %ymm1
	subq	$-128, %rax
	vmovdqa	%ymm1, %ymm5
	vmovdqu	%ymm1, (%rdx)
	vpmulld	-96(%rax), %ymm0, %ymm1
	vpaddd	%ymm4, %ymm1, %ymm1
	vmovdqa	%ymm1, %ymm4
	vmovdqu	%ymm1, 32(%rdx)
	vpmulld	-64(%rax), %ymm0, %ymm1
	vpmulld	-32(%rax), %ymm0, %ymm0
	vpaddd	%ymm3, %ymm1, %ymm1
	vpaddd	%ymm2, %ymm0, %ymm0
	addq	$4, %rcx
	vmovdqa	%ymm1, %ymm3
	vmovdqu	%ymm1, 64(%rdx)
	vmovdqa	%ymm0, %ymm2
	vmovdqu	%ymm0, 96(%rdx)
	cmpq	%rax, %rsi
	jne	.L9
	subq	$-128, %rdx
	subq	$-128, %r9
	cmpq	%rdx, %rbx
	jne	.L10
	subl	$1, %edi
	jne	.L11
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	$15, %edx
	leaq	.LC3(%rip), %rsi
	movq	%rax, %r13
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subq	%r15, %r13
	leaq	_ZSt4cout(%rip), %rdi
	movabsq	$3777893186295716171, %rdx
	movq	%r13, %rax
	sarq	$63, %r13
	imulq	%rdx
	sarq	$11, %rdx
	movq	%rdx, %rsi
	subq	%r13, %rsi
	call	_ZNSo9_M_insertIlEERSoT_@PLT
	movl	$12, %edx
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	jne	.L52
	addq	$12352, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L52:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6613:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB7107:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE7107:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
