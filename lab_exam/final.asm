%include "../dump/functions.asm"

section .data
    ; Declare your initialize variables here
    lblHeader: db "CIT-U", 10
                db "Parking Management System", 10
                db "Programmer: Antonio M. Ubaldo Jr.", 10
                db "Date Stamp: 03/12/2023", 0
    lblMenu: db 10, "| Main Menu |", 10
                db "1. Display Vacant Slots", 10
                db "2. Park a Car", 10
                db "3. Open Slot", 10
                db "4. Exit Program", 10
                db "Enter your choice: ", 0
    lblParkOn:   db "Parked on Slot ", 0
    lblOpenOn:   db "Open on Slot ", 0
    lblOccupied: db "Occupied", 0
    lblVacant:   db "Vacant", 0
    lblSlots:    db ".", 10, "| Vacant Slots |", 0
    lblPark:     db ".", 10, "| Park a Car |", 0
    lblOpen:     db ".", 10, "| Open Slot |", 0
        lblHours: db "Enter number of hours: ", 0
    lblBill:  db "Total Bill: ", 0
    lblFull:  db "PARKING IS FULL", 0
    lblEmpty: db "PARKING IS EMPTY", 0
    lblErr:   db "ERROR! Invalid choice!", 0
    lblExit:  db "Thank you for using our Parking Management System. Have a great Day!", 0
    feeRate:  db 30
    slots: times 10 dd 0
    lenSlots: db 10

section .bss
    ; Declare your uninitialize variables here
    buffer: resb 255
    op:     resb 1

section .text
    global _start

_start:
    push lblHeader
    call println

menu:
    push lblMenu
    call print

    push op
    call scan

    push op
    call atoi
    pop  dword [op]

    jmp exeOp
 
invalid:
    push lblErr
    call println
    jmp  menu

exeOp:
    movzx eax, byte [op]
    cmp   al,  1
    jl    invalid
    cmp   al,  4
    jg    invalid
    
    cmp al, 1
    je  display
    cmp al, 2
    je  park
    cmp al, 3
    je  open

    jmp exit

display:    
    push lblSlots
    call println

    mov   ebx, 1
    movzx ecx, byte [lenSlots]

.display_loop:
    mov eax, dword [slots+(ebx-1)*4]

    push buffer
    push ebx
    call itoa
    call print

    push ". "
    call printval

    cmp  eax, 0
    je   .display_vacant
    push lblOccupied
    jmp  .display_next

.display_vacant:
    push lblVacant

.display_next:
    call println
    inc  ebx
    loop .display_loop

.display_done:
    jmp menu

park:
    push lblPark
    call println
    
    mov   ebx, 1
    movzx ecx, byte [lenSlots]
 
.park_loop:
    mov  eax, [slots+(ebx-1)*4]
    cmp  eax, 0
    je   .park_it
    inc  ebx
    loop .park_loop

    push lblFull
    call println
    jmp  .park_done

.park_it:
    push lblHours
    call print

    push buffer
    call scan

    push buffer
    call atoi
    pop  dword [slots+(ebx-1)*4]

    push lblParkOn
    call print

    push buffer
    push ebx
    call itoa
    call println

.park_done:
    jmp menu
   
open:
    push lblOpen
    call println

    mov   ebx, 1
    movzx ecx, byte [lenSlots]

.open_loop:
    mov  eax, dword [slots+(ebx-1)*4]
    cmp  eax, 0
    jne  .open_slot
    inc  ebx
    loop .open_loop
    
    push lblEmpty
    call println
    jmp  .open_done

.open_slot:
    push lblOpenOn
    call print

    push buffer
    push ebx
    call itoa
    call println

    mov dword [slots+(ebx-1)*4], 0

    push lblBill
    call print

    mul  dword [feeRate]
    push buffer
    push eax
    call itoa
    call println

.open_done:
    jmp menu

exit:
    push lblExit
    call println

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 80h


