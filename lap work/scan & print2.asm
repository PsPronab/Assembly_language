.stack 100h
.model small
.data
.code
main proc 
    ;scan
    mov ah,1 
    int 21h
    mov bl,al
           
    ;newline
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    ;print
    mov ah,2 
    mov dl,bl
    int 21h 
    
    main endp