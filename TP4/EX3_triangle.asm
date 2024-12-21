
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start
                             
       x db ?
       y db ?
       z db ?                   
       msg1 DB "Entrer la valeur l'hypotenuse:$"
       msg2 DB "Entrer la valeur du premier ARC:$"  
       msg3 DB "Entrer la valeur du deuxieme ARC:$" 
       
       msg4 DB "Triangle Equilateral$"
       msg5 DB "Triangle Rectongle$"  
       msg6 DB "Triangle Isocele rectongle$"     
       msg7 DB "Triangle Simple$"  
       msg8 DB "Triangle Isocele$"

start:       
      
main proc
    
    mov bx,seg msg1
    lea si,msg1
     
    call afficher_chaine
    call lire_caractere 
    mov x,al
    
    call afficher_caractere
    call retour_chariot   
    
    
    
    ;------------------------------
    mov bx,seg msg2
    lea si,msg2
     
    call afficher_chaine
    call lire_caractere 
    mov y,al
    
    call afficher_caractere
    call retour_chariot
    
    
    
    ;-------------------------------
    mov bx,seg msg3
    lea si,msg3
     
    call afficher_chaine
    call lire_caractere 
    mov z,al
    
    call afficher_caractere
    call retour_chariot
    
    
    mov dx,0000h
    mov ax,0000h
    mov al,y
    sub al,48
    mov bl,z 
    sub bl,30h
    cmp al,bl
    je etiq1
    jne etiq2
    
    
    
etiq1:mov dl,x
      sub dl,30h
      cmp al,dl
      je message1
      ;mov ax,0000h
      ;sub al,30h 
      mul al 
      mov dx,ax 
      mov ax,0000h 
      mov al,z
      sub al,30h
      mul al 
      add dx,ax 
      mov al,x
      sub al,30h
      mul al
      cmp ax,dx
      je message2
      jne message3
      ;jmp finmain
      
      
etiq2: 
      mul al 
      mov dx,ax 
      mov ax,0000h 
      mov al,z
      sub al,30h
      mul al 
      add dx,ax 
      mov al,x
      sub al,30h
      mul al
      cmp ax,dx 
      je message4
      jne message5
          
      
      
;s'il est equilateral      
message1:mov bx,seg msg4
         lea si,msg4 
         call afficher_chaine
         call retour_chariot
         jmp finmain 


;s'il est isocele rectangle         
message2:mov bx,seg msg6
         lea si,msg6 
         call afficher_chaine
         call retour_chariot
         jmp finmain  
         
         
         
;s'il est isocele         
message3:mov bx,seg msg8
         lea si,msg8 
         call afficher_chaine
         call retour_chariot
         jmp finmain 
         
         
;triangle rectongle         
message4:mov bx,seg msg5
         lea si,msg5
         call afficher_chaine
         call retour_chariot
         jmp finmain 
         
         
;s'il est simple     
message5:mov bx,seg msg7
         lea si,msg7
         call afficher_chaine
         call retour_chariot
    
       
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




