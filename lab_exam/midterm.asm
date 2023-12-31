; MIDTERM PROJECT
; RUN IN TUTORIALSPOINT ONLINE ASSEMBLY COMPILER
; GROCERY STOCKS INVENTORY SYSTEM
; ttl = title
; lbl = label
; txt = text/data
; len = string length

; STARTING OF TEXT SECTION
section .text
	global _start ; must be declared for using gcc
_start: ; tell linker entry point
; PRINT TITLES
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_University
    mov edx, len_University
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_Department
    mov edx, len_Department
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_Course
    mov edx, len_Course
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_SchoolYear
    mov edx, len_SchoolYear
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_ProgramTitle
    mov edx, len_ProgramTitle
    int 80h
; END OF PRINTING TITLES
    
; READ INPUTS
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_Enter_Data
    mov edx, len_Enter_Data
    int 80h
; PRODUCT ONE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_One
    mov edx, len_Product_One
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_One_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_One_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_One_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_One_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_One_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT TWO
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Two
    mov edx, len_Product_Two
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Two_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Two_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Two_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Two_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Two_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT THREE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Three
    mov edx, len_Product_Three
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Three_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Three_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Three_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Three_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Three_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT FOUR
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Four
    mov edx, len_Product_Four
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Four_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Four_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Four_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Four_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Four_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT FIVE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Five
    mov edx, len_Product_Five
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Five_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Five_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Five_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Five_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Five_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT SIX
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Six
    mov edx, len_Product_Six
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Six_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Six_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Six_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Six_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Six_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT SEVEN
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Seven
    mov edx, len_Product_Seven
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Seven_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Seven_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Seven_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Seven_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Seven_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT EIGHT
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Eight
    mov edx, len_Product_Eight
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Eight_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Eight_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Eight_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Eight_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Eight_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT NINE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Nine
    mov edx, len_Product_Nine
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Nine_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Nine_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Nine_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Nine_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Nine_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT TEN
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Ten
    mov edx, len_Product_Ten
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Ten_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Ten_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Ten_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Ten_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 3
    mov ebx, 0
    mov ecx, txt_Ten_ExpiryDate
    mov edx, 16
    int 80h
; END OF READING INPUTS

; PRINT INPUTS
    mov eax, 4
    mov ebx, 1
    mov ecx, ttl_Product_Summary
    mov edx, len_Product_Summary
    int 80h
; PRODUCT ONE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_One
    mov edx, len_Product_One
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_One_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_One_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_One_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_One_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_One_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT TWO
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Two
    mov edx, len_Product_Two
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Two_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Two_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Two_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Two_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Two_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT THREE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Three
    mov edx, len_Product_Three
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Three_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Three_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Three_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Three_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Three_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT FOUR
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Four
    mov edx, len_Product_Four
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Four_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Four_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Four_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Four_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Four_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT FIVE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Five
    mov edx, len_Product_Five
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Five_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Five_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Five_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Five_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Five_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT SIX
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Six
    mov edx, len_Product_Six
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Six_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Six_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Six_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Six_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Six_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT SEVEN
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Seven
    mov edx, len_Product_Seven
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Seven_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Seven_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Seven_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Seven_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Seven_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT EIGHT
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Eight
    mov edx, len_Product_Eight
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Eight_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Eight_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Eight_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Eight_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Eight_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT NINE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Nine
    mov edx, len_Product_Nine
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Nine_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Nine_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Nine_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Nine_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Nine_ExpiryDate
    mov edx, 16
    int 80h
; PRODUCT TEN
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Product_Ten
    mov edx, len_Product_Ten
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProductIdNo
    mov edx, len_ProductIdNo
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Ten_ProductIdNo
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Name
    mov edx, len_Name
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Ten_Name
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_Quantity
    mov edx, len_Quantity
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Ten_Quantity
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_UnitPrice
    mov edx, len_UnitPrice
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Ten_UnitPrice
    mov edx, 16
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ExpiryDate
    mov edx, len_ExpiryDate
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, txt_Ten_ExpiryDate
    mov edx, 16
    int 80h
; END OF PRINTING INPUTS
    
; THANK YOU AND GOODBYE
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ThankYou
    mov edx, len_ThankYou
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_GoodBye
    mov edx, len_GoodBye
    int 80h

; PROGRAM DETAILS
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_ProgrammerName
    mov edx, len_ProgrammerName
    int 80h
    
    mov eax, 4
    mov ebx, 1
    mov ecx, lbl_DateStamp
    mov edx, len_DateStamp
    int 80h
    
; TERMINATE PROGRAM
    mov eax, 1 ; sys_exit opcode in system calls
    mov ebx, 0 ; 0 indicate no errors
    int 80h    ; interrupt and pass the intructions to system calls
; ENDING OF TEXT SECTION

; STARTING OF BSS SECTION
section .bss
; PRODUCT #1 DATA
    txt_One_ProductIdNo resb 16
    txt_One_Name        resb 16
    txt_One_Quantity    resb 16
    txt_One_UnitPrice   resb 16
    txt_One_ExpiryDate  resb 16
    
; PRODUCT #2 DATA    
    txt_Two_ProductIdNo resb 16
    txt_Two_Name        resb 16
    txt_Two_Quantity    resb 16
    txt_Two_UnitPrice   resb 16
    txt_Two_ExpiryDate  resb 16
    
; PRODUCT #3 DATA
    txt_Three_ProductIdNo resb 16
    txt_Three_Name        resb 16
    txt_Three_Quantity    resb 16
    txt_Three_UnitPrice   resb 16
    txt_Three_ExpiryDate  resb 16
    
; PRODUCT #4 DATA
    txt_Four_ProductIdNo resb 16
    txt_Four_Name        resb 16
    txt_Four_Quantity    resb 16
    txt_Four_UnitPrice   resb 16
    txt_Four_ExpiryDate  resb 16
    
; PRODUCT #5 DATA    
    txt_Five_ProductIdNo resb 16
    txt_Five_Name        resb 16
    txt_Five_Quantity    resb 16
    txt_Five_UnitPrice   resb 16
    txt_Five_ExpiryDate  resb 16
    
; PRODUCT #6 DATA
    txt_Six_ProductIdNo resb 16
    txt_Six_Name        resb 16
    txt_Six_Quantity    resb 16
    txt_Six_UnitPrice   resb 16
    txt_Six_ExpiryDate  resb 16
    
; PRODUCT #7 DATA
    txt_Seven_ProductIdNo resb 16
    txt_Seven_Name        resb 16
    txt_Seven_Quantity    resb 16
    txt_Seven_UnitPrice   resb 16
    txt_Seven_ExpiryDate  resb 16
    
; PRODUCT #8 DATA    
    txt_Eight_ProductIdNo resb 16
    txt_Eight_Name        resb 16
    txt_Eight_Quantity    resb 16
    txt_Eight_UnitPrice   resb 16
    txt_Eight_ExpiryDate  resb 16
    
; PRODUCT #9 DATA
    txt_Nine_ProductIdNo resb 16
    txt_Nine_Name        resb 16
    txt_Nine_Quantity    resb 16
    txt_Nine_UnitPrice   resb 16
    txt_Nine_ExpiryDate  resb 16
    
; PRODUCT #10 DATA
    txt_Ten_ProductIdNo resb 16
    txt_Ten_Name        resb 16
    txt_Ten_Quantity    resb 16
    txt_Ten_UnitPrice   resb 16
    txt_Ten_ExpiryDate  resb 16
; ENDING OF BSS SECTION

; STARTING OF DATA SECTION
section .data
; TITLES
    ttl_University db "################################################", 10
                                db "| Cebu Institute of Technology – University    |", 10
    len_University equ $-ttl_University
    
    ttl_Department db  "| College of Computer Studies                  |", 10
    len_Department equ $-ttl_Department
    
    ttl_Course db  "| CS243 Computer Organization and Architecture |", 10
    len_Course equ $-ttl_Course
    
    ttl_SchoolYear db "| First Semester Academic Year 2023-2024       |", 10
                                db "################################################", 10
    len_SchoolYear equ $-ttl_SchoolYear
    
    ttl_ProgramTitle db  10, "G R O C E R Y  S T O C K S  I N V E N T O R Y  S Y S T E M", 10, 10
    len_ProgramTitle equ $-ttl_ProgramTitle
        
    ttl_Enter_Data db "*", 10
                                db "-----------------[ ENTER DATA ]-----------------", 10
    len_Enter_Data equ $-ttl_Enter_Data
    
    ttl_Product_Summary db "*", 10
                                db "--------[ SUMMARY OF GROCERY PRODUCTS ] --------", 10
    len_Product_Summary equ $-ttl_Product_Summary
    
; PRODUCT LISTS
    lbl_Product_One db "*", 10
                                db "( Product No. 1 )", 10
    len_Product_One equ $-lbl_Product_One
    
    lbl_Product_Two db "*", 10
                                db "( Product No. 2 )", 10
    len_Product_Two equ $-lbl_Product_Two
    
    lbl_Product_Three db "*", 10
                                db "( Product No. 3 )", 10
    len_Product_Three equ $-lbl_Product_Three
    
    lbl_Product_Four db "*", 10
                                db "( Product No. 4 )", 10
    len_Product_Four equ $-lbl_Product_Four
    
    lbl_Product_Five db "*", 10
                                db "( Product No. 5 )", 10
    len_Product_Five equ $-lbl_Product_Five
    
    lbl_Product_Six db "*", 10
                                db "( Product No. 6 )", 10
    len_Product_Six equ $-lbl_Product_Six
    
    lbl_Product_Seven db "*", 10
                                db "( Product No. 7 )", 10
    len_Product_Seven equ $-lbl_Product_Seven
    
    lbl_Product_Eight db "*", 10
                                db "( Product No. 8 )", 10
    len_Product_Eight equ $-lbl_Product_Eight
    
    lbl_Product_Nine db "*", 10
                                db "( Product No. 9 )", 10
    len_Product_Nine equ $-lbl_Product_Nine
    
    lbl_Product_Ten db "*", 10
                                db "( Product No. 10 )", 10
    len_Product_Ten equ $-lbl_Product_Ten
    
; PRODUCT LABELS
    lbl_ProductIdNo db  "[ Product ID No. ] --> "
    len_ProductIdNo equ $-lbl_ProductIdNo
    
    lbl_Name db  "[ Product Name   ] --> "
    len_Name equ $-lbl_Name
    
    lbl_Quantity db  "[ Quantity       ] --> "
    len_Quantity equ $-lbl_Quantity
    
    lbl_UnitPrice db  "[ Unit Price     ] --> "
    len_UnitPrice equ $-lbl_UnitPrice
    
    lbl_ExpiryDate db  "[ Expiry Date    ] --> "
    len_ExpiryDate equ $-lbl_ExpiryDate

; THANK YOU AND GOODBYE                                                          
    lbl_ThankYou db "*", 10
                                db "/==============================================\", 10
                                db "|     Thank you for using the application!     |", 10
    len_ThankYou equ $-lbl_ThankYou
    
    lbl_GoodBye db "|    Feel free to come back again, goodbye!    |", 10
                                db "\==============================================/", 10
                                db "*", 10
    len_GoodBye equ $-lbl_GoodBye

; PROGRAMMER DETAILS*
    lbl_ProgrammerName db  "Programmer Name: Antonio Mancera Ubaldo Jr.", 10
    len_ProgrammerName equ $-lbl_ProgrammerName
    
; DATE FINISHED TIMESTAMP
    lbl_DateStamp db  "Date Finished: 10/15/2023 10:03 AM", 10
    len_DateStamp equ $-lbl_DateStamp

; ENDING OF DATA SECTION

