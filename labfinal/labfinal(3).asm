;3. Write a program to reverse a string with appropriate message. 
 
.stack 100h
.model small
.data
m1 dw "Input string: $"
m2 dw "Reverse string: $"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,m1
    mov ah,9
    int 21h
    
    
    xor cx,cx
    mov ah,1
    int 21h
   
    
    while:
    cmp al,0dh
    
   
    je p
    
    push ax
    inc cx
    int 21h
      jmp while 
      
    p:
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    lea dx,m2
    mov ah,9
    int 21h
          jmp pop_
    
    pop_: 
    
    
    
    pop dx
    mov ah,2
    int 21h
     loop pop_
    
    
    main endp

end main