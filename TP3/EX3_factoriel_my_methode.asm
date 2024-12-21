
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


jmp start 
      
     x db 5
  
start:
        
        
    mov al,x
    call factoriel
    jmp fin
    
    
factoriel proc 
    
    mov cl,al
    mov al,01 
    
    
boucle:;call fctMul 
       mul cl
       loop boucle
    
       ret
       
factoriel endp    
    
    
   
;proc fctmul
    ;fctMul proc
   
    
    ;mul cl
    
    ;ret 
    
;fctMul endp  

fin:

ret