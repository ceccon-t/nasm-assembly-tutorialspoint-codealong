; The following program displays the largest of three variable.s
; The variables are double-digit variables.
; The three variables num1, num2 and num3 have values 47, 22, and 31, respectively

section .text 
    global _start           ; must be declared for using gcc 

_start:                     ; tell linker entry point
    mov ecx, [num1]
    cmp ecx, [num2]
    jg  check_third_num
    mov ecx, [num2]

check_third_num:
    cmp ecx, [num3]
    jg _exit
    mov ecx, [num3]

_exit:
    mov [largest], ecx 
    mov ecx, msg 
    mov edx, len 
    mov ebx, 1              ; file descriptor (stdout)
    mov eax, 4              ; system call number (sys_write)
    int 0x80                ; call kernel

    mov ecx, largest 
    mov edx, 2
    mov ebx, 1              ; file descriptor (stdout)
    mov eax, 4              ; system call number (sys_write)
    int 0x80                ; call kernel 

    mov eax, 1
    int 0x80

section .data 
msg db "The largest digit is: ", 0xA, 0xD
len equ $ - msg 
num1 dd '47'
num2 dd '22'
num3 dd '31'

segment .bss
largest resb 2