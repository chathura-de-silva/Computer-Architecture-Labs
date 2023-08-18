.data
    x:          .word         1541                  # Declare a word with value 1541
    array:      .word         10, 20, 30, 40, 50    # Declare an array of five elements
    
    # A string can be declared with string directive
    newline:    .string       "\n"                  
    str:        .string       "abcdefghijklmn"

.bss
    z: .word 0    # Uninitialized variable

.text
.globl main
main:
    # Direct Addressing
    lw a0, x    # Load the value in memory location x directly to the register a0
    
    
    # Register Indirect Addressing
    la a0, x        # Load the address of memory location x to the register a0
    lw a1, 0(a0)    # Load the value of address stored in a0 to register a1
    addi a1, a1, 400
    la a2, z        # Load the address of memory location z to the register a2
    sw a1, 0(a2)    # Store the new value to the memory address stored in a2
    
    
    # Displacement Addressing WRT to address stored in a register
    # Change the value at index 2 of the array to 100
    li a0, 100
    la a1, array    # Load the address of the first element of the array to register a1
    sw a0, 8(a1)    # Size of word * index = 4 * 2 = 8
    
    
    # String Literals
    la a0, str      # Load the address of the string to the register a0
    
    
    # Branching
    li a1, 0        # Loop control variable
    li a2, 20       # The upper bound to the loop control variable
    la a3, array    # Reference to the first element of the array
    add a4, a3, a1  # Calculate the address of the element at the current index
    lw a0, 0(a4)    # Load the value at current index to register a0
    
    # Print the value at register a0 to console
    li a7, 1
    ecall
    
    # Print newline
    la a0, newline
    li a7, 4
    ecall
    
    # Branch to begining of the loop
    addi a1, a1, 4    # Increment the loop variable by the size of word
    blt a1, a2, -36   # Go 9 instructions backwards to continue printing if not completed
    
    # End the program
    li a0, 0
    li a7, 93
    ecall
    