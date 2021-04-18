
org 100h

jmp start

var1 db 50
var2 db 41

start:

mov cl,var1
mov al,09D
imul cl
mov cl,05D
idiv cl
add al,032D
mov [si],al

mov cl,var2
sub cl,032D
mov al,05D
imul cl
mov cl,09D
idiv cl
mov [si],al

hlt

ret




