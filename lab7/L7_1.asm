
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    ;MOV CL,07H
    MOV CL,10H
    MOV CH,00H
	LEA SI,array1
    MOV DI,04000H 
    CLD
    REP MOVSB

    MOV SI,04000H
    ;MOV CL,07H
    MOV CL,10H
    MOV CH,00H
    ;MOV DI,04006H
    MOV DI,0400FH
L1: MOV AL,[SI]
    MOV BL,[DI]
    XCHG [SI],BL
    XCHG [DI],AL
    INC SI
    DEC DI
    INC CH
    DEC CL
    CMP CL,CH
    JGE L1
    INT 21H
ret

array db 0Ah, 0Bh, 0Dh, 0Fh, 0Eh, 01h, 07h
array1 db 00h,01h,02h,03h,04h,05h,06h,07h,08h,09h,0Ah,0Bh,0Ch,0Dh,0Eh,0Fh