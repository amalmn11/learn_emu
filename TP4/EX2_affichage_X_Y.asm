
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start
                             
       x db ?
       y db ?                      
       msg1 DB 'Entrer la valeur de X:$'
       msg2 DB 'Entrer la valeur de Y:$'    

start:
     
     
main PROC  
    
     mov bx,seg msg1
     lea si,msg1
     
     call afficher_chaine
     call lire_caractere  
     mov x,al
     
     call afficher_caractere 
     call retour_chariot
                            
     
     
     mov bx,seg msg2
     lea si,msg2
     
     call afficher_chaine
     call lire_caractere  
     mov y,al
     
     call afficher_caractere 
     call retour_chariot                       
     
     
     ret

main ENDP 

     jmp fin 
     


afficher_chaine proc
    
    mov ah,9h  
    mov ds,bx
    mov dx,si
    int 21h 
     
    ret

afficher_chaine endp 

lire_caractere proc
    
    mov ah,00h  
    int 16h  
    ret

lire_caractere endp    


afficher_caractere proc
    
    mov ah,6h 
    mov dl,al
    int 21h 
     
    ret

afficher_caractere endp        
                      
                      
                      
retour_chariot proc
    
    mov ah,6h 
    mov dl,0Ah
    int 21h   
    mov ah,6h 
    mov dl,0Dh
    int 21h 
    ret

retour_chariot endp




fin:
ret




