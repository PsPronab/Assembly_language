;6. Write a program to convert a lowercase letter to uppercase letter with appropriate message
 
.stack 100h
.model small
.data
m1 dw "Input lowercase letter: $"
m2 dw "Output uppercase letter: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,m1
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
    
    lea dx,m2
    mov ah,9
    int 21h
    
    mov ah,2
    sub bl,20h
    mov dl,bl
    int 21h
    
    
    main endp

end main