
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
    
    
jmp start 

     T db 4,8,16,3,1,7,12,3,13,17,19,20,-1   
              
     N db ? 
     
     
     istrie db ?
       
     
     
     

start:  
     
     mov ax,seg T
     mov ds,ax
     mov ax,0000h
     
    lea si,T 
    call lentT 
    
    ;call trieadjascent
    call trie  
    ;call trieproc
    
    
lentT proc 
     
boucle:cmp [si],-1
     je finp
     inc N
     inc si
     jmp boucle
     
     finp:ret     
lentT endp 



trieadjascent proc 
    
          
trat1:mov al,[si]
      cmp al,[di]
      jl permute
      mov istrie,1  
      inc si 
      jmp compare  
      ;jmp fintt
    



permute:mov dl,[si] 
        mov dh,[di] 
        mov [si],dh
        mov [di],dl
        inc si
        mov istrie,0 
        jmp compare  
        
        
        
        ret  
trieadjascent endp
 
;----------------------------------------------------------------  

  
trie proc  
   
    lea di,T
    lea si,T 
    inc si
    mov bx,0000h 
    mov dx,0000h 
    mov bl,1
    
    
principe:Cmp bl,N
    jae  fintt
    mov al,[si]
compare:Cmp [si],-1
    jne trat1
    inc di 
    mov si,di
    inc si
    inc bl
    jmp principe
    
    
    call trieadjascent
    

        ;jmp fintt
        
        

fintt:ret  
trie endp


;------------------------------------------------------------------------------

fin:

ret





