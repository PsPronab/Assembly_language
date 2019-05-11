.stack 100h
.model small
.data
.code
main proc
    
    mov cx,80
    
    mov ah,2
    mov dl,"*"
    
    s:
    int 21h
    loop s
    
       
     
    main endp 

end main 




