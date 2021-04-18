
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Values in decimal:
;03, 04, 05, 08
;result 05
;SI register location: 1100H
;Result location: 1200H


MOV AX,0000H
MOV SI,1100H
MOV CX,0005H
MOV DX,0000H      

MOV [SI],0123H
MOV [SI+2],01234H
MOV [SI+4],01023H
MOV [SI+6],01456H
MOV [SI+8],02045H

loop1: ADD AX,[SI]
INC SI
INC SI
INC DX
CMP CX,DX
JNZ loop1
MOV DX,0000H
DIV CX
MOV [1200H],AX
HLT

ret

ret




