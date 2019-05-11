;21. Write a program that read character until ‘Y’ is read using Repeat. 
.stack 100h
.model small
.data
.code
main proc
    p:
      mov ah,1
      int 21h
       
      cmp al,"Y"
      je stop
           jmp p
            stop:
    main endp

end main