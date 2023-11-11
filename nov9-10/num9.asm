; %include "helper.asm"

section .data
    ; manually set 0 (ASCII value for null) as end of line
    lblPrompt: db "Input a number: ", 0

section .bss
    dtaInput: resb 255

section .text
    global _start

_start:
    mov  eax, lblPrompt
    call sprint

    mov  eax, dtaInput
    call scan

    mov  eax, dtaInput
    call atoi
    mov  ecx, eax
    mov  edx, 1

display_count:
    mov  eax, edx
    call iprint

    mov  eax, " "
    call cprint
    
    inc  edx
    loop display_count
    
    mov  eax, 0Ah
    call cprint

    ; Exit the program
    call quit