#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <fcntl.h>
#include <errno.h>
#include "led.h"

STRAND * build_strand(int leds, char* device, int baud) {   // Num LEDs, Device node, Baud
	int i;
	STRAND * t = malloc(sizeof(struct strand_struct));
	t->baud = baud;
	t->device = malloc(strlen(device));
	t->leds = leds;
	strcpy(t->device, device);
	if ((t->fd = open(device, O_RDWR | O_NOCTTY | O_NDELAY)) == -1) {
		printf("Device open failed: %s\n",device);
		free(t->device);
		free(t);
		return NULL; 
	}
	t->colors = calloc(leds * 3, sizeof(char));
	for (i = 0 ; i < leds ; i++) {  // Default Colors:
		t->colors[(i*3)] = 0;       // Red
        t->colors[(i*3) + 1] = 0;   // Green
        t->colors[(i*3) + 2] = 0;   // Blue
	}
    struct termios options, oldops;
	tcgetattr(t->fd, &oldops);
    memset(&options, 0, sizeof(options));
    options.c_iflag = (IGNPAR | IGNBRK);
    options.c_oflag = 0;
    options.c_cflag = (CREAD | CLOCAL | CS8);
    options.c_lflag = 0;
	cfsetispeed(&options, baud);
    cfsetospeed(&options, baud);
    tcflush(t->fd, TCIOFLUSH);
    tcsetattr(t->fd, TCSANOW, &options);
	return t;	
} 

int free_strand(STRAND * led) {
	free(led->colors);
	close(led->fd);
	free(led->device);
	free(led);
}

void _p(int s, unsigned char c) {
	unsigned char p = c;
	write(s,&p,1);
	return;
}

int strand_info(STRAND * led) {
	if (led == NULL)
		return -1;
    printf("Baud: %d\n", led->baud);
    printf("Device: %s\n", led->device);
	printf("Num. LEDs: %d\n", led->leds);
}

int update_strand(STRAND * led) {
    int fd = led->fd;
    unsigned int numdat = led->leds * 3;
    unsigned int j;
    unsigned int i = 0;
    unsigned int rem = numdat % PACKETSZ;
    unsigned int len;
    unsigned char lbyte;
    unsigned char low;
    unsigned char high;
    while (i < numdat) {
        len = ((numdat - i) > PACKETSZ) ? PACKETSZ:rem;
        if (len == 0)
            len = PACKETSZ;
        if (len == PACKETSZ) {
            lbyte = 0;
        } else {
            lbyte = (char)len;
        }
        _p(fd,0);
        _p(fd,COMMAND);
        low=i&0x00FF;
        high=(i>>8)&0x00FF;
        _p(fd,high);
        _p(fd,low);
        _p(fd,lbyte);        
        for (j = 0 ; j < len; j++) {
            _p(fd,led->colors[i]);
            i++;
        }
    }
    return 0;
}


// DEMO CODE
int main (int argc, char **argv) {
	static char device[] = "/dev/tty.usbserial-FTELSJ0N";
	STRAND * led = build_strand(30, device, 460800);    // Number of LEDs, Device, Baud
	strand_info(led);
	int i = 0;
    int count = 0;
	while (count < 200) {   // Run length
		int z = i;
		for (i = 0 ; i < led->leds ; i++) {
			if (i % 2 == 0) {
				led->colors[i*3] += 2;  //led->colors[(i*3) + 1] - 5;              // RED
				led->colors[(i*3) + 1] = 0;// led->colors[(i*3) + 2] - 10;    // GREEN
				led->colors[(i*3) + 2] = 0;//led->colors[(i*3)] + 20;    // BLEW
			} else {
                led->colors[i*3] = 0;                                     // ARE
                led->colors[(i*3) + 1] = 0;                               // GEE
                led->colors[(i*3) + 2] += 2;                               // BEE
			}
			//printf("LED %3d : %3d %3d %3d\n",i,led->colors[i*3],led->colors[(i*3) + 1], led->colors[(i*3) + 2]);
		}	
		update_strand(led);
        count++;
	}
	free_strand(led);
	return 0;
}
