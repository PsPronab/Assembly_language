;11. Write a program to find out a number is in the given range or not. If the number is between 5 to  9 then print “ Between ranges ” otherwise print “ Not in the range ”. 
 
.stack 100h
.model small
.data
m1 dw "Input character: $"
m2 dw "Between ranges$"
m3 dw "Not in the range$"
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
    
    
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    cmp bl,"5"
    jl s
    
    cmp bl,"9"
    jg  s
    
    lea dx,m2
    mov ah,9
    int 21h 
         jmp stop
    
    s:
    lea dx,m3
    mov ah,9
    int 21h 
         jmp stop
         

           stop:
    main endp

end main