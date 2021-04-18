
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.data
msg db 'BITS-PILANI$'

.code
mov ax,@data
mov ds,AX
mov dx,offset msg
mov ah,09h
int 21h 
hlt

ret



