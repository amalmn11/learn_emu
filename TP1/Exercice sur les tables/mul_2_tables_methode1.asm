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
     
    
    mov [300h],33h  
    mov [301h],33h
    mov [302h],33h
    mov [303h],33h
    mov [304h],33h
    mov [305h],33h
    mov [306h],33h
    mov [307h],33h
    mov [308h],33h  
    mov [309h],33h
    mov [30Ah],33h
    
    mov si,200h
    mov di,300h 
    mov bx,400h
    mov ax,0000h
    
               
      
etiq:mov al,[si]
     mov dl,[di] 
     mul dl
     mov [bx],ax
     inc si
     inc di
     add bx,2
     cmp si,209h   
     jbe etiq
            

         
fin:

ret




 