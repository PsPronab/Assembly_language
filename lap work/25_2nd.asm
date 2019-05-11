.stack 100h
.model small 
.data

.code
main proc 
    xor cx,cx
    mov ah,1
    int 21h
    
    while_:
     cmp al,0dh
     je pop_
     push ax
     inc cx
     int 21h
     jmp while_
     
    pop_:
    
    pop dx
    mov ah,2
    int 21h 
     loop pop_ 

     main endp

end main
