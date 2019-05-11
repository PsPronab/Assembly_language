.stack 100h
.model small
.data
 fmsg dw "input upper case letter: $"   
 smsg dw "lower case letter: $" 
 v1 db ?
.code
main proc 
        mov ax,@data
        mov ds,ax 
        
        lea dx,fmsg
        mov ah,9
        int 21h 
        
        mov ah,1
        int 21h 
        mov v1,al 
  
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h  
        
        lea dx,smsg
        mov ah,9
        int 21h
   
        mov ah,2
        add v1,20h
        mov dl,v1
        int 21h 
     
    
   
    main endp
end main 


    



