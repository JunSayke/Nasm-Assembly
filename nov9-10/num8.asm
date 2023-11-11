section .text
    global _start

_start:

    mov ecx, 10
_l1:
    push ecx

    mov eax, 4
    mov ebx, 1
    mov ecx, txt_hashtag
    mov edx, len_hashtag
    int 0x80

    pop ecx
loop _l1

    mov eax, 1
    mov ebx, 0
    int 0x80

section .data
    txt_hashtag db  "###########", 10
    len_hashtag equ $-txt_hashtag