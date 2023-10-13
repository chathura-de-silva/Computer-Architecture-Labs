#include "ripes_system.h"
#include <stdio.h>
#define W LED_MATRIX_0_WIDTH
#define H LED_MATRIX_0_HEIGHT
unsigned* led_current = LED_MATRIX_0_BASE;
unsigned* d_pad_left = D_PAD_0_LEFT;
unsigned* d_pad_right = D_PAD_0_RIGHT;
unsigned* d_pad_down = D_PAD_0_DOWN;
unsigned* d_pad_up = D_PAD_0_UP;
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
        }else if(*d_pad_up & 0x1){
            *(led_current)=0;
            *(led_current-W) = 0xFF << 16;
            led_current = led_current-W;
        }else if(*d_pad_left & 0x1 == 1){
            *(led_current)=0;
            *(led_current-1) = 0xFF << 16;
            led_current = led_current-1;
        }
    }
}