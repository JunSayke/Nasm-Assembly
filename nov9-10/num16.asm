; %include "helper.asm"

section .data
    ; manually set 0 (ASCII value for null) as end of line
    lblMenu: db 10, "Main Menu", 10
                db "1. Addition", 10
                db "2. Subtraction", 10
                db "3. Multiplication", 10
                db "4. Division", 10
                db "5. Exit", 0

    lblPrompt:    db "Enter choice: ", 0
    lblInvalid:   db "Invalid choice!", 0
    lblAdd:       db "Addition", 0
    lblSub:       db "Subtraction", 0
    lblMul:       db "Multiplication", 0
    lblDiv:       db "Division", 0
    lblAgain:     db "Again? Y/N: ", 0
    lblThankYou:  db "Exiting program. Thank You", 0
    lblFirstNum:  db "Input 1st number: ", 0
    lblSecondNum: db "Input 2nd number: ", 0
    lblSum:       db "Sum is ", 0
    lblDiff:      db "Difference is ", 0
    lblProd:      db "Product is ", 0
    lblQuot:      db "Quotient is ", 0
    

section .bss
    dtaOp     resb 1
    dtaNum1   resb 255
    dtaNum2   resb 255
    dtaResult resb 255

section .text
    global _start ; must be declared for using gcc
_start: ; tell linker entry point
    mov  eax, lblMenu
    call sprintLF

    mov  eax, lblPrompt
    call sprint

    mov  eax, dtaOp
    call scan

    mov  eax,     dtaOp
    call atoi
    mov  [dtaOp], eax

    mov eax, [dtaOp]
    cmp eax, 0
    jg  valid_greater_than_zero
    jmp invalid_input

valid_greater_than_zero:
    cmp eax, 5
    jle valid_less_than_or_equal_five
    jmp invalid_input

valid_less_than_or_equal_five:
    cmp eax, 1
    je  op_addition
    cmp eax, 2
    je  op_subtraction
    cmp eax, 3
    je  op_multiplication
    cmp eax, 4
    je  op_division
    jmp _exit

invalid_input:
    mov  eax, lblInvalid
    call sprintLF
    jmp  _start

op_addition:
    mov  eax, lblAdd
    call sprintLF
    call addition
    jmp  _start

op_subtraction:
    mov  eax, lblSub
    call sprintLF
    call subtraction
    jmp  _start

op_multiplication:
    mov  eax, lblMul
    call sprintLF
    call multiplication
    jmp  _start

op_division:
    mov  eax, lblDiv
    call sprintLF
    call division
    jmp  _start

_exit:    
    mov  eax, lblThankYou
    call sprintLF

    ; terminate/exit program
    call quit

get_inputs:
    push eax
    mov  eax, lblFirstNum
    call sprint

    mov  eax, dtaNum1
    call scan

    mov  eax, lblSecondNum
    call sprint

    mov  eax, dtaNum2
    call scan

    mov  eax,       dtaNum1
    call atoi
    mov  [dtaNum1], eax
    mov  eax,       dtaNum2
    call atoi
    mov  [dtaNum2], eax
    pop  eax
    ret

addition:
    push eax
    push ebx
    call get_inputs
    mov  eax,         [dtaNum1]
    mov  ebx,         [dtaNum2]
    add  eax,         ebx
    push eax
    mov  eax,         lblSum
    call sprint
    pop  eax
    mov  [dtaResult], eax
    call iprintLF
    pop  ebx
    pop  eax
    ret

subtraction:
    push eax
    push ebx
    call get_inputs
    mov  eax,         [dtaNum1]
    mov  ebx,         [dtaNum2]
    sub  eax,         ebx
    push eax
    mov  eax,         lblDiff
    call sprint
    pop  eax
    mov  [dtaResult], eax
    call iprintLF
    pop  ebx
    pop  eax
    ret

multiplication:
    push eax
    push ebx
    call get_inputs
    mov  eax,         [dtaNum1]
    mov  ebx,         [dtaNum2]
    mul  ebx
    push eax
    mov  eax,         lblProd
    call sprint
    pop  eax
    mov  [dtaResult], eax
    call iprintLF
    pop  ebx
    pop  eax
    ret
    
division:
    push eax
    push ebx
    call get_inputs
    mov  eax,         [dtaNum1]
    mov  ebx,         [dtaNum2]
    xor  edx,         edx
    div  ebx
    push eax
    mov  eax,         lblQuot
    call sprint
    pop  eax
    mov  [dtaResult], eax
    call iprintLF
    pop  ebx
    pop  eax
    ret