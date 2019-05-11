  ;17. Write a program to print the following figure:
; * 
; ** 
; *** 
; **** 
 
.stack 100h
.model small
.data
.code
main proc
   call star
   
   call newline
   call star
   call star
   
   call newline
   call star
   call star
   call star 
   
   call newline
   call star
   call star
   call star
   call star
       jmp  stop
        
    main endp
star proc
    mov ah,2
    mov dl,"*"
    int 21h
    ret
    star endp

newline proc
    mov ah,2
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    ret
    newline endp 

         stop:
end main