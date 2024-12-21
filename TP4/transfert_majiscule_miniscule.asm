
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start
                             
       x db ?            
       msg1 DB "Entrer une phrase:$"
       msg db "la phrase ne miniscule est :$"
       msg2 db 20 dup (?)
       msg3 db 20 dup (?)
       

start:       
      
main proc
    
         mov bx,seg msg1
         lea si,msg1
         call afficher_chaine
         ;call retour_chariot
         
         
         mov si,offset msg2
         
boucle:call lire_caractere 
       cmp al,'$'
       jne etiq
       mov [si],'$'
       jmp continue  
         
         
etiq:mov [si],al 
     call afficher_caractere 
     inc si
     jmp boucle
     
     
continue:mov si,offset msg2 
         mov di,offset msg3
boucle11:mov al,[si] 
         add al,32
         mov [di],al
         inc si
         inc di 
         cmp [si],'$'
         jne boucle11 
         mov [di],'$'
         jmp afficher
         
         
afficher:call retour_chariot
         mov si,offset msg
         call afficher_chaine 
         mov si,offset msg3 
         call afficher_chaine   
    
       
finmain:ret    
main endp 

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




