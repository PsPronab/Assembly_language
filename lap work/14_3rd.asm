.stack 100h
.model small
.data
     
 msg1 dw "Enter fast number: $" 
 msg2 dw "Enter second number: $" 
 msg3 dw "Subtruction: $"
 msg4 dw "Enter <Esc> to Exit..... $" 
 
.code
main proc
    
        mov ax,@data
        mov ds,ax 
        
        lea dx,msg4
        mov ah,9
        int 21h 
  
    wait:
        mov ah,0
        int 16h
        
        cmp al,27 
        
        call newline
        je end_if
       
        call newline
       
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
         
        cmp bl,cl
        jg p
        jl n
  
        p: 
         
        lea dx,msg3
        mov ah,9
        int 21h
       
           
        sub bl,cl
          
        mov ah,2
        add bl,30h
        mov dl,bl 
        int 21h
        
        jmp wait
        
        n:
            
        lea dx,msg3
        mov ah,9
        int 21h
       
           
        sub cl,bl
        
         
        mov ah,2
        add bh,2Dh
        mov dl,bh 
        int 21h
         
        mov ah,2
        add cl,30h
        mov dl,cl 
        int 21h
        
        jmp wait
       
         
            end_if:
      
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
