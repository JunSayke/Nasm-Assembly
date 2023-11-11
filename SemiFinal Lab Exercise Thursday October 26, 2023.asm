section .text
	global _start ;must be declared for using gcc
_start: ;tell linker entry point
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_University
    mov edx, len_ttl_University
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Vision_Statement
    mov edx, len_lbl_Vision_Statement
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Vision_Statement
    mov edx, len_txt_Vision_Statement
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Mission_Statement
    mov edx, len_lbl_Mission_Statement
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Mission_Statement
    mov edx, len_txt_Mission_Statement
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_Core_Values
    mov edx, len_ttl_Core_Values
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Culture_Of_Excellence
    mov edx, len_lbl_Culture_Of_Excellence
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Culture_Of_Excellence
    mov edx, len_txt_Culture_Of_Excellence
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Integrity
    mov edx, len_lbl_Integrity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Integrity
    mov edx, len_txt_Integrity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Teamwork
    mov edx, len_lbl_Teamwork
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Teamwork
    mov edx, len_txt_Teamwork
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Universality
    mov edx, len_lbl_Universality
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Universality
    mov edx, len_txt_Universality
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Core_Competency
    mov edx, len_lbl_Core_Competency
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Core_Competency
    mov edx, len_txt_Core_Competency
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_Department
    mov edx, len_ttl_Department
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Vision
    mov edx, len_lbl_Vision
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Vision
    mov edx, len_txt_Vision
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Mission
    mov edx, len_lbl_Mission
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Mission
    mov edx, len_txt_Mission
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Goal
    mov edx, len_lbl_Goal
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Goal
    mov edx, len_txt_Goal
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_BSCS_Desc
    mov edx, len_lbl_BSCS_Desc
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_BSCS_Desc
    mov edx, len_txt_BSCS_Desc
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_BSIT_Desc
    mov edx, len_lbl_BSIT_Desc
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_BSIT_Desc
    mov edx, len_txt_BSIT_Desc
    int 80h
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
; LOOP LETTER C
    mov ecx, 2
CLetter_1to2Lines:
    push ecx
    
    mov ecx, 15
    C1to2_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop C1to2_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop CLetter_1to2Lines

    mov ecx, 6
CLetter_3to8Lines:
    push ecx
    
    mov ecx, 4
    C3to8_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop C3to8_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop CLetter_3to8Lines
    
    mov ecx, 2
CLetter_9to10Lines:
    push ecx
    
    mov ecx, 15
    C9to10_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop C9to10_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop CLetter_9to10Lines

    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
; LOOP LETTER I
    mov ecx, 2
ILetter_1to2Lines:
    push ecx
    
    mov ecx, 15
    I1to2_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop I1to2_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop ILetter_1to2Lines

    mov ecx, 6
ILetter_3to8Lines:
    push ecx
    
    mov ecx, 5
    I3to8_Space:
        push ecx
        
        ; SPACE
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Space
        mov edx, len_txt_Space
        int 80h
        
        pop ecx
    loop I3to8_Space
    
    mov ecx, 4
    I3to8_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop I3to8_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop ILetter_3to8Lines
    
    mov ecx, 2
ILetter_9to10Lines:
    push ecx
    
    mov ecx, 15
    I9to10_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop I9to10_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop ILetter_9to10Lines

    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
; LOOP LETTER T
    mov ecx, 2
TLetter_1to2Lines:
    push ecx
    
    mov ecx, 15
    T1to2_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop T1to2_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop TLetter_1to2Lines

    mov ecx, 8
TLetter_3to10Lines:
    push ecx
    
    mov ecx, 5
    T3to10_Space:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Space
        mov edx, len_txt_Space
        int 80h
        
        pop ecx
    loop T3to10_Space
    
    mov ecx, 4
    T3to10_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop T3to10_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop TLetter_3to10Lines
 
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
; LOOP LETTER U
    mov ecx, 8
ULetter_1to8Lines:
    push ecx
    
    mov ecx, 4
    U1to8_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop U1to8_Hashtag
    
    mov ecx, 7
    U1to8_Space:
        push ecx
        
        ; SPACE
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Space
        mov edx, len_txt_Space
        int 80h
        
        pop ecx
    loop U1to8_Space
    
    mov ecx, 4
    U1to8_Hashtag2:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop U1to8_Hashtag2
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop ULetter_1to8Lines

    mov ecx, 2
ULetter_9to10Lines:
    push ecx
    
    mov ecx, 15
    U9to10_Hashtag:
        push ecx
        
        ; HASHTAG
        mov eax, 4
        mov ebx, 1
        mov ecx, txt_Hashtag
        mov edx, len_txt_Hashtag
        int 80h
        
        pop ecx
    loop U9to10_Hashtag
    
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h
    
    pop ecx
loop ULetter_9to10Lines
 
    ; LINE FEED
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_LineFeed
    mov edx, len_txt_LineFeed
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Programmer
    mov edx, len_lbl_Programmer
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Programmer
    mov edx, len_txt_Programmer
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_DateStamp
    mov edx, len_lbl_DateStamp
    int 80h

    mov eax, 4
    mov ebx, 1
    mov ecx, txt_DateStamp
    mov edx, len_txt_DateStamp
    int 80h
    
; EXIT PROGRAM
    mov eax, 1
    mov ebx, 0
    int 80h

section .data
    ttl_University     db  "𝗖𝗘𝗕𝗨 𝗜𝗡𝗦𝗧𝗜𝗧𝗨𝗧𝗘 𝗢𝗙 𝗧𝗘𝗖𝗛𝗡𝗢𝗟𝗢𝗚𝗬 - 𝗨𝗡𝗜𝗩𝗘𝗥𝗦𝗜𝗧𝗬", 10
    len_ttl_University equ $-ttl_University
    
    lbl_Vision_Statement     db  10, "𝗩𝗜𝗦𝗜𝗢𝗡 𝗦𝗧𝗔𝗧𝗘𝗠𝗘𝗡𝗧", 10
    len_lbl_Vision_Statement equ $-lbl_Vision_Statement
    txt_Vision_Statement     db  "We envision to be a top Philippine university in 2025, a trusted education provider, an", 10
                                    db "outcomes-based institution of research and learning, and a people-oriented organization.", 10
    len_txt_Vision_Statement equ $-txt_Vision_Statement
    
    lbl_Mission_Statement     db  10, "𝗠𝗜𝗦𝗦𝗜𝗢𝗡 𝗦𝗧𝗔𝗧𝗘𝗠𝗘𝗡𝗧", 10
    len_lbl_Mission_Statement equ $-lbl_Mission_Statement
    txt_Mission_Statement     db  "CIT commits to:", 10
                                    db 9, "Guide learners to become industry-preferred and life ready professionals", 10
                                    db 9, "Empower people for knowledge generation and creativity", 10
                                    db 9, "Accelerate community development", 10
                                    db 9, "Respond proactively to a fast-changing world", 10
    len_txt_Mission_Statement equ $-txt_Mission_Statement
    
    ttl_Core_Values     db  10, "𝗖𝗢𝗥𝗘 𝗩𝗔𝗟𝗨𝗘𝗦", 10
    len_ttl_Core_Values equ $-ttl_Core_Values
    
    lbl_Culture_Of_Excellence     db  "• 𝗖𝗨𝗟𝗧𝗨𝗥𝗘 𝗢𝗙 𝗘𝗫𝗖𝗘𝗟𝗟𝗘𝗡𝗖𝗘 ",
    len_lbl_Culture_Of_Excellence equ $-lbl_Culture_Of_Excellence
    txt_Culture_Of_Excellence     db  "A commitment to go beyond the ordinary; steadfast in", 10
                                    db "delivering data-driven, value-optimized and client-centric serivce", 10
    len_txt_Culture_Of_Excellence equ $-txt_Culture_Of_Excellence
    
    lbl_Integrity     db  "• 𝗜𝗡𝗧𝗘𝗚𝗥𝗜𝗧𝗬 ",
    len_lbl_Integrity equ $-lbl_Integrity
    txt_Integrity     db  "Uncompromising adherence to moral and ethical principles", 10
    len_txt_Integrity equ $-txt_Integrity
    
    lbl_Teamwork     db  "• 𝗧𝗘𝗔𝗠𝗪𝗢𝗥𝗞 ",
    len_lbl_Teamwork equ $-lbl_Teamwork
    txt_Teamwork     db  "Promoting a culture of collaboration and empowerment/ Commitment to", 10
                                    db "purposeful collaboration to advocate for innovative solutions", 10
    len_txt_Teamwork equ $-txt_Teamwork
    
    lbl_Universality     db  "• 𝗨𝗡𝗜𝗩𝗘𝗥𝗦𝗔𝗟𝗜𝗧𝗬 ",
    len_lbl_Universality equ $-lbl_Universality
    txt_Universality     db  "Regard for the welfare of people and nature/ Respect for all and", 10
                                    db "stewardship of God's creation / Promotion of common good of, by and for all", 10
    len_txt_Universality equ $-txt_Universality
    
    lbl_Core_Competency     db  10, "𝗦𝗧𝗔𝗧𝗘𝗠𝗘𝗡𝗧 𝗢𝗙 𝗖𝗢𝗥𝗘 𝗖𝗢𝗠𝗣𝗘𝗧𝗘𝗡𝗖𝗬", 10
    len_lbl_Core_Competency equ $-lbl_Core_Competency
    txt_Core_Competency     db  "Science & Technology is a way of academic life among administrators, faculty, and", 10
                                    db "students. In the design, administration, and implementation of curricular programs,", 10
                                    db "technology is embedded, articulated, and actuated.", 10
    len_txt_Core_Competency equ $-txt_Core_Competency
    
    ttl_Department     db  10, "𝗖𝗼𝗹𝗹𝗲𝗴𝗲 𝗼𝗳 𝗖𝗼𝗺𝗽𝘂𝘁𝗲𝗿 𝗦𝘁𝘂𝗱𝗶𝗲𝘀", 10
    len_ttl_Department equ $-ttl_Department
    
    lbl_Vision     db  10, "𝗩𝗶𝘀𝗶𝗼𝗻", 10, 10
    len_lbl_Vision equ $-lbl_Vision
    txt_Vision     db  "A leading Center of Excellence in Computing Education", 10
    len_txt_Vision equ $-txt_Vision
    
    lbl_Mission     db  10, "𝗠𝗶𝘀𝘀𝗶𝗼𝗻", 10, 10
    len_lbl_Mission equ $-lbl_Mission
    txt_Mission     db  "To provide quality industry-standard computing education", 10
    len_txt_Mission equ $-txt_Mission
    
    lbl_Goal     db  10, "𝗚𝗼𝗮𝗹", 10, 10
    len_lbl_Goal equ $-lbl_Goal
    txt_Goal     db  "To produce values-driver, industry-preferred and competent computing professionals", 10
                                    db "through: proficient, supportive and highly-trained faculty; appropriate facilities; programs", 10
                                    db "and padagody responsive to the community; as well as a culture that encourages", 10
                                    db "Creativity, Innovation, and Team-work", 10
    len_txt_Goal equ $-txt_Goal
    
    lbl_BSCS_Desc     db  10, "𝗕𝗮𝗰𝗵𝗲𝗹𝗼𝗿 𝗼𝗳 𝗦𝗰𝗶𝗲𝗻𝗰𝗲 𝗶𝗻 𝗖𝗼𝗺𝗽𝘂𝘁𝗲𝗿 𝗦𝗰𝗶𝗲𝗻𝗰𝗲 (𝗕𝗦𝗖𝗦)", 10, 10
    len_lbl_BSCS_Desc equ $-lbl_BSCS_Desc
    txt_BSCS_Desc     db  "The BS Computer Science program includes the study of computing concepts and theories,", 10
                                    db "algorithmic foundations and new developments in computing. The program prepares", 10
                                    db "students to design and create algorithmically complex software and develop new and", 10
                                    db "effective algorithms for solving computing problems.", 10
                                    db 10, "The program also includes the study of the standards and practices in Software", 10
                                    db "Engineering. It prepares students to acquire skills and disciplines required for designing,", 10
                                    db "writing and modifying software components, modules and applications that compromise", 10
                                    db "software solutions.", 10
    len_txt_BSCS_Desc equ $-txt_BSCS_Desc
    
    lbl_BSIT_Desc     db  10, "𝗕𝗮𝗰𝗵𝗲𝗹𝗼𝗿 𝗼𝗳 𝗦𝗰𝗶𝗲𝗻𝗰𝗲 𝗶𝗻 𝗜𝗻𝗳𝗼𝗿𝗺𝗮𝘁𝗶𝗼𝗻 𝗧𝗲𝗰𝗵𝗻𝗼𝗹𝗼𝗴𝘆 (𝗕𝗦𝗜𝗧)", 10, 10
    len_lbl_BSIT_Desc equ $-lbl_BSIT_Desc
    txt_BSIT_Desc     db  "The BS Information Technology program includes the study of the utilization of both", 10
                                    db "hardware and software technologies involving planning, installing, customizing, operating,", 10
                                    db "managing and administering, and maintaining information technology infrastructure that", 10
                                    db "provides computing solutions to address the needs of an organization.", 10
                                    db 10, "The program prepares graduates to address various user needs involving the selection,", 10
                                    db "development, application, integration and management of computing technologies within", 10
                                    db "an organization.", 10
    len_txt_BSIT_Desc equ $-txt_BSIT_Desc
    
    lbl_Programmer     db  "Programmer: ",
    len_lbl_Programmer equ $-lbl_Programmer
    
    txt_Programmer     db  "Antonio Mancera Ubaldo Jr.", 10
    len_txt_Programmer equ $-txt_Programmer
    
    lbl_DateStamp     db  "Date: "
    len_lbl_DateStamp equ $-lbl_DateStamp
    
    txt_DateStamp     db  "10/27/2023 6:00PM", 10
    len_txt_DateStamp equ $-txt_DateStamp
    
    txt_LineFeed     db  10
    len_txt_LineFeed equ $-txt_LineFeed
    txt_Space        db  " "
    len_txt_Space    equ $-txt_Space
    txt_Hashtag      db  "#"
    len_txt_Hashtag  equ $-txt_Hashtag
    
    