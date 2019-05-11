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
         
        cmp bl ,cl  ; bl gater than 
        jg g
        
        cmp cl,bh   ; cl gater than
        jg p 
        
        mov ah,2
        mov dl,bh   ; bh print
        int 21h
           jmp end
        
        p:
        mov ah,2    ; cl print
        mov dl,cl
        int 21h
           jmp end
        
        
        g:
        cmp bl,bh   ; bl gater than
        jg j
        
        j:     
        mov ah,2    ; bl print
        mov dl,bl
        int 21h
           jmp end
           
           
           end:
     
    main endp

end 