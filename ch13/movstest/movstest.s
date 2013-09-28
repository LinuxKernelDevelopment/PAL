	.file	"movstest.c"
	.section	.rodata
.LC0:
	.string	"%s"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	pushl	%edi
	pushl	%esi
	subl	$88, %esp
	movl	$1936287828, 46(%esp)
	movl	$544434464, 50(%esp)
	movl	$1702109281, 54(%esp)
	movl	$1830843507, 58(%esp)
	movl	$1634956133, 62(%esp)
	movl	$170812775, 66(%esp)
	movl	$0, 70(%esp)
	movw	$0, 74(%esp)
	movl	$25, 76(%esp)
	leal	46(%esp), %eax
	leal	16(%esp), %edx
	movl	76(%esp), %ecx
	movl	%eax, %esi
	movl	%edx, %edi
#APP
# 9 "movstest.c" 1
	cld
	rep movsb
# 0 "" 2
#NO_APP
	movl	$.LC0, %eax
	leal	16(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	addl	$88, %esp
	popl	%esi
	popl	%edi
	movl	%ebp, %esp
	popl	%ebp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits
