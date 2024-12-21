                     
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 


start: 

    mov [200h],0Bh  
    mov [201h],00h
    mov [202h],0Ah
    mov [203h],01h
    mov [204h],20h
    mov [205h],10h
    mov [206h],00h
    mov [207h],33h
    mov [208h],0Dh  
    mov [209h],1Eh
    ;20A va etre pas transfere donc c'est bien
    mov [20Ah],11h
                 
    mov si,200h
    mov di,400h
    mov al,00h
      
boucle:mov al,[si]
       mov [di],al 
       inc si
       inc di 
       cmp si,209h
       jbe boucle
    

ret




