.stack 100h
.model small 
.data
m1 dw "input:$"
p2 dw "number of 1 is:$"
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
    
    while_:
     cmp al,0dh
     je pop_
      
     cmp al," "
     je p 
     
      jmp ps
      
     ps:
     int 21h
     jmp while_
     
     p:
     inc cl
     jmp ps
     
    pop_: 
    call newline 
    
    lea dx,p2
    mov ah,9
    int 21h 
    
    mov ah,2
    add cl,30h
    mov dl,cl
    int 21h
        jmp end
          end:
     
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

