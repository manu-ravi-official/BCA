.MODEL SMALL
.STACK 100h

.DATA
    num DB 01010001B  ; Initial value (binary 0101 0001)

.CODE
MAIN:
    MOV AX,0
    MOV AX, @DATA    ; Initialize data segment
    MOV DS, AX

    ; Load the value from memory into AL register
    MOV AL, [num]

    ; Increment AL by 00000010B (binary 2)
    ADD AL, 00000010B  ; Add 2 in binary (00000010B)

    ; Store the result back into the memory location
    MOV [num], AL

    ; Exit program
    MOV AH, 4Ch        ; Exit function
    INT 21h            ; DOS interrupt

END MAIN
