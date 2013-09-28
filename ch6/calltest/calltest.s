.section .data
output:
   .asciz "This is section %d\n"
.section .text
.globl _start
_start:
   pushl $1
   pushl $output
   call printf
   add $8, %esp
   call overhere
   pushl $3
   pushl $output
   call printf
   add  $8, %esp
   pushl $0
   call exit
overhere:
   push %ebp
   mov %esp, %ebp
   pushl $2
   pushl $output
   call printf
   add $8, %esp
   movl %ebp, %esp
   popl %ebp
   ret
