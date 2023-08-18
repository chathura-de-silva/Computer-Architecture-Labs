.data
    N:      .word         12                                        # Declare the Limit N.
    A:      .word         0, 1, 2, 7, -8, 4, 5, 12, 11, -2, 6, 3    # Declare the array A
    
   

.bss
    B: .word 0    # Uninitialized array for B.

.text
.globl main
main:
    la a0,A    #Pointer to the start of A
    
    #Using N and calculating the last elements address and storing it in a4 for the purpose of loop upperbound.
    lw a4,N              #loading array length
    li a2,4              #Storing the word size.
    mul a4,a4,a2         #Word length * no of elements.
    add a4,a4,a0         #Now a4 has the address of the last element
    
    la a2,B              #Pointer to the start of B
    
    #Decrementing the pointer so that in the first round of the loop it takes first element
    addi a0,a0,-4
    
    loop:
        addi a0,a0,4    #Incrementing the address to take the next(or first element in first loop) element.
        ble a4,a0,end   #Main loop condition.
        lw a3,0(a0)     #Loading the element to a3
        blez a3,loop    # if value is not positive, then go to the next value.
        andi a1,a3,0x01 #stores the lsb of the element.
        bnez a1,loop    #if number is odd(lsb is 1), then go to next loop round. 
        
        #Now all conditions are met to be in B. So hereafter the element is added to B.
        sw a3,0(a2)
        addi a2,a2,4    #Incrementing the pointer of B to point to next memory slot i.e. word.
        
        j loop          #Continuing the loop.
       
    # End the program
    end:
        li a0, 0
        li a7, 93
        ecall
    