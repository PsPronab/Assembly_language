.stack 100h
.model small
.data
 fmsg dw "please input a character: $" 
 smsg dw "congratulation! $"  
 tmsg dw "sorry!$"    
 

.code
main proc 
        mov ax,@data
        mov ds,ax  
        
        lea dx,fmsg
        mov ah,9
        int 21h   
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,1
        int 21h 
        mov bl,al  
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
    
       
              
        cmp bl,"A"
        jl END_IF
   
                      
        cmp bl,"Z"
        jg   END_IF

        
        mov ah,2
        mov dl,bl 
        int 21h
        
      END_IF:     
           
    main endp

end main 


    

