;12. Write a program which read a character and if it’s a ‘y’ or ‘Y’ prints it otherwise terminate the program. 
 
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
    
    cmp bl,"Y"
    je s
    
    cmp bl,"y"
    je  s
     
       jmp stop
    
    s:
    mov ah,2
    mov dl,bl
    int 21h 
         jmp stop
         

           stop:
    main endp

end main