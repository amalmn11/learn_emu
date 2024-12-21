                     
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 


start: 

    mov [300h],-0Bh  
    mov [301h],00h
    mov [302h],0Ah
    mov [303h],-01h
    mov [304h],20h
    mov [305h],10h
    mov [306h],00h
    mov [307h],-33h
    mov [308h],0Dh  
    mov [309h],-1Eh
    

    mov al,00h
    mov bl,00h
    mov dl,00h
    mov cl,0Ah
    
    mov si,300h 
               
               
boucle:cmp [si],00h
       jg Etiq1 
       jl Etiq2 
       inc dl
       inc si 
       loop boucle
       jmp fin
       
       
       
Etiq1:inc al
      inc si 
      loop boucle
      jmp fin
      
      
Etiq2:inc bl
      inc si 
      loop boucle
      
fin:mov [200h],al
    mov [201h],bl
    mov [202h],dl   

ret




