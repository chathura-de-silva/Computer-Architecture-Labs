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

###  Exercise 1:

Write a program in C that computes the factorial of a given non-negative number n, using iterative multiplications. While you should test your program for multiple values of n, your final submission should be for n = 7. The program should print out the value of factorial(n) at the end of the program. n should be a variable that is statically defined within the program. Name the C file factorial.c.

###  Exercise 2:

Write a program in C that computes the factorial of a given non-negative number n, by means of a recursive function. While you should test your program for multiple values of n, your final submissions should be for n = 7. The program should print out the value of factorial(n) at the end of the program. n should be a variable that is statically defined within the program. Name the C file factorial_rec.c.

## Lab 5

Lab 5 consisted of a quiz for which there was nothing specific to include in this repository. It didn't involve any coding and was about _compiler optimisation_.

## Lab 6

Lab 6 consisted of a quiz for which there was nothing specific to include in this repository. It didn't involve any coding and was about _Cache mapping and performance_.

## Lab 7

Lab 7 consisted of a quiz for which there was nothing specific to include in this repository. It didn't involve any coding and was about _Pipelining and its overheads_.


## Lab 8

Lab 8 consisted of a quiz but there was few coding exercises that is not intended to submit.
>[!NOTE]
>*  In Ripes simulator, in compiler configuration you should have enabled the access to the "C standard libraries". I.e. You should not keep the compiler argument `--nostdlib`
>*  For the simulation to work,press the PLAY button to run, not the double right pointed arrows.
> Before running each exercise, you should enable relavant I/O devices in the I/O section. Other while an exception will be thrown.

### Exercise 1:

Write a program in C in Ripes simulator (using its' simulated I/O devices) to simulate a traffic light system with an on off switch.

- When the switch is off, all LEDs are black.
- When the switch is on, a separate counter is running, and the traffic lights indicate Stop, Get Ready, and Go states repeatedly.
- Make sure you have configured the LED matrix to be `3x1` with a preffered size.(`24` recommended.)

### Exercise 2:

Write a program in C in Ripes simulator (using its' simulated I/O devices) to simulate the movement of an LED through a LED matrix using the D-Pad (D-pad is a simluted input device in RIPES).

* Observe how the LED moves with the button presses. Please note that there might be a delay between the button presses and LED movement due to certain processing requirements. 
* Make sure you have configured a D-Pad an a LED matrix of preffered parameters before running.

>[!NOTE]
>Edge cases have not beend handled in the implementation. So keep the Red LED in the matrix.

---
*Please note that this README provides a concise overview of the lab exercises completed during Semester 3's Computer Architecture module at UOM, CSE. Detailed solutions and implementations can be found in the corresponding directories for each lab exercise.*
