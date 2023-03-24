.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$20, -8(%rbp)

	movl	$5, -12(%rbp)

	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)

	movl	$3, -20(%rbp)

	movl	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -24(%rbp)

	movl	$25, -28(%rbp)

	movl	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -32(%rbp)

	movl	-32(%rbp), %eax
	movl	 %eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
