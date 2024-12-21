org 100h


jmp start 

    
    compteur db 0
      
      
start:

      mov cl,0Ah
      
boucle:inc compteur
       loop boucle
      
      
    

fin:

ret