
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


jmp start 
      
     A db 02h
     N db 04h
      
start:
      
     call principale
     jmp fin 



fctmul PROC
              
     
      mul Al        
      ret
      
fctmul ENDP



      
principale PROC  
    
    mov al,A
    mov bl,01H
    mov cl,N
    
    
    cmp cl,00h
    je etiq 
    
boucle:call fctmul
       loop boucle
       jmp finP
    
etiq:mov ax,01h
     jmp finP
     
          
finP:ret    
principale ENDP 

fin:

ret