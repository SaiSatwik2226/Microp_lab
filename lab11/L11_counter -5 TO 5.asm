
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

#start=led_display.exe#
#make_bin#
name "led"

;Eternal loop to write values to port:

mov ax, 0FFFBh
x1:
    out 199, ax
    inc ax
    CMP AX,6
    JL x1   
         

hlt

ret




