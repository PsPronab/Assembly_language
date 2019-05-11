.stack 100h
.model small
.data 

Final_Exit dw '  ',10,13
dw '                                              ',10,13
dw '                             |===============|',10,13
dw '                             | ^  Confarm! ^ |',10,13
dw '                             |===============|',10,13
dw ' ',10,13                      
dw ' ',10,13
dw ' ',10,13                                                             ;Fuad
dw ' ',10,13
dw ' ',10,13
dw ' ',10,13                  
dw '                             Press Esc To Quit',10,13
dw '                        Press Enter to start again$',10,13

ExitError dw 10,13,10,13,"Please Press Ente Or Esc Key on yor Key-Bord$"
;==============================================================================================

  m1 dw "                         $" ;Nusrat start
  m2 dw ""DIU Blood Doner Finder"$"
  m3 dw ""Blood Group List"$"
  m4 dw "->(1) For A+ve$"
  m5 dw "->(2) For B+ve$"
  m6 dw "->(3) For AB+ve$"
  m7 dw "->(4) For O+ve$"
  m8 dw "->(5) For A-ve$"
  m9 dw "->(6) For B-ve$"
  m10 dw "Choose Option ( 1 - 6 ) :$"
  m11 dw "Do You Want To Continue? ( 1 / 0 ) : $"
  m12 dw "Invalid Input! $"
  
  m13 dw "Name         : $"
  m14 dw "ID           : $"
  m15 dw "Department   : $"
  m16 dw "Phone Number : $"
  
  
  m17 dw "Pronab Biswas$" 
  m18 dw "171-15-1396$"
  m19 dw "CSE$"
  m20 dw "01571721050$"
  m20_1 dw "Blood Group  : A+ve$"
  
  m21 dw "Fahim$" 
  m22 dw "171-15-1414$"
  m23 dw "CSE$"
  m24 dw "01624134067$"
  m24_1 dw "Blood Group  : B+ve$" 
  
  m25 dw "Fuad$" 
  m26 dw "171-15-1402$"
  m27 dw "CSE$"
  m28 dw "01799898037$"
  m28_1 dw "Blood Group  : AB+ve$" 
  
  m29 dw "Resal$" 
  m30 dw "171-15-1419$"
  m31 dw "CSE$"
  m32 dw "0198403904$"
  m32_1 dw "Blood Group  : O+ve$"
  
  m33 dw "Nusrat$" 
  m34 dw "171-15-1405$"
  m35 dw "CSE$"
  m36 dw "01654969466$"
  m36_1 dw "Blood Group  : A-ve$"
  
  m37 dw "Rupa$" 
  m38 dw "171-15-1405$"
  m39 dw "CSE$"
  m40 dw "01521489390$"
  m40_1 dw "Blood Group  : B-ve$" ;Nusrat End
  
      
  
.code
main proc 
     mov ax,@data     ;Pronob start
        mov ds,ax
        
        
        ;<<<<<<<<<<<<<<Title Box Start >>>>>>>>>>>>>>>>>
        Start1:
        call clr_scr
         
        call newline
        call clumstar ;clum line this call function 
                          ;fast colum
     
     ;=====================================================
        call newline
        call star
       
        lea dx,m1         ;2nd colum
        mov ah,9
        int 21h 
        
        call star
     ;====================================================
        call newline
        call star
      
        lea dx,m2          ;3rd colum
        mov ah,9
        int 21h 
        
        call space
        call star
     ;====================================================
        call newline 
        call star
                
        lea dx,m1          ;4rh colum
        mov ah,9
        int 21h 
        
        call star
     ;=====================================================
        call newline     
        call clumstar ;clum line this call function 
                          ;5th colum 
        call newline
        
        
        ;<<<<<<<<<<<<<<Title Box End>>>>>>>>>>>>>>>>>>
        
        ;<<<<<<<<<<<<Menu/List Box Start>>>>>>>>>>>>>>
        
        running:          ;continue the case
        call newline
        call newline
        
        call clumstar ;clum line this call function 
     ;=====================================================
        call newline
        call space
        call space
        call space
        call space
        
                               ;doner list find
        
        lea dx,m3
        mov ah,9
        int 21h
     ;=================
        call newline
        call clumstar ;clum line this call function  
        
     ;=================
        call newline
        call newline
          
        lea dx,m4
        mov ah,9
        int 21h
     ;=================
        call newline
          
        lea dx,m5
        mov ah,9
        int 21h
     ;=================
        call newline
                            
        lea dx,m6
        mov ah,9                        ;blood group's name
        int 21h
     ;=================
        call newline
          
        lea dx,m7
        mov ah,9
        int 21h
     ;=================
        call newline
          
        lea dx,m8
        mov ah,9
        int 21h
     ;=================
        call newline
          
        lea dx,m9
        mov ah,9
        int 21h
     ;=================
        r:
        call newline
        call newline
        call clumstar   ;clum line this call function
         
        ;<<<<<<<<<<<<Menu/List Box End>>>>>>>>>>>>>>     
         
        call newline
        call newline          
        
        lea dx,m10
        mov ah,9             ;which blood need
        int 21h                                          ;Pronob end
        
        
    mov ah,1     ;Input for choose your option          ;Fahim Start
    int 21h
    
    
    
        
       
    mov bl,al    ;Input move to bl
    
    cmp bl,"1"           
    je first
    
    cmp bl,"2"           
    je scound
    
    cmp bl,"3"           
    je third
    
    cmp bl,"4"           
    je fourth 
    
    cmp bl,"5"           
    je fifth 
    
    cmp bl,"6"           
    je sixth
    
    jmp  invalid2    ;Jmp to invalid2 if we input  invalid value
     
  ;=================================================================
     
    first:
    
        call newline
        call newline
        call clumstar   ;clum line this call function
        
        call newline
        call newline    
        
        lea dx,m13
        mov ah,9
        int 21h 
        
        lea dx,m17
        mov ah,9
        int 21h
        call newline
                                         
        lea dx,m14
        mov ah,9                         ;A+
        int 21h 
        
        lea dx,m18        
        mov ah,9
        int 21h
        call newline

        lea dx,m15
        mov ah,9
        int 21h 
        
        lea dx,m19
        mov ah,9
        int 21h
        call newline
        
        lea dx,m16
        mov ah,9
        int 21h
         
        lea dx,m20
        mov ah,9
        int 21h
        call newline
        
        lea dx,m20_1
        mov ah,9
        int 21h 
        
        call newline
        call newline 
                
              jmp continue
              
  ;=========================================================
                   
    scound:
    
        call newline
        call newline
        call clumstar   ;clum line this call function
        
        call newline
        call newline    
        
        lea dx,m13
        mov ah,9
        int 21h 
        
        lea dx,m21
        mov ah,9
        int 21h
        call newline
        
        lea dx,m14
        mov ah,9
        int 21h                        ;B+
        
        lea dx,m22       
        mov ah,9
        int 21h
        call newline

        lea dx,m15
        mov ah,9
        int 21h 
        
        lea dx,m23
        mov ah,9
        int 21h
        call newline
        
        lea dx,m16
        mov ah,9
        int 21h
         
        lea dx,m24
        mov ah,9
        int 21h
        call newline
        
        lea dx,m24_1
        mov ah,9
        int 21h 
        
        call newline 
        call newline
           
              jmp continue                ;Fahim End
              
  ;====================================================            
                        
     third:                                ;Rasel Start
     
        call newline
        call newline
        call clumstar  ;clum line this call function
        
        call newline
        call newline   
        
        lea dx,m13
        mov ah,9
        int 21h 
        
        lea dx,m25
        mov ah,9
        int 21h
        call newline
        
        lea dx,m14
        mov ah,9
        int 21h 
        
        lea dx,m26        
        mov ah,9                         ;AB+
        int 21h
        call newline

        lea dx,m15
        mov ah,9
        int 21h 
        
        lea dx,m27
        mov ah,9
        int 21h
        call newline
        
        lea dx,m16
        mov ah,9
        int 21h
         
        lea dx,m28
        mov ah,9
        int 21h
        call newline
        
        lea dx,m28_1
        mov ah,9
        int 21h
        
        call newline
        call newline 
         
              jmp continue
              
   ;================================================ 
               
     fourth:
      
        call newline
        call newline
        call clumstar ;clum line this call function
        
        call newline
        call newline    
        
        lea dx,m13
        mov ah,9
        int 21h 
        
        lea dx,m29
        mov ah,9
        int 21h
        call newline
        
        lea dx,m14
        mov ah,9
        int 21h                          ;O+
        
        lea dx,m30        
        mov ah,9
        int 21h
        call newline

        lea dx,m15
        mov ah,9
        int 21h 
        
        lea dx,m31
        mov ah,9
        int 21h
        call newline
        
        lea dx,m16
        mov ah,9
        int 21h
         
        lea dx,m32
        mov ah,9
        int 21h
        call newline 
        
        lea dx,m32_1
        mov ah,9
        int 21h 
        
        call newline
        call newline 
            
              jmp continue 
              
   ;================================================== 
              
      fifth:
      
        call newline
        call newline
        call clumstar  ;clum line this call function
        
        call newline 
        call newline   
        
        lea dx,m13
        mov ah,9
        int 21h 
        
        lea dx,m33
        mov ah,9
        int 21h
        call newline
        
        lea dx,m14
        mov ah,9
        int 21h 
        
        lea dx,m34        
        mov ah,9                         ;A-
        int 21h
        call newline

        lea dx,m15
        mov ah,9
        int 21h 
        
        lea dx,m35
        mov ah,9
        int 21h
        call newline
        
        lea dx,m16
        mov ah,9
        int 21h
         
        lea dx,m36
        mov ah,9
        int 21h
        call newline
        
        lea dx,m36_1
        mov ah,9
        int 21h 
        
        call newline 
        call newline
   
              jmp continue                  ;Rasel End
              
   ;====================================================          
              
      sixth:
                                            ;Fuad Start=========================================
        call newline
        call newline
        call clumstar  ;clum line this call function
        
        call newline
        call newline    
        
        lea dx,m13
        mov ah,9
        int 21h 
        
        lea dx,m37
        mov ah,9
        int 21h
        call newline
        
        lea dx,m14
        mov ah,9
        int 21h 
        
        lea dx,m38        
        mov ah,9                      ;B-
        int 21h
        call newline

        lea dx,m15
        mov ah,9
        int 21h 
        
        lea dx,m39
        mov ah,9
        int 21h
        call newline
        
        lea dx,m16
        mov ah,9
        int 21h
         
        lea dx,m40
        mov ah,9
        int 21h
        call newline
        
        lea dx,m40_1
        mov ah,9
        int 21h 
        
        call newline 
        call newline
            
              jmp continue
              
  ;===============================================================                
               
   continue:
       
        call clumstar   ;clum line this call function 
        call newline
        call newline
        
        lea dx,m11 
        mov ah,9
        int 21h 
        
        mov ah,1        
        int 21h
        
        mov cl,al       
        
        cmp cl,'1'      
        je running:
        
        cmp cl,'0'  ;<<<<<<<<<<<<<problem>>>>>>>>>>>>>      
        je exit 
        
        jmp invalid1  ;Jmp to invalid1 if we input  invalid value 
        
   ;===============================================================
        
      invalid1:
      
        call newline
        call newline
        call clumstar   ;clum line this call function
        call newline
        call newline
        
        lea dx,m12
        mov ah,9
        int 21h 
        
        call newline
        call newline
        
            jmp continue
          
   ;================================================================
        
        
      invalid2:
       
        call newline
        call newline
        call clumstar   ;clum line this call function
        call newline
        call newline
        
        lea dx,m12 
        mov ah,9
        int 21h
        
        jmp r 
    ;==================
    
    EXIT:
    
    mov ah,09h
    mov dx, offset Final_Exit
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,027
    je sure_exit
    cmp al,013
    je Start1
    
    jne Error3
    ;==========================
    Error3:
    
    lea dx,ExitError
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    cmp al,027
    je sure_exit
    cmp al,013
    je Start1
    
    jne Error3
    ;==========================
    
     main endp
     
clr_scr proc 
        mov ah,0
        mov al,3
        int 10h        
        ret
        clr_scr endp       ;Fuad End
    ;===============================================================================

newline proc 
    
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
         
        ret 
        newline endp

star proc 
    
        mov ah,2
        mov dl,219
        int 21h
    
        ret      
        star endp

space proc
    
        mov ah,2
        mov dl," "
        int 21h
        ret      
    
        space endp 

clumstar proc 
    
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        call star
        
        ret
        clumstar endp  

       sure_exit:
     
end main