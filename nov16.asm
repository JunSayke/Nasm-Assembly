; %include "helper.asm"

section .data
    lblWelcome: db "CIT-U BANK", 10
                db "Automated Teller Machine", 10
                db "Programmer: ANTONIO MANCERA UBALDO JR.", 10
                db 10
                db "Welcome Customer!", 0

    ; manually set 0 (ASCII value for null) as end of line
    lblMenu: db 10, "MAIN MENU", 10
                db 9, "1. Balance Inquiry", 10
                db 9, "2. Withdrawal", 10
                db 9, "3. Deposit", 10
                db 9, "4. Bills Payment", 10
                db 9, "5. Exit", 0

    lblPrompt:  db "Please enter choice: ", 0
    lblInvalid: db "Sorry, wrong input!", 0

    lblBalanceInquiry: db "BALANCE INQUIRY", 0
    lblWithdrawal:     db "WITHDRAWAL", 0
    lblDeposit:        db "DEPOSIT", 0
    lblBillsPayment:   db "BILLS PAYMENT", 0
    lblAgain:          db "Again? Y/N: ", 0
    lblThankYou:       db "Exiting ATM.", 10
                       db "Thank you for using CIT-U BANK.", 10
                       db "See you next time.", 0

section .bss
    dtaOp resb 1

section .text
    global _start ; must be declared for using gcc
_start: ; tell linker entry point
    mov  eax, lblWelcome
    call sprintLF
_menu:
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
    je  op_balance_inquiry
    cmp eax, 2
    je  op_withdrawal
    cmp eax, 3
    je  op_deposit
    cmp eax, 4
    je  op_bills_payment
    jmp _exit

invalid_input:
    mov  eax, lblInvalid
    call sprintLF
    jmp  _menu

op_balance_inquiry:
    mov  eax, lblBalanceInquiry
    call sprintLF
    jmp  _menu

op_withdrawal:
    mov  eax, lblWithdrawal
    call sprintLF
    jmp  _menu

op_deposit:
    mov  eax, lblDeposit
    call sprintLF
    jmp  _menu

op_bills_payment:
    mov  eax, lblBillsPayment
    call sprintLF
    jmp  _menu

_exit:    
    mov  eax, lblThankYou
    call sprintLF

    ; terminate/exit program
    call quit