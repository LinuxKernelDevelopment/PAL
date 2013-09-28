	.file	"mactest2.c"
	.section	.rodata
.LC0:
	.string	"a = %d, b = %d   result:%d\n"
.LC1:
	.string	"a = %d, b = %d result: %d\n"
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
	movl	24(%esp), %edx
#APP
# 17 "mactest2.c" 1
	cmp %eax, %edx
	jge 0f
	movl %eax, %eax
	jmp 1f
0:
	movl %edx, %eax
1:
# 0 "" 2
#NO_APP
	movl	%eax, 28(%esp)
	movl	28(%esp), %eax
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	movl	$30, 20(%esp)
	movl	20(%esp), %eax
	movl	24(%esp), %edx
#APP
# 20 "mactest2.c" 1
	cmp %eax, %edx
	jge 0f
	movl %eax, %eax
	jmp 1f
0:
	movl %edx, %eax
1:
# 0 "" 2
#NO_APP
	movl	%eax, 28(%esp)
	movl	28(%esp), %eax
	movl	%eax, 12(%esp)
	movl	24(%esp), %eax
	movl	%eax, 8(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC1, (%esp)
	call	printf
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.4 20100726 (Red Hat 4.4.4-13)"
	.section	.note.GNU-stack,"",@progbits
