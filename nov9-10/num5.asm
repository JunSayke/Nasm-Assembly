section .text
global  _start ; must be declared for using gcc
_start:        ; tell linker entry point
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_inputnum
    mov edx, len_inputnum
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, dta_num
    mov edx, 2
    int 0x80

    mov eax, [dta_num]
    cmp eax, '10'
    jge _greater

    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_less
    mov edx, len_less
    int 0x80

    jmp _exit

_greater:
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_greater
    mov edx, len_greater
    int 0x80

_exit:
    mov eax, 4
    mov ebx, 1
    mov ecx, dta_target
    mov edx, 2
    int 0x80

    ; terminate/exit program
    mov eax, 1
    mov ebx, 0
    int 80h

section .data
    lbl_inputnum db  "Input a number: "
    len_inputnum equ $-lbl_inputnum

    lbl_less db  10, "The number is less than "
    len_less equ $-lbl_less

    lbl_greater db  "The number is equal to or greater than "
    len_greater equ $-lbl_greater

    dta_target db "10"
section .bss
    dta_num resd 2