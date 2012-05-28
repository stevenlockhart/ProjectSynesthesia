#define PACKETSZ 256            // Packet size for binary
#define COMMAND 32              // Command byte (see verilog reference for Uart2Bus binary mode)
struct strand_struct {
	unsigned int leds;          // Number of RGB LEDs
	unsigned char *device;      // LED serial device (HINT: For the nice FTDI, "/dev/tty.usbserial-FTELSJ0N")
	int fd;                     // Serial FD
	unsigned char *colors;      // Color Table  (0 indexed, will have size of 3 (num. colors) * leds)
	unsigned int baud;          // Serial Baud  (HINT: For the nice FTDI and latest FPGA code, 460800)
};

typedef struct strand_struct STRAND;


