.data
    N:      .word         12                    # Declare the Limit N.
    A:      .word         0, 1, 2, 7, -8, 4, 5, 12, 11, -2, 6, 3    # Declare the array A
    
   

.bss
    B: .word 0    # Uninitialized array for B.

.text
.globl main
main:
   
       
    # End the program
    end:
        li a0, 0
        li a7, 93
        ecall
    