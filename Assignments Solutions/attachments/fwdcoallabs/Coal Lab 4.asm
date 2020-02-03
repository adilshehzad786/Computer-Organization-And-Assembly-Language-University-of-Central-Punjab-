;LEA SI, VEC1	;Loads the effective address of array VEC1 in SI
;LEA BX, VEC2	;Loads the effective address of array VEC2 in SBX
;LEA DI, VEC3	;Loads the effective address of array VEC3 in DI
;MOV CX, 4

;L1:
;MOV AL, [SI]
;ADD AL, [BX]
;MOV [DI], AL

;INC SI;		;adds '1' to the destination operand. 
;INC BX;
;INC DI;
;DEC CX;		;Subtracts '1' from the destination operand. 
;JNZ L1; 	;Repeats executing instructions from label L1 until CX becomes zero. 

;RET
;VEC1 DB 1, 2, 5, 6
;VEC2 DB 3, 5, 6, 1
;VEC3 DB ?, ?, ?, ?


;mov al,8
;mov ah,5
;mov ch,ah
;mov ah,al
   
;L1:
;add al,ah
;mov bh,al
;dec ch
;cmp ch,1
;jnz L1
;ret

 
;lea si,Array
;lea di,sum
;mov cx,7

;L1:
;add al,[si]
;mov [di],ah
;inc si
;dec cx
;cmp cx,0
;jnz L1
;ret

;Array db 0xAB,0xCD,16h,61h,17h,64h,30h 
;sum dw 0
  
  jmp start
  Arr1 dw 9,8,6,34,17,25,59,100
  sum dw 0
  
  start:
    lea si,Arr1
    lea di,sum
    
   
    mov bx,[si] 
    add sum,bx
    add sum,8  
    mov bx,[si+2] 
    add sum,bx
    add sum,7
    mov bx,[si+4] 
    add sum,bx
    add sum,6  
    mov bx,[si+6] 
    add sum,bx
    add sum,8
    mov bx,[si+8] 
    add sum,bx
    add sum,4  
    mov bx,[si+10] 
    add sum,bx
    add sum,9
    mov bx,[si+12] 
    add sum,bx
    add sum,8  
    mov bx,[si+14] 
    add sum,bx
    add sum,7 