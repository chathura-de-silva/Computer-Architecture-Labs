.bss
    F:      .word  0   # Declare the array F
  
.equ N, 12

.text
.globl main

main:
    la a1,F            # a1 points to the array F. F will have the desired values at the end of the execution.
    
    #Calculating the last elements address
    li a2,N            # length of Array
    li a0,4            # length of a word. a0 will be 0 at the end of the program.
    mul a2,a2,a0       # word count * No of elements
    addi a2,a2,-4      # offset correction. Without this, the address will become the address of the immediate next address at the end of the array.
    add a2,a2,a1       # This holds F's last elements address. This will be the loop bound.
    
    #Since first two numbers are the base cases, we have to explicitly put them to the array.
    #t0 and t1 will keep the previous values needed for next steps.
    li t0,0
    li t1,1
   
    sw t0,0(a1)        # Storing first element in memory.
    addi a1,a1,4       # Incrementing the address to the next element.
    sw t1,0(a1)        # Storing second element in memory.
    
    fibLoop:
        li a0,0        # Resetting a0
        bge a1,a2,end
        add a0,t1,t0
        addi a1,a1,4   # Incrementing the address to next element.
        sw a0,0(a1)    
        mv t0,t1       # Copying value of t1 to t0
        mv t1,a0
       
        j fibLoop
    
    end:
        li a7, 93
        ecall
    