// #include //Sign.h
#include <stdio.h>
#include <string.h>  /* String function definitions */
#include <unistd.h>  /* UNIX standard function definitions */
#include <fcntl.h>   /* File control definitions */
#include <errno.h>   /* Error number definitions */
#include <termios.h> /* POSIX terminal control definitions */
#include <stdlib.h>
#define DEBUG
#define CHARDELAY 500 
#define LINEDELAY 500 // MS based on #leds
#define BAUD 460800 
#define DEVICE "/dev/tty.usbserial-FTELSJ0N"
#define LEDCOUNT 60 
char colors[3 * LEDCOUNT];

struct termios options;
int s;


void dpr(char *str) {
	#ifdef DEBUG
		printf(": %s\n",str);
	#endif
	return;
}

void p(unsigned char c) {
	unsigned char p = c;
	write(s,&p,1);
	//usleep(CHARDELAY);
	return;
}

void pstr(char *string){
	int i;
	i = 0;
	while (string[i] != 0x00) {
		p(string[i]);
		i++;
	}
	return;
}

int get_sign(void) {
	int fd;
	fd = open(DEVICE , O_RDWR | O_NOCTTY | O_NDELAY);
	return fd;
}

int main (int argc, char **argv) {
	if(argc < 2)
		return -1;
	dpr("program started");
	dpr("opening LEDs @ DEVICE");
	dpr(DEVICE);
	s = get_sign();
	if (s == -1) {
		printf("LEDs not found @ DEVICE. Failing...\n");
		return -1;
	}
	
	tcgetattr(s, &options);
	cfsetispeed(&options, BAUD);
    cfsetospeed(&options, BAUD);
    options.c_cflag &= ~PARENB;
	options.c_cflag |= CSTOPB;
	options.c_cflag &= ~CSIZE;
	options.c_cflag |= CS8;
    options.c_cflag |= (CLOCAL | CREAD);
    tcsetattr(s, TCSANOW, &options);
    int i = 0;

    // Setup
    unsigned char r;
    unsigned char g;
    unsigned char b;
    for (i = 0 ; i < LEDCOUNT ; i++) {
        switch (i % 3) {
            case 0:
                r = 0;
                g = 0;
                b = 20;
                break;
            case 1:
                r = 0;
                g = 0; //255;
                b = 20;
                break;
            case 2:
                r = 0;
                g = 0;
                b = 20;
                break;
            default:
                r = 0;
                g = 0;
                b = 10;
                break;
        }
        colors[(i*3)] = r;
        colors[((i*3) + 1)] = g;
        colors[((i*3) + 2)] = b;
    }
    // GO
    int runs = 0;
    int n = 0;
    char big_buff[10];
    while (runs < 10000) {
        for (i = 0 ; i < (LEDCOUNT) ; i++) {
            int off = runs % LEDCOUNT;
            if (i != off) {
                r = colors[(i*3)];
                g = colors[((i*3) + 1)];
                b = colors[((i*3) + 2)];
           } else {
                r = 255;
                g = 25;
                b = 255;
            }
            sprintf(big_buff, "w %02x %02x\r\n", r, i*3);
            pstr(big_buff);
            usleep(CHARDELAY);

            sprintf(big_buff, "w %02x %02x\r\n", g, i*3 + 1);
            
            pstr(big_buff);
             usleep(CHARDELAY);

            sprintf(big_buff, "w %02x %02x\r\n", b, i*3 + 2);
            pstr(big_buff);
            usleep(CHARDELAY);

            //printf("LED %2d: %4d %4d %4d\n",i,r,g,b);
        }
        //usleep(LINEDELAY);
        runs++;
    }
    // Stop
    close(s);
    return 0;
}

