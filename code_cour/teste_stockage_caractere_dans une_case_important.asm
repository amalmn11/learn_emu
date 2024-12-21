
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

    nbr db 10 DUP 'TB','BB'
    lea di,nbr 
    mov [di],'TB' 
    inc di
    
    mov [di],'cd' 
ret




