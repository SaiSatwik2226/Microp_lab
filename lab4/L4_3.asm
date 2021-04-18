
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,0300H
MOV DS,AX
MOV SI,3126H
MOV CX,4A3CH
MOV [SI],CX

ret




