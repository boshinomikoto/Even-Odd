section .data
message: db "even", 10
len equ $ -message

message1: db "odd", 10
len1 equ $ -message
section .text

global _start
_start:
    mov ax, 111
    and ax, 1
    jz even
    jmp odd

    even:
        mov rax, 1
        mov rdi, 1
        mov rsi, message
        mov rdx, len
        syscall
        jmp exit

    odd:
        mov rax, 1
        mov rdi, 1
        mov rsi, message1
        mov rdx, len1
        syscall


    exit:
        mov rax, 60
        syscall