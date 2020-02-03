  ; Task 1 
    jmp start:
    
    A db 10
    B db 20
    C db 30
    D db 40
    E db 50
        ;C= A+B-C+E+A-D+D-E+C+B
    start:
     mov ah,A
     mov al,B
     add ah,al
     mov al,C
     sub ah,al
     mov al,E
     add ah,al
     mov al,A
     add ah,al
     mov al,D
     sub ah,al 
     mov al,D
     add ah,al
     mov al,E
     sub ah,al
     mov al,C
     add ah,al 
     mov al,B
     add ah,al
     ret