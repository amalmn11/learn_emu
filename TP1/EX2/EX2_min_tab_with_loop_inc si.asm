                     
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
    
    
    mov si,200h
    mov bl,[si]
    mov cl,0Ah
    
boucle:
    inc si           
    cmp [si],bl
    ja etiq 
    loop boucle
    jmp fin
    
    
etiq:mov bl,[si]
     loop boucle 
         
         
fin:mov [400h],bl


    

ret




