#include "led.h"
#include <stdio.h>

/*
 led->colors[0] = 0-255; //red 1
 led->colors[1] = 0;     //grn 1
 led->colors[2] = 0;     //blu 1
 
 led->colors[3] = 0;    // red 2
 led->colors[4] = 0;
 led->colors[5] = 0;
 
 ...
 
 update_strand(led);
 */

int main (int argc, char **argv) {
	static char device[] = DEVICE;
	STRAND * led = build_strand(LEDS, device, BAUD);                                          // Number of LEDs, Device, Baud
	strand_info(led);
	int i = 0;
    int count = 0;
	while (count < RUNS) {                                                                       // Run length
		int z = i;
		for (i = 0 ; i < led->leds ; i++) {
            if ((i < ((led->leds)/2))) {
                led->colors[i*3] = ((count % 2)==1)? 0:255;                                     // RED
                led->colors[(i*3) + 1] = ((count % 2)==1)? 0:0;                                 // GREEN
                led->colors[(i*3) + 2] = ((count % 2)==1)? 255:0;                               // BLUE
            } else {
                led->colors[i*3] = ((count % 2)==1)? 255:0;                                     // RED
                led->colors[(i*3) + 1] = ((count % 2)==1)? 0:0;                                 // GREEN
                led->colors[(i*3) + 2] = ((count % 2)==1)? 0:255;                               // BLUE
            }
        }
		update_strand(led);
        sleep(1);
        count++;
	}
	free_strand(led);
	return 0;
}