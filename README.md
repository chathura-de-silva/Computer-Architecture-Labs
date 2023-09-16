<p align="center">
    <picture>
      <source 
        srcset="./banner.png"
        media="(prefers-color-scheme: dark)"
      />
      <img 
        src="https://github.com/Chathura-De-Silva/Computer-Architecture-Labs/blob/master/banner.png" 
        alt="Academease Preview"
        width="800"
       />
    </picture>
  </p>

Welcome to the Computer Architecture Lab Exercises repository for Semester 3 at the University of Moratuwa, Department of Computer Science and Engineering (CSE).

## Lab 1

### Exercise 1: R-Type Instructions

This exercise involves the implementation of a program to determine whether a given number is odd or even using R-type instructions. The result is stored in register `a0`, with a value of 1 indicating an odd number and 0 for an even number. The following R-type instructions were used:
- `AND`
- `SLT` (Set Less Than)

### Exercise 2: Shift Instructions

In this exercise, a program was developed to multiply a given number by 7 using shift instructions. The result is stored in register `a0`. Shift instructions are employed to achieve the multiplication.

## Lab 2

### Exercise 1

This task required the creation of an assembly program to generate a new vector `B` from an N-element vector `A`. The new vector `B` contains even positive numbers from vector `A`. The program utilizes branching instructions to perform the filtering.

### Exercise 2

For this exercise, a RISC-V assembly program was implemented to compute a new vector `C` based on two N-element vectors, `A` and `B`. The elements of vector `C` are defined as: `C[i] = |A[i] + B[N-i-1]|`, where `i = 0,..,N-1`. The program uses 12-element arrays.

### Exercise 3

In this exercise, an assembly program was developed to compute the first 12 numbers in the Fibonacci sequence using RISC-V assembly. The computed Fibonacci numbers are stored in an array `V` of length 12. The Fibonacci sequence is defined as: `V[0]=0, V[1]=1, V[i]=V[i-1]+V[i-2]` (where `i=0,1,2...`).

## Lab 3

Lab 3 consisted of a quiz for which there was nothing specific to include in this repository. It involved some coding but didn't require to submit them.

## Lab 4

**Exercise 1:**

Write a program in C that computes the factorial of a given non-negative number n, using iterative multiplications. While you should test your program for multiple values of n, your final submission should be for n = 7. The program should print out the value of factorial(n) at the end of the program. n should be a variable that is statically defined within the program. Name the C file factorial.c.

**Exercise 2:**

Write a program in C that computes the factorial of a given non-negative number n, by means of a recursive function. While you should test your program for multiple values of n, your final submissions should be for n = 7. The program should print out the value of factorial(n) at the end of the program. n should be a variable that is statically defined within the program. Name the C file factorial_rec.c.

---

*Please note that this README provides a concise overview of the lab exercises completed during Semester 3's Computer Architecture module at UOM, CSE. Detailed solutions and implementations can be found in the corresponding directories for each lab exercise.*
