
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h


jmp start 
      
      
start:
      call fct
      jmp fin
      

principale PROC     
      mov ax,0000h        
      mov cl,0Ah
        
boucle:add ah,cl
       loop boucle    
    
      ret
principale ENDP 


resultat PROC
              
      mov si,300h
      mov [si],ah         
      ret
      
resultat ENDP

fct PROC
    
     PUSHA
     call principale
     call resultat
     POPA
     ret
fct ENDP

fin:

ret











