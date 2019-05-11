;1. Write down a code “Hello World!” Print with appropriate message
 
.stack 100h
.model small
.data
m dw "Hello World!$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,m
    mov ah,9
    int 21h
    
    main endp

end main