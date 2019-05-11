;16. Write a program to print 20 Star “ * ”.
 
.stack 100h
.model small
.data
.code
main proc
    mov cx,20
    
    mov ah,2
    mov dl,"*"
    
    p:
    int 21h
    loop p
           
    main endp

end main