;20. Write down a code all character Print but ‘ Space ‘ terminate.
.stack 100h
.model small
.data
.code
main proc
      p:
      mov ah,1
      int 21h
       
      cmp al," "
      je stop
      
      mov ah,2
      mov dl,al
      int 21h
       jmp p
           
            stop:
    main endp

end main