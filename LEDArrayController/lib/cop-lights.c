#include "led.h"
#include <stdio.h>
#define LEDS 120    // Max LEDS

// DOES RED / GREEN COP LIGHTS ACROSS THE STRAND


// DEMO CODE
int main (int argc, char **argv) {
	static char device[] = "/dev/tty.usbserial-FTELSJ0N";
	STRAND * led = build_strand(LEDS, device, 460800);    // Number of LEDs, Device, Baud
	strand_info(led);
	int i = 0;
    int count = 0;
	while (count < 200) {   // Run length
		int z = i;
		for (i = 0 ; i < led->leds ; i++) {
            if (i < (LEDS/2)) {
                led->colors[i*3] = ((count % 2)==1)? 0:255;                                     // ARE
                led->colors[(i*3) + 1] = ((count % 2)==1)? 0:0;                               // GEE
                led->colors[(i*3) + 2] = ((count % 2)==1)? 255:0;       
            } else {
                led->colors[i*3] = ((count % 2)==0)? 255:0;                                     // ARE
                led->colors[(i*3) + 1] = ((count % 2)==0)? 0:0;                               // GEE
                led->colors[(i*3) + 2] = ((count % 2)==0)? 0:255;                               // BEE
            }
            /*
             switch (i % 10) {
             case 0:
             led->colors[i*3] = 0;  //led->colors[(i*3) + 1] - 5;              // RED
             led->colors[(i*3) + 1] = 0;// led->colors[(i*3) + 2] - 10;    // GREEN
             led->colors[(i*3) + 2] = 0;//led->colors[(i*3)] + 20;    // BLEW
             break;
             case 1:
             led->colors[i*3] = 0;                                     // ARE
             led->colors[(i*3) + 1] = 0;                               // GEE
             led->colors[(i*3) + 2] = 0;                               // BEE
             break;
             case 2:
             led->colors[i*3] = 0;                                     // ARE
             led->colors[(i*3) + 1] = 0;                               // GEE
             led->colors[(i*3) + 2] = 0;                               // BEE
             break;
             case 3:
             led->colors[i*3] = 0;                                     // ARE
             led->colors[(i*3) + 1] = 0;                               // GEE
             led->colors[(i*3) + 2] = 0;                               // BEE
             break;
             case 4:
             led->colors[i*3] = 0;                                     // ARE
             led->colors[(i*3) + 1] = 0;                               // GEE
             led->colors[(i*3) + 2] = 0;                               // BEE
             break;
             case 5:
             led->colors[i*3] = 0;                                     // ARE
             led->colors[(i*3) + 1] = 0;                               // GEE
             led->colors[(i*3) + 2] = 0;                               // BEE
             break;
             case 6:
             led->colors[i*3] = ((count % 2)==1)? 0:0;                                     // ARE
             led->colors[(i*3) + 1] = ((count % 2)==1)? 0:0;                               // GEE
             led->colors[(i*3) + 2] = ((count % 2)==1)? 255:0;                               // BEE
             break;
             case 7:
             led->colors[i*3] = 0;                                     // ARE
             led->colors[(i*3) + 1] = 0;                               // GEE
             led->colors[(i*3) + 2] = 0;                               // BEE
             break;
             case 8:
             led->colors[i*3] = 0;                                     // ARE
             led->colors[(i*3) + 1] = 0;                               // GEE
             led->colors[(i*3) + 2] = 0;                               // BEE
             break;
             case 9:
             led->colors[i*3] = ((count % 2)==0)? 255:0;                                     // ARE
             led->colors[(i*3) + 1] = ((count % 2)==0)? 0:0;                               // GEE
             led->colors[(i*3) + 2] = ((count % 2)==0)? 0:0;                               // BEE
             break;
             default:
             break;
             
             }
             */
        }
        //printf("LED %3d : %3d %3d %3d\n",i,led->colors[i*3],led->colors[(i*3) + 1], led->colors[(i*3) + 2]);
		update_strand(led);
        usleep(50000);
        count++;
	}
	free_strand(led);
	return 0;
}