.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$0, -8(%rbp)

	movl	-8(%rbp), %eax
	movl	 %eax, -4(%rbp)
	cmpl	$0,-4(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	popq	%rbp
	ret
