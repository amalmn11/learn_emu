
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 
       
      ;declaraction d'une variable   
      A DB 10h

start: 
         
    mov ax,SEG A     
    mov ds,ax
    ;mov bx,OFFSET A 
    lea bx,A
    
            
    mov cx,11h        
    mov [bx],11H
ret




