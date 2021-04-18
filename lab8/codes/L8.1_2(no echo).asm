
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AH,07H
INT 021H
MOV [0501H],AL
;stored in ASCII format and since AH=07 value won't be echoed
ret