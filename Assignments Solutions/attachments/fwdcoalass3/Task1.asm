mov si,0x1452
    mov bx,0xAB10
    mov di,bx
loop1:
    lodsb
    cmp al,0
    je end
    stosb 
    inc cx 
    jmp loop1
end:
    ret