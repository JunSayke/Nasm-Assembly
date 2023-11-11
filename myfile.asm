section	.text
   global _start        ;must be declared for using gcc
	
_start:	                ;tell linker entry point
   mov ecx,15   ;15 is the end of loop
   mov eax, '1' ;1 is the start of loop
	
l1: ;start of loop
   mov [num], eax
   mov eax, 4
   mov ebx, 1
   push ecx
	
   mov ecx, choice ;displaying #  
   mov edx, 1        
   int 0x80
	
   mov eax, [num] ;converting to decimal
   sub eax, '0'
   inc eax
   add eax, '0'
   pop ecx
   loop l1 ;end of loop
   
  ;display newline
  mov edx,1
  mov ecx,space
  mov eax,4
  mov ebx,1
  int 0x80
  
  ;start of next loop for 2nd line of #
  ;resetting counter register to max loop 15 and start of loop to 1
  mov ecx,15   ;15 is the end of loop
   mov eax, '1' ;1 is the start of loop
  
  l2: ;start of loop
   mov [num], eax
   mov eax, 4
   mov ebx, 1
   push ecx
	
   mov ecx, choice       
   mov edx, 1        
   int 0x80
	
   mov eax, [num]
   sub eax, '0'
   inc eax
   add eax, '0'
   pop ecx
   loop l2 ;end of loop
	
   mov eax,1             ;system call number (sys_exit)
   int 0x80              ;call kernel
   
   
section	.bss
num resb 1

section .data
choice DB '#'
space db 0xa