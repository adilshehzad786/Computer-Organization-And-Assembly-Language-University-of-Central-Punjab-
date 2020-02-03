     jmp start
    var1 dd 0XABCDEFAB
    var2 dd 0XAAAABBCC  
    swap dd 0  
    swap2 dd 0
               
    start:   
     
     mov ax,[var1+2]        
     mov swap,ax
     mov ax,[var2+2]
     mov swap2,ax
     mov ax,swap
     mov [var2+2],ax
     mov ax,swap2
     mov [var1+2],ax  
     
     mov ax,var1        
     mov swap,ax
     mov ax,var2
     mov swap2,ax
     mov ax,swap
     mov var2,ax
     mov ax,swap2
     mov var1,ax  
     