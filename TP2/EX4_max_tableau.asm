
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt     

org 100h


jmp start 

    
    tab db 12h,9h,50h,60h,59h 
      
      
start:
      mov dx,0000h
      mov ax,seg tab
      mov ds,ax 
      lea si,tab 
      mov bx,si
      add bx,5
      mov dl,[si]
      
      
boucle:inc si
       cmp si,bx
       jb etiq1
       jmp fin
      
etiq1:cmp [si],dl
      ja etiq2                                                              
      jmp boucle 
      
      
etiq2:mov dl,[si]
      jmp boucle    

fin:

ret






