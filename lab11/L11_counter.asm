
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

#start=led_display.exe#
#make_bin#
name "led"

mov ax,0
out 199,ax 
mov cx,100
    delay1:
    loopnz delay1

mov ax, 00001h
out 199, ax
mov cx,100
    delay2:
    loopnz delay2

mov ax, 0FFFFh
out 199, ax
mov cx,100
    delay3:
    loopnz delay3

;Eternal loop to write values to port:

mov ax, 0000h
x1:
    out 199, ax  
    mov cx,100
    delay:
    loopnz delay
    inc ax
    jmp x1   
         

hlt

ret




