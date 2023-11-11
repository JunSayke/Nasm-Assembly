; %include "helper.asm"

section .data
    ; manually set 0 (ASCII value for null) as end of line
    lblMenu: db 10, "Main Menu", 10
                db "1. Addition", 10
                db "2. Subtraction", 10
                db "3. Multiplication", 10
                db "4. Division", 10
                db "5. Exit", 0

    lblPrompt:   db "Enter choice: ", 0
    lblInvalid:  db "Invalid choice!", 0
    lblAdd:      db "You choose Addition", 0
    lblSub:      db "You choose Subtraction", 0
    lblMul:      db "You choose Multiplication", 0
    lblDiv:      db "You choose Division", 0
    lblAgain:    db "Again? Y/N: ", 0
    lblThankYou: db "Exiting program. Thank You", 0

section .bss
    dtaOp resb 1

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
    jmp  _exit

op_addition:
    mov  eax, lblAdd
    call sprintLF
    jmp  _start

op_subtraction:
    mov  eax, lblSub
    call sprintLF
    jmp  _start

op_multiplication:
    mov  eax, lblMul
    call sprintLF
    jmp  _start

op_division:
    mov  eax, lblDiv
    call sprintLF
    jmp  _start

_exit:    
    mov  eax, lblThankYou
    call sprintLF

    ; terminate/exit program
    call quit