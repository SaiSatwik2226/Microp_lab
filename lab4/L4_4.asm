
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

ORG 100h

CLD
LEA SI, a1
LEA DI, a2
MOV CX, 5
REP MOVSW

RET

a1 DB 1,2,3,4,5
a2 DB 5 DUP(0)



