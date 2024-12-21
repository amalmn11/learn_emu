
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 


start: 

    mov [200h],00h  
    mov [201h],00h
    mov [202h],00h
    mov [203h],00h
    mov [204h],00h
    mov [205h],00h
    mov [206h],00h
    mov [207h],00h
    mov [208h],00h  
    mov [209h],00h
    
    mov bl,00h
    mov si,200h
    
    
boucle:cmp [si],00h
       je etiq 
       inc si
       ;cmp si,209h
       ;jbe boucle 
       jmp compare
       jmp fin
    
    
etiq:inc bl 
     inc si
     ;cmp si,209h
     ;jbe boucle
     jmp compare
     
compare:cmp si,209h
        jbe boucle    
         
         
fin:mov [400h],bl

ret
    

ret




             