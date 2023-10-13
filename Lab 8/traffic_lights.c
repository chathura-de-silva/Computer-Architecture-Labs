#include "ripes_system.h"
unsigned* led_base = LED_MATRIX_0_BASE;
unsigned* switch_base = SWITCHES_0_BASE;
void main() {
    unsigned state = 0;
    unsigned count = 1;
    while (1) {
        if (*switch_base) {
            if (count % 10 == 0){ //State Change
                if (state == 2){
                    state = 0;
                }
                else{
                    state++;
                }
            }
            if (state == 0){ //Go State
                //Lower Led should be Green and others black
                *(led_base+2) = 255<<8;  //upper
                *(led_base+1) = 0;  //middle 
                *(led_base) = 0;  //lower
            }
            else if (state == 1){ //Get Ready State
                //Middle Led should be Orange and others black
                *(led_base+2) = 0;  //upper
                *(led_base+1) = 255<<8 | 255<<16;  //middle
                *(led_base) = 0;  //lower
            }
            else{ //Stop State
                //Upper Led should be Red and others black
                *(led_base+2) = 0;  //upper
                *(led_base+1) = 0;  //middle
                *(led_base) = 255<<16;  //lower
            }
            count++; //Increment Count
        } 
        else { //Switch 0 is not toggled
            //All black
                *(led_base+2) = 0;  //upper
                *(led_base+1) = 0; //middle
                *(led_base) = 0;  //lower
        
        }
    }
}
