jmp start:
str db 'The use of the trap flag has been deferred till now. The three flags not used for mathematical operations are the direction flag, the interrupt flag and the trap flag. The direction and interrupt flags have been previously discussed',0

start:
lea si,str

loop1:
lodsb
cmp al,0
je exit
cmp al,'a'
je loop2
jmp loop1

loop2:
mov al,[si]
cmp al,'n'
je loop3
jmp loop1

loop3:
mov al,[si+1]
cmp al,'d'
je loop4
jmp loop1

loop4:
inc cx
add si,2
jmp loop1

exit: