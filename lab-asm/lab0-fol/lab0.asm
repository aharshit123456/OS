; three sections
; section.data
; section.bss
; section.text
; global _start
; _start:


; section .text
;     global _start

; _start:
;     mov edx, len
;     mov ecx, msg
;     mov ebx, 1 ; stdout file descriptor
;     mov eax,4 ; sys_write
;     int 0x80

;     mov eax,1 ; sys_exit
;     int 0x80


; section .data
;     msg db 'Hello, world!', 0xa
;     len equ $ - msg


; to compile nasm as elf
; to executable elfi386 chipwise set ld


section .text
    global _start

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov edx, 9
    mov ecx, s2
    mov ebx,1
    mov eax,4
    int 0x80

    mov eax,1
    int 0x80

section .data
msg db 'Display 9 starts', 0xa
len equ $ - msg
s2 times 9 db '*'