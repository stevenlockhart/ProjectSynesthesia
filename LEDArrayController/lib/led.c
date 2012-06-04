// led.c - (C) 2012 Ian Finder

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <fcntl.h>
#include <errno.h>
#include "led.h"

// TODO: (?) double buffer colors and make UPDATE strand only update changed values, piecewise

static const char _qra[] =  {0x00,
                            0xc0,
                            0xe0,
                            0x50,
                            0xf0,
                            0x04,
                            0x44,
                            0xcc,
                            0x22,
                            0x1a,
                            0x06,
                            0xc1,
                            0x05,
                            0x03,
                            0xdd,
                            0xff};

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

unsigned char _translate(unsigned char in) {
    unsigned char out;
    out = _qra[in/16]; 
    //printf("\tDID %x\n",out);
    return out;
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
        low=i&0x00FF;           // POTENTIAL ENDIANNESS ISSUE
        high=(i>>8)&0x00FF;     // AND HERE. Check on different ARCH
        _p(fd,high);
        _p(fd,low);
        _p(fd,lbyte);        
        for (j = 0 ; j < len; j++) {
            _p(fd,_translate(led->colors[i]));
            i++;
        }
    }
    return 0;
}



