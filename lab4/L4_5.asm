
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

;jmp start:   
alpha EQU 0013H 

;start:

MOV AX,03000H
MOV DS,AX
MOV BX,01234H
MOV SI,01233H
MOV [BX] + alpha, AH
MOV [SI] + alpha, AH

ret




