; %include "helper.asm"

section .data
    ; manually set 0 (ASCII value for null) as end of line
    lblPrompt:   db "Input 3 numbers", 0
    lblNum1:     db "1st number: ", 0
    lblNum2:     db "2nd number: ", 0
    lblNum3:     db "3rd number: ", 0
    lblLargest:  db "The greatest digit is ", 0
    lblSmallest: db "The smallest digit is ", 0
    lblAgain:    db "Again? Y/N: ", 0

section .bss
    dtaOp       resb 1
    dtaNum1     resb 255
    dtaNum2     resb 255
    dtaNum3     resb 255
    dtaLargest  resb 255
    dtaSmallest resb 255

section .text
    global _start ; must be declared for using gcc
_start: ; tell linker entry point
    mov  eax, lblPrompt
    call sprintLF

    mov  eax, lblNum1
    call sprint

    mov  eax, dtaNum1
    call scan
    
    mov  eax, lblNum2
    call sprint

    mov  eax, dtaNum2
    call scan

    mov  eax, lblNum3
    call sprint

    mov  eax, dtaNum3
    call scan

    mov  eax,       dtaNum1
    call atoi
    mov  [dtaNum1], eax

    mov  eax,       dtaNum2
    call atoi
    mov  [dtaNum2], eax

    mov  eax,       dtaNum3
    call atoi
    mov  [dtaNum3], eax

    mov  eax, [dtaNum1]
    mov  ebx, [dtaNum2]
    call getLgSm

    mov ecx, ebx

    mov  ebx, [dtaNum3]
    call getLgSm
    
    push eax
    mov  eax, ecx
    call getLgSm
    pop  eax

    mov  [dtaLargest],  eax
    mov  [dtaSmallest], ebx
    ; displays "The smallest digit is: "
    mov  eax,           lblSmallest
    call sprint
    
    ; displays the smallest between num1 and num2
    mov  eax, [dtaSmallest]
    call iprintLF

    ; displays "The largest digit is: "
    mov  eax, lblLargest
    call sprint
    
    ; displays the largest between num1 and num2
    mov  eax, [dtaLargest]
    call iprintLF
    
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
    je  _start
    
    ; terminate/exit program
    call quit