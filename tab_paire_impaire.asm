
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
    
jmp start 

     T db 4,8,16,3,1,7,12,3,0,17,19,20,-1   
              
     T1 db 10 dup (?)
     
     T2 db 10 dup (?)  
       
     
     
     

start:  
     mov si,di 
     add di,1
     mov si,
     mov ax,seg T
     mov ds,ax
     mov ax,0000h
     
    lea si,T 
    lea di,T1
    lea bx,T2  
    
boucle:cmp [si],-1
    je fin
    mov al,[si]
    call ispaire
    
    cmp cl,01h
    je paire 
    mov al,[si]
    mov [bx],al
    inc si
    inc bx
    jmp boucle
    jmp fin 
    
paire:mov al,[si]
      mov [di],al
      inc si
      inc di
      jmp boucle  
  
   
ispaire proc
    
    mov dl,2
    div dl
    cmp ah,00h
    je etq 
    
    mov cl,00h
    jmp finpp
    
etq:mov cl,01h 


finpp:ret
  
ispaire endp

fin:

ret








