// led.h - (C) 2012 Ian Finder

#define PACKETSZ 256            // Packet size for binary
#define COMMAND 32              // Command byte (see verilog reference for Uart2Bus binary mode)

#define QUANTSZ 16              // Quantize to 16
struct strand_struct {
	unsigned int leds;          // Number of RGB LEDs
	unsigned char *device;      // LED serial device (HINT: For the nice FTDI, "/dev/tty.usbserial-FTELSJ0N")
	int fd;                     // Serial FD
	unsigned char *colors;      // Color Table  (0 indexed, will have size of 3 (num. colors) * leds)
	unsigned int baud;          // Serial Baud  (HINT: For the nice FTDI and latest FPGA code, 921600)
};

typedef struct strand_struct STRAND;


STRAND * build_strand(int leds, char* device, int baud);

int free_strand(STRAND * led);

int strand_info(STRAND * led);

int update_strand(STRAND * led);
