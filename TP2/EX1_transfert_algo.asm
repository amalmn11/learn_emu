org 100h


jmp start 

    
    A db 10
      
      
start:cmp A,00h
      jg etiq1
      jl etiq2
      jmp fin
      
etiq1:inc A
      jmp start
      
      
      
etiq2:add A,2
      jmp start      

fin:

ret