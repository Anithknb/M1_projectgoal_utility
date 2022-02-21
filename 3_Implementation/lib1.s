	.file	"library.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\n\n********######WELCOME TO E-LIBRARY #####********"
	.align 8
.LC1:
	.string	"\n\n1. Add book information\n2. Display book information"
.LC2:
	.string	"3. Exit"
.LC3:
	.string	"\n\nEnter one of the above: "
.LC4:
	.string	"%d"
.LC5:
	.string	"Enter book name = "
.LC6:
	.string	"%s"
.LC7:
	.string	"Enter author name = "
.LC8:
	.string	"Enter pages = "
.LC9:
	.string	"Enter price = "
.LC10:
	.string	"%f"
	.align 8
.LC11:
	.string	"you have entered the following information"
.LC12:
	.string	"book name = %s"
.LC13:
	.string	"\t author name = %s"
.LC14:
	.string	"\t  pages = %d"
.LC15:
	.string	"\t  price = %f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$768, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -4852(%rbp)
	movl	-4852(%rbp), %eax
	movl	%eax, -4860(%rbp)
	movl	-4860(%rbp), %eax
	movl	%eax, -4856(%rbp)
	jmp	.L2
.L8:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4860(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-4860(%rbp), %eax
	cmpl	$3, %eax
	je	.L3
	cmpl	$3, %eax
	jg	.L2
	cmpl	$1, %eax
	je	.L4
	cmpl	$2, %eax
	je	.L5
	jmp	.L2
.L4:
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4848(%rbp), %rcx
	movl	-4856(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4848(%rbp), %rcx
	movl	-4856(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	$16, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4848(%rbp), %rcx
	movl	-4856(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	$32, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4848(%rbp), %rcx
	movl	-4856(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	$32, %rax
	addq	%rcx, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -4852(%rbp)
	jmp	.L2
.L5:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	movl	$0, -4856(%rbp)
	jmp	.L6
.L7:
	leaq	-4848(%rbp), %rcx
	movl	-4856(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4848(%rbp), %rcx
	movl	-4856(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	$16, %rax
	addq	%rcx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4856(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$4808, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4856(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$4804, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC15(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	addl	$1, -4856(%rbp)
.L6:
	movl	-4856(%rbp), %eax
	cmpl	-4852(%rbp), %eax
	jl	.L7
	jmp	.L2
.L3:
	movl	$0, %edi
	call	exit@PLT
.L2:
	movl	-4860(%rbp), %eax
	cmpl	$5, %eax
	jne	.L8
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
