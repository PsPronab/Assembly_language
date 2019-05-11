;22. Write a program for the following input output:
 
;Input: 23 
;Output: 23
 
;Input: 41 
;Output: 14 
 
.stack 100h
.model small
.data 
m1 dw "Input: $"
m2 dw "Output: $"
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
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    lea dx,m2
    mov ah,9
    int 21h
       
    cmp bl,cl
    jl p
    
     mov ah,2
     mov dl,cl
     int 21h
     
     mov ah,2
     mov dl,bl
     int 21h
        jmp stop
      
     p:
     mov ah,2
     mov dl,bl
     int 21h
     
     mov ah,2
     mov dl,cl
     int 21h
        jmp stop
        
            stop:
    main endp

end main