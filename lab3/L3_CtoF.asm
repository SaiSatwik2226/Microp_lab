
org 100h

jmp start

var1 db -25

start:

mov cl,var1
mov al,09D
imul cl
mov cl,05D
idiv cl
add al,032D
mov [si],al

hlt

ret




