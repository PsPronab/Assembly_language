;10. Write a program which read a character and print it if it’s a lowercase letter. 
 
.stack 100h
.model small
.data
m1 dw "Input character: $"
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
    
    cmp bl,"a"
    jl stop
    
    cmp bl,"z"
    jg  stop
    
   
    mov ah,2
    mov dl,bl
    int 21h 
         jmp stop
         

           stop:
    main endp

end main