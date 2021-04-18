
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;Values in decimal:
;03, 04, 05, 08
;result 05
;SI register location: 1100H
;Result location: 1200H

cld

lea si,a1
mov dx,1100h 
mov di,dx
mov cl,04h
rep movsb

mov ax,0000h
mov si,1100h
mov cx,0004h
mov dx,0000h

addnum:
    add al,[si]
    inc si
    inc dx
    cmp cx,dx
    jnz addnum
    
div cl

mov [1200h],al

hlt

a1 db 03d,04d,05d,08d 

ret




