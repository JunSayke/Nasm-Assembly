section .text
global  _start ; must be declared for using gcc
_start:        ; tell linker entry point
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_num1
    mov edx, len_num1
    int 0x80
    
    mov eax, 4
    mov ebx, 1
    mov ecx, dta_num1
    mov edx, 2
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_num2
    mov edx, len_num2
    int 0x80
    
    mov eax, 4
    mov ebx, 1
    mov ecx, dta_num2
    mov edx, 2
    int 0x80

    ; comparing which is greater between num1 and num2
    mov eax, [dta_num1]
    mov ebx, [dta_num2]
debug:
    cmp eax, ebx
    jg  _greater ; jumps to _greater if num1 is greater than num2

; num1 is less than num2
    mov [dta_largest],  ebx
    mov [dta_smallest], eax
    jmp _exit               ; skip _greater label and jumps to _exit

; num1 is greater than num2
_greater:
    mov [dta_largest],  eax
    mov [dta_smallest], ebx

_exit:
    ; displays "The smallest digit is: "
    mov eax, 4            ; system call number (sys_write)
    mov ebx, 1            ; file descriptor (stdout)
    mov ecx, lbl_smallest
    mov edx, len_smallest
    int 0x80              ; call kernel
    
    ; displays the smallest between num1 and num2
    mov eax, 4            ; system call number (sys_write)
    mov ebx, 1            ; file descriptor (stdout)
    mov ecx, dta_smallest
    mov edx, 2
    int 0x80              ; call kernel

    ; displays "The largest digit is: "
    mov eax, 4           ; system call number (sys_write)
    mov ebx, 1           ; file descriptor (stdout)
    mov ecx, lbl_largest
    mov edx, len_largest
    int 0x80             ; call kernel
    
    ; displays the largest between num1 and num2
    mov eax, 4           ; system call number (sys_write)
    mov ebx, 1           ; file descriptor (stdout)
    mov ecx, dta_largest
    mov edx, 2
    int 0x80             ; call kernel
    
    ; terminate/exit program
    mov eax, 1
    mov ebx, 0
    int 80h

section .data
    lbl_num1 db  "1st number: "
    len_num1 equ $-lbl_num1

    lbl_num2 db  10, "2nd number: "
    len_num2 equ $-lbl_num2

    lbl_largest db  10, "The greatest digit is "
    len_largest equ $-lbl_largest

    lbl_smallest db  10, "The smallest digit is "
    len_smallest equ $-lbl_smallest

    dta_num1 db "42", 0
    dta_num2 db "47", 0

section .bss
    dta_largest  resb 2
    dta_smallest resb 2