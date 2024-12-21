org 100h


jmp start


    
 
start: 
    
    
    mov [200h],00h  
    mov [201h],00h
    mov [202h],00h
    mov [203h],00h
    mov [204h],00h
    mov [205h],00h
    mov [206h],00h
    mov [207h],00h
    mov [208h],00h  
    mov [209h],00h 
    ;mov [20Ah],00h
    ;mov [20Bh],00h  
    ;mov [20Ch],00h 
    ;mov [20Dh],00h 
    
    
    mov bl,00h
    mov cl,0Ah
    mov si,200h
    
    
boucle:
    
    cmp [si],00h 
    je etiq
    inc si
    loop boucle
    jmp fin
    
    
etiq:
    
    inc bl
    inc si
    loop boucle


fin:mov [400h],bl
    



ret