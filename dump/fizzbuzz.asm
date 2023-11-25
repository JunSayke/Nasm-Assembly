%include "functions.asm"

section .data
    ; Declare your initialize variables here
    lblInput: db "Enter an integer: ", 0
    lblFizz:  db "Fizz", 0
    lblBuzz:  db "Buzz", 0
section .bss
    ; Declare your uninitialize variables here
    buffer:   resb 255
    txtInput: resb 255
section .text
global  _start

_start:
    ; Your code here
    push lblInput
    call write

    push txtInput
    push 255
    call read
    
    push txtInput
    call atoi
    pop  dword [txtInput]

    xor ecx, ecx
 
nextNumber:
    xor esi, esi
    inc ecx      ; increment our counter variable
 
.checkFizz:
    xor  edx, edx
    mov  eax, ecx   ; move the value of our counter into eax for division
    mov  ebx, 3     ; move our number to divide by into ebx (in this case the value is 3)
    div  ebx        ; divide eax by ebx
    cmp  edx, 0     ; compare if the remainder is zero (meaning the counter divides by 3)
    jne  .checkBuzz ; if the remainder is not equal to zero jump to local label checkBuzz
    inc  esi
    push lblFizz
    call write
 
.checkBuzz:
    xor  edx, edx
    mov  eax, ecx  ; move the value of our counter into eax for division
    mov  ebx, 5    ; move our number to divide by into ebx (in this case the value is 5)
    div  ebx       ; divide eax by ebx
    cmp  edx, 0    ; compare if the remainder is zero (meaning the counter divides by 5)
    jne  .checkInt ; if the remainder is not equal to zero jump to local label checkInt
    inc  esi
    push lblBuzz
    call write
 
.checkInt:
    cmp  esi, 0
    jg   .continue
    push buffer
    push ecx
    call itoa
    call write
 
.continue:
    mov  byte [buffer],   10
    mov  byte [buffer+1], 0
    push buffer
    call write
    cmp  ecx,             dword [txtInput] ; compare if our counter is equal to 100
    jne  nextNumber                        ; if not equal jump to the start of the loop

exit:
    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 80h