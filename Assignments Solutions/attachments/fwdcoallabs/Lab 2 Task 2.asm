; Task 2
; Part a)
         jmp start:
    v1 dw  10
    v2 dw  20
    v3 dw  30
    v4 dw  40
    v5 dw  50      
    start:    
    lea bx,v3
    mov ax,[bx-2] ; v2 = bx - 2
    mov bx,v3+2 ; v4 = bx + 2
    mov cx,v3+4 ; v5 = bx + 4
    add bx,cx
    mov [v3-2],bx 
    ; Part b)
              
    mov ax,v3-4  ;v1 = v3 - 4