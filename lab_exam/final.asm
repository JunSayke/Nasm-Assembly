%include "../dump/functions.asm"

section .data
    ; Declare your initialize variables here
    lblHeader: db "CIT-U", 10
                db "Parking Management System", 10
                db "Programmer: Antonio M. Ubaldo Jr.", 10
                db "Date Stamp: 03/12/2023", 10, 0
    lblMenu: db 10, "Main Menu", 10
                db "1. Display Vacant Slots", 10
                db "2. Park a Car", 10
                db "3. Open Slot", 10
                db "4. Exit Program", 10
                db "Enter your choice: ", 0
    lblSlots:   db "Vacant Slots", 10, 0
    lblPark:    db "Park a Car", 10, 0
    lblLeave:   db "Open Slot", 10, 0
    lblFull:    db "PARKING IS FULL", 10, 0
    lblErr:     db "ERROR! Invalid choice!", 10, 0
    lblExit:    db "Thank you for using our Parking Management System. Have a great Day!", 10, 0
    txtFeeRate: db 30
    txtSlots: times 10 db 0
    ; txtSlots:   db  0, 0, 0, 0, 1, 0, 1, 0, 1, 0
    lenSlots: equ $-txtSlots

section .bss
    ; Declare your uninitialize variables here
    buffer: resb 255
    txtOp:  resb 255
    txtFee: resb 255

section .text
global  _start

_start:
    ; Your code here
    mov ecx, 1
    mov eax, txtSlots
l1:
    movzx ebx, byte [eax+ecx-1]
    push  buffer
    push  ebx
    call  itoa
    call  write

    mov  byte [buffer],   " "
    mov  byte [buffer+1], 0
    push buffer
    call write
    
    cmp ecx, lenSlots
    je  exit
    inc ecx
    jmp l1


; exeOp:
;     push txtOp
;     call atoi
;     pop  eax
;     cmp  al, 1
;     jl   invalid
;     cmp  al, 4
;     jg   invalid
;     cmp  al, 1
;     je   slots
;     cmp  al, 2
;     je   park
;     cmp  al, 3
;     je   leave
;     call exit

; invalid:
;     push lblErr
;     call write
;     ret

; slots:

; park:

; leave:

; doneOp:
;     ret

exit:
    push lblExit
    call write

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 80h


