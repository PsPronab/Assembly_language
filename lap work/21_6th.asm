.stack 100h
.model small
.data
.code
main proc 

        mov ah,1
        int 21h 
        mov bl,al
        
        mov ah,1
        int 21h 
        mov cl,al
        
        
        mov ah,1
        int 21h 
        mov bh,al 
         
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
         
        cmp bl ,cl  
        jl g
        
        cmp cl,bh   
        jl p 
        
        mov ah,2
        mov dl,bh   
        int 21h
           jmp end
        
        p:
        mov ah,2    
        mov dl,cl
        int 21h
           jmp end
        
        
        g:
        cmp bl,bh   
        jl j
        
        j:     
        mov ah,2    
        mov dl,bl
        int 21h
           jmp end
           
           
           end:
     
    main endp

end 