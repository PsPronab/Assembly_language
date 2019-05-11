.stack 100h
.model small
.data 
.code
main proc
 
        mov ah,1
        int 21h 
        mov bl,al
        
        mov ah,2
        add bl, 21h
        mov dl,bl
        int 21h
  
      
    main endp 

end main
    
    
    
    
    
    
    