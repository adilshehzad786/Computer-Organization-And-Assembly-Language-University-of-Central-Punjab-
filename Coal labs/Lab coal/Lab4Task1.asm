[org 0x0100]

mov DI,Array1
mov SI,0

loop:
 
mov AL,[DI]
cmp AL,100

JA L1
JB L2

INC DI
INC SI
cmp SI,10
JNZ loop
JMP EXIT

L1: 
mov byte[DI],5
INC DI
INC SI
cmp SI,10
JNZ loop
JMP EXIT

L2:
mov byte[DI],10
INC DI
INC SI
cmp SI,10
JNZ loop
EXIT:

mov ax,0x4c00
int 0x21


Array1: DB 0X67,0X76,0XF8,0XB9,0XF4,0XF7,0XF5,0XEF,0X7F,0X73
