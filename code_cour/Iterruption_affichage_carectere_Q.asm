
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

 
boucle:mov ah,00h
       int 16H
       cmp al,'Q'
       je etiq
       jmp boucle    
       
       ;afficher
etiq:mov ah,06h
     mov dl,al
     int 21H  

fin:

ret




