
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
         
    MOV CX,array[0]
    INC CX
	LEA SI,array
    MOV DI,0500H 
    CLD
    REP MOVSW
    
    MOV SI, 0500h
    MOV CL, [SI]	
	DEC CL	
    
L1:	
    MOV SI, 0500h	
	MOV BX, [SI]
	DEC BX	
	INC SI
	INC SI	
	
L2:	
    MOV AX, [SI]	
	INC SI
	INC SI	
	CMP AX, [SI]	
	JC L3	
	XCHG AX, [SI]	
	DEC SI
	DEC SI
	XCHG AX, [SI]	
	INC SI
	INC SI	
	
L3:	
    DEC BX	
	JNZ L2	
	DEC CX	
	JNZ L1	
	HLT
	
array dw 0005H,0A200H,02300H,06600H,01200H,07D00H
                   
ret




