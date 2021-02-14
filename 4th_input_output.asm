.model small
.stack 100h
.data
    msg db 'Enter your first character: $'
    msg2 db 0ah,0dh, 'Enter your Second character: $'
    msg3 db 0ah,0dh, 'Your Entered characters: $'
    
.code
main proc
    
    mov ax,@data
    mov ds,ax  
    
    ;String Output
    lea dx,msg  
    mov ah,9        
    int 21h
    
    ;First Char input
    mov ah,1
    int 21h   
    mov bl,al
    
    ;String Output
    lea dx,msg2
    mov ah,9
    int 21h
    
    ;Second Char input
    mov ah,1
    int 21h
    mov bh,al
    
    ;String Output
    lea dx,msg2
    mov ah,9
    int 21h
    
    ;New Line
    mov ah,2
    mov dl,0ah
    int 21h
    
    ;carrige return
    mov ah,2
    mov dl,0dh
    int 21h
    
    ;First Charecter Output
    mov ah,2
    mov dl,bl
    int 21h

    ;Second Charedter Output
    mov ah,2
    mov dl,bh
    int 21h
    
    
main endp                                               
end main