                     
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 


start: 

    mov [200h],0Bh  
    mov [201h],00h
    mov [202h],0Fh
    mov [203h],01h
    mov [204h],20h
    mov [205h],10h
    mov [206h],00h
    mov [207h],33h
    mov [208h],50h  
    mov [209h],1Eh
    mov [20Ah],11h 
    
    
    mov [400h],01h  
    mov [401h],0Ah
    mov [402h],02h
    mov [403h],01h
    mov [404h],0Fh
    mov [405h],10h
    mov [406h],00h
    mov [407h],33h
    mov [408h],0Ah  
    mov [409h],00h
    mov [40Ah],00h 
    
    mov si,200h
    mov di,400h
    mov bx,500h
    
boucle:cmp si,209h
       jbe etiq
       jmp fin
      
      
      
etiq:mov al,[si]
     mov dl,[di]
     sub al,dl
     mov [bx],al 
     inc bx
     inc si
     inc di
     jmp boucle
     
         
    
                 


         
fin:

ret




