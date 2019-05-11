;13. Write a program which reads two numbers add the two numbers and show the results in the new line with appropriate messages. 
 
.stack 100h
.model small
.data
m1 dw "Input two numbers: $"  
m2 dw "addition results: $" 


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
    
    mov ah,2 
    add bl,cl
    sub bl,30h
    mov dl,bl
    int 21h 
         
         

           stop:
    main endp

end main