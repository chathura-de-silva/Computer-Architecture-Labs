## Lab 4: C Programming in RISC-V

**Learning Outcomes:**
After completing this lab, you will be able to:
- Compile and run a C program in Ripes simulator for RISC-V architecture.
- Identify RISC-V base instruction sets and extensions.

**Introduction:**

C Programming
C programming language is a high-level programming language that converts the programs written in the C language directly into the machine code of the corresponding architecture. Therefore, an executable code, which is compiled for one architecture, cannot be used in another architecture. This means that if we want to compile a C program for RISC-V architecture, we cannot use a C compiler that targets x86, x64, or any other architecture. Therefore, we have to use a platform-specific compiler. For that, we are using the GCC compiler provided by the RISC-V toolchain of PlatformIO.

**RISC-V Base Instruction Sets and Extensions:**

Following are the base instruction sets of RISC-V architecture:
- RV32I - 32-bit wide integer registers.
- RV32E - Reduced version of RV32I for embedded systems.
- RV64I - 64-bit wide integer registers.
- RV128I - 128-bit wide integer registers.

Following are four of the main extensions to the base instruction sets:
- M - Extension for integer multiplication and division.
- F - Extension for single-precision floating-point numbers.
- D - Extension for double-precision floating-point numbers.
- A - Extension for atomic instructions.

You can find more details about RISC-V base instruction sets and extensions in the RISC-V specification.

**Example:**

*  Download the Lab04_Example.c file from Moodle.
*  Firstly, make sure that you are using the RV32I base instruction set with the M extension. To do that, click the Select Processor icon.
*  Make sure that you are using the 32-bit Single-cycle processor with the check box for M ISA Extension ticked as in the screenshot.
*  Change the input type to C.
*  Open the example in the Ripes editor and click the compile button.
*  It will compile the C code into machine code. You are able to see the disassembled code in the assembly language.
*  Observe that the multiplication and division operations are performed using the mul and div instructions defined in the M extension. You can find the instructions in the M extension from the RISC-V reference card.
    *  10174: 02f707b3 mul x15 x14 x15
    *  1018c: 02f747b3 div x15 x14 x15
*  Now remove the M extension by unchecking the checkbox in the select processor window.
*  Observe that the C compiler has defined and used two new assembly functions __mulsi3 and __divsi3 with some other helper functions. Since we do not have separate instructions for multiplication and division, instead, the compiler uses functions to calculate those in an iterative manner.
    *  10174: 15c000ef jal x1 348 <__mulsi3>
    *  10190: 164000ef jal x1 356 <__divsi3>
*  The arr_sum function calculates the sum of the array using recursion.
*  We have defined the print_int function to print an integer to the console. In this function, we have directly instructed the C compiler using the assembly language to avoid the complexities in the machine code. Alternatively, you can use the printf function to print the integer and the new line as follows where num is the integer variable to be printed.
    *  printf(“%d\n”, num);
*  Replace the calls to the print_int function with printf and observe the machine code.
*  This will add the implementation of the printf function with the other required helper functions for the above task. Both the calls to printf and the custom print_int functions will perform the same task in this program. But printf is a general function whereas print_int is a task-specific function with a lesser number of steps.

**Exercise 1:**

Write a program in C that computes the factorial of a given non-negative number n, using iterative multiplications. While you should test your program for multiple values of n, your final submission should be for n = 7. The program should print out the value of factorial(n) at the end of the program. n should be a variable that is statically defined within the program. Name the program factorial.c.

**Exercise 2:**

Write a program in C that computes the factorial of a given non-negative number n, by means of a recursive function. While you should test your program for multiple values of n, your final submissions should be for n = 7. The program should print out the value of factorial(n) at the end of the program. n should be a variable that is statically defined within the program. Name
