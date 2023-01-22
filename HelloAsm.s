    .section .data
    .section .text
    .globl _start

_start:
    movl $4, %eax   # system call for sys_write
    movl $1, %ebx   # file descriptor 1: stdout
    movl $message, %ecx # address of the message
    movl $13, %edx  # length of the message
    int $0x80       # call kernel

    movl $1, %eax   # system call for sys_exit
    xorl %ebx, %ebx # exit status 0
    int $0x80       # call kernel

.section .data
    message: .ascii "Hello, ASM!!\n"