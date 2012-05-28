#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <termios.h>
#include <fcntl.h>
#include <errno.h>

#define PACKETSZ 11
#define NUMLEDS 300

int main (int argc, char** argv) {
    printf("Sizeof Int %d\n",sizeof(unsigned int));
    unsigned int numdat = NUMLEDS * 3;
    unsigned int j;
    unsigned int i = 0;
    unsigned int rem = numdat % PACKETSZ;
    unsigned int len;
    unsigned char lbyte;
    
    unsigned char low;
    unsigned char high;
    
    printf("Printing rem %d\n",rem);
    while (i < numdat) {
        len = ((numdat - i) > PACKETSZ) ? PACKETSZ:rem;
        if (len == 0)
            len = PACKETSZ;
        if (len == PACKETSZ) {
            lbyte = 0;
        } else {
            lbyte = (char)len;
        }
        
        printf("BADDR %d SZ %d LENVAL %d: ", i, len, (int)lbyte);
        //p(0);
        low=i&0x00FF;
        high=(i>>8)&0x00FF;
        printf(" lo % d hi %d ", low, high);
        
        for (j = 0 ; j < len; j++) {
            //PUT LED PACKETS HERE
            //printf(" %d ",i);
            
            //p();
            
            i++;
        }
        printf("\n");
    }
    
    return 0;
}