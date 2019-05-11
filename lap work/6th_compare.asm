.stack 100h
.model small
.data
 fmsg dw "scan value: $"   
 smsg dw "grtter value: $"  

.code
main proc 
        mov ax,@data
        mov ds,ax  
        
        lea dx,fmsg
        mov ah,9
        int 21h   
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,1
        int 21h 
        mov bl,al  
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
    
        mov ah,1
        int 21h 
        mov cl,al
                
     
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h  
    
        lea dx,smsg
        mov ah,9
        int 21h
     
        cmp bl,cl
        jg g
      
        mov ah,2
        mov dl,cl
        int 21h
    
        jmp END_IF
    
        g:
        mov ah,2
        mov dl,bl
        int 21h
       
        END_IF: 
        
 
    main endp

end main 


    




