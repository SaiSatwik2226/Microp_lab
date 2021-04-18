
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;Values in decimal:
;03, 04, 05, 08
;result 05
;SI register location: 1100H
;Result location: 1200H

org 100h

MOV AX,0000H
MOV SI,1100H
MOV CX,0004H
MOV DX,0000H      

MOV [SI],03D
MOV [SI+1],04D
MOV [SI+2],05D
MOV [SI+3],08D

loop1: ADD AL,[SI]
INC SI
INC DX
CMP CX,DX
JNZ loop1
DIV CL
MOV [1200H],AX
HLT

ret