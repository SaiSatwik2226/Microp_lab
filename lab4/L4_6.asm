
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;jmp start:   
alpha EQU 0012H 

;start:                                          
MOV AX,03033H
MOV DS,AX
MOV BX,01000H
MOV SI,01234H                                           

;MOV [BX][SI]+alpha,060h                     
MOV AL,[BX][SI]+alpha    
             
ret




