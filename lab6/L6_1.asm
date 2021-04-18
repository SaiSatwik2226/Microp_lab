
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
         
    MOV CL,array2[0]
    INC CL
    MOV CH,00H
	LEA SI,array2
    MOV DI,0500H 
    CLD
    REP MOVSB
    
    MOV SI, 0500h
    MOV CL, [SI]	
	DEC CL	
    
L1:	
    MOV SI, 0500h	
	MOV CH, [SI]
	DEC CH	
	INC SI	
	
L2:	
    MOV AL, [SI]	
	INC SI	
	CMP AL, [SI]	
	JC L3	
	XCHG AL, [SI]	
	DEC SI
	XCHG AL, [SI]	
	INC SI	
	
L3:	
    DEC CH	
	JNZ L2	
	DEC CL	
	JNZ L1	
	HLT
	
array db 05H,0A2H,023H,066H,012H,07DH
array2 db 05H,099H,012H,056H,045H,036H
                   
ret




