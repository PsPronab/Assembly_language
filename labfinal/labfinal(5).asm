;5. Write a program to print Hello World horizontally and vertically with appropriate message.  with appropriate message
 
.stack 100h
.model small
.data
m1 dw "Hello World!$" 
m2 dw "H$"
m3 dw "e$"
m4 dw "l$"
m5 dw "o$"
m6 dw "W$"
m7 dw "r$"
m8 dw "d$"
m9 dw "!$"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,m1
    mov ah,9
    int 21h 
    
    call newline 
    
    lea dx,m2
    mov ah,9
    int 21h 
    
    call newline
    
    lea dx,m3
    mov ah,9
    int 21h
    
    call newline
    
    lea dx,m4
    mov ah,9
    int 21h
     
    call newline
     
    lea dx,m4
    mov ah,9
    int 21h
    
    call newline
    
    lea dx,m5
    mov ah,9
    int 21h
    
    call newline
    call newline
    
    lea dx,m6
    mov ah,9
    int 21h
    
    call newline
    
    lea dx,m5
    mov ah,9
    int 21h
    
    call newline
    
    lea dx,m7
    mov ah,9
    int 21h
    
    call newline
    
    lea dx,m4
    mov ah,9
    int 21h
     
    call newline
    
    lea dx,m8
    mov ah,9
    int 21h
    
    call newline 
    
    lea dx,m9
    mov ah,9
    int 21h
    
    
    
    main endp
newline proc
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    ret
    newline endp

end main