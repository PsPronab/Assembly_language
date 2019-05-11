;23. Write a program to print the number of ‘X’ from a string sequence
.stack 100h
.model small
.data
 m1 dw "Input String: $"
 m2 dw "Number of'X' in String: $" 
 
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    lea dx,m1
    mov ah,9
    int 21h
    
    xor cl,cl
    
    mov ah,1
    int 21h
    
    while:
     cmp al,0dh
     je pop_
     
     cmp al,"X"
     je p
      jmp ps
      
     ps:
     int 21h
      jmp while
     
     p:
     inc cl
       jmp ps
    
    pop_:
       mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       
       lea dx,m2
       mov ah,9
       int 21h
    
       mov ah,2
       add cl,30h
       mov dl,cl
       int 21h
          main endp

end main
        
        