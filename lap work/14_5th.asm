.stack 100h
.model small
.data
.code
main proc 
         
        mov ah,2
        mov dl,"?"
        int 21h 
      
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
        
        call star 
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call newline
        call star
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call star
        call newline
        call star
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call star
        call newline
        call star
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call star
        call newline
        call star
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call star
        call newline
        call star 
        call space
        call space
        call space
        mov ah,2
        mov dl,bl
        int 21h
   
        mov ah,2
        mov dl,cl
        int 21h 
    
        mov ah,2
        mov dl,bh
        int 21h
       
        call space
        call space
        call space
        call star
        call newline
        call star 
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call star
        call newline
        call star 
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call star
        call newline
        call star 
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call star
        call newline
        call star 
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call space
        call star
        call newline
        call star 
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
     
    main endp 
newline proc
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h 
        ret
        newline endp

star proc
        mov ch,"*"
        mov ah,2
        mov dl,ch
        int 21h
        ret
        star endp 
space proc 
        mov dh," "
        mov ah,2
        mov dl,dh
        int 21h
        ret
        space endp
    

end main 

