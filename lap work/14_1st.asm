.stack 100h
.model small
.data
     
 msg1 dw "Enter input number: $" 
 msg2 dw "your input is less than 5 $"
 msg3 dw "your input is equal than 5 $" 
 msg4 dw "your input is greater than 5$"
 msg5 dw "Enter <Esc> to Exit..... $"
.code
main proc 
    
        mov ax,@data
        mov ds,ax 
        
        lea dx,msg5
        mov ah,9
        int 21h 
      
    wait:
        mov ah,0
        int 16h
        
        cmp al,27
        
        call newline
        je end_if
         
        call newline
 
        lea dx,msg1
        mov ah,9
        int 21h
           
        mov ah,1
        int 21h   
        mov bl,al
        
        call newline
     
        cmp bl,35h
        jl case1
        jg case2
        je case3
          
          
        case1:
         
        lea dx,msg2
        mov ah,9
        int 21h 
        
        jmp wait
          
        case2:
           
        lea dx,msg4
        mov ah,9
        int 21h
         
        jmp wait 
        
        case3:
        
        lea dx,msg3
        mov ah,9
        int 21h  
        
        jmp wait
         
           END_IF: 
        
      
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

