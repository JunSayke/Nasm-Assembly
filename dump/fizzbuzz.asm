section .data
    ; Declare your initialize variables here
section .bss
    ; Declare your uninitialize variables here

section .text
global  _start

_start:
    ; Your code here

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 80h