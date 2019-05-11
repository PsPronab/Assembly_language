.stack 100h
.model small
.data
.code
main proc
    
    p:
    mov ah,1 
    int 21h
   
    cmp al,"Y" 
   
    je end 
    jmp p 
  
        end:
    main endp 

end main 



