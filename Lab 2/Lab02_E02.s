.data
    N:      .word         12                    # Declare the Length N.
    A:      .word         11, 1, 2, 7, -8, 4, 5, 12, 11, -2, 6, 3    # Declare the array A
    B:      .word         20, 1, 2, 7, -8, 4, 5, 12, 11, -2, 6, 3    # Declare the array B

.bss
    C:      .word 0

.text
.globl main
main:
    la a2,B             #Storing the array B's address in a2.
    lw a3,N             #Storing the array length in a3.
    
     #a1 is tempory used for some calculations and later will reset to keep the address of array A. (Will change in loop)
    li a1,4             #Loading the word size
    mul a1,a1,a3        #word size*No of elements.
   
    add a3,a2,a1        #Setting a3 to the end address of the array B.
    addi a3,a3,-4       #Previously a3 was address of the end of the array. Now its starting byte of last element.
   
    la a1,A             #Storing the array A's address in a1.
     
    #Note that hereafter intially a1 - A's address, a2 - B's address(This gonna be the loop lowerbound), a3 - B's last element address(Will become loop variable).
    
    la a4,C             #Storing the array C's address in a4.
     
    loop:
        blt a3,a2,end   # Will break the loop when loop variable adds up to N+1.
        
        lw t0,0(a1)     #Loading two elements to be added.
        lw t1,0(a3)
        add t0,t0,t1    #Adding an saving them temporily in t0.
        sw t0,0(a4)     #Writing to memory
        
        addi a4,a4,4    #Incrementing/Decrementing element locations on A,B,C to be read and written.
        addi a1,a1,4
        addi a3,a3,-4
        
        j loop          # This jump instructions keeps loop going.
        
    # End the program
    end:
        li a0,0
        li a7, 93
        ecall
    