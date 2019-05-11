;19. Write a program that read character until a space is read. 
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
           jmp p
            stop:
    main endp

end main