.stack 100h
.model small
.data
.code
main proc 
        
        
        
        mov ah,1
        int 21h 
        mov bl,al 
         
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
         
         
       
        mov ah,2
        mov cl,31h
        mov dl,cl
        int 21h
               
        mov ah,2
        sub bl,11h
        mov dl,bl
        int 21h
        
     
    main endp

end 