
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

       
 
boucle:mov ah,00h
       int 16H
       cmp al,'Q'
       je fin   
       
       ;afficher
       mov ah,06h
       mov dl,al
       int 21H
       jmp boucle 

fin:

ret




