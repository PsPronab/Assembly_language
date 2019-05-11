.model small
.stack  100h
.data
.code
main proc
    mov cx,10
    mov ah,2
    mov dl,"*"
    
    p:
    int 21h
    loop p
    
    main endp
end main




