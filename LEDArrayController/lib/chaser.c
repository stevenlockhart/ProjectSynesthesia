#include "led.h"
#include <stdio.h>

/*
    Demo code for led.h - (c) 2012 Ian Finder
 
*/

int main (int argc, char **argv) {
	static char device[] = DEVICE;
	STRAND * led = build_strand(LEDS, device, BAUD);                                          // Number of LEDs, Device, Baud
	strand_info(led);
	int i = 0;
    int count = 0;
	while (count < RUNS * LEDS) {                                                                       // Run length
		int z = i;
		for (i = 0 ; i < led->leds ; i++) {
            if (i == (count % LEDS)) {
                led->colors[i*3] = 1;                                     // RED
                led->colors[(i*3) + 1] = 255;                                 // GREEN
                led->colors[(i*3) + 2] = 0;                               // BLUE
            } else if (i == (count % LEDS -1)) {
                led->colors[i*3] = 0;                                     // RED
                led->colors[(i*3) + 1] = 0;                                 // GREEN
                led->colors[(i*3) + 2] = 0;                               // BLUE
            } else if (i == (count % LEDS + 1)) {
                led->colors[i*3] = 0;                                     // RED
                led->colors[(i*3) + 1] = 0;                                 // GREEN
                led->colors[(i*3) + 2] = 0;                               // BLUE
            } else {
                led->colors[i*3] = 0;                                     // RED
                led->colors[(i*3) + 1] = 0;                                 // GREEN
                led->colors[(i*3) + 2] = 0;                               // BLUE
            }
        }
		update_strand(led);
        usleep(1000);
        count++;
	}
	free_strand(led);
	return 0;
}