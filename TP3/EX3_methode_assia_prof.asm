
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

jmp start 

      x db 4
start:      
    ;methode assia
    ;fact proc
                
       ; mov al,x 
       ; sub x,1
       ; mov bl ,x   
       ;  et:
       ; cmp bl,0
       ; je fin 
       ; mul bl 
       ; sub bl,1
       ; jmp et  
       ; 
    ;  fin:
    ;  ret
    ;fact endp 
    
    
    
   ;methode de prof//presque comme ex2    
   ;proc main
   main proc 
    
    mov cl,x 
    mov al,1
    
    boucle:
    call fctMul 
    loop boucle
    
    ret
    main endp
   
   ;proc fctmul
   fctMul proc
   
    
    mul cl
    
    ret
   fctMul endp  

ret