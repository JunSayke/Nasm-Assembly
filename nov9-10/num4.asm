section .text
global  _start ; must be declared for using gcc
_start:        ; tell linker entry point
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_input3nums
    mov edx, len_input3nums
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_num1
    mov edx, len_num1
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, dta_num1
    mov edx, 2
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_num2
    mov edx, len_num2
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, dta_num2
    mov edx, 2
    int 0x80
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_num3
    mov edx, len_num3
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, dta_num3
    mov edx, 2
    int 0x80

    mov eax, [dta_num1]
    mov ebx, [dta_num2]
    cmp eax, ebx
    jg  _check_third_num
    mov ebx, eax
    mov eax, [dta_num2]
    
_check_third_num:
    cmp eax, [dta_num3]
    jg  _lesser
    mov ecx, eax
    mov eax, [dta_num3]

_lesser:
    cmp ecx, ebx
    jg  _exit
    mov ecx, ebx

_exit:
    mov [dta_largest],  eax
    mov [dta_smallest], ebx
    ; displays "The smallest digit is: "
    mov eax,            4            ; system call number (sys_write)
    mov ebx,            1            ; file descriptor (stdout)
    mov ecx,            lbl_smallest
    mov edx,            len_smallest
    int 0x80                         ; call kernel
    
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
    lbl_input3nums db  "Input 3 numbers"
    len_input3nums equ $-lbl_input3nums

    lbl_num1 db  10, "1st number: "
    len_num1 equ $-lbl_num1

    lbl_num2 db  10, "2nd number: "
    len_num2 equ $-lbl_num2
    
    lbl_num3 db  10, "3rd number: "
    len_num3 equ $-lbl_num3

    lbl_smallest db  10, "The smallest digit is "
    len_smallest equ $-lbl_smallest

    lbl_largest db  "The greatest digit is "
    len_largest equ $-lbl_largest

section .bss
    dta_num1     resd 2
    dta_num2     resd 2
    dta_num3     resd 2
    dta_largest  resb 2
    dta_smallest resb 2