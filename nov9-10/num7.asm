section .text
global  _start ; must be declared for using gcc
_start:        ; tell linker entry point

   mov ecx, 10
   mov eax, '1'
	
l1:
   push ecx
   mov  [num], eax
   
   mov eax, 4
   mov ebx, 1
   mov ecx, num
   mov edx, 1
   int 0x80
   
   mov eax, 4
   mov ebx, 1
   mov ecx, space
   mov edx, 1
   int 0x80
	
   mov  eax, [num]
   sub  eax, '0'
   inc  eax
   add  eax, '0'
   pop  ecx
   loop l1

_exit:
    ; terminate/exit program
    mov eax, 1
    mov ebx, 0
    int 80h

section .data
    space db 10
section .bss
    num resb 1