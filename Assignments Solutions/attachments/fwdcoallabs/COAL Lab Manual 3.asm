; Q # 1
;a)
;mov ax,16
;mov bx,4
;sub bx,ax
;b)
;mov ax,4
;mov bx,4
;sub ax,bx
;c)	
;mov ax,-5 
;d)
;mov ax,-5
;mov bx,-6
;add ax,bx
 ; Q # 2
 ;i)             
 ;   mov ax,0x1254
 ;   mov bx,0x0FFF
 ;1)
 ;	Add ax,0xEDAB  
 ;2)
 ;	Add ax,bx
 ;	Add bx,0xF001
 ;	Mov ax,0xFFFE
 ;	Mov bx,2
 ;	Add ax,bx
 ;Q # 3 
  ;mov ax,0xFF
  ;mov bx,0x01
  ;add bx,ax
; Q # 4  
  ;1.         
       data dw 56
  	mov bx,data 
  ;2.
	mov bx,[data]
