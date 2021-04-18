org 100h

jmp start

var1 dw 08D

start:       

mov si,00000H
mov cx,var1
mov ax,00001H
mov dx,00000H

l1: mul cx
    loop L1
    
mov [si],ax

hlt

ret





