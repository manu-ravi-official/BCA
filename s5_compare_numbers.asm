.MODEL SMALL
.STACK 100H
.DATA
.CODE
    MAIN PROC
        MOV AL, 11001010B
        MOV BL, 11001000B 
        
        CMP AL, BL
        JAE CLEAR_AL
        XOR BL, BL  
        JMP EXIT  
        
    CLEAR_AL:
        XOR AL, AL  
        
    EXIT:
        MOV AH, 4CH
        INT 21H           
    
    MAIN ENDP
END MAIN
