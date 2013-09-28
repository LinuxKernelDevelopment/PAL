	.file	"globaltest.c"
.globl a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	10
.globl b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.long	20
	.comm	result,4,4
	.section	.rodata
.LC0:
	.string	"the answer is %d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$16, %esp
#APP
# 9 "globaltest.c" 1
	pusha
	movl a, %eax
	movl b, %ebx
	imull %ebx, %eax
	movl %eax, result
	popa
# 0 "" 2
#NO_APP
	movl	result, %edx
	movl	$.LC0, %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits
