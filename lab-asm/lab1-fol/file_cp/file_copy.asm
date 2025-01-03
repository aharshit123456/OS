; Author: @aharshit123456
; script to copy the contents of one file to another
;

; open the source file
; open the destination file
; read the source file to a buffer
; write to the destination file from the buffer
; close both the files

section .bss
    src_fd resb 4
    dest_fd resb 4
    buffer resb 1024

section .data
    src_file db 'source.txt', 0
    dest_file db 'destination.txt', 0


section .text
    global _start


_start:
    ; open the source file
    mov eax, 5
    mov ebx, src_file
    mov ecx, 0
    int 0x80
    mov [src_fd], eax

    ; open the destination file
    mov eax, 5
    mov ebx, dest_file
    mov ecx, 1
    int 0x80

    mov [dest_fd], eax

    ; read

    mov eax, 3
    mov ebx, [src_fd]
    mov ecx, buffer
    mov edx, 1024
    int 0x80

    ; write

    mov eax, 4 
    mov ebx, [dest_fd]
    mov ecx, buffer
    mov edx, 1024
    int 0x80

    ; close
    mov eax, 3
    mov ebx, [src_fd]
    int 0x80

    mov eax, 3
    mov ebx, [dest_fd]
    int 0x80

    ; exit
    mov eax, 1
    int 0x80
    