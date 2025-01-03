; This code block is for appending a string to a file


section .bss
    fd_out resb 1
    buffer resb 256 ; Adjust the size as needed
    buffer_len resd 1 ; Store the length of the buffer

section .data
    file db 'file.txt', 0
    mode db 'a', 0
    msg db 'I am Harshit', 0


section .text
    global _start

_start:

; open file sys_open (5)
; read from file to buffer the contents of file sys_read (3)
; append the string to the buffer sys_write (4)
; write the buffer to the file sys_write (4)
; close the file sys_close (6)

    ; open file
    mov eax, 5
    mov ebx, file
    mov ecx, mode
    int 0x80
    mov ebx, eax

    ; read from file to buffer the contents of file
    mov eax, 3
    mov ecx, buffer
    mov edx, 100
    int 0x80

    ; append the string to the buffer

    ; get the length of the buffer



    ; write the buffer to the file
    mov eax, 4
    mov ebx, eax
    mov ecx, buffer
    mov edx, ecx
    int 0x80

    ; close the file
    mov eax, 6
    int 0x80

    ; exit
    mov eax, 1
    mov ebx, 0
    int 0x80