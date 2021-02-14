.model small
.stack 100h
.data
    msg db 'Sajib Adhikary!'
    msg2 db 0ah,0dh, 'I am a Simple & innocent Programmer'
    msg3 db 0ah,0dh, 'http://adovasoft.com $'
    
.code
main proc
    
    mov ax,@data
    mov ds,ax  
    
    lea dx,msg
    mov ah,9
    int 21h
    
main endp                                               
end main