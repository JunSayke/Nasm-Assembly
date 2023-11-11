; %include "helper.asm"

section .data
    ; manually set 0 (ASCII value for null) as end of line
    lblPrompt: db "Enter a number: ", 0

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

display_hashtag:
    mov  eax, "#"
    call cprint

    loop display_hashtag
    
    mov  eax, 0Ah
    call cprint

    ; Exit the program
    call quit