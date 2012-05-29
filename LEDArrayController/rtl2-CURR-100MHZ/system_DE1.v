module DE1_system (LEDR, LEDG, HEX0, HEX1, HEX2, HEX3, UART_TXD, UART_RXD, KEY, SW, CLOCK_50, GPIO_0, CLOCK_24, TXB, RXB
);

// Define System Abstraction
	wire txU;
	wire rxU;
	wire [15:0] hexD;
	wire clk; // System base-clock @ 50mhz
	wire rst; // System wide reset
	wire out;
	// LEDs
	// Switches
	
	
	
	
	
	// Board Specific I/O
	output [9:0] LEDR;
	output [35:0] GPIO_0;
	output TXB;

	input RXB;
	output [7:0] LEDG;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;

	output UART_TXD;
	input UART_RXD;
	input [3:0] KEY;
	input [9:0] SW;
	input [1:0] CLOCK_24;
	input CLOCK_50;
	
	// Board Specific Assigns

	assign clk = CLOCK_50;
	assign rst = !KEY[0];
	assign rxU = RXB;
	assign TXB = txU;
	SEG7_LUT hexLut0 (.oSEG(HEX0[6:0]), .iDIG(hexD[3:0]));
	SEG7_LUT hexLut1 (.oSEG(HEX1[6:0]), .iDIG(hexD[7:4]));
	SEG7_LUT hexLut2 (.oSEG(HEX2[6:0]), .iDIG(hexD[11:8]));
	SEG7_LUT hexLut3 (.oSEG(HEX3[6:0]), .iDIG(hexD[15:12]));
	//assign hexD[9:0] = SW[9:0];
	assign LEDG[0] = clk;
	assign LEDG[1] = rst;
	assign GPIO_0[35] = out;
	
	//assign out = ;
	
	// Test Area

	wire [7:0] r;
	wire [7:0] g;
	wire [7:0] b;

	
	wire next;
	wire done;
	wire rst_led;
	reg [23:0] color;
	wire [15:0] ledNUM;
	assign LEDR[0] = done;
	assign rst_led = reset;
	led_serializer ul0 (	.rst(rst_led), 
								.clk50(clk), 
								.r(SW[0]? r : 8'd255), 
								.g(SW[1]? g : 8'd255),
								.b(SW[2]? b : 8'd255),
								.o(out), 
								.oNEXT(next), 
								.oDONE(done), 
								.oLED(ledNUM));

	reg reset;
	reg ledr;
	assign LEDR[3] = ledr;
	reg [16:0] seed;
	assign hexD = 16'hbeef;
	wire ser_clk;
	//assign ser_clk = clk;
	wire [15:0] ser_addr;
	wire [7:0]	ser_dta_out;
	wire [7:0]	ser_dta_in;
	wire ser_write;
	
	pll upll (.areset(rst), .inclk0(clk), .c0(ser_clk), .locked(LEDR[9])); 
	assign LEDR[8] = ser_clk;
	uart2bus_top(.clock(ser_clk), .reset(rst), .ser_in(rxU), .ser_out(txU), .int_address(ser_addr), .int_wr_data(ser_dta_in), .int_write(ser_write),
	.int_rd_data(ser_dta_out), .int_gnt(1'b1)); 
	

	bram_tdp u10(.a_clk(clk), .a_wr(1'b0), .a_addr(ledNUM), .a_din(0), .a_dout({r,g,b}), 
					 .b_clk(ser_clk) , .b_wr(ser_write), .b_addr(ser_addr[9:0]), .b_din(ser_dta_in), .b_dout(ser_dta_out));
/* 
	 parameter DATA = 8,
    parameter ADDR = 8
) (
    // Port A
    input   wire                a_clk,
    input   wire                a_wr,
    input   wire    [ADDR-1:0]  a_addr,
    input   wire    [DATA-1:0]  a_din,
    output  reg     [DATA-1:0]  a_dout,
    
    // Port B
    input   wire                b_clk,
    input   wire                b_wr,
    input   wire    [ADDR-1:0]  b_addr,
    input   wire    [DATA-1:0]  b_din,
    output  reg     [DATA-1:0]  b_dout
	 
	 
	 input 			clock;			// global clock input 
input 			reset;			// global reset input 
input			ser_in;			// serial data input 
output			ser_out;		// serial data output 
output	[15:0]	int_address;	// address bus to register file 
output	[7:0]	int_wr_data;	// write data to register file 
output			int_write;		// write control to register file 
output			int_read;		// read control to register file 
input	[7:0]	int_rd_data;	// data read from register file 
output			int_req;		// bus access request signal 
input			int_gnt;		// bus access grant signal 
);
*/
		
	always @ (posedge clk, posedge rst) begin
		if (rst) begin 
			ledr <= 0;
			//seed <= 0;
		end else
		if (done) begin
			reset <= 1'b1;
			ledr <= 1;
			//seed <= seed + 1;
		end
		else begin
			reset <= 1'b0;
//			if (next) begin
//				{r, g, b} <= color;
//			end
		end
	end

	
	
endmodule