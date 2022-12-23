.model small     
.data 
message db ,10, "*************************************************************",10,\
"***         Please choose number of your pet              ***",10,\
"***     (1.cat, 2.horse, 3.dog, 4.rabbit, 5.turtle)       ***",10,\
"***                                                       ***",10,\
"***                                                       ***",10,\
"***                                                       ***",10,\
"***         if you need the cat animal click one     ^_^  ***",10,\
"***         if you need the horse animal click two   ^_^  ***",10,\
"***         if you need the dog animal click three   ^_^  ***",10,\
"***         if you need the rabbit animal click four ^_^  ***",10,\
"***         if you need the turtle animal click five ^_^  ***",10,\
"*************************************************************",10,"$"
cat_lifestyle db 10,10,"****************************************************************************",10,\
"*****      The cat is a beautiful animal carefully careful             *****",10,\
"*****   1.Cats sleep an average of 16 hours per day.                   *****",10,\
"*****   2.Healthy foods for cats include meat, fish, and vegetables    *****",10,\
"*****   3.Harmful foods include chocolate, onions, and grapes.         *****",10,\
 "****************************************************************************","$" 
 horse_lifestyle db 10,10,"***************************************************************************",10,\
 "*****      1.Horses sleep an average of 3 hours per day.              *****",10\
 ,"*****      2.Healthy foods for horses include hay, oats, and grass.   *****",10,\
 "*****      3.Harmful foods include avocados and chocolate.            *****",10,\
 "***************************************************************************",10, "$" 
 dog_lifestyle db 10,10,"***************************************************************************",10,\
 "*****   1.Dogs sleep an average of 12-14 hours per day.               *****",10,\
 "*****   2.Healthy foods for dogs include meat, vegetables, and grains *****",10,\
 "*****   3.Harmful foods include chocolate, onions, and grapes.        *****",10,\
 "***************************************************************************",10, "$"
 rabbit_lifestle db 10,10,"******************************************************************************",10\
 ,"***** 1.rabbit sleep an average of 8 hours per day.                      *****",10,\
 "***** 2.Healthy foods for rabbit include broccolie, carrots, and cabbage *****",10,\
 "***** 3.Harmful foods include chocolate, eggs, and corn.                 *****",10,\
 "******************************************************************************",10, "$"
 turtle_lifestle db 10,10,"********************************************************************************",\
 "*** 1.turtles sleep an average of 4-7 hours per day.                          **",\
 "*** 2.Healthy foods for turtle include fruite, vegetables,flowers and insects **",\
 "*** 3.Harmful foods include sweets, saltyfood, anddairy.                      **",\
 "********************************************************************************",10, "$"
 ms db ,10,10,10,"1.Back   2.Exit",10,10,10,"$"
.code
 
  again:
  
    main proc far
     .STARTUP
    
    lea dx,message 
    call print
   
    call read
   
    CMP AL,'1'
    JNE d1
    JMP cat
 
    
    d1:
    CMP AL,'2'
    JNE d2
    JMP horse
    
    d2:
    CMP AL,'3'
    JNE d3
    JMP dog
    
    d3:
    CMP al,'4'
    JNE d4
    JMP rabbit
    
    d4:
    CMP al,'5'
    JNE Backto
    JMP turtle
    
   
    
     
    cat:
     lea dx,cat_lifestyle 
     call print 
     
     call Backto
     
    horse:
     lea dx,horse_lifestyle 
     call print
     call Backto
     
    dog:
      lea dx,dog_lifestyle 
      call print
      call Backto
    rabbit:
      lea dx,rabbit_lifestle
      call print
      call Backto
      
    turtle:
      lea dx,turtle_lifestle
      call print
      call Backto
;====================================================================================================================================================
   main endp 
  
   READ PROC NEAR
     MOV AH,01H
     INT 21H
     RET
   READ ENDP  
  
    
   PRINT PROC NEAR
  
      MOV AH,09H
      INT 21H
      RET
    PRINT ENDP
  
  
    EXIT PROC NEAR
     MOV AH,4CH
     INT 21H
     RET
    EXIT ENDP 
    
    
    Backto PROC NEAR
    lea dx,ms
    call print 
    
    
    check1:
    call Read 
    cmp al ,"1"
    jne Exit 
    jmp Main
    
    Exit2: 
    cmp al ,"2"
    jne backto
    jmp exit
    
    ret 
    backto endp
    
    
    
    
  
  
  
end main