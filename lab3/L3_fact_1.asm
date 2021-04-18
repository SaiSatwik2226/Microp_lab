
org 100h

jmp start

var1 dw 03D

start:       

mov si,00000H
mov bx,var1
mov ax,00001H
mov dx,00000H

l1: mul bx
    sub bx,01H
    jnz l1
    
mov [si],ax

hlt

ret




