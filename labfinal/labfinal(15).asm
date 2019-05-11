;15. Write a program that read alphabet randomly and print it in a alphanumeric order in the next line.
.stack 100h
.model small
.data

m1 dw "Input : $" 
m2 dw "Output: $"

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
   
    while:
    lea dx,m1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov cl,al
    
    call newline
    
    cmp bl,cl
    jg p
    
    lea dx,m2
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    call newline
    
    jmp while
    
    p:
    lea dx,m2
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    call newline
    
    jmp while
 
    main endp

    Newline proc
        
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    ret
    
    Newline endp
    
end main