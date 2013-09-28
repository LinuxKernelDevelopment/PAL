.section .text
.globl _start
_start:
   nop
   movl $1, %eax
   jmp overhere
   movl $10, %ebx
   int $0x80
overhere:
   movl $20, %ebx
   int $0x80
