.stack 100h
.model small
.data

.code
main proc
    mov ah,2
    mov dl,"h"
    int 21h
    main endp
end main