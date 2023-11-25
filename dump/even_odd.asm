section .data
    ; Declare your initialize variables here
    even: db 48 ; ascii value for 0
    odd:  db 49 ; ascii value for 1
section .bss
    ; Declare your uninitialize variables here

section .text
global  _start

_start:
    ; Your code here
    push even
    call even_odd
    push odd
    call even_odd
    ; Exit the program
    mov  eax, 1
    xor  ebx, ebx
    int  80h

even_odd:
    push ebp
    mov  ebp,        esp
    mov  esi,        dword [ebp+8]
    test byte [esi], 1
    jnz  .even_odd_done            ; if odd
    mov  eax,        4
    mov  ebx,        1
    mov  ecx,        esi
    mov  edx,        1
    int  80h
.even_odd_done:
    pop ebp
    ret 4