                     
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 


start: 

    mov [200h],11h  
    mov [201h],11h
    mov [202h],11h
    mov [203h],11h
    mov [204h],11h
    mov [205h],11h
    mov [206h],11h
    mov [207h],11h
    mov [208h],11h  
    mov [209h],11h
    mov [20Ah],11h     
   
    
    mov si,200h
    mov di,300h
    mov ax,0000h
    mov bl,33h
               
      
etiq:mov al,[si]
     mul bl
     mov [di],ax
     inc si
     add di,2
     cmp si,209h   
     jbe etiq
            

         
fin:

ret




