[org 0x0100]

mov SI,AR1
mov BX,AR2
mov DI,AR3

mov byte[counter],0

loop: 
mov AX,[SI]
mov DX,[BX]

add AX,DX
mov [DI],AX

INC SI
INC BX
INC DI
INC byte[counter]

cmp byte[counter],5
JNZ loop

mov ax,0x4c00
int 0x21

AR1: DW 0xABCD,0x9010,0xDEA7,0x6CD3,0xF01B
AR2: DW 0XEEC5,0X4510,0X4D3F,0X4954,0XFF47
AR3: DW 0,0,0,0,0
counter: DB 0
