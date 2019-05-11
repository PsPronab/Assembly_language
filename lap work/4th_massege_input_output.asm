.stack 100h
.model small
.data
 fmsg dw "scan value: $"   
 smsg dw "print value: $"
.code
main proc 
        mov ax,@data
        mov ds,ax 
        
        lea dx,fmsg
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
    
    lea dx,smsg
    mov ah,9
    int 21h 
    
    mov ah,2
    mov dl,bl 
    int 21h   
   
    main endp
end main 





    