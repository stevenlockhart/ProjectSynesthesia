module system_DE1 (LEDR, LEDG, HEX0, HEX1, HEX2, HEX3, UART_TXD, UART_RXD, KEY, SW, CLOCK_50, GPIO_0, CLOCK_24
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
	assign rxU = UART_RXD;
	assign UART_TXD = txU;
	assign clk = CLOCK_50;
	assign rst = !KEY[0];
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
	
	assign r = SW[2:0];
	assign g = SW[5:3];
	assign b = SW[8:6];
	
	
	wire next;
	wire done;
	wire rst_led;
	assign LEDR[0] = done;
	assign rst_led = reset;
	led_serializer ul0 (	.rst(rst_led), 
								.clk50(clk), 
								.r(r), 
								.g(g),
								.b(b),
								.o(out), 
								.oNEXT(next), 
								.oDONE(done), 
								.oLED(hexD[7:0]),
								.oBIT(hexD[15:8]));

	reg reset;
	always @ (posedge clk) begin
		if (done) reset <= 1'b1;
		else reset <= 1'b0;
	end

	
	
endmodule