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
mov dx,01100h 
mov di,dx
mov cx,05h
rep movsw


mov ax,0000h
mov si,1100h
mov cx,0005h
mov dx,0000h

addnum:
    add ax,[si]
    inc si 
    inc si
    inc dx
    cmp cx,dx
    jnz addnum
      
      
mov dx,0000h
div cx

mov [1200h],ax

hlt

a1 dw 00123h,01234h,01023h,01456h,02045h 

ret





