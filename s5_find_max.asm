.model small
.stack 100h
.data
values db 25h,3fh,18h,4ah;
.code
main:
mov ax,@data
mov ds,ax
mov al,values
mov cX,3;
lea si,values
inc si
find_max:
mov bl,[si]
cmp al,bl
jae skip
mov al,bl
skip:
inc si
loop find_max
mov ah,4ch
int 21h
end main