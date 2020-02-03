jmp start
str1 db 'we love Pakistan',0

start:
lea si,str1
mov ax,0xb800
mov es,ax
mov ah,0xAC
add di,0

loop1:
lodsb
cmp al,0
je loop2
stosw
cmp di,160
je loop4
jmp loop1

loop2:
mov si,1
sub di,34
mov al,0x20
stosw
jmp loop1

loop4:
sub di,34
mov al,' '

loop5:
cmp di,160
je loop6
stosw
jmp loop5

loop6:
mov di,0
jmp loop1

ret