.stack 100h
.model small
.data
 v1 dw '2'
 v2 db ?   
 mas1 equ 'c'

.code
main proc 
     
        mov ax,@data
        mov ds,ax
     
        mov ah,2
        mov dx,v1 
        int 21h 
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h  
        
        mov v2,"2"
          
        mov ah,2
        mov dl,v2 
        int 21h 
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        mov ah,2
        mov dl,mas1 
        int 21h 
    
     
    main endp

end main 



