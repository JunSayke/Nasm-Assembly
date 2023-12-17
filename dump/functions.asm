; DOCUMENTED THROUGH CHATGPT 3.5
; USEFUL FUNCTIONS FOR NASM ASSEMBLY @HUNYO

; Function: atoi - Converts a string to an integer

atoi:
    push ebp      ; Save base pointer
    mov  ebp, esp ; Set up base pointer
    push eax      ; Preserve registers
    push ebx
    push ecx
    push esi

    mov esi, [ebp+8] ; Load the address of the string into esi
    xor eax, eax     ; Clear eax (accumulator for the integer value)
    mov ecx, 10      ; Set ecx to 10 (base for decimal conversion)

.atoi_next_int:
    movzx ebx, byte [esi] ; Load the byte from the memory address in esi
    cmp   bl,  '0'        ; Compare with '0'
    jl    .atoi_done      ; If less than '0', exit loop
    cmp   bl,  '9'        ; Compare with '9'
    jg    .atoi_done      ; If greater than '9', exit loop
    sub   bl,  48         ; Convert ASCII to integer value
    mul   ecx             ; Multiply accumulated value by 10
    add   eax, ebx        ; Add the converted digit to the accumulated value
    inc   esi             ; Move to the next character in the string
    jmp   .atoi_next_int  ; Repeat the loop

.atoi_done:
    mov [ebp+8], eax ; Store the final integer value at the function argument address
    pop esi          ; Restore registers
    pop ecx
    pop ebx
    pop eax
    pop ebp          ; Restore base pointer
    ret              ; Return from function

; Function: itoa - Converts an integer to a null-terminated string

itoa:
    push ebp      ; Save base pointer
    mov  ebp, esp ; Set up base pointer
    push eax      ; Preserve registers
    push ebx
    push ecx
    push edx

    mov eax, [ebp+8] ; Load the integer into eax
    mov ebx, 10      ; Set divisor for division
    xor ecx, ecx

.itoa_next_int:
    xor  edx, edx       ; Clear edx before division
    cmp  eax, 0h        ; Check if the integer is 0
    je   .itoa_reverse  ; If zero, start reversing the string
    idiv ebx            ; Divide eax by 10, result in eax, remainder in edx
    add  dl,  48        ; Convert remainder to ASCII and push onto the stack
    push edx
    inc  ecx            ; Increment digit counter
    jmp  .itoa_next_int ; Repeat the loop

.itoa_reverse:
    mov  eax, [ebp+12]      ; Load the buffer address into eax
    cmp  ecx, 0
    jne  .itoa_reverse_loop
    mov  ecx, 1
    push '0'

.itoa_reverse_loop:
    pop  ebx                ; Pop a digit from the stack
    mov  byte [eax+edx], bl ; Store the digit in the reversed order
    inc  edx                ; Move to the next position in the buffer
    loop .itoa_reverse_loop ; Repeat until all digits are processed

.itoa_done:
    mov byte [eax+edx], 0h ; Null-terminate the string
    pop edx                ; Restore registers
    pop ecx
    pop ebx
    pop eax
    pop ebp                ; Restore base pointer
    ret 4                  ; Return, removing the integer argument from the stack

; Function: slen - Calculate the length of a null-terminated string

slen:
    push ebp          ; Save base pointer
    mov  ebp, esp     ; Set up base pointer
    push esi          ; Preserve esi register
    mov  esi, [ebp+8] ; Load the address of the string into esi

.slen_next_char:
    cmp byte [esi], 0   ; Compare the byte at the current address with null terminator
    je  .slen_done      ; If null terminator is found, exit the loop
    inc esi             ; Move to the next character in the string
    jmp .slen_next_char ; Repeat the loop

.slen_done:
    sub esi,           [ebp+8] ; Calculate the length by subtracting the original address
    mov dword [ebp+8], esi     ; Store the length at the original argument address
    pop esi                    ; Restore esi register
    pop ebp                    ; Restore base pointer
    ret                        ; Return with the length of the string

; Function: print - Write a string to the standard output

print:
    push ebp           ; Save base pointer
    mov  ebp, esp      ; Set up base pointer
    push eax           ; Preserve registers
    push ebx
    push ecx
    push edx
    push dword [ebp+8] ; Push the address of the string argument
    call slen          ; Call the slen function to get the length of the string
    pop  edx           ; Pop the length into edx
    mov  eax, 4        ; System call number for write
    mov  ebx, 1        ; File descriptor for standard output
    mov  ecx, [ebp+8]  ; Load the address of the string into ecx
    int  80h           ; Invoke the system call to write the string to the standard output
    pop  edx           ; Restore registers
    pop  ecx
    pop  ebx
    pop  eax
    pop  ebp           ; Restore base pointer
    ret  4             ; Return, removing the string argument from the stack

; Function: cprint - Write an immediate value upto 32 bits to the standard output

printval:
    push ebp           ; Save base pointer
    mov  ebp, esp      ; Set up base pointer
    push dword [ebp+8] ; Push our characters to stack
    push esp
    call print
    add  esp, 4        ; Restore stack pointer
    pop  ebp           ; Remove our character from the stack
    ret  4             ; Return, removing the string argument from the stack

; Function: println - Write a string and a newline to the standard output

println:
    push ebp           ; Save base pointer
    mov  ebp, esp      ; Set up base pointer
    push dword [ebp+8] ; Address of string argument
    call print         ; Use existing print functionality
    push 0xa           ; ASCII code for newline
    call printval
    pop  ebp           ; Restore base pointer
    ret  4             ; Return, removing the string argument from the stack

; Function: scan - Read input from standard input into a buffer

scan:
    push ebp          ; Save base pointer
    mov  ebp, esp     ; Set up base pointer
    push eax          ; Preserve registers
    push ebx
    push ecx
    push edx
    mov  eax, 3       ; System call number for read
    mov  ebx, 0       ; File descriptor for standard input
    mov  ecx, [ebp+8] ; Load the address of the buffer into ecx
    mov  edx, 255     ; Load the number of bytes to read into edx
    int  80h          ; Invoke the system call to read input from standard input
    pop  edx          ; Restore registers
    pop  ecx
    pop  ebx
    pop  eax
    pop  ebp          ; Restore base pointer
    ret  4            ; Return, removing the buffer and size arguments from the stack