
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

jmp start

 msg Db 'ESTEE','TOI' 
 tab db 20 dup
    
start:         

   mov si,offset msg

ret




