section .data
	; Manually set 0 (null in ASCII) as EOL (end of line)
	lblHeader: db "CIT-U", 10
				db "Automatic Teller Machine", 10
				db "Programmer: Antonio M. Ubaldo Jr.", 10, 0
	lblMenu: db 10, "Main Menu", 10
				db "1. Balance Inquiry", 10
				db "2. Deposit", 10
				db "3. Withdrawal", 10
				db "4. Exit", 10, 0
	lblChoice:    db "Enter your choice: ", 0
	lblInvErr:    db "ERROR! Invalid choice!", 10, 0
	lblBalErr:    db "ERROR! Insufficient Balance!", 10, 0
	lblCurBal:    db "Your current balance: P", 0
	lblDepAmnt:   db "Enter deposit amount: P", 0
	lblWidAmnt:   db "Enter withdrawal amount: P", 0
	lblTerminate: db "Exiting ATM", 10
					db "Thank you!", 10, 0
	lblBal: db "Balance Inquiry", 10, 0
	lblDep: db "Deposit", 10, 0
	lblWid: db "Withdrawal", 10, 0

section .bss
	buffer: resb 255
	txtBal: resb 255
	txtOp:  resb 255

section .text
	global _start
	
_start:
	; Your code here
	push lblHeader
	call write

	mov eax,      0
	mov [txtBal], eax

menu:
	push lblMenu
	call write

	push lblChoice
	call write

	push txtOp
	push 255
	call read

	push txtOp
	call atoi
	pop  eax
	cmp  al, 1
	jl   invalid
	cmp  al, 4
	jg   invalid
	cmp  al, 1
	je   balance
	cmp  al, 2
	je   deposit
	cmp  al, 3
	je   withdraw
	jmp  exit

balance:
	push lblBal
	call write
	push lblCurBal
	call write

	mov eax,      [txtBal]
	mov [buffer], eax

	push buffer
	call itoa
	call write

	mov  byte [buffer],   10
	mov  byte [buffer+1], 0
	push buffer
	call write
	jmp  menu

deposit:
	push lblDep
	call write
	push lblDepAmnt
	call write

	push buffer
	push 255
	call read

	push buffer
	call atoi
	pop  eax
	add  [txtBal], eax
	jmp  menu

withdraw:
	push lblWid
	call write
	push lblWidAmnt
	call write

	push buffer
	push 255
	call read

	push buffer
	call atoi
	pop  eax
	mov  ebx,      [txtBal]
	sub  ebx,      eax
	cmp  ebx,      0
	jl   .wid_insufficient
	mov  [txtBal], ebx
	jmp  menu
.wid_insufficient:
	push lblBalErr
	call write
	jmp  menu

invalid:
	push lblInvErr
	call write
	jmp  menu

exit:
	; Exit the program
	push lblTerminate
	call write

	mov eax, 1
	xor ebx, ebx
	int 80h

atoi:
    push ebp
    mov  ebp, esp
    push eax
    push ebx
    push ecx
    push esi

    mov esi, [ebp+8]
    xor eax, eax
    mov ecx, 10

.atoi_next_int:
    movzx ebx, byte [esi]
    cmp   bl,  '0'
    jl    .atoi_done
    cmp   bl,  '9'
    jg    .atoi_done
    sub   bl,  48
    mul   ecx
    add   eax, ebx
    inc   esi
    jmp   .atoi_next_int

.atoi_done:
    mov [ebp+8], eax
    pop esi
    pop ecx
    pop ebx
    pop eax
    pop ebp
    ret

itoa:
    push ebp
    mov  ebp, esp
    push eax
    push ebx
    push ecx
    push edx

    mov eax, [ebp+8]
    mov eax, [eax]
    mov ebx, 10
    xor ecx, ecx

.itoa_next_int:
    xor  edx, edx
    cmp  eax, 0
    je   .itoa_reverse
    idiv ebx
    add  dl,  48
    push edx
    inc  ecx
    jmp  .itoa_next_int

.itoa_reverse:
    mov eax,              [ebp+8]
    mov byte [eax],       48
    mov byte [eax+ecx+1], 0
    cmp ecx,              0
    je  .itoa_done

.itoa_reverse_loop:
    pop  ebx
    mov  byte [eax+edx], bl
    inc  edx
    loop .itoa_reverse_loop

.itoa_done:
    pop edx
    pop ecx
    pop ebx
    pop eax
    pop ebp
    ret

slen:
    push ebp
    mov  ebp, esp
    push esi
    mov  esi, [ebp+8]

.slen_next_char:
    cmp byte [esi], 0
    je  .slen_done
    inc esi
    jmp .slen_next_char

.slen_done:
    sub esi,           [ebp+8]
    mov dword [ebp+8], esi
    pop esi
    pop ebp
    ret

write:
    push ebp
    mov  ebp, esp
    push eax
    push ebx
    push ecx
    push edx
    push dword [ebp+8]
    call slen
    pop  edx
    mov  eax, 4
    mov  ebx, 1
    mov  ecx, dword [ebp+8]
    int  80h
    pop  edx
    pop  ecx
    pop  ebx
    pop  eax
    pop  ebp
    ret  4

read:
    push ebp
    mov  ebp, esp
    push eax
    push ebx
    push ecx
    push edx
    mov  eax, 3
    mov  ebx, 0
    mov  ecx, dword [ebp+12]
    mov  edx, dword [ebp+8]
    int  80h
    pop  edx
    pop  ecx
    pop  ebx
    pop  eax
    pop  ebp
    ret  8