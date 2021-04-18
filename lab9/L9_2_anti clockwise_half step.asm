
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;ANTI-CLOCKWISE HALF STEP

org 100h

#start=stepper_motor.exe#

jmp start
datain db 0000_0100b
       db 0000_0110b
       db 0000_0010b
       db 0000_0011b
       
START: MOV BX, offset datain
       MOV SI,0h
       
NEXT_STEP:
WAIT:  IN AL,07H
       TEST AL,10000000b
       JZ WAIT
       MOV AL,[BX][SI]
       OUT 7,AL
       INC SI 
       CMP SI,4
       JC NEXT_STEP
       MOV SI,0
       JMP NEXT_STEP        

ret




