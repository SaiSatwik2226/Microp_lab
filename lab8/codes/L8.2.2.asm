
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AH,01H
INT 21H
MOV AH,02H

INC AL
MOV DL,AL
INT 21H

INC AL
MOV DL,AL
INT 21H

ret