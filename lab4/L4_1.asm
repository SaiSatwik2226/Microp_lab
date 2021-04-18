
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV BX,16ACH
POPA

MOV AX,16ACH
MOV BX,AX

ret




