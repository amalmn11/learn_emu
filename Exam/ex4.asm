
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
   
   
jmp start

      NBRClient dw ?        
      
      TPages db 20,12,120,2,45,-1
      
      TSpiral db 1,0,0,1,0  
      
      TPrix db ?
      
      PrixSpiraltmp db  ? 
      
      PrixCopietmp  db  ?  
      

                                
                                
start:cmc 
       call procedurepp  
       jmp fin
                     
                     
                     


;---------------------------------------------
procedurepp proc
    
    mov al,10
    mov bl,2
    div bl   
    ret

procedurepp endp
;---------------------------------------------


NBRClientproc proc
               
    mov ax,seg TPages 
    mov ds,ax        
    Lea si,TPages  
    
boucle:cmp [si],-1
    je finNBR
    inc NBRClient
    inc si
    jmp boucle

finNBR:ret        
     
NBRClientproc endp  
  
  
  
;---------------------------------------------

Prixspiralproc proc
      
      cmp al,0
      je finp1
      
      add PrixSpiraltmp,10 
      
finp1:ret  
     
Prixspiralproc endp 
                    
  
;---------------------------------------------       
                             
                           
Prixcopieproc proc
   
      
      cmp al,40
      jbe etiq10
      jmp etiq11
      
      
etiq10:mov PrixSpiraltmp,40 
      jmp finp11 
      


etiq11:sub al,40 
       mov cl,al
       
       add al,40
       ;mov ax,0000h     
      
       mov PrixSpiraltmp,al 
       
       
      
finp11:ret  
     
Prixcopieproc endp 
                    


;---------------------------------------------                    
                                        
fin:   
ret
    