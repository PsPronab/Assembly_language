.stack 100h
.model small
.data
s dw "enter small letter: $"
p dw "converted capital is: $"
.code
main proc
    ;scan print
    mov ax,@data
    mov ds,ax
    lea dx,s
    mov ah,9
    int 21h
     
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
    lea dx,p
    mov ah,9
    int 21h 
    
    ;convert
    sub bl,32
    int 21h
    
    ;print
    mov ah,2 
    mov dl,bl
    int 21h
    
     
    
    main endp