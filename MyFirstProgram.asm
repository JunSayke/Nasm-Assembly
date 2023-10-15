section .data
    helloMessage db 'Hello, World!', 0

section .text
    global _start

_start:
    ; Write the helloMessage to STDOUT
    mov eax, 4
    mov ebx, 1
    lea ecx, [helloMessage]
    mov edx, 13
    int 0x80

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80