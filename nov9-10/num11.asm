; %include "helper.asm"

section .data
    ; manually set 0 (ASCII value for null) as end of line
    lblPrompt:   db "Enter a number: ", 0
    lblAgain:    db 10, "Again? Y/N: ", 0
    lblThankYou: db "Thank You", 0

section .bss
    dtaOp:    resb 1
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
    cmp ecx, 0

    mov  eax, "#"
    call cprint
    
    loop display_hashtag
    
    mov  eax, lblAgain
    call sprint
    
    mov  eax, dtaOp
    call scan

    mov  eax, "."
    call cprint
    
    mov  eax, 0Ah
    call cprint
    
    mov al, [dtaOp]
    cmp al, "Y"

    je _start

    mov  eax, lblThankYou
    call sprintLF

    ; Exit the program
    call quit
