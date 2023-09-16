# Assembly Programming Lab Exercises

This lab contains three assembly programming lab exercises, each designed to help you understand and practice different aspects of assembly programming.

## Exercise 1: Positive Even Number Extraction

### Description
Exercise 1 focuses on a fundamental assembly program that processes an array ('A') and extracts positive, even numbers from it, storing them in another array ('B'). The exercise serves as an introduction to basic assembly concepts like loops, conditional branching, and memory manipulation.

### Solution
1. **Initialization:** Define two arrays, 'A' and 'B.' 'A' holds a mix of positive and negative integers, and 'B' is initially empty, used to store the positive, even numbers.
2. **Pointer Setup:** Initialize pointers to the beginning of 'A' (a0) and 'B' (a2). Calculate the address of the last element in 'A' (a4) to set the loop's upper bound.
3. **Loop:** Iterate through 'A' using a0 as a pointer. For each element in 'A,' perform checks:
   - Skip if the element is not positive.
   - Skip if the element is odd.
   If the element passes both checks, store it in 'B' at the position pointed to by a2.
4. **Pointer Manipulation:** After storing an element in 'B,' increment the a2 pointer.
5. **End of Loop:** Continue until the end of 'A' (a4). 'B' now contains positive even numbers from 'A'.

## Exercise 2: Element-Wise Array Addition

### Description
Exercise 2 challenges you to write an assembly program that adds two arrays, 'A' and 'B,' element-wise, and stores the result in a third array, 'C.' This exercise builds upon the concepts from Exercise 1 and introduces more complex memory operations and array manipulation.

### Solution
1. **Initialization:** Define three arrays, 'A,' 'B,' and 'C.' 'A' and 'B' are input arrays, and 'C' is initialized as an empty array to store the result.
2. **Pointer Setup:** Initialize pointers to the beginning of 'A' (a1), 'B' (a2), and 'C' (a4). Calculate the address of the last element in 'C' (a3) to set the loop's upper bound.
3. **Loop:** Iterate through 'A' and 'B' using a1 and a2 as pointers. For each pair of elements from 'A' and 'B,' perform addition and store the result in 'C' at the position pointed to by a4.
4. **Pointer Manipulation:** After each addition and storage operation, increment the a1, a2, and a4 pointers.
5. **End of Loop:** Continue until the end of 'C' (a3). 'C' now contains the element-wise sum of 'A' and 'B'.

## Exercise 3: Fibonacci Sequence Generator

### Description
Exercise 3 challenges you to write an assembly program that generates the Fibonacci sequence up to a specified limit ('N') and stores it in an array ('F'). This exercise explores more advanced assembly programming techniques, including recursive logic and efficient memory usage.

### Solution
1. **Initialization:** Start with an array 'F' and set the base values for the Fibonacci sequence (0 and 1). Initialize 'F' to store the sequence.
2. **Pointer Setup:** Set a pointer (a1) to the beginning of 'F' and calculate the address of the last element in 'F' (a2) to set the loop's upper bound.
3. **Fibonacci Calculation Loop:** Iteratively calculate each Fibonacci number in the sequence by adding the two previous Fibonacci numbers, starting with the base values. Store the result in 'F' at the position pointed to by a1.
4. **Pointer Manipulation:** After each Fibonacci number is calculated and stored in 'F,' increment the a1 pointer.
5. **End of Loop:** Continue until the specified limit ('N'). 'F' now contains the Fibonacci sequence up to 'N'.

Each exercise's solution is accompanied by detailed comments within the assembly code to explain each step of the implementation. These exercises are designed to enhance your understanding of assembly programming and provide practical experience in solving real-world problems.
