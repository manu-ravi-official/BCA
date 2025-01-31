.MODEL SMALL
.STACK 100H
.DATA
    msg1 DB 'Enter a character: $'   ; Message to prompt user
    msg2 DB 0DH, 0AH, 'You entered: $'  ; Message for output

.CODE
MAIN PROC
    ; Initialize DS
    MOV AX, @DATA
    MOV DS, AX

    ; Display message 1
    MOV DX, OFFSET msg1
    MOV AH, 09H
    INT 21H

    ; Read a single character from user
    MOV AH, 01H
    INT 21H
    MOV BL, AL  ; Store entered character in BL

    ; New line
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    INT 21H

    ; Display message 2
    MOV DX, OFFSET msg2
    MOV AH, 09H
    INT 21H

    ; Print the entered character
    MOV DL, BL
    MOV AH, 02H
    INT 21H

    ; Exit program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
