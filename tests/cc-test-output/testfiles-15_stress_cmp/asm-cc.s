.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$42, -8(%rbp)

	movl	-8(%rbp), %eax
	movl	 %eax, -4(%rbp)
	movl	$2, -16(%rbp)

	movl	-4(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%eax, -20(%rbp)

	movl	-20(%rbp), %eax
	movl	 %eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	popq	%rbp
	ret
