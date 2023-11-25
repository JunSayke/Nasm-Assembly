section .text
global  _start

_start:
    push 3   ; Push b onto the stack
    push 2   ; Push a onto the stack
    call sum ; Call the sum function

    mov eax, 1
    xor ebx, ebx
    int 80h


; Function: sum
; Parameters: a (4 bytes), b (4 bytes)
; Returns: eax = a + b
sum:    
    push ebp      ; Save the old base pointer
    mov  ebp, esp ; Set the new base pointer

    mov eax, [ebp+8]  ; Load a from the stack
    add eax, [ebp+12] ; Add b to eax

    pop ebp ; Restore the old base pointer
    ret 8   ; Return and clean up 8 bytes of parameters from the stack
    