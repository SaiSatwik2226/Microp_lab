
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    ;MOV CL,05H
    MOV CL,010H
    MOV CH,00H
	LEA SI,array1
	MOV DI,03000H 
    CLD
    REP MOVSB
    
    MOV SI,03000H
    ;MOV DI,02004H
    MOV DI,0200FH
    ;MOV CL,05h
    MOV CL,010H
    MOV CH,00H
L1: cld
    lodsb
    std
    stosb
    loop L1
    int 21h
ret

array db 00,01,02,03,04
array1 db 00h,01h,02h,03h,04h,05h,06h,07h,08h,09h,0Ah,0Bh,0Ch,0Dh,0Eh,0Fh


