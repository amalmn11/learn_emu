
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
   
      NBRClient dw ?        
      
      TPages db 20,12,120,2,45,-1
   
jmp start



   
   
start:  
      
 proc     
     
 endp 
   
fin:   
ret




