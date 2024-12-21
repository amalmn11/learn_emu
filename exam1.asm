
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
    
jmp start 

     T db 4,8,16,3,1,7,12,3,0,17,19,20,-1

start:  


    lea si,T
    mov ax,0000h
    mov al,[si]
    ;inc si

vboucle:inc si
        cmp [si],-1
        jne etq
        jmp fin  


etq:;mov bl,[si]
    cmp al,100 
    ja fin
    ADD al,[si]
;    inc si 
    jmp vboucle  
    
    
 fin:

ret




