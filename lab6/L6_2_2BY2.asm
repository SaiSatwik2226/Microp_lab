
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV BX,0300H
MOV BP,0400H

LEA SI,ARRAY1
MOV CL,04H
MOV CH,00H
MOV DI,BX
CLD
REP MOVSB

LEA SI,ARRAY2
MOV CL,04H
MOV CH,00H
MOV DI,BP
CLD
REP MOVSB


MOV DI,0500H
MOV SI,0000H
MOV CL,04H
L1: MOV AL,[BX+SI]
    ADD AL,[BP+SI]
    MOV [DI],AL
    INC SI
    INC DI
    LOOP L1
    HLT
    
ARRAY1 DB 02,03,07,09
ARRAY2 DB 097H,031H,0A2H,087H
ret


