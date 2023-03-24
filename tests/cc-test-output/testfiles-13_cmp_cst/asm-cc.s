.globl main
main:
	pushq	%rbp
	movq	%rsp, %rbp

	movl	$43, -4(%rbp)

	movl	$23, -8(%rbp)

	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	popq	%rbp
	ret
