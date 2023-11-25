section .data
    ; Declare your initialize variables here
    ; Manually set 0 (null terminator) as end of the line
    msg: db "Hello, World!", 10, 0
    ; ['H'|'e'|'l'|'l'|'o'|','|' '|'W'|'o'|'r'|'l'|'d'|'!'|10 (linefeed)]
    ; String length = 14
section .text
global  _start

_start:
    ; Your code here
    push msg    ; Parameter
    call strlen
    pop  eax    ; Store the length of the string
debug:
    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 80h

; Function: int strlen(String)
; Description: Calculates the length of a null-terminated string.
; Input:
;   - Argument at [ebp+8]: Pointer to the null-terminated string.
; Output:
;   - Returns the length of the string in the EAX register.

strlen:
    push ebp      ; Save the base pointer
    mov  ebp, esp ; Set up a new base pointer
    push esi      ; Save the source index register

    mov esi, [ebp+8] ; Load the address of the input string

.strlen_next_char:
    cmp byte [esi], 0h ; Compare the byte at the current string position with null terminator
    je  .strlen_done   ; If null terminator is found, exit the loop

    inc esi               ; Move to the next character in the string
    jmp .strlen_next_char ; Jump back to the beginning of the loop

.strlen_done:
    sub esi,           [ebp+8] ; Calculate the length by subtracting the initial string address
    mov dword [ebp+8], esi     ; Store the length in the memory location pointed to by [ebp+8]

    pop esi ; Restore the source index register
    pop ebp ; Restore the base pointer
    ret     ; Return with the length of the string in the esp register