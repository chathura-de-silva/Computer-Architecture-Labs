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
* Template of the implementation:

  ```C
  #include "ripes_system.h"
  unsigned* led_base = LED_MATRIX_0_BASE;
  unsigned* switch_base = SWITCHES_0_BASE;
  void main() {
      unsigned state = 0;
      unsigned count = 1;
      while (1) {
          if ([Check if switch 0 is toggled]) {
              if (count % 10 == 0){ //State Change
                  if (state == 2){
                      state = 0;
                  }
                  else{
                      state++;
                  }
              }
              if (state == 0){ //Go State
                  [Complete Code] //Lower Led should be Green and others black
              }
              else if (state == 1){ //Get Ready State
                  [Complete Code] //Middle Led should be Orange and others black
              }
              else{ //Stop State
                  [Complete Code] //Upper Led should be Red and others black
              }
              count++; //Increment Count
          } else { //Switch 0 is not toggled
              [Complete Code] //All black
          }
      }
  }
  ```

### Exercise 2:

Write a program in C in Ripes simulator (using its' simulated I/O devices) to simulate the movement of an LED through a LED matrix using the D-Pad (D-pad is a simluted input device in RIPES).

* Observe how the LED moves with the button presses. Please note that there might be a delay between the button presses and LED movement due to certain processing requirements. 
* Make sure you have configured a D-Pad an a LED matrix of preffered parameters before running.

>[!NOTE]
>Edge cases have not beend handled in the implementation. So keep the Red LED in the matrix.

* Template of the implementation:

  ```C
  #include "ripes_system.h"
  #include <stdio.h>
  #define W LED_MATRIX_0_WIDTH
  #define H LED_MATRIX_0_HEIGHT
  unsigned* led_current = LED_MATRIX_0_BASE;
  unsigned* d_pad_right = D_PAD_0_RIGHT;
  unsigned* d_pad_down = D_PAD_0_DOWN;
  unsigned led_start = LED_MATRIX_0_BASE;
  void main() {
      *(led_current) = 0xFF << 16;
      while (1) {
          if (*d_pad_right & 0x1==1){
              *(led_current)=0;
              *(led_current+1) = 0xFF << 16;
              led_current++;
          }else if(*d_pad_down & 0x1){
              *(led_current)=0;
              *(led_current+W) = 0xFF << 16;
              led_current = led_current+W;
          }
  // Implement the code for other 2 buttons of the D-Pad
      }
  }
  ```
