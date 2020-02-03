  jmp start
  num1 db 5
  num2 db 6
      
       
start:
 mov ch,num2
  loop:
    add al,num1
    dec ch
    cmp ch,0
    jnz loop



