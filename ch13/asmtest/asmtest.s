	.file	"asmtest.c"
	.section	.rodata
.LC0:
	.string	"The result is %d\n"
	.text
.globl main
	.type	main, @function
main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	movl	$10, 20(%esp)
	movl	$20, 24(%esp)
	movl	20(%esp), %eax
	imull	24(%esp), %eax
	movl	%eax, 28(%esp)
#APP
# 9 "asmtest.c" 1
	nop
# 0 "" 2
#NO_APP
	movl	$.LC0, %eax
	movl	28(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits
