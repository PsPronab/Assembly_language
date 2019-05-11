.stack 100h
.model small
.data
     
 msg1 dw "Enter fast number: $" 
 msg2 dw "Enter second number: $"
 msg3 dw "Addition: $" 
 msg4 dw "Subtruction: $" 
 msg5 dw "What you want?? [add: press->a or sub: press->s] : $"
.code
main proc 
        
        mov ax,@data
        mov ds,ax
     
        lea dx,msg1
        mov ah,9
        int 21h
           
        mov ah,1
        int 21h 
        mov bl,al
     
        call newline
        
        lea dx,msg2
        mov ah,9
        int 21h 
        
        mov ah,1
        int 21h 
        mov cl,al
    
        call newline
         
        lea dx,msg5
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        
      
        cmp al,"a"
        je g 
        
        sub bl,cl
          
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
          
        lea dx,msg4
        mov ah,9
        int 21h
      
          
        mov ah,2
        add bl,30h
        mov dl,bl 
        int 21h 
         
        jmp END_IF
         
        g:       
        add bl,cl
           
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h 
           
        lea dx,msg3
        mov ah,9
        int 21h
          
        mov ah,2
        sub bl,30h
        mov dl,bl 
        int 21h 
        
         END_IF: 
        
      
    main endp 

newline proc
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h 
        ret
        newline endp

end main


