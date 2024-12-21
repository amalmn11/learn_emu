
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 

     x db 6
     y db 12

start:
    
     mov al,x
     mov bl,y
     call PGCD
     jmp fin
      
      
PGCD PROC
     
boucle:cmp al,bl
      jne etiq1
      jmp finp
     
     
etiq1:cmp al,bl
      ja trait1
      jb trait2
      jmp boucle
       
trait1:sub al,bl 
       jmp boucle 
       
       
trait2:sub bl,al 
       jmp boucle
            
finp:ret     
    
PGCD ENDP 

fin:
  
ret




