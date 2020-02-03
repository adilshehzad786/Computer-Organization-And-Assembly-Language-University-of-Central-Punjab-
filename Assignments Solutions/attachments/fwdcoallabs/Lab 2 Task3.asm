    jmp start
    
    Varx dd 23456834h
    Vary dd 11112222h
    varz dd
    
start:

     mov ax,[varx]
     mov bx,[varx+2]
     mov cx,[varx+4]
     mov dx,[varx+6]
     add ax,cx
     add bx,dx
     

ret