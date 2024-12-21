org 100h

jmp start
        
        
        ;declaration des variables
        msg1 db "delta est positif : deux racines simples $"
        msg2 db "delta est NULL :un racine double $"
        msg3 db "delta est negatif :deux racines complexe $" 

        a db 2h
        b db 3h
        c db 1h

        resmul1 db ?
        resmul2 dw ?

        delta db ?


start:


call affiche

ret 

fctmul1 proc 
    mul dl;al * dl est le resultat est dans al puisque les nombres sont petites
    mov resmul1,al;stockage de resultat dans la variable resmul1 
    ret
fctmul1 endp  

fctmul2 proc
    mov al,resmul1 
    mov dh,4h
    mul dh;multiplier al et dl avec al contient la valeur de resmul1
    mov resmul2,ax;charger le resultat dans a variable resmul2
    ret
fctmul2 endp 
             
deltaproc proc
    mov al,a
    mov dl,c
    call fctmul1 
    call fctmul2
    mov al,b
    mov dl,b
    call fctmul1
    mov dl,resmul1;resmul1 contient la valeur de b*b 
    mov dh,0
    sub dx,resmul2; l'operation de b*b-4*a*c
    mov delta,dl;charger le resultat dans la variable dl
    ret 
deltaproc endp
               
               
affiche proc 
    call deltaproc 
    cmp delta,0h
    jg positif
    je nul
    mov bx,seg msg3
    mov ds,bx
    lea dx,msg3 
    jmp finir
positif:
    mov bx,seg msg1
    mov ds,bx
    lea dx,msg1 
    jmp finir
nul: 
    mov bx,seg msg2
    mov ds,bx
    lea dx,msg2 
finir:
    mov ah,9h
    int 21h 
    ret
affiche endp