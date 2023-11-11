; %include "helper.asm"

section .data
    ; manually set 0 (ASCII value for null) as end of line
    lblPrompt:   db 10, "Input a number: ", 0
    lblLesser:   db "The number is less than 10", 0
    lblGreater:  db "The number is equal to or greater than 10", 0
    lblAgain:    db "Again? Y/N: ", 0
    lblThankYou: db "Thank You", 0

section .bss
    dtaOp    resb 1
    dtaInput resb 255

section .text
    global _start ; must be declared for using gcc
_start: ; tell linker entry point
    mov  eax, lblPrompt
    call sprint

    mov  eax, dtaInput
    call scan

    mov  eax,        dtaInput
    call atoi
    mov  [dtaInput], eax
    
    mov  eax, [dtaInput]
    cmp  eax, 10
    jge  greater_or_equal
    mov  eax, lblLesser
    call sprintLF
    jmp  _exit
    
greater_or_equal:
    mov  eax, lblGreater
    call sprintLF

_exit:
    mov  eax, lblAgain
    call sprint
    
    mov  eax, dtaOp
    call scan

    mov  eax, dtaTmp
    call scan

    mov  eax, "."
    call cprint
    
    mov  eax, 0Ah
    call cprint
    
    mov al, [dtaOp]
    cmp al, "Y"
    je  _start
    
    mov  eax, lblThankYou
    call sprint
    
    ; terminate/exit program
    call quit