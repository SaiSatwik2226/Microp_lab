
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

#start=Traffic_Lights.exe#  

name "traffic"

mov ax, all_red
out 4, ax

mov si, offset situation

next: mov ax, [si]
      out 4, ax

;for 5s 4C4B40
;for 1s 1E8480
mov cx, 004Ch
mov dx, 4B40h

mov ah, 86h
int 15h

add si, 2
cmp si, sit_end
jb next
mov si, offset situation
jmp next

situation dw 0000_1000_0110_0001b 
s1 dw 0000_0011_0000_1100b
s2 dw 0000_0100_1001_0010b
s3 dw 0000_0011_0000_1100b
s4 dw 0000_0100_1001_0010b      

;s2 dw 0000_0110_1001_1010b
;s3 dw 0000_1000_0110_0001b
;s4 dw 0000_0100_1101_0011b

sit_end = $
all_red equ 0000_0010_0100_1001b

ret




