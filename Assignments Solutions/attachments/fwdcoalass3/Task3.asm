jmp start:
str1 db 'Hellooooooooooooooooooo Worllllld!',0
str2 db 'The length of this string is=',0 
str3 db 'charachters.',0

getLength:
mov bp,sp
mov si,[bp+2]

loop1:
lodsb
cmp al,0
je close
inc cx
jmp loop1
close: 
ret

start:
lea si,str1
push si
call getLength
pop si
mov ax,0xb800
mov es,ax
mov ah,0xAC
mov di,0
lea si,str2
pop bp

loop2:
mov al,[si]
inc si
cmp al,0
je loop3          
stosw
jmp loop2 

loop3:
mov ax,cx
mov cx,10
div cl
mov bl,ah
mov ah,0xAC
add al,0x30
stosw
mov al,bl
add al,0x30
stosw
mov al,' '
stosw
lea si,str3

loop4:
lodsb
cmp al,0
je endpro
stosw
jmp loop4

endpro:

.exit
