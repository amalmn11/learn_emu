
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt     

org 100h


jmp start 

    
    compteur db 00h 
    chaine db 'Ceci est un test !$'
      
      
start:

      mov bx,0020h
      mov ax,seg chaine
      mov ds,ax 
      lea si,chaine
      
boucle:cmp [si],'$'
      jne etiq1
      jmp fin
      
etiq1:inc compteur
      inc si                                                                
      jmp boucle     

fin:mov dl,compteur
    mov [bx],dl

ret



