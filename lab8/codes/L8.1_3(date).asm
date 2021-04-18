; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
;date
MOV AH,2AH
INT 21H
;get system date;
;return: CX = year (1980-2099). DH = month. DL = day. AL = day of week
ret




