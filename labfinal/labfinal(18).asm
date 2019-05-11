;18. Write a program for the following input output:

;Input: PRONAB BISWAS. 
;Output: PB 

.stack 100h
.model small
.data

m1 dw "Input : $"
m2 dw "Output : $" 


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
    mov bl,al
    
    while:
    
    cmp al,0dh
    je q 
    
    cmp al,' '
    je p
    
      jmp ps
    
    ps:
    int 21h
     jmp while
    
   
    
   
    
    p:
    int 21h
    push ax
    inc cx
     jmp while
     
    q:
    call newline 
    lea dx,m2
    mov ah,9
    int 21h
       jmp s
    
    s:
    
    
    mov ah,2
    mov dl,bl
    int 21h 
    
     jmp pop_ 
    
    pop_:
    pop dx
    mov ah,2
    int 21h
    loop pop_
 
     jmp stop
   
 
    stop:

    main endp

    Newline proc
        
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    ret
    
    Newline endp
    
end main 