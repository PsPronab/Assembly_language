;14. Write a program which reads two numbers subtract two numbers and show the result in the new line
 
.stack 100h
.model small
.data
m1 dw "Input two numbers: $"  
m2 dw "subtract results: $" 


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
    sub bl,cl
    add bl,30h
    mov dl,bl
    int 21h 
         
         

           
    main endp

end main