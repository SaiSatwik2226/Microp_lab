
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX,00H    
MOV SI,0500H   

MOV [SI],AL  
INC SI
ADD AL,01H
MOV [SI],AL
MOV CX,15D
SUB CX,0002H   

L1: MOV AL,[SI-1]     
ADD AL,[SI]
INC SI
MOV [SI],AL
LOOP L1
HLT

RET