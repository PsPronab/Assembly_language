.stack 100h
.model small
.data
.code
main proc 
         cmp ax,0
         jl p 
            
         mov ah,2
         mov dx,ax
         int 21h
         
       p:
         neg ax 
         
         mov ah,2
         mov dx,ax
         int 21h
         
         
        
    main endp
end main 

