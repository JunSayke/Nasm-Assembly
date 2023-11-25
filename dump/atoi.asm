section .data
    ; Declare your initialize variables here
    num: db "9"
section .bss
    ; Declare your uninitialize variables here
    buffer: resb 255

section .text
global  _start

_start:
    ; Your code here
    push num
    call atoi
    pop  eax

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 80h

atoi:
    push ebp
    mov  ebp, esp
    push eax
    push ebx
    push ecx
    push esi

    mov esi, [ebp+8]
    xor eax, eax
    mov ecx, 10

.atoi_next_int:
    movzx ebx, byte [esi]
    cmp   bl,  '0'
    jl    .atoi_done
    cmp   bl,  '9'
    jg    .atoi_done
    sub   bl,  48
    mul   ecx
    add   eax, ebx
    inc   esi
    jmp   .atoi_next_int

.atoi_done:
    mov [ebp+8], eax
    pop esi
    pop ecx
    pop ebx
    pop eax
    pop ebp
    ret
