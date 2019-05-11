.stack 100h
.model small
.data
     
.code
main proc
       
   
        cmp bl,30h
        jl case1
        jg case2
        je case3
          
          
        case1:
         
        mov bx,"-1"
        jmp end_if
          
        case2:
        
        mov bx,"1"
        jmp end_if
        
        case3:
        
        mov bx,"0"
        jmp end_if
         
         END_IF: 
        
      
    main endp 

end main


