; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 


start: 

    mov [200h],1111h  
    mov [202h],1111h
    mov [204h],1111h
    mov [206h],1111h
    mov [208h],1111h
    mov [20Ah],1111h
    mov [20Ch],1111h
    mov [20Eh],1111h
    mov [210h],1111h  
    mov [212h],1111h
    mov [214h],1111h     
     
    
    mov [300h],3333h  
    mov [302h],3333h
    mov [304h],3333h
    mov [306h],3333h
    mov [308h],3333h
    mov [30Ah],3333h
    mov [30Ch],3333h
    mov [30Eh],3333h
    mov [310h],3333h  
    mov [312h],3333h
    mov [314h],3333h
    
    mov si,200h
    mov di,300h 
    mov bx,400h
    mov ax,0000h
    
     
     
boucle:cmp si,212h   
       jbe etiq
       jmp fin    
              
      
etiq:mov ax,[si]
     mov dx,[di] 
     mul dx
     mov [bx],ax 
     add bx,2  
     mov [bx],dx
     add bx,2 
     add si,2 
     add di,2 
     jmp boucle

         
fin:

ret




 