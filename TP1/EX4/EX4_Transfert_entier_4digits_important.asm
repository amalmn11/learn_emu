              
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 


start: 
    ;rules
    ;1-dans le chargement de memoire je dois sauter par 2 dans les adresses
    ;je dois incrementer si par 2
    ;je dois incrementer di par 2
    mov [200h],1110h  
    mov [202h],0033h
    mov [204h],0013h
    mov [206h],991Dh
    mov [208h],29E3h
    mov [20Ah],10EEh
    mov [20Ch],00FFh
    mov [20Eh],3E13h
    mov [210h],0D0Ch  
    mov [212h],1122h
    mov [214h],3333h
    ;20A va etre pas transfere donc c'est bien
    
                 
    mov si,200h
    mov di,400h
    mov ax,0000h
      
boucle:mov ax,[si]
       mov [di],ax 
       add si,2
       add di,2 
       cmp si,212h
       jbe boucle
    

ret








