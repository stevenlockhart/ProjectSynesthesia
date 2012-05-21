// #include //Sign.h
#include <stdio.h>
#include <string.h>  /* String function definitions */
#include <unistd.h>  /* UNIX standard function definitions */
#include <fcntl.h>   /* File control definitions */
#include <errno.h>   /* Error number definitions */
#include <termios.h> /* POSIX terminal control definitions */
#include <stdlib.h>
#define DEBUG
#define CHARDELAY 30
#define LINEDELAY 500 // MS based on #leds
#define BAUD 115200
#define DEVICE "/dev/tty.usbserial-A9007UN0"
#define LEDCOUNT 30


struct termios options;
int s;
unsigned char colors[LEDCOUNT * 3];


void dpr(char *str) {
	#ifdef DEBUG
		printf(": %s\n",str);
	#endif
	return;
}

void p(unsigned char c) {
	unsigned char p = c;
	write(s,&p,1);
	usleep(CHARDELAY);
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
                r = 255;
                g = 0;
                b = 0;
                break;
            case 1:
                r = 0;
                g = 255;
                b = 0;
                break;
            case 2:
                r = 0;
                g = 0;
                b = 255;
                break;
            default:
                break;
        }
        colors[(i*3)] = r;
        colors[((i*3) + 1)] = g;
        colors[((i*3) + 2)] = b;
        i++;
    }
    // GO
    int runs = 0;
    int n = 0;
    while (runs < 10000) {
        char buff[1];
        ssize_t rc = read(s, buff, 1);
        if (buff[0] == 'R')
        {
            printf("%c %c\n",buff[0], buff[0]);
        char rc = 0;
       //rc = (char)(256 * (rand() / (RAND_MAX + 1.0)));
        for (i = 0 ; i < (LEDCOUNT) ; i++) {
            
            int off = runs % LEDCOUNT;
            if (i != off) {
                r = colors[(i*3)];
                g = colors[((i*3) + 1)];
                b = colors[((i*3) + 2)];
            } else {
                r = 255;
                g = 255;
                b = 255;
            }
            printf("LED %2d: %4d %4d %4d\n",i,r,g,b);
            p(r);
            p(g);
            p(b);
        }
        usleep(LINEDELAY);
        runs++;
        }
    }
    // Stop
    close(s);
    return 0;
}

