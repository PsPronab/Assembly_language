;2. Write down a code to Scan a character and print it in new line with appropriate message.
 
.stack 100h
.model small
.data
m dw "Input character: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,m
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    main endp

end main