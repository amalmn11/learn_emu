
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
jmp start 

        TEtud DB 'Beni','Badi','Toto','mala','onoo','$'
        TNote DB 10,15,12,16,18
        TMention DB 20 dup (?)
        NbrEtud Db ?
        NbrMent dw ?
        NoteMax db ?   
        NoteMin db ?    
        NoteAvg db ?  
        TStatistique db 8 dup (?) 


start:      
        
     call main
     jmp fin            
     
;------------------------------------------------------------
NbrEtudProc PROC
    
      lea si,TEtud
      mov bl,00h  
      
boucle:cmp [si],'$'
       je finberEtud   
       inc bl
       add si,4
       jmp boucle
       
      
finberEtud:mov NbrEtud,bl 
           ret


NbrEtudProc ENDP    


;------------------------------------------------------------


TMentionProc PROC
    
        lea si,TNote
        lea di,TMention 
        ;mov cx,0000h 
        ;mov cl,NbrEtud 
        
        mov bx,0000H
        mov bl,NbrEtud
        
        
        
boucle1:cmp bl,00h
        je finp
        cmp [si],16
        jae etiq1
        Cmp [si],14
        jae etiq2 
        Cmp [si],12
        jae etiq3
        Cmp [si],10
        jae etiq4 
        mov [di],'AJ'
        add di,2 
        inc si 
        jmp finp
        
        
      
etiq1:mov [di],'TB'
      jmp compare
      
      
etiq2:mov [di],'BI'
      jmp compare     
            
etiq3:mov [di],'AB'
      jmp compare

      
      
etiq4:mov [di],'PA'
      jmp compare  
      
      
      
compare:add di,2 
        inc si
        dec bl
        ;loop boucle1 
        ;jmp finp  
        jmp boucle1
           

finp:RET


      
TMentionProc ENDP  


;------------------------------------------------------------

NbrMentionProc PROC        
       
       
       mov bx,0
       lea si,TMention 
       mov cx,0000h
       mov cl,NbrEtud
       
       
boucle2:cmp ax,[si] 
        jne etiq11
        inc bl 
        add si,2 
        loop boucle2 
        jmp fin1 
          
etiq11:add si,2
       loop boucle2 
       ;jmp fin1
           
           
           
fin1:mov NbrMent,bx 
     ret               

    
NbrMentionProc ENDP    
           

;------------------------------------------------------------
  
 

MaxNoteProc PROC        
       
       
       lea si,TNote   
       ;mov [si+5],20
       mov cx,0000h
       mov cl,NbrEtud 
       
       sub cl,1
       mov bl,[si]
       
       
       
boucle3:inc si
       cmp [si],bl 
       jbe etiqt
       mov bl,[si]
       loop boucle3 
       jmp fin2
        
       
etiqt:loop boucle3

fin2:mov NoteMax,bl
     ret         
           

    
MaxNoteProc ENDP 
                     
                     
                     
;------------------------------------------------------------
  
 


MinNoteProc PROC        
       
       
       lea si,TNote   
       ;mov [si+5],20
       mov cl,NbrEtud
       sub cl,1
       mov bl,[si]
       
       
       
boucle4:inc si
       cmp [si],bl 
       jae etiqute
       mov bl,[si]
       loop boucle4 
       jmp fin3
        
       
etiqute:loop boucle4

fin3:mov NoteMin,bl
     ret         
           

    
MinNoteProc ENDP 

             
;------------------------------------------------------------




AngNoteProc PROC        
       
      mov ax,0000H
      lea si,TNote
      mov cx,0000h  
      mov cl,NbrEtud
      
      ;sub cl,1    
          
          
boucle5:add al,[si]
        inc si 
        loop boucle5 
        
        
        
        div NbrEtud
        mov NoteAvg,al
        ret         
           

    
AngNoteProc ENDP

             
;------------------------------------------------------------

StatistiqueProc  PROC  
    
       lea si,TStatistique 
       
       mov ax,'TB' 
       call NbrMentionProc
       mov dx,NbrMent 
       mov [si],dl

        
       mov ax,'BI' 
       call NbrMentionProc
       mov dx,NbrMent 
       mov [si+1],dl
            
       
       mov ax,'AB' 
       call NbrMentionProc
       mov dx,NbrMent
       mov [si+2],dl
 
       
       mov ax,'PA' 
       call NbrMentionProc  
       mov dx,NbrMent
       mov [si+3],dl
  
       
       
       mov ax,'AJ' 
       call NbrMentionProc 
       mov dx,NbrMent
       mov [si+4],dl
           
       
       mov dl,NoteMax
       mov [si+5],dl
       
      
       mov dl,NoteMin       
       mov [si+6],dl
 
       mov dl,NoteAvg
       mov [si+7],dl
                     
                     
                     
fin22:ret
                
StatistiqueProc endp 
;------------------------------------------------------------
        
        
main proc 
     
    call NbrEtudProc  
    
    call TMentionProc 
    
     ;mov ax,'TB' 
     ;call NbrMentionProc
     call MaxNoteProc
     call MinNoteProc
     call AngNoteProc
     call StatistiqueProc  
     ret  
    
main endp        
        
fin:
ret




