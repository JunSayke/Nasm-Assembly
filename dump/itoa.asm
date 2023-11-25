section .data
    ; Declare your initialize variables here
    num: db 10
section .bss
    ; Declare your uninitialize variables here
    buffer: resb 255
section .text
global  _start

_start:
    ; Your code here
    mov eax,      [num]
    mov [buffer], eax

    push buffer
    call itoa
    
    mov eax, 4
    mov ebx, 1
    mov ecx, buffer
    mov edx, 15
    int 80h

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 80h

itoa:
    push ebp
    mov  ebp, esp
    push eax
    push ebx
    push ecx
    push edx

    mov eax, [ebp+8]
    mov eax, [eax]
    mov ebx, 10
    xor ecx, ecx

.itoa_next_int:
    xor  edx, edx
    cmp  eax, 0h
    je   .itoa_reverse
    idiv ebx
    add  dl,  48
    push edx
    inc  ecx
    jmp  .itoa_next_int

.itoa_reverse:
    mov eax,              dword [ebp+8]
    mov byte [eax],       48
    mov byte [eax+ecx+1], 0h
    cmp ecx,              0h
    je  .itoa_done

.itoa_reverse_loop:
    pop  ebx
    mov  byte [eax+edx], bl
    inc  edx
    loop .itoa_reverse_loop

.itoa_done:
    pop edx
    pop ecx
    pop ebx
    pop eax
    pop ebp
    ret
