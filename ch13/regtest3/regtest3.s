	.file	"regtest3.c"
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
	movl	$10, 24(%esp)
	movl	$20, 28(%esp)
	movl	24(%esp), %edx
	movl	28(%esp), %eax
#APP
# 8 "regtest3.c" 1
	imull %edx, %eax
# 0 "" 2
#NO_APP
	movl	%eax, 28(%esp)
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
