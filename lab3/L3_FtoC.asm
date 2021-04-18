
org 100h

jmp start

var2 db 41

start:
mov cl,var2
sub cl,032D
mov al,05D
imul cl
mov cl,09D
idiv cl
mov [si],al

hlt

ret




