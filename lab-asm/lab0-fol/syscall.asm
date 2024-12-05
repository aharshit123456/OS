; run: nasm -f elf64 syscall.asm -o syscall.o
; read number from keyboard and display it

section .data
    msg db 'Enter a number: ', 0xa
    len equ $ - msg
    dmsg db 'You entered: '
    len2 equ $ - dmsg


section .bss
    buffer resb 5 ; 5 bytes reserved for buffer

section .text
    global _start

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 0
    mov eax, 4 ;sys_write
    int 0x80

    mov edx, 10
    mov ecx, buffer
    mov ebx, 0
    mov eax, 3 ;sys_read
    int 0x80

    mov edx, len2
    mov ecx, dmsg
    mov ebx, 1
    mov eax, 4 ;sys_write
    int 0x80

    mov edx, 10
    mov ecx, buffer
    mov ebx, 1
    mov eax, 4 ;sys_write
    int 0x80

    mov eax, 1 ;sys_exit
    int 0x80
