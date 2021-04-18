
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
            
MOV AX,3000H
MOV DS,AX
MOV CX,4ECBH
MOV [0171H],CX

ret




