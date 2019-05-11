;8. Write a program for the following pseudocode: 
;CASE AX 
;5< Print “ Less than 5 ” 
;5= Print “ Equal to 5 ”
;5> Print “ Greater than 5 ”
 
.stack 100h
.model small
.data
m1 dw "Input numbers: $"
m2 dw "Less than 5$"
m3 dw "Equal to 5$"
m4 dw "Greater than 5$"
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
    jl case1
    je case2
    jg case3
    
    case1:
    
    lea dx,m2
    mov ah,9
    int 21h 
         jmp stop
         
         
    case2:
    
    lea dx,m3
    mov ah,9
    int 21h 
         jmp stop
    
    
    case3:
    
    lea dx,m4
    mov ah,9
    int 21h 
         jmp stop
    
    
           stop:
    main endp

end main